import 'package:flutter/material.dart';
import 'package:test_data_gen/views/res/paths.dart';
import 'package:test_data_gen/views/res/strings.dart';

class AppInfoPage extends StatelessWidget {
  const AppInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    String textInfo = '''
Introducing the Ultimate Test Data Generation Powerhouse: A Symphony of Z3, OpenAI, and Genetic Algorithms
Tired of manually crafting test data? Let the robots take the wheel! Introducing your new best friend: a revolutionary test data generation app fueled by the combined power of three cutting-edge models: Z3, OpenAI, and genetic algorithms. This isn't just another data creator; it's a symphony of innovation, designed to streamline your testing process and unleash the full potential of your applications.

Imagine:

Speed and Efficiency: No more tedious hand-coding. Our app generates diverse, high-quality datasets in a fraction of the time, freeing you to focus on the bigger picture.
Unmatched Flexibility: Choose from three distinct models, each with its own strengths. Z3 tackles complex logical constraints, OpenAI brings its language expertise, and the genetic algorithm optimizes for specific scenarios.
Boundless Creativity: Explore edge cases, stress test your system, and discover hidden vulnerabilities – all with data that mimics real-world conditions.
But wait, there's more! Our app isn't just about raw power; it's about empowerment. We offer an intuitive interface and comprehensive documentation, making it easy for anyone – from seasoned programmers to testing novices – to harness the power of these advanced models.

Ready to revolutionize your test data generation? Stop settling for the mundane and embrace the future of testing. Download our app today and experience the synergy of Z3, OpenAI, and genetic algorithms working in concert to unlock the true potential of your applications.

This is more than just an app; it's a game-changer. Join the data generation revolution today!
''';

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 120,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 30, 8, 20),
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              image: AssetImage(
                                Paths.img_logo,
                              ),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  const Text(
                    Strings.splash,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      "TDG Version : 1.0.0+1 \n TDG Core Version : 1.0.0",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(),
                  child: TextButton(
                    child: Text(
                      "info",
                      style: TextStyle(
                        color: Color(0xFF1b211d),
                      ),
                    ),
                    onPressed: () => appInfoBottonSheet(context, textInfo),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Made with 💚 by Pezhvak",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> appInfoBottonSheet(BuildContext context, String textInfo) {
    return showModalBottomSheet(
      isScrollControlled: true,
      showDragHandle: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SizedBox(
            height: 500,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 1, 10, 0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 400,
                        height: 480,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  textInfo,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
