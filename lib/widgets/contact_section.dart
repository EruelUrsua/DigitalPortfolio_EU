import 'package:digital_portfolio_ursua/constants/colors.dart';
import 'package:digital_portfolio_ursua/constants/size.dart';
import 'package:digital_portfolio_ursua/constants/sns_links.dart';
import 'package:digital_portfolio_ursua/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return    Container(
                 padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                 color: CustomColor.bgLight1,
                 child: Column(
                  children: [
                    //title
                    const Text("Get in touch", style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: CustomColor.whitePrimary,),),

                      const SizedBox(height: 50),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 700,
                      maxHeight: 100),
                      child: LayoutBuilder(builder:(context, constraints){
                        if(constraints.maxWidth>=KMinDesktopWidth){
                          return buildNameEmailFieldDesktop();
                        }
                        return buildNameEmailFieldMobile();
                      } )
                    ),
                    const SizedBox(height: 15),
                           ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 700),
                             child: const CustomTextField(
                              hintText: "Message",
                              maxLines: 16,
                                                       ),
                           ),
                    const SizedBox(height: 20),
                      //send button
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 700,
                        ),
                        child: SizedBox(
                          width: double.maxFinite,
                          child: ElevatedButton(
                             style: ElevatedButton.styleFrom(
                          backgroundColor: CustomColor.yellowPrimary,
                        ),
                             onPressed: (){}, child: const Text("Get in touch", style: TextStyle(color: CustomColor.whitePrimary, fontWeight: FontWeight.bold
                             ),
                             ),
                             ),
                      ),
                      ),
const SizedBox(height: 30),

              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 300,
                ),
                child: const Divider()),
              const SizedBox(height: 15),
               //SNS list
               Wrap(
                spacing: 12,
                runSpacing: 12,
                alignment: WrapAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      js.context.callMethod('open', [SnsLinks.github]);

                    },
                    
                    child: Image.asset("github.png", width: 28), ),
                  InkWell(
                    onTap: () {

                         js.context.callMethod('open', [SnsLinks.linkedin]);
                    },
                    child: Image.asset("linkedin.png", width: 28),),
                ],
               ),


                  ],
                 ),
              );
  }

   Row buildNameEmailFieldDesktop(){
    return const Row(
                        children: [
                          Flexible(
                            child: CustomTextField(
                              hintText: "Name",
                            ),
                          ),
                          SizedBox(width: 15),
                          Flexible(
                            child: CustomTextField(
                              hintText: "Email",
                            ),
                          ),
                        ],
                      );
   }

    Column buildNameEmailFieldMobile(){
    return const Column(
                        children: [
                          Flexible(
                            child: CustomTextField(
                              hintText: "Name",
                            ),
                          ),
                          SizedBox(height: 15),
                          Flexible(
                            child: CustomTextField(
                              hintText: "Email",
                            ),
                          ),
                        ],
                      );
   }
}