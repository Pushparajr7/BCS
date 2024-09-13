// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Steam_Parameters extends StatefulWidget {
  const Steam_Parameters({super.key});

  @override
  State<Steam_Parameters> createState() => _Steam_ParametersState();
}

class _Steam_ParametersState extends State<Steam_Parameters> {
  @override
  Widget build(BuildContext context) {
    double WIDTH = MediaQuery.of(context).size.width;
    double HEIGHT = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(top: HEIGHT * 0.235, left: WIDTH * 0.165),
      child: SizedBox(
        height: HEIGHT * 0.08,
        width: WIDTH * 0.17,
        // color: Colors.teal,
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: HEIGHT * 0.01, bottom: HEIGHT * 0.006),
              child: GestureDetector(
                onTap: () {},
                child: const FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "STEAM PARAMETERS",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: WIDTH * 0.01),
                  child: GestureDetector(
                    onTap: () {},
                    child: const FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "HIGH",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: WIDTH * 0.01),
                  child: const FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "LOW",
                        style:
                            TextStyle(fontSize:10, fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
            SvgPicture.string(
              height: HEIGHT*0.03,
                '''<svg id="nob" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 5 33 49" shape-rendering="geometricPrecision" text-rendering="geometricPrecision" project-id="fbf0c4ea5b764ceca6cbb383effa13ec" export-id="5f78ec28e6ca49dfa7ea67c5fc80d8fc" cached="false">
                                <style><![CDATA[
                               
                                ]]></style>
                                <defs><linearGradient id="nob-u-nob_b2-fill" x1="183" y1="302" x2="183" y2="294" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="nob-u-nob_b2-fill-0" offset="0.986796%" stop-color="#eff0f0"/><stop id="nob-u-nob_b2-fill-1" offset="53.5%" stop-color="#c0c1c1"/><stop id="nob-u-nob_b2-fill-2" offset="100%" stop-color="#eff0f0"/></linearGradient></defs><g id="nob-u-nob_b2_tr" transform="translate(16.50024,31.36964) rotate(105)"><path id="nob-u-nob_b2" d="M201,298.08c0,1.506-1.106,2.79-2.6,2.989-10.398,1.389-16.85,1.189-28.257-.367l-2.572-.674L165,298.073l2.571-1.988l2.572-.641c11.356-1.913,17.489-1.812,28.243-.364c1.499.202,2.614,1.487,2.614,3Z" transform="scale(1.274272,1.274275) translate(-183,-297.999893)" fill="url(#nob-u-nob_b2-fill)"/></g><g id="nob-s-g1"><g id="nob-s-g2" transform="matrix(.511971 0 0 0.461787 134.391955 267.018306)"><path id="nob-s-path1" d="M260.378241,500.525506c10.660133-3.678728,20.422287-3.782475,30.13198,0" transform="translate(-505.779034-1059.675276)" fill="none" stroke="#000" stroke-width="1.262"/><path id="nob-s-path2" d="M259.497476,501.01441l-5.200986-8.223418" transform="translate(-504.299034-1060.124084)" fill="none" stroke="#000" stroke-width="1.262"/><path id="nob-u-copy-of-path" d="M259.497476,501.01441l-5.200986-8.223418" transform="matrix(1 0 0-1-470.299034-66.379442)" fill="none" stroke="#000" stroke-width="1.262"/></g></g></svg>
                                
                                       ''')
          ],
        ),
      ),
    );
  }
}
