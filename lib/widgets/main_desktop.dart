import 'package:digital_portfolio_ursua/constants/colors.dart';
import 'package:flutter/material.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
     final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
     final screenHeight = screenSize.height;
    return  Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0,),
              height: screenHeight/1.2,
              constraints: const BoxConstraints(
                minHeight: 350.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Hello!,\nI'm Eruel Ursua\nA Tech Enthusiast", style: TextStyle(fontSize: 30,
                    height: 1.5,
                     fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary),),
                    const SizedBox(height: 15),
                    SizedBox(
                      width: 250,
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: CustomColor.yellowPrimary,
                        ),
                        onPressed: (){
                         

                        }, child: const Text("Get in touch", style: TextStyle(color: CustomColor.whitePrimary, fontWeight: FontWeight.bold),
                      ),
                      ),
                      )
                  ],
                ),
                Image.asset("assets/resize2.jpg",
                width: screenWidth / 2,
                ),
              ],
            ),
            );
  }
}