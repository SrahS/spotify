import 'package:flutter/material.dart';
import 'package:spotify/core/shared/app_images.dart';
import 'package:spotify/module/home/home.dart';
import 'package:spotify/module/home/widgets/custom_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.topLeft,
            colors: [
              Colors.black,
              Colors.black,
              Color(0xFF8418FF),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 10, 12, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Good afternoon",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.notifications_none),
                              color: Colors.white,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.access_time_rounded),
                              color: Colors.white,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.settings_outlined),
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    FlexDoBiel(context),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 30,
                    ),
                    FlexDoBiel(context),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    FlexDoBiel(context),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 30,
                    ),
                    FlexDoBiel(context),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Flexible(
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                            color: Colors.red),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 25,
                    ),
                    Flexible(
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                            color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomText(text: "Your top mixes"),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CustomContainer(
                      title: "Eu tenho a senha",
                      subTitle: "Álbum • João Gomes",
                      image: AppImages.albumImage,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // MainText(),
              CustomText(
                text: "rola",
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CustomContainer(
                      title: "oi",
                      subTitle: "oi • oi",
                      image: AppImages.albumImage,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // MainText(),
              CustomText(
                text: "Jump back in",
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CustomContainer(
                      title: "oi",
                      subTitle: "oi • oi",
                      image: AppImages.albumImage2,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget FlexDoBiel(context) => Flexible(
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10,
            ),
            color: Colors.red),
      ),
    );

Widget MainText() => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "Seus Programas",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
