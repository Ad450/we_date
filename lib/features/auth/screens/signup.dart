import "package:flutter/material.dart";
import "package:we_date/core/utils/image_urls.dart";
import "package:we_date/core/widget/we_date_button.dart";

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Image.network(
                ImageURLS.signup,
                fit: BoxFit.cover,
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
              ),
              Positioned(
                top: 30,
                right: 20,
                left: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Column(
                    children: [
                      Form(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: double.infinity,
                            child: Text(
                              "Create an account",
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          const SizedBox(height: 40),
                          Container(
                              height: 40,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.white.withOpacity(0.5), Colors.white.withOpacity(0.2)],
                                  stops: const [0.0, 1.0],
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "Username",
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                                ),
                              )),
                          const SizedBox(height: 10),
                          Container(
                              height: 40,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.white.withOpacity(0.5), Colors.white.withOpacity(0.2)],
                                  stops: const [0.0, 1.0],
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                  hintText: "Email",
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                                ),
                              )),
                          const SizedBox(height: 10),
                          Container(
                              height: 40,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.white.withOpacity(0.5), Colors.white.withOpacity(0.2)],
                                  stops: const [0.0, 1.0],
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.phone,
                                decoration: const InputDecoration(
                                  hintText: "Phone",
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                                ),
                              )),
                          const SizedBox(height: 10),
                          Container(
                              height: 40,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.white.withOpacity(0.5), Colors.white.withOpacity(0.2)],
                                  stops: const [0.0, 1.0],
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.datetime,
                                decoration: const InputDecoration(
                                  hintText: "Date of birth (ie. DD/MM/YY)",
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                                ),
                              )),
                          const SizedBox(height: 10),
                          Container(
                              height: 40,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.white.withOpacity(0.5), Colors.white.withOpacity(0.2)],
                                  stops: const [0.0, 1.0],
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "Password",
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                                ),
                              )),
                          const SizedBox(height: 40),
                          WeDateButton(
                            text: "Continue",
                            textFontSize: 20,
                            textColor: Colors.white,
                            backgroundColor: const Color.fromARGB(255, 183, 61, 122),
                            onPressed: () {},
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
