import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Level_Steam_Drum1 extends StatefulWidget {
  const Level_Steam_Drum1({super.key});

  @override
  State<Level_Steam_Drum1> createState() => _Level_Steam_Drum1State();
}

class _Level_Steam_Drum1State extends State<Level_Steam_Drum1> {
  @override
  Widget build(BuildContext context) {
    double WIDTH = MediaQuery.of(context).size.width;
    double HEIGHT = MediaQuery.of(context).size.height;
    return Container(
      // color: Colors.lightGreen,
      width: WIDTH * 0.12,
      child: SvgPicture.string(
          '''<svg id="single_analog" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 121.29 135" shape-rendering="geometricPrecision" text-rendering="geometricPrecision" project-id="fbf0c4ea5b764ceca6cbb383effa13ec" export-id="b3a5eaad3e3a40d6bc1136e19e74b809" cached="false">
                                                        <style><![CDATA[
                                                        #single_analog-u-rpm_b1_tr {animation: single_analog-u-rpm_b1_tr__tr 3181.8181818181815ms linear infinite normal forwards}@keyframes single_analog-u-rpm_b1_tr__tr { 0% {transform: translate(60.608217px,76.944318px) rotate(853.914492deg)} 48.571429% {transform: translate(60.608217px,76.944318px) rotate(1123.878098deg)} 100% {transform: translate(60.608217px,76.944318px) rotate(853.543932deg)}}
                                                        ]]></style>
                                                        <defs><filter id="single_analog-u-copy-of-group-2-filter" x="-150%" width="400%" y="-150%" height="400%"><feGaussianBlur id="single_analog-u-copy-of-group-2-filter-drop-shadow-0-blur" in="SourceAlpha" stdDeviation="2,2"/><feOffset id="single_analog-u-copy-of-group-2-filter-drop-shadow-0-offset" dx="0" dy="0" result="tmp"/><feFlood id="single_analog-u-copy-of-group-2-filter-drop-shadow-0-flood" flood-color="#000"/><feComposite id="single_analog-u-copy-of-group-2-filter-drop-shadow-0-composite" operator="in" in2="tmp"/><feMerge id="single_analog-u-copy-of-group-2-filter-drop-shadow-0-merge" result="result"><feMergeNode id="single_analog-u-copy-of-group-2-filter-drop-shadow-0-merge-node-1"/><feMergeNode id="single_analog-u-copy-of-group-2-filter-drop-shadow-0-merge-node-2" in="SourceGraphic"/></feMerge></filter><linearGradient id="single_analog-s-circle1-fill" x1="-1.6273" y1="-3.39" x2="0" y2="4.34" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="single_analog-s-circle1-fill-0" offset="0%" stop-color="#a4a4a4"/><stop id="single_analog-s-circle1-fill-1" offset="100%" stop-color="#5b5b5b"/></linearGradient><linearGradient id="single_analog-s-circle3-stroke" x1="0" y1="-4.339" x2="0" y2="4.34" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="single_analog-s-circle3-stroke-0" offset="0%" stop-color="rgba(157,157,157,0.75)"/><stop id="single_analog-s-circle3-stroke-1" offset="100%" stop-color="#3e3e3e"/></linearGradient><filter id="single_analog-u-copy-of-group-22-filter" x="-150%" width="400%" y="-150%" height="400%"><feGaussianBlur id="single_analog-u-copy-of-group-22-filter-drop-shadow-0-blur" in="SourceAlpha" stdDeviation="2,2"/><feOffset id="single_analog-u-copy-of-group-22-filter-drop-shadow-0-offset" dx="0" dy="0" result="tmp"/><feFlood id="single_analog-u-copy-of-group-22-filter-drop-shadow-0-flood" flood-color="#000"/><feComposite id="single_analog-u-copy-of-group-22-filter-drop-shadow-0-composite" operator="in" in2="tmp"/><feMerge id="single_analog-u-copy-of-group-22-filter-drop-shadow-0-merge" result="result"><feMergeNode id="single_analog-u-copy-of-group-22-filter-drop-shadow-0-merge-node-1"/><feMergeNode id="single_analog-u-copy-of-group-22-filter-drop-shadow-0-merge-node-2" in="SourceGraphic"/></feMerge></filter><linearGradient id="single_analog-s-circle6-fill" x1="-1.424" y1="-2.967" x2="0" y2="3.797" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="single_analog-s-circle6-fill-0" offset="0%" stop-color="#a4a4a4"/><stop id="single_analog-s-circle6-fill-1" offset="100%" stop-color="#5b5b5b"/></linearGradient><linearGradient id="single_analog-s-circle8-stroke" x1="0" y1="-3.797" x2="0" y2="3.797" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="single_analog-s-circle8-stroke-0" offset="0%" stop-color="rgba(157,157,157,0.75)"/><stop id="single_analog-s-circle8-stroke-1" offset="100%" stop-color="#3e3e3e"/></linearGradient><filter id="single_analog-u-copy-of-group-23-filter" x="-150%" width="400%" y="-150%" height="400%"><feGaussianBlur id="single_analog-u-copy-of-group-23-filter-drop-shadow-0-blur" in="SourceAlpha" stdDeviation="2,2"/><feOffset id="single_analog-u-copy-of-group-23-filter-drop-shadow-0-offset" dx="0" dy="0" result="tmp"/><feFlood id="single_analog-u-copy-of-group-23-filter-drop-shadow-0-flood" flood-color="#000"/><feComposite id="single_analog-u-copy-of-group-23-filter-drop-shadow-0-composite" operator="in" in2="tmp"/><feMerge id="single_analog-u-copy-of-group-23-filter-drop-shadow-0-merge" result="result"><feMergeNode id="single_analog-u-copy-of-group-23-filter-drop-shadow-0-merge-node-1"/><feMergeNode id="single_analog-u-copy-of-group-23-filter-drop-shadow-0-merge-node-2" in="SourceGraphic"/></feMerge></filter><linearGradient id="single_analog-s-circle11-fill" x1="-1.627" y1="-3.39" x2="0" y2="4.34" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="single_analog-s-circle11-fill-0" offset="0%" stop-color="#a4a4a4"/><stop id="single_analog-s-circle11-fill-1" offset="100%" stop-color="#5b5b5b"/></linearGradient><linearGradient id="single_analog-s-circle13-stroke" x1="0" y1="-4.339" x2="0" y2="4.34" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="single_analog-s-circle13-stroke-0" offset="0%" stop-color="rgba(157,157,157,0.75)"/><stop id="single_analog-s-circle13-stroke-1" offset="100%" stop-color="#3e3e3e"/></linearGradient><filter id="single_analog-u-copy-of-group-24-filter" x="-150%" width="400%" y="-150%" height="400%"><feGaussianBlur id="single_analog-u-copy-of-group-24-filter-drop-shadow-0-blur" in="SourceAlpha" stdDeviation="2,2"/><feOffset id="single_analog-u-copy-of-group-24-filter-drop-shadow-0-offset" dx="0" dy="0" result="tmp"/><feFlood id="single_analog-u-copy-of-group-24-filter-drop-shadow-0-flood" flood-color="#000"/><feComposite id="single_analog-u-copy-of-group-24-filter-drop-shadow-0-composite" operator="in" in2="tmp"/><feMerge id="single_analog-u-copy-of-group-24-filter-drop-shadow-0-merge" result="result"><feMergeNode id="single_analog-u-copy-of-group-24-filter-drop-shadow-0-merge-node-1"/><feMergeNode id="single_analog-u-copy-of-group-24-filter-drop-shadow-0-merge-node-2" in="SourceGraphic"/></feMerge></filter><linearGradient id="single_analog-s-circle16-fill" x1="-1.4239" y1="-2.967" x2="0" y2="3.797" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="single_analog-s-circle16-fill-0" offset="0%" stop-color="#a4a4a4"/><stop id="single_analog-s-circle16-fill-1" offset="100%" stop-color="#5b5b5b"/></linearGradient><linearGradient id="single_analog-s-circle18-stroke" x1="0" y1="-3.797" x2="0" y2="3.797" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="single_analog-s-circle18-stroke-0" offset="0%" stop-color="rgba(157,157,157,0.75)"/><stop id="single_analog-s-circle18-stroke-1" offset="100%" stop-color="#3e3e3e"/></linearGradient><radialGradient id="single_analog-u-copy-of-ellipse-stroke" cx="0" cy="0" r="0.5" spreadMethod="pad" gradientUnits="objectBoundingBox" gradientTransform="translate(0.5 0.5)"><stop id="single_analog-u-copy-of-ellipse-stroke-0" offset="85%" stop-color="#000"/><stop id="single_analog-u-copy-of-ellipse-stroke-1" offset="100%" stop-color="#fff"/></radialGradient><filter id="single_analog-u-copy-of-group-25-filter" x="-150%" width="400%" y="-150%" height="400%"><feGaussianBlur id="single_analog-u-copy-of-group-25-filter-inner-shadow-0-blur" in="SourceAlpha" stdDeviation="2,2"/><feOffset id="single_analog-u-copy-of-group-25-filter-inner-shadow-0-offset" dx="0" dy="4" result="tmp"/><feComposite id="single_analog-u-copy-of-group-25-filter-inner-shadow-0-composite" operator="arithmetic" k2="-1" k3="1" in2="SourceGraphic"/><feColorMatrix id="single_analog-u-copy-of-group-25-filter-inner-shadow-0-color-matrix" type="matrix" values="0 0 0 0 0.188235 0 0 0 0 0.188235 0 0 0 0 0.188235 0 0 0 0.25 0"/><feMerge id="single_analog-u-copy-of-group-25-filter-inner-shadow-0-merge" result="result"><feMergeNode id="single_analog-u-copy-of-group-25-filter-inner-shadow-0-merge-node-1" in="SourceGraphic"/><feMergeNode id="single_analog-u-copy-of-group-25-filter-inner-shadow-0-merge-node-2"/></feMerge></filter><filter id="single_analog-u-copy-of-group-26-filter" x="-150%" width="400%" y="-150%" height="400%"><feGaussianBlur id="single_analog-u-copy-of-group-26-filter-drop-shadow-0-blur" in="SourceAlpha" stdDeviation="2,2"/><feOffset id="single_analog-u-copy-of-group-26-filter-drop-shadow-0-offset" dx="0" dy="4" result="tmp"/><feFlood id="single_analog-u-copy-of-group-26-filter-drop-shadow-0-flood" flood-color="rgba(48,48,48,0.25)"/><feComposite id="single_analog-u-copy-of-group-26-filter-drop-shadow-0-composite" operator="in" in2="tmp"/><feMerge id="single_analog-u-copy-of-group-26-filter-drop-shadow-0-merge" result="result"><feMergeNode id="single_analog-u-copy-of-group-26-filter-drop-shadow-0-merge-node-1"/><feMergeNode id="single_analog-u-copy-of-group-26-filter-drop-shadow-0-merge-node-2" in="SourceGraphic"/></feMerge></filter><linearGradient id="single_analog-s-circle22-fill" x1="0" y1="-9.764" x2="0" y2="9.764" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="single_analog-s-circle22-fill-0" offset="0%" stop-color="#6e6e6d"/><stop id="single_analog-s-circle22-fill-1" offset="18.4%" stop-color="#fffff7"/><stop id="single_analog-s-circle22-fill-2" offset="64.5%" stop-color="#cacfcf"/><stop id="single_analog-s-circle22-fill-3" offset="93.5%" stop-color="#fff"/></linearGradient><radialGradient id="single_analog-u-copy-of-ellipse-3-stroke" cx="0" cy="0" r="0.5" spreadMethod="pad" gradientUnits="objectBoundingBox" gradientTransform="translate(0.5 0.5)"><stop id="single_analog-u-copy-of-ellipse-3-stroke-0" offset="85%" stop-color="#000"/><stop id="single_analog-u-copy-of-ellipse-3-stroke-1" offset="100%" stop-color="#fff"/></radialGradient><radialGradient id="single_analog-u-rpm_b1-fill" cx="0" cy="0" r="0.5" spreadMethod="pad" gradientUnits="objectBoundingBox" gradientTransform="translate(0.5 0.5)"><stop id="single_analog-u-rpm_b1-fill-0" offset="0%" stop-color="#dfd9d9"/><stop id="single_analog-u-rpm_b1-fill-1" offset="100%" stop-color="#534f4f"/></radialGradient><filter id="single_analog-u-copy-of-group-27-filter" x="-150%" width="400%" y="-150%" height="400%"><feGaussianBlur id="single_analog-u-copy-of-group-27-filter-inner-shadow-0-blur" in="SourceAlpha" stdDeviation="2,2"/><feOffset id="single_analog-u-copy-of-group-27-filter-inner-shadow-0-offset" dx="0" dy="4" result="tmp"/><feComposite id="single_analog-u-copy-of-group-27-filter-inner-shadow-0-composite" operator="arithmetic" k2="-1" k3="1" in2="SourceGraphic"/><feColorMatrix id="single_analog-u-copy-of-group-27-filter-inner-shadow-0-color-matrix" type="matrix" values="0 0 0 0 1 0 0 0 0 0.901961 0 0 0 0 0.901961 0 0 0 0.25 0"/><feMerge id="single_analog-u-copy-of-group-27-filter-inner-shadow-0-merge" result="result"><feMergeNode id="single_analog-u-copy-of-group-27-filter-inner-shadow-0-merge-node-1" in="SourceGraphic"/><feMergeNode id="single_analog-u-copy-of-group-27-filter-inner-shadow-0-merge-node-2"/></feMerge></filter><filter id="single_analog-u-copy-of-group-28-filter" x="-150%" width="400%" y="-150%" height="400%"><feGaussianBlur id="single_analog-u-copy-of-group-28-filter-blur-0" stdDeviation="0.5,0.5" result="result"/></filter><linearGradient id="single_analog-u-copy-of-rectangle-fill" x1="0" y1="0.5" x2="1" y2="0.5" spreadMethod="pad" gradientUnits="objectBoundingBox" gradientTransform="translate(0 0)"><stop id="single_analog-u-copy-of-rectangle-fill-0" offset="0%" stop-color="#8a8888"/><stop id="single_analog-u-copy-of-rectangle-fill-1" offset="42%" stop-color="#c2bdbd"/><stop id="single_analog-u-copy-of-rectangle-fill-2" offset="100%" stop-color="#757777"/></linearGradient></defs><rect id="single_analog-u-copy-of-rectangle-2" width="120" height="115" rx="10" ry="10" transform="translate(.681865 19.383586)" fill="#dbdbdb"/><path id="single_analog-u-copy-of-path-2" d="M7,367c0-5.523,4.4772-10,10-10h100.425c5.522,0,10,4.477,10,10v95c0,5.523-4.478,10-10,10L17,472c-5.5229,0-10-4.477-10-10v-95Z" transform="translate(-6.318134-337.607251)" fill="none"/><g id="single_analog-u-copy-of-group-2" transform="translate(125.960957-97.322373)" filter="url(#single_analog-u-copy-of-group-2-filter)"><circle id="single_analog-s-circle1" r="4.33962" transform="translate(-112.259792 216.526117)" fill="url(#single_analog-s-circle1-fill)"/><circle id="single_analog-s-circle2" r="4.33962" transform="translate(-112.259792 216.526117)" fill="none" fill-opacity="0.05"/><circle id="single_analog-s-circle3" r="4.33962" transform="translate(-112.259792 216.526117)" fill="none" stroke="url(#single_analog-s-circle3-stroke)"/><circle id="single_analog-s-circle4" r="4.33962" transform="translate(-112.259792 216.526117)" fill="none" stroke-opacity="0.05"/><circle id="single_analog-s-circle5" r="4.33962" transform="translate(-112.259792 216.526117)" fill="none" stroke="#000" stroke-opacity="0.2"/></g><g id="single_analog-u-copy-of-group-22" transform="translate(125.960958-97.322369)" filter="url(#single_analog-u-copy-of-group-22-filter)"><circle id="single_analog-s-circle6" r="3.79717" transform="translate(-19.296092 132.446117)" fill="url(#single_analog-s-circle6-fill)"/><circle id="single_analog-s-circle7" r="3.79717" transform="translate(-19.296092 132.446117)" fill="none" fill-opacity="0.05"/><circle id="single_analog-s-circle8" r="3.79717" transform="translate(-19.296092 132.446117)" fill="none" stroke="url(#single_analog-s-circle8-stroke)"/><circle id="single_analog-s-circle9" r="3.79717" transform="translate(-19.296092 132.446117)" fill="none" stroke-opacity="0.05"/><circle id="single_analog-s-circle10" r="3.79717" transform="translate(-19.296092 132.446117)" fill="none" stroke="#000" stroke-opacity="0.2"/></g><g id="single_analog-u-copy-of-group-23" transform="translate(125.960958-97.322373)" filter="url(#single_analog-u-copy-of-group-23-filter)"><circle id="single_analog-s-circle11" r="4.33962" transform="translate(-18.958092 216.526117)" fill="url(#single_analog-s-circle11-fill)"/><circle id="single_analog-s-circle12" r="4.33962" transform="translate(-18.958092 216.526117)" fill="none" fill-opacity="0.05"/><circle id="single_analog-s-circle13" r="4.33962" transform="translate(-18.958092 216.526117)" fill="none" stroke="url(#single_analog-s-circle13-stroke)"/><circle id="single_analog-s-circle14" r="4.33962" transform="translate(-18.958092 216.526117)" fill="none" stroke-opacity="0.05"/><circle id="single_analog-s-circle15" r="4.33962" transform="translate(-18.958092 216.526117)" fill="none" stroke="#000" stroke-opacity="0.2"/></g><g id="single_analog-u-copy-of-group-24" transform="translate(125.960957-97.322369)" filter="url(#single_analog-u-copy-of-group-24-filter)"><circle id="single_analog-s-circle16" r="3.79717" transform="translate(-111.718292 132.446117)" fill="url(#single_analog-s-circle16-fill)"/><circle id="single_analog-s-circle17" r="3.79717" transform="translate(-111.718292 132.446117)" fill="none" fill-opacity="0.05"/><circle id="single_analog-s-circle18" r="3.79717" transform="translate(-111.718292 132.446117)" fill="none" stroke="url(#single_analog-s-circle18-stroke)"/><circle id="single_analog-s-circle19" r="3.79717" transform="translate(-111.718292 132.446117)" fill="none" stroke-opacity="0.05"/><circle id="single_analog-s-circle20" r="3.79717" transform="translate(-111.718292 132.446117)" fill="none" stroke="#000" stroke-opacity="0.2"/></g><g id="single_analog-u-copy-of-group" transform="translate(119.960958 228.677628)"><circle id="single_analog-u-copy-of-circle" r="45.566" transform="matrix(1.098543 0 0 1.098543-59.537816-151.794041)" fill="#fff"/><ellipse id="single_analog-u-copy-of-ellipse" rx="44.980826" ry="44.980826" transform="matrix(.852202 0 0 0.852202-59.279091-151.784883)" opacity="0.5" fill="none" stroke="url(#single_analog-u-copy-of-ellipse-stroke)" stroke-width="3"/></g><path id="single_analog-u-copy-of-path-22" d="M45.187729,445.526961c6.67039,4.912321,14.708073,7.502807,22.927654,7.3906c8.219685-.113287,16.186149-2.924952,22.724654-8.019611L71.006226,418.281c-.958655.746612-2.126641,1.15876-3.33166,1.176023-1.205125.016183-2.383556-.363596-3.36152-1.084315L45.187729,445.526961Z" transform="matrix(0-1 1 0-354.818138 144.755799)" fill="#d2dde1"/><text id="single_analog-u-copy-of-text" dx="0" dy="0" font-family="&quot;single_analog:::Roboto&quot;" font-size="7" font-weight="700" transform="translate(40.086601 102.733221)" stroke-width="0"><tspan id="single_analog-s-tspan1" y="0" font-weight="700" stroke-width="0"><![CDATA[
                                                        15
                                                        ]]></tspan></text><text id="single_analog-u-copy-of-text-3" dx="0" dy="0" font-family="&quot;single_analog:::Roboto&quot;" font-size="7" font-weight="700" transform="translate(39.086114 55.347183)" stroke-width="0"><tspan id="single_analog-s-tspan2" y="0" font-weight="700" stroke-width="0"><![CDATA[
                                                        15
                                                        ]]></tspan></text><text id="single_analog-u-copy-of-text-4" dx="0" dy="0" font-family="&quot;single_analog:::Roboto&quot;" font-size="7" font-weight="700" transform="translate(18 54.73322)" stroke-width="0"><tspan id="single_analog-s-tspan3" y="0" font-weight="700" stroke-width="0"><![CDATA[
                                                        5
                                                        ]]></tspan></text><text id="single_analog-u-copy-of-text-42" dx="0" dy="0" font-family="&quot;single_analog:::Roboto&quot;" font-size="7" font-weight="700" transform="translate(28.264608 46.73322)" stroke-width="0"><tspan id="single_analog-s-tspan4" y="0" font-weight="700" stroke-width="0"><![CDATA[
                                                        10
                                                        ]]></tspan></text><text id="single_analog-u-copy-of-text-32" dx="0" dy="0" font-family="&quot;single_analog:::Roboto&quot;" font-size="7" font-weight="700" transform="translate(13 79.733221)" stroke-width="0"><tspan id="single_analog-s-tspan5" y="0" font-weight="700" stroke-width="0"><![CDATA[
                                                        0
                                                        ]]></tspan></text><text id="single_analog-u-copy-of-text-2" dx="0" dy="0" font-family="&quot;single_analog:::Roboto&quot;" font-size="7" font-weight="700" transform="translate(18.364608 100.733221)" stroke-width="0"><tspan id="single_analog-s-tspan6" y="0" font-weight="700" stroke-width="0"><![CDATA[
                                                        5
                                                        ]]></tspan></text><text id="single_analog-u-copy-of-text2" dx="0" dy="0" font-family="&quot;single_analog:::Roboto&quot;" font-size="10" font-weight="400" transform="translate(43.095569 96.5)" fill="#707070" stroke-width="0"><tspan id="single_analog-s-tspan7" y="0" font-weight="400" stroke-width="0"><![CDATA[
                                                        -
                                                        ]]></tspan></text><text id="single_analog-u-copy-of-text3" dx="0" dy="0" font-family="&quot;single_analog:::Roboto&quot;" font-size="10" font-weight="400" transform="translate(43 62.845002)" fill="#707070" stroke-width="0"><tspan id="single_analog-s-tspan8" y="0" font-weight="400" stroke-width="0"><![CDATA[
                                                        +
                                                        ]]></tspan></text><text id="single_analog-u-copy-of-text4" dx="0" dy="0" font-family="&quot;single_analog:::Roboto&quot;" font-size="7" font-weight="700" transform="translate(28.513993 110)" fill="#707070" stroke-width="0"><tspan id="single_analog-s-tspan9" y="0" font-weight="700" stroke-width="0"><![CDATA[
                                                        10
                                                        ]]></tspan></text><text id="single_analog-u-copy-of-text5" dx="0" dy="0" font-family="&quot;single_analog:::Roboto&quot;" font-size="9" font-weight="400" transform="translate(38.770703 82)" fill="#707070" stroke-width="0"><tspan id="single_analog-s-tspan10" y="0" font-weight="400" stroke-width="0"><![CDATA[
                                                        mm 
                                                        ]]></tspan></text><g id="single_analog-u-copy-of-group-25" transform="translate(125.026959-97.756373)" filter="url(#single_analog-u-copy-of-group-25-filter)"><circle id="single_analog-s-circle21" r="11.934" transform="translate(-64.345092 174.649117)" fill="#ababab"/></g><g id="single_analog-u-copy-of-group-26" transform="translate(125.196756-97.586368)" filter="url(#single_analog-u-copy-of-group-26-filter)"><circle id="single_analog-s-circle22" r="9.76415" transform="translate(-64.514892 174.479117)" fill="url(#single_analog-s-circle22-fill)"/></g><ellipse id="single_analog-u-copy-of-ellipse-3" rx="44.980826" ry="44.980826" transform="matrix(1.065225 0 0 1.065225 60.681865 76.892749)" fill="none" stroke="url(#single_analog-u-copy-of-ellipse-3-stroke)" stroke-width="3"/><g id="single_analog-u-rpm_b1_tr" transform="translate(60.608217,76.944318) rotate(853.914492)"><path id="single_analog-u-rpm_b1" d="M0,17.327926L0.739777,0.02851L1.57893,17.327926v19.088224h-1.57893v-19.088224Z" transform="scale(1.571488,1.041235) translate(-0.726976,-36.414217)" fill="url(#single_analog-u-rpm_b1-fill)" stroke-width="0"/></g><g id="single_analog-u-copy-of-group-27" transform="translate(125.706255-97.077367)" filter="url(#single_analog-u-copy-of-group-27-filter)"><circle id="single_analog-s-circle23" r="3.25472" transform="translate(-65.024392 173.970117)"/></g><g id="single_analog-u-copy-of-group-28" transform="translate(125.932151-97.588821)" filter="url(#single_analog-u-copy-of-group-28-filter)"><circle id="single_analog-s-circle24" r="1.08491" transform="translate(-66.864653 173.066565)" fill="#fff"/></g><rect id="single_analog-u-copy-of-rectangle" width="0.549915" height="6.50944" rx="0" ry="0" transform="matrix(1.560298 0 0 1 60.25285 73.638029)" opacity="0.59" fill="url(#single_analog-u-copy-of-rectangle-fill)" stroke-width="0"/><text id="single_analog-s-text1" dx="0" dy="0" font-family="&quot;single_analog:::Roboto&quot;" font-size="6" font-weight="900" transform="translate(18 7.073078)" fill="#3f3f3f" stroke-width="0"><tspan id="single_analog-s-tspan11" y="0" font-weight="900" stroke-width="0"><![CDATA[
                                                        LEVEL IN STEAM
                                                        ]]></tspan><tspan id="single_analog-s-tspan12" x="32" y="6" font-weight="900" stroke-width="0"><![CDATA[
                                                           DRUM 
                                                        ]]></tspan></text><g id="single_analog-s-g1" transform="matrix(0-1 1 0 56.11701 434.00951)"><line id="single_analog-u-copy-of-line" x1="0" y1="-12.04957" x2="0" y2="-6.209576" transform="matrix(-1.010275 0 0 1.100058 357.46539-25.980836)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-2" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.997837-.158042-.158042 0.997837 361.882727-23.123711)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-3" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.960829-.312192-.312192 0.960829 366.191295-22.089315)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-4" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.900162-.458655-.458655 0.900162 370.285002-20.393646)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-5" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.81733-.593825-.593825 0.81733 374.063047-18.078457)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-6" x1="0" y1="-12.04957" x2="0" y2="-6.209576" transform="matrix(-.714372-.714372-.777858 0.777858 379.206869-16.975221)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-7" x1="0" y1="-12.04957" x2="0" y2="-6.209576" transform="matrix(.714372 0.714372 0.777858-.777858 335.723911 26.507737)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-72" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.593825-.81733-.81733 0.593825 380.310105-11.831399)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-8" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(.593825 0.81733 0.81733-.593825 334.620675 21.363915)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-82" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.458655-.900162-.900162 0.458655 382.625294-8.053354)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-9" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(.458655 0.900162 0.900162-.458655 332.305486 17.58587)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-92" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.312192-.960829-.960829 0.312192 384.320963-3.959647)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-10" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(.312192 0.960829 0.960829-.312192 330.609817 13.492163)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-102" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.158042-.997837-.997837 0.158042 385.355359 0.348921)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-11" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(.158042 0.997837 0.997837-.158042 329.575421 9.183595)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-112" x1="0" y1="-12.04957" x2="0" y2="-6.209576" transform="matrix(0-1.010275-1.100058 0 388.212484 4.766258)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-12" x1="0" y1="-12.04957" x2="0" y2="-6.209576" transform="matrix(0 1.010275 1.100058 0 326.718296 4.766258)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-122" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(.158042-.997837-.997837-.158042 385.355359 9.183595)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-13" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.158042 0.997837 0.997837 0.158042 329.575421 0.348921)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-132" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(.312192-.960829-.960829-.312192 384.320963 13.492163)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-14" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.312192 0.960829 0.960829 0.312192 330.609817-3.959647)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-142" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(.458655-.900162-.900162-.458655 382.625294 17.58587)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-15" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.458655 0.900162 0.900162 0.458655 332.305486-8.053354)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-152" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(.593825-.81733-.81733-.593825 380.310105 21.363915)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-16" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.593825 0.81733 0.81733 0.593825 334.620675-11.831399)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-162" x1="0" y1="-12.04957" x2="0" y2="-6.209576" transform="matrix(.714372-.714372-.777858-.777858 379.206869 26.507737)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-17" x1="0" y1="-12.04957" x2="0" y2="-6.209576" transform="matrix(-.714372 0.714372 0.777858 0.777858 335.723911-16.975221)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-18" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.81733 0.593825 0.593825 0.81733 340.867733-18.078457)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-19" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.900162 0.458655 0.458655 0.900162 344.645778-20.393646)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-20_" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.960829 0.312192 0.312192 0.960829 348.739485-22.089315)" fill="none" stroke="#000" stroke-width="0.65"/><line id="single_analog-u-copy-of-line-21_" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.997837 0.158042 0.158042 0.997837 353.048053-23.123711)" fill="none" stroke="#000" stroke-width="0.65"/></g><line id="single_analog-s-line1" x1="-1.885397" y1="-1.885397" x2="1.885397" y2="1.885397" transform="translate(76.335137 73.26572)" fill="none" stroke="#d2dde1" stroke-width="0.8"/><line id="single_analog-u-copy-of-line2" x1="-1.885397" y1="-1.885397" x2="1.885397" y2="1.885397" transform="matrix(-1 0 0 1 76.335137 73.26572)" fill="none" stroke="#d2dde1" stroke-width="0.8"/>
                                                        <style><![CDATA[
                                                        @font-face {font-family: 'single_analog:::Roboto';font-style: normal;font-weight: 400;src: url(https://fonts.gstatic.com/l/font?kit=KFOmCnqEu92Fr1Me5X5aIxwQGvDH1MwLPTL4TwlNMGCNNySs&skey=a0a0114a1dcab3ac&v=v32) format('truetype');}@font-face {font-family: 'single_analog:::Roboto';font-style: normal;font-weight: 700;src: url(https://fonts.gstatic.com/l/font?kit=KFOlCnqEu92Fr1MmWUlvAwUoCurfpbl7Oj_xRxBTLWSKCbJZQ4sz&skey=c06e7213f788649e&v=v32) format('truetype');}@font-face {font-family: 'single_analog:::Roboto';font-style: normal;font-weight: 900;src: url(https://fonts.gstatic.com/l/font?kit=KFOlCnqEu92Fr1MmYUtvAwUoCurfpbl7Oj_xRxBTLWSKCbJZQ4sz&skey=934406f772f9777d&v=v32) format('truetype');}
                                                        ]]></style>
                                                        </svg>
                                                         '''),
    );
  }
}
