import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:women_safety_app/utils/awesome_quotes.dart';
import 'package:women_safety_app/widgets/safe_web_view.dart';

class CustomCarousel extends StatelessWidget {
  const CustomCarousel({super.key});

  void navigateToRoute(BuildContext context, Widget route) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => route),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        child: CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.0,
            autoPlay: true,
            enlargeCenterPage: true,
          ),
          items: List.generate(
              imageUrl.length,
              (index) => Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: InkWell(
                      onTap: () {
                        // we are passing the context and a widget(custom Safe )
                        if (index == 0) {
                          navigateToRoute(
                            context,
                            SafeWebView(
                                url:
                                    "https://www.volunteersinitiativenepal.org/women-empowerment-program/"),
                          );
                        } else if (index == 1) {
                          navigateToRoute(
                            context,
                            SafeWebView(
                                url:
                                    "https://nepal.un.org/en/221902-empowered-women-prosperous-nepal"),
                          );
                        } else if (index == 2) {
                          navigateToRoute(
                            context,
                            SafeWebView(
                                url:
                                    "https://kathmandupost.com/sponsored-content/2023/06/13/unleashing-the-potential-of-women-through-empowerment-for-sustainable-development"),
                          );
                        } else {
                          navigateToRoute(
                              context,
                              SafeWebView(
                                  url:
                                      "https://kathmandupost.com/miscellaneous/2014/03/11/nepali-woman-11th-wealthiest-in-australia"));
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(imageUrl[index]),
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(colors: [
                              Colors.black.withOpacity(0.5),
                              Colors.transparent
                            ]),
                          ),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 8, left: 8),
                              child: Text(
                                articleTitle[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.05),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
