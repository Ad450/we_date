import 'package:image_picker/image_picker.dart';

abstract class StoriesEvent {}

class GetStoriesEvent extends StoriesEvent {}

class UploadStoryEvent extends StoriesEvent {
  final XFile file;
  final String caption;

  UploadStoryEvent({required this.file, required this.caption});
}
