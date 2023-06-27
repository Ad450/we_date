import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:we_date/core/datastore/database_client.dart';
import 'package:we_date/core/models/stories_model.dart';
import 'package:we_date/core/utils/error_messages.dart';
import 'package:we_date/core/utils/errors.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class StoriesRemoteDatasource {
  Future<void> uploadStory(XFile file, String caption);

  Future<List<StoryModel>> getStories();
}

class StoriesRemoteDatasourceImpl implements StoriesRemoteDatasource {
  final DatabaseClient _db;

  StoriesRemoteDatasourceImpl(this._db);

  @override
  Future<void> uploadStory(XFile file, String caption) async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      final storageRef = FirebaseStorage.instance.ref();
      final storyRef = storageRef.child(
        'videos/${user?.uid}/${DateTime.now().millisecondsSinceEpoch}.${file.path.split('.').last}',
      );
      await storyRef.putFile(File(file.path));
      final url = await storyRef.getDownloadURL();
      final story = StoryModel(
        postedBy: user!.uid,
        caption: caption,
        url: url,
      );
      await _db.save(Collections.story, story.toJson());
    } on DbFailure catch (e) {
      throw ApiFailure(e.message);
    } catch (e) {
      throw ApiFailure(STORY_UPLOAD_FAILURE);
    }
  }

  @override
  Future<List<StoryModel>> getStories() async {
    try {
      final stories = await _db.get(Collections.story);
      return stories.map((e) {
        final doc = e.data();
        final story = StoryModel.fromJson(doc);
        return story.copyWith(id: e.id);
      }).toList();
    } on DbFailure catch (e) {
      throw ApiFailure(e.message);
    } catch (e) {
      throw ApiFailure(STORY_UPLOAD_FAILURE);
    }
  }
}
