import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'dart:html' as html;

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
        final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
     final screenHeight = screenSize.height;
    return   Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30,),
              height: screenHeight,
              constraints: const BoxConstraints(maxHeight: 560.0,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ShaderMask(
                    shaderCallback: (bounds) {
                      return LinearGradient(colors: [
                        CustomColor.scaffoldBg.withOpacity(0.6),
                        CustomColor.scaffoldBg.withOpacity(0.6),
                      ]).createShader(bounds);
                    },
                    blendMode: BlendMode.srcATop,
                    child: Image.asset("assets/resize3.jpg",
                    width: screenWidth/2,
                   
                          ),
                  ),
                  const SizedBox(height: 30),       
                    const Text("Hello!,\nI'm Eruel Ursua\nA Tech Enthusiast", style: TextStyle(fontSize: 24,
                    height: 1.5,
                     fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary),),
                    const SizedBox(height: 15),
                    SizedBox(
                      width: 190,
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: CustomColor.yellowPrimary,
                        ),
                        onPressed: (){


                              downloadFile("assets/ursua_resume.pdf");

                        }, child: const Text("Check Out My Resume", style: TextStyle(color: CustomColor.whitePrimary, fontWeight: FontWeight.bold, fontSize: 13),
                            textAlign: TextAlign.center, ),
                      ),
                      ),


                ],
              ),
              
              
            );
  }
  downloadFile(url) {
       html.AnchorElement anchorElement = html.AnchorElement (href : url);
       anchorElement.download = "Ursua_Eruel_Resume";
       anchorElement.click();

    }
}