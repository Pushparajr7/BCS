// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_animations/animation_builder/custom_animation_builder.dart';
import 'package:simple_animations/movie_tween/movie_tween.dart';

class Pressure_Steam1 extends StatefulWidget {
  const Pressure_Steam1({super.key});

  @override
  State<Pressure_Steam1> createState() => _Pressure_Steam1State();
}

class _Pressure_Steam1State extends State<Pressure_Steam1>
    with SingleTickerProviderStateMixin {
  double needleValue1 = 0;
  double needleValue2 = 0;

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    control = Control.playFromStart;
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _updateTween();
  }

  late MovieTween tween;
  late Control control;

  void _updateTween() {
    tween = MovieTween()
      ..scene(
              begin: const Duration(seconds: 0),
              end: const Duration(seconds: 3))
          .tween(
              'needle', Tween<double>(begin: needleValue1, end: needleValue2));
    print(needleValue1);
    print(needleValue2);
  }

  @override
  Widget build(BuildContext context) {
    double WIDTH = MediaQuery.of(context).size.width;
    double HEIGHT = MediaQuery.of(context).size.height;
    return CustomAnimationBuilder<Movie>(
        control: control,
        tween: tween,
        duration: const Duration(seconds: 3),
        builder: (context, value, animation) {
          return Container(
            width: WIDTH * 0.11,
            // color: Colors.orangeAccent,
            child: SvgPicture.string(
                '''<svg id="left_side_analog" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 13 120 141" shape-rendering="geometricPrecision" text-rendering="geometricPrecision" project-id="d50f2920be3540758f1b33caaaa2cda7" export-id="1f253e01e5f54a7982620b5896fe205c" cached="false">
                                                        <style><![CDATA[
                                                        
                                                        ]]></style>
                                                        <defs><filter id="left_side_analog-u-copy-of-group-filter" x="-150%" width="400%" y="-150%" height="400%"><feGaussianBlur id="left_side_analog-u-copy-of-group-filter-drop-shadow-0-blur" in="SourceAlpha" stdDeviation="2,2"/><feOffset id="left_side_analog-u-copy-of-group-filter-drop-shadow-0-offset" dx="0" dy="0" result="tmp"/><feFlood id="left_side_analog-u-copy-of-group-filter-drop-shadow-0-flood" flood-color="#000"/><feComposite id="left_side_analog-u-copy-of-group-filter-drop-shadow-0-composite" operator="in" in2="tmp"/><feMerge id="left_side_analog-u-copy-of-group-filter-drop-shadow-0-merge" result="result"><feMergeNode id="left_side_analog-u-copy-of-group-filter-drop-shadow-0-merge-node-1"/><feMergeNode id="left_side_analog-u-copy-of-group-filter-drop-shadow-0-merge-node-2" in="SourceGraphic"/></feMerge></filter><linearGradient id="left_side_analog-s-circle1-fill" x1="-1.6273" y1="-3.39" x2="0" y2="4.34" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="left_side_analog-s-circle1-fill-0" offset="0%" stop-color="#a4a4a4"/><stop id="left_side_analog-s-circle1-fill-1" offset="100%" stop-color="#5b5b5b"/></linearGradient><linearGradient id="left_side_analog-s-circle3-stroke" x1="0" y1="-4.339" x2="0" y2="4.34" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="left_side_analog-s-circle3-stroke-0" offset="0%" stop-color="rgba(157,157,157,0.75)"/><stop id="left_side_analog-s-circle3-stroke-1" offset="100%" stop-color="#3e3e3e"/></linearGradient><filter id="left_side_analog-u-copy-of-group2-filter" x="-150%" width="400%" y="-150%" height="400%"><feGaussianBlur id="left_side_analog-u-copy-of-group2-filter-drop-shadow-0-blur" in="SourceAlpha" stdDeviation="2,2"/><feOffset id="left_side_analog-u-copy-of-group2-filter-drop-shadow-0-offset" dx="0" dy="0" result="tmp"/><feFlood id="left_side_analog-u-copy-of-group2-filter-drop-shadow-0-flood" flood-color="#000"/><feComposite id="left_side_analog-u-copy-of-group2-filter-drop-shadow-0-composite" operator="in" in2="tmp"/><feMerge id="left_side_analog-u-copy-of-group2-filter-drop-shadow-0-merge" result="result"><feMergeNode id="left_side_analog-u-copy-of-group2-filter-drop-shadow-0-merge-node-1"/><feMergeNode id="left_side_analog-u-copy-of-group2-filter-drop-shadow-0-merge-node-2" in="SourceGraphic"/></feMerge></filter><linearGradient id="left_side_analog-s-circle6-fill" x1="-1.424" y1="-2.967" x2="0" y2="3.797" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="left_side_analog-s-circle6-fill-0" offset="0%" stop-color="#a4a4a4"/><stop id="left_side_analog-s-circle6-fill-1" offset="100%" stop-color="#5b5b5b"/></linearGradient><linearGradient id="left_side_analog-s-circle8-stroke" x1="0" y1="-3.797" x2="0" y2="3.797" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="left_side_analog-s-circle8-stroke-0" offset="0%" stop-color="rgba(157,157,157,0.75)"/><stop id="left_side_analog-s-circle8-stroke-1" offset="100%" stop-color="#3e3e3e"/></linearGradient><filter id="left_side_analog-u-copy-of-group3-filter" x="-150%" width="400%" y="-150%" height="400%"><feGaussianBlur id="left_side_analog-u-copy-of-group3-filter-drop-shadow-0-blur" in="SourceAlpha" stdDeviation="2,2"/><feOffset id="left_side_analog-u-copy-of-group3-filter-drop-shadow-0-offset" dx="0" dy="0" result="tmp"/><feFlood id="left_side_analog-u-copy-of-group3-filter-drop-shadow-0-flood" flood-color="#000"/><feComposite id="left_side_analog-u-copy-of-group3-filter-drop-shadow-0-composite" operator="in" in2="tmp"/><feMerge id="left_side_analog-u-copy-of-group3-filter-drop-shadow-0-merge" result="result"><feMergeNode id="left_side_analog-u-copy-of-group3-filter-drop-shadow-0-merge-node-1"/><feMergeNode id="left_side_analog-u-copy-of-group3-filter-drop-shadow-0-merge-node-2" in="SourceGraphic"/></feMerge></filter><linearGradient id="left_side_analog-s-circle11-fill" x1="-1.627" y1="-3.39" x2="0" y2="4.34" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="left_side_analog-s-circle11-fill-0" offset="0%" stop-color="#a4a4a4"/><stop id="left_side_analog-s-circle11-fill-1" offset="100%" stop-color="#5b5b5b"/></linearGradient><linearGradient id="left_side_analog-s-circle13-stroke" x1="0" y1="-4.339" x2="0" y2="4.34" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="left_side_analog-s-circle13-stroke-0" offset="0%" stop-color="rgba(157,157,157,0.75)"/><stop id="left_side_analog-s-circle13-stroke-1" offset="100%" stop-color="#3e3e3e"/></linearGradient><filter id="left_side_analog-u-copy-of-group4-filter" x="-150%" width="400%" y="-150%" height="400%"><feGaussianBlur id="left_side_analog-u-copy-of-group4-filter-drop-shadow-0-blur" in="SourceAlpha" stdDeviation="2,2"/><feOffset id="left_side_analog-u-copy-of-group4-filter-drop-shadow-0-offset" dx="0" dy="0" result="tmp"/><feFlood id="left_side_analog-u-copy-of-group4-filter-drop-shadow-0-flood" flood-color="#000"/><feComposite id="left_side_analog-u-copy-of-group4-filter-drop-shadow-0-composite" operator="in" in2="tmp"/><feMerge id="left_side_analog-u-copy-of-group4-filter-drop-shadow-0-merge" result="result"><feMergeNode id="left_side_analog-u-copy-of-group4-filter-drop-shadow-0-merge-node-1"/><feMergeNode id="left_side_analog-u-copy-of-group4-filter-drop-shadow-0-merge-node-2" in="SourceGraphic"/></feMerge></filter><linearGradient id="left_side_analog-s-circle16-fill" x1="-1.4239" y1="-2.967" x2="0" y2="3.797" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="left_side_analog-s-circle16-fill-0" offset="0%" stop-color="#a4a4a4"/><stop id="left_side_analog-s-circle16-fill-1" offset="100%" stop-color="#5b5b5b"/></linearGradient><linearGradient id="left_side_analog-s-circle18-stroke" x1="0" y1="-3.797" x2="0" y2="3.797" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="left_side_analog-s-circle18-stroke-0" offset="0%" stop-color="rgba(157,157,157,0.75)"/><stop id="left_side_analog-s-circle18-stroke-1" offset="100%" stop-color="#3e3e3e"/></linearGradient><radialGradient id="left_side_analog-u-copy-of-ellipse-stroke" cx="0" cy="0" r="0.5" spreadMethod="pad" gradientUnits="objectBoundingBox" gradientTransform="translate(0.5 0.5)"><stop id="left_side_analog-u-copy-of-ellipse-stroke-0" offset="85%" stop-color="#000"/><stop id="left_side_analog-u-copy-of-ellipse-stroke-1" offset="100%" stop-color="#fff"/></radialGradient><filter id="left_side_analog-u-copy-of-group5-filter" x="-150%" width="400%" y="-150%" height="400%"><feGaussianBlur id="left_side_analog-u-copy-of-group5-filter-inner-shadow-0-blur" in="SourceAlpha" stdDeviation="2,2"/><feOffset id="left_side_analog-u-copy-of-group5-filter-inner-shadow-0-offset" dx="0" dy="4" result="tmp"/><feComposite id="left_side_analog-u-copy-of-group5-filter-inner-shadow-0-composite" operator="arithmetic" k2="-1" k3="1" in2="SourceGraphic"/><feColorMatrix id="left_side_analog-u-copy-of-group5-filter-inner-shadow-0-color-matrix" type="matrix" values="0 0 0 0 0.188235 0 0 0 0 0.188235 0 0 0 0 0.188235 0 0 0 0.25 0"/><feMerge id="left_side_analog-u-copy-of-group5-filter-inner-shadow-0-merge" result="result"><feMergeNode id="left_side_analog-u-copy-of-group5-filter-inner-shadow-0-merge-node-1" in="SourceGraphic"/><feMergeNode id="left_side_analog-u-copy-of-group5-filter-inner-shadow-0-merge-node-2"/></feMerge></filter><filter id="left_side_analog-u-copy-of-group6-filter" x="-150%" width="400%" y="-150%" height="400%"><feGaussianBlur id="left_side_analog-u-copy-of-group6-filter-drop-shadow-0-blur" in="SourceAlpha" stdDeviation="2,2"/><feOffset id="left_side_analog-u-copy-of-group6-filter-drop-shadow-0-offset" dx="0" dy="4" result="tmp"/><feFlood id="left_side_analog-u-copy-of-group6-filter-drop-shadow-0-flood" flood-color="rgba(48,48,48,0.25)"/><feComposite id="left_side_analog-u-copy-of-group6-filter-drop-shadow-0-composite" operator="in" in2="tmp"/><feMerge id="left_side_analog-u-copy-of-group6-filter-drop-shadow-0-merge" result="result"><feMergeNode id="left_side_analog-u-copy-of-group6-filter-drop-shadow-0-merge-node-1"/><feMergeNode id="left_side_analog-u-copy-of-group6-filter-drop-shadow-0-merge-node-2" in="SourceGraphic"/></feMerge></filter><linearGradient id="left_side_analog-s-circle22-fill" x1="0" y1="-9.764" x2="0" y2="9.764" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="left_side_analog-s-circle22-fill-0" offset="0%" stop-color="#6e6e6d"/><stop id="left_side_analog-s-circle22-fill-1" offset="18.4%" stop-color="#fffff7"/><stop id="left_side_analog-s-circle22-fill-2" offset="64.5%" stop-color="#cacfcf"/><stop id="left_side_analog-s-circle22-fill-3" offset="93.5%" stop-color="#fff"/></linearGradient><radialGradient id="left_side_analog-u-copy-of-ellipse-2-stroke" cx="0" cy="0" r="0.5" spreadMethod="pad" gradientUnits="objectBoundingBox" gradientTransform="translate(0.5 0.5)"><stop id="left_side_analog-u-copy-of-ellipse-2-stroke-0" offset="85%" stop-color="#000"/><stop id="left_side_analog-u-copy-of-ellipse-2-stroke-1" offset="100%" stop-color="#fff"/></radialGradient><radialGradient id="left_side_analog-u-pressuredrop_b1-fill" cx="0" cy="0" r="0.5" spreadMethod="pad" gradientUnits="objectBoundingBox" gradientTransform="translate(0.5 0.5)"><stop id="left_side_analog-u-pressuredrop_b1-fill-0" offset="0%" stop-color="#dfd9d9"/><stop id="left_side_analog-u-pressuredrop_b1-fill-1" offset="100%" stop-color="#534f4f"/></radialGradient><filter id="left_side_analog-u-copy-of-group7-filter" x="-150%" width="400%" y="-150%" height="400%"><feGaussianBlur id="left_side_analog-u-copy-of-group7-filter-inner-shadow-0-blur" in="SourceAlpha" stdDeviation="2,2"/><feOffset id="left_side_analog-u-copy-of-group7-filter-inner-shadow-0-offset" dx="0" dy="4" result="tmp"/><feComposite id="left_side_analog-u-copy-of-group7-filter-inner-shadow-0-composite" operator="arithmetic" k2="-1" k3="1" in2="SourceGraphic"/><feColorMatrix id="left_side_analog-u-copy-of-group7-filter-inner-shadow-0-color-matrix" type="matrix" values="0 0 0 0 1 0 0 0 0 0.901961 0 0 0 0 0.901961 0 0 0 0.25 0"/><feMerge id="left_side_analog-u-copy-of-group7-filter-inner-shadow-0-merge" result="result"><feMergeNode id="left_side_analog-u-copy-of-group7-filter-inner-shadow-0-merge-node-1" in="SourceGraphic"/><feMergeNode id="left_side_analog-u-copy-of-group7-filter-inner-shadow-0-merge-node-2"/></feMerge></filter><filter id="left_side_analog-u-copy-of-group8-filter" x="-150%" width="400%" y="-150%" height="400%"><feGaussianBlur id="left_side_analog-u-copy-of-group8-filter-blur-0" stdDeviation="0.5,0.5" result="result"/></filter><linearGradient id="left_side_analog-s-rect1-fill" x1="0" y1="0.5" x2="1" y2="0.5" spreadMethod="pad" gradientUnits="objectBoundingBox" gradientTransform="translate(0 0)"><stop id="left_side_analog-s-rect1-fill-0" offset="0%" stop-color="#8a8888"/><stop id="left_side_analog-s-rect1-fill-1" offset="42%" stop-color="#c2bdbd"/><stop id="left_side_analog-s-rect1-fill-2" offset="100%" stop-color="#757777"/></linearGradient></defs><rect id="left_side_analog-u-copy-of-rectangle" width="120" height="115" rx="10" ry="10" transform="translate(-.605002 38.078122)" fill="#dbdbdb"/><path id="left_side_analog-u-copy-of-path" d="M7,367c0-5.523,4.4772-10,10-10h100.425c5.522,0,10,4.477,10,10v95c0,5.523-4.478,10-10,10L17,472c-5.5229,0-10-4.477-10-10v-95Z" transform="translate(-7.605002-318.912719)" fill="none"/><g id="left_side_analog-u-copy-of-group" transform="translate(-7.605006-318.912718)" filter="url(#left_side_analog-u-copy-of-group-filter)"><circle id="left_side_analog-s-circle1" r="4.33962" transform="translate(20.0193 456.811)" fill="url(#left_side_analog-s-circle1-fill)"/><circle id="left_side_analog-s-circle2" r="4.33962" transform="translate(20.0193 456.811)" fill="none" fill-opacity="0.05"/><circle id="left_side_analog-s-circle3" r="4.33962" transform="translate(20.0193 456.811)" fill="none" stroke="url(#left_side_analog-s-circle3-stroke)"/><circle id="left_side_analog-s-circle4" r="4.33962" transform="translate(20.0193 456.811)" fill="none" stroke-opacity="0.05"/><circle id="left_side_analog-s-circle5" r="4.33962" transform="translate(20.0193 456.811)" fill="none" stroke="#000" stroke-opacity="0.2"/></g><g id="left_side_analog-u-copy-of-group2" transform="translate(-7.605-318.91272)" filter="url(#left_side_analog-u-copy-of-group2-filter)"><circle id="left_side_analog-s-circle6" r="3.79717" transform="translate(112.983 372.731)" fill="url(#left_side_analog-s-circle6-fill)"/><circle id="left_side_analog-s-circle7" r="3.79717" transform="translate(112.983 372.731)" fill="none" fill-opacity="0.05"/><circle id="left_side_analog-s-circle8" r="3.79717" transform="translate(112.983 372.731)" fill="none" stroke="url(#left_side_analog-s-circle8-stroke)"/><circle id="left_side_analog-s-circle9" r="3.79717" transform="translate(112.983 372.731)" fill="none" stroke-opacity="0.05"/><circle id="left_side_analog-s-circle10" r="3.79717" transform="translate(112.983 372.731)" fill="none" stroke="#000" stroke-opacity="0.2"/></g><g id="left_side_analog-u-copy-of-group3" transform="translate(-7.605001-318.912718)" filter="url(#left_side_analog-u-copy-of-group3-filter)"><circle id="left_side_analog-s-circle11" r="4.33962" transform="translate(113.321 456.811)" fill="url(#left_side_analog-s-circle11-fill)"/><circle id="left_side_analog-s-circle12" r="4.33962" transform="translate(113.321 456.811)" fill="none" fill-opacity="0.05"/><circle id="left_side_analog-s-circle13" r="4.33962" transform="translate(113.321 456.811)" fill="none" stroke="url(#left_side_analog-s-circle13-stroke)"/><circle id="left_side_analog-s-circle14" r="4.33962" transform="translate(113.321 456.811)" fill="none" stroke-opacity="0.05"/><circle id="left_side_analog-s-circle15" r="4.33962" transform="translate(113.321 456.811)" fill="none" stroke="#000" stroke-opacity="0.2"/></g><g id="left_side_analog-u-copy-of-group4" transform="translate(-7.605005-318.91272)" filter="url(#left_side_analog-u-copy-of-group4-filter)"><circle id="left_side_analog-s-circle16" r="3.79717" transform="translate(20.5608 372.731)" fill="url(#left_side_analog-s-circle16-fill)"/><circle id="left_side_analog-s-circle17" r="3.79717" transform="translate(20.5608 372.731)" fill="none" fill-opacity="0.05"/><circle id="left_side_analog-s-circle18" r="3.79717" transform="translate(20.5608 372.731)" fill="none" stroke="url(#left_side_analog-s-circle18-stroke)"/><circle id="left_side_analog-s-circle19" r="3.79717" transform="translate(20.5608 372.731)" fill="none" stroke-opacity="0.05"/><circle id="left_side_analog-s-circle20" r="3.79717" transform="translate(20.5608 372.731)" fill="none" stroke="#000" stroke-opacity="0.2"/></g><g id="left_side_analog-s-g1" transform="translate(-13.605003 7.087281)"><circle id="left_side_analog-u-copy-of-circle" r="45.566" transform="matrix(1.098543 0 0 1.098543 72.741276 88.490842)" fill="#fff"/><ellipse id="left_side_analog-u-copy-of-ellipse" rx="44.980826" ry="44.980826" transform="matrix(.852202 0 0 0.852202 73.000001 88.5)" opacity="0.5" fill="none" stroke="url(#left_side_analog-u-copy-of-ellipse-stroke)" stroke-width="3"/></g><path id="left_side_analog-u-copy-of-path2" d="M45.187729,445.526961c6.67039,4.912321,14.708073,7.502807,22.927654,7.3906c8.219685-.113287,16.186149-2.924952,22.724654-8.019611L71.006226,418.281c-.958655.746612-2.126641,1.15876-3.33166,1.176023-1.205125.016183-2.383556-.363596-3.36152-1.084315L45.187729,445.526961Z" transform="translate(-8.468056-319.912718)" fill="#d2dde1"/><text id="left_side_analog-s-text1" dx="0" dy="0" font-family="&quot;left_side_analog:::Roboto&quot;" font-size="7" font-weight="700" transform="translate(44.5 89.397359)" stroke-width="0"><tspan id="left_side_analog-s-tspan1" y="0" font-weight="700" stroke-width="0"><![CDATA[
                                                        8
                                                        ]]></tspan></text><text id="left_side_analog-u-copy-of-text" dx="0" dy="0" font-family="&quot;left_side_analog:::Roboto&quot;" font-size="7" font-weight="700" transform="translate(12.954339 89.39736)" stroke-width="0"><tspan id="left_side_analog-s-tspan2" y="0" font-weight="700" stroke-width="0"><![CDATA[
                                                        2
                                                        ]]></tspan></text><text id="left_side_analog-u-copy-of-text2" dx="0" dy="0" font-family="&quot;left_side_analog:::Roboto&quot;" font-size="7" font-weight="700" transform="translate(35.954342 69.39736)" stroke-width="0"><tspan id="left_side_analog-s-tspan3" y="0" font-weight="700" stroke-width="0"><![CDATA[
                                                        6 
                                                        ]]></tspan></text><text id="left_side_analog-u-copy-of-text-2" dx="0" dy="0" font-family="&quot;left_side_analog:::Roboto&quot;" font-size="7" font-weight="700" transform="translate(20.954343 69.39736)" stroke-width="0"><tspan id="left_side_analog-s-tspan4" y="0" font-weight="700" stroke-width="0"><![CDATA[
                                                        4 
                                                        ]]></tspan></text><text id="left_side_analog-s-text2" dx="0" dy="0" font-family="&quot;left_side_analog:::Roboto&quot;" font-size="7" font-weight="700" transform="translate(39 117.200491)" stroke-width="0"><tspan id="left_side_analog-s-tspan5" y="0" font-weight="700" stroke-width="0"><![CDATA[
                                                        10
                                                        ]]></tspan></text><text id="left_side_analog-u-copy-of-text3" dx="0" dy="0" font-family="&quot;left_side_analog:::Roboto&quot;" font-size="7" font-weight="500" transform="translate(15.534673 117.200491)" stroke-width="0"><tspan id="left_side_analog-s-tspan6" y="0" font-weight="500" stroke-width="0"><![CDATA[
                                                        0
                                                        ]]></tspan></text><text id="left_side_analog-s-text3" dx="0" dy="0" font-family="&quot;left_side_analog:::Roboto&quot;" font-size="8" font-weight="400" transform="translate(25.585862 123.479654)" fill="#707070" stroke-width="0"><tspan id="left_side_analog-s-tspan7" y="0" font-weight="400" stroke-width="0"><![CDATA[
                                                        MPa
                                                        ]]></tspan></text><g id="left_side_analog-u-copy-of-group5" transform="translate(-8.539001-319.346719)" filter="url(#left_side_analog-u-copy-of-group5-filter)"><circle id="left_side_analog-s-circle21" r="11.934" transform="translate(67.934 414.934)" fill="#ababab"/></g><g id="left_side_analog-u-copy-of-group6" transform="translate(-8.369203-319.176714)" filter="url(#left_side_analog-u-copy-of-group6-filter)"><circle id="left_side_analog-s-circle22" r="9.76415" transform="translate(67.7642 414.764)" fill="url(#left_side_analog-s-circle22-fill)"/></g><ellipse id="left_side_analog-u-copy-of-ellipse-2" rx="44.980826" ry="44.980826" transform="matrix(1.065225 0 0 1.065225 59.394999 95.587281)" fill="none" stroke="url(#left_side_analog-u-copy-of-ellipse-2-stroke)" stroke-width="3"/><g id="left_side_analog-u-pressuredrop_b1_tr" transform="translate(59.321349,95.638851) rotate(-127)"><path id="left_side_analog-u-pressuredrop_b1" d="M0,17.327926L0.739777,0.02851L1.57893,17.327926v19.088224h-1.57893v-19.088224Z" transform="scale(1.571488,1.041235) translate(-0.726976,-36.414217)" fill="url(#left_side_analog-u-pressuredrop_b1-fill)" stroke-width="0"/></g><g id="left_side_analog-u-copy-of-group7" transform="translate(-7.859703-318.667715)" filter="url(#left_side_analog-u-copy-of-group7-filter)"><circle id="left_side_analog-s-circle23" r="3.25472" transform="translate(67.2547 414.255)"/></g><g id="left_side_analog-u-copy-of-group8" transform="translate(-7.633809-319.179169)" filter="url(#left_side_analog-u-copy-of-group8-filter)"><circle id="left_side_analog-s-circle24" r="1.08491" transform="translate(65.414439 413.351447)" fill="#fff"/></g><rect id="left_side_analog-s-rect1" width="0.549915" height="6.50944" rx="0" ry="0" transform="matrix(1.560298 0 0 1 58.965983 92.332561)" opacity="0.59" fill="url(#left_side_analog-s-rect1-fill)" stroke-width="0"/><g id="left_side_analog-s-g2" transform="matrix(1.114216 0 0 1.114216 206.070184-527.646726)"><line id="left_side_analog-u-copy-of-line-72" x1="0" y1="168.01239" x2="0" y2="170.223016" transform="matrix(1.499811 0 0 1.357082-131.639809 294.516223)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-73" x1="0" y1="157.259635" x2="0" y2="160.94401" transform="matrix(1.587917 0 0 1.436803-131.639809 294.397503)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-74" x1="15.283193" y1="167.274938" x2="15.283193" y2="169.485564" transform="matrix(1.494104 0.130717-.118277 1.351918-131.463667 294.523916)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-75" x1="30.45014" y1="165.068105" x2="30.45014" y2="167.278731" transform="matrix(1.477026 0.260439-.235655 1.336465-131.288865 294.546929)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-76" x1="45.385384" y1="161.408986" x2="45.385384" y2="163.619612" transform="matrix(1.448706 0.38818-.351239 1.310841-131.116735 294.58509)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-77" x1="59.975046" y1="156.324933" x2="59.975046" y2="158.535559" transform="matrix(1.409361 0.512966-.464149 1.27524-130.948585 294.638107)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-78" x1="69.996398" y1="140.109668" x2="69.996398" y2="143.794043" transform="matrix(1.439142 0.671083-.607219 1.302186-130.735522 294.597979)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-79" x1="87.677625" y1="142.048504" x2="87.677625" y2="144.25913" transform="matrix(1.298874 0.749906-.678541 1.175267-130.629307 294.786989)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-80" x1="100.579616" y1="132.964484" x2="100.579616" y2="135.17511" transform="matrix(1.228573 0.860256-.77839 1.111656-130.480609 294.88172)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-81" x1="112.716277" y1="122.672242" x2="112.716277" y2="124.882868" transform="matrix(1.148922 0.96406-.872315 1.039585-130.340733 294.989051)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-82" x1="123.995032" y1="111.250152" x2="123.995032" y2="113.460778" transform="matrix(1.060527 1.060527-.959602 0.959602-130.210744 295.108164)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-83" x1="126.876723" y1="91.873627" x2="126.876723" y2="95.558002" transform="matrix(1.020693 1.216415-1.100655 0.923559-130.000684 295.16184)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-84" x1="143.64271" y1="85.372267" x2="143.64271" y2="87.582893" transform="matrix(.860256 1.228573-1.111656 0.77839-129.9843 295.378029)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-85" x1="-135.672758" y1="-130.776124" x2="-135.672758" y2="-127.091749" transform="matrix(-.910792-1.300745 1.17696-.824116-133.39257 297.764525)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-852" x1="151.862249" y1="71.113459" x2="151.862249" y2="73.324085" transform="matrix(.749906 1.298874-1.175267 0.678541-129.889569 295.526727)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-86" x1="-151.862249" y1="-122.684929" x2="-151.862249" y2="-120.474303" transform="matrix(-.749906-1.298874 1.175267-.678541-133.390049 297.547731)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-862" x1="158.925903" y1="56.116936" x2="158.925903" y2="58.327562" transform="matrix(.633848 1.35929-1.229934 0.573528-129.808158 295.683116)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-87" x1="-158.925903" y1="-107.688406" x2="-158.925903" y2="-105.47778" transform="matrix(-.633848-1.35929 1.229934-.573528-133.47146 297.391342)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-872" x1="164.780283" y1="40.497103" x2="164.780283" y2="42.707729" transform="matrix(.512966 1.409361-1.27524 0.464149-129.740687 295.846005)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-88" x1="-164.780283" y1="-92.068573" x2="-164.780283" y2="-89.857947" transform="matrix(-.512966-1.409361 1.27524-.464149-133.538931 297.228453)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-882" x1="159.982111" y1="21.58977" x2="159.982111" y2="25.274145" transform="matrix(.410983 1.53381-1.387845 0.371872-129.572993 295.983427)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-89" x1="-169.380416" y1="-75.944306" x2="-169.380416" y2="-73.73368" transform="matrix(-.38818-1.448706 1.310841-.351239-133.591948 297.060303)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-892" x1="172.691323" y1="7.866956" x2="172.691323" y2="10.077582" transform="matrix(.260439 1.477026-1.336465 0.235655-129.649509 296.186285)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-90" x1="-163.109444" y1="-57.571126" x2="-163.109444" y2="-53.886751" transform="matrix(-.275739-1.563793 1.414975-.249498-133.747028 296.908788)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-902" x1="174.688019" y1="-8.895086" x2="174.688019" y2="-6.68446" transform="matrix(.130717 1.494104-1.351918 0.118277-129.626496 296.361087)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-91" x1="-174.688019" y1="-42.676384" x2="-174.688019" y2="-40.465758" transform="matrix(-.130717-1.494104 1.351918-.118277-133.653122 296.713371)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-912" x1="175.355513" y1="-25.785735" x2="175.355513" y2="-23.575109" transform="matrix(0 1.499811-1.357082 0-129.618806 296.537229)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-92" x1="-175.355513" y1="-25.785735" x2="-175.355513" y2="-23.575109" transform="matrix(0-1.499811 1.357082 0-133.660812 296.537229)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-922" x1="174.688019" y1="-42.676384" x2="174.688019" y2="-40.465758" transform="matrix(-.130717 1.494104-1.351918-.118277-129.626496 296.713371)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-93" x1="-174.688019" y1="-8.895086" x2="-174.688019" y2="-6.68446" transform="matrix(.130717-1.494104 1.351918 0.118277-133.653122 296.361087)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-932" x1="172.691323" y1="-59.438426" x2="172.691323" y2="-57.2278" transform="matrix(-.260439 1.477026-1.336465-.235655-129.649509 296.888173)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-94" x1="-172.691323" y1="7.866956" x2="-172.691323" y2="10.077582" transform="matrix(.260439-1.477026 1.336465 0.235655-133.630109 296.186285)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-942" x1="163.109444" y1="-57.571126" x2="163.109444" y2="-53.886751" transform="matrix(-.275739 1.563793-1.414975-.249498-129.53259 296.908788)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-95" x1="-172.691323" y1="7.866956" x2="-172.691323" y2="10.077582" transform="matrix(.260439-1.477026 1.336465 0.235655-133.630109 296.186285)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-952" x1="169.380416" y1="-75.944306" x2="169.380416" y2="-73.73368" transform="matrix(-.38818 1.448706-1.310841-.351239-129.68767 297.060303)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-96" x1="-159.982111" y1="21.58977" x2="-159.982111" y2="25.274145" transform="matrix(.410983-1.53381 1.387845 0.371872-133.706625 295.983427)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-962" x1="164.780283" y1="-92.068573" x2="164.780283" y2="-89.857947" transform="matrix(-.512966 1.409361-1.27524-.464149-129.740687 297.228453)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-97" x1="-164.780283" y1="40.497103" x2="-164.780283" y2="42.707729" transform="matrix(.512966-1.409361 1.27524 0.464149-133.538931 295.846005)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-972" x1="158.925903" y1="-107.688406" x2="158.925903" y2="-105.47778" transform="matrix(-.633848 1.35929-1.229934-.573528-129.808158 297.391342)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-98" x1="-158.925903" y1="56.116936" x2="-158.925903" y2="58.327562" transform="matrix(.633848-1.35929 1.229934 0.573528-133.47146 295.683116)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-982" x1="151.862249" y1="-122.684929" x2="151.862249" y2="-120.474303" transform="matrix(-.749905 1.298874-1.175267-.678541-129.889569 297.547731)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-99" x1="-151.862249" y1="71.113459" x2="-151.862249" y2="73.324085" transform="matrix(.749906-1.298874 1.175267 0.678541-133.390049 295.526727)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-992" x1="135.672758" y1="-130.776124" x2="135.672758" y2="-127.091749" transform="matrix(-.910792 1.300745-1.17696-.824116-129.887048 297.764525)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-100" x1="-143.64271" y1="85.372267" x2="-143.64271" y2="87.582893" transform="matrix(.860256-1.228573 1.111656 0.77839-133.295318 295.378029)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-101" x1="-126.876723" y1="91.873627" x2="-126.876723" y2="95.558002" transform="matrix(1.020693-1.216415 1.100655 0.923559-133.278934 295.16184)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-102" x1="-123.995032" y1="111.250152" x2="-123.995032" y2="113.460778" transform="matrix(1.060527-1.060527 0.959602 0.959602-133.068874 295.108164)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-103" x1="-112.716277" y1="122.672242" x2="-112.716277" y2="124.882868" transform="matrix(1.148922-.96406 0.872315 1.039585-132.938885 294.989051)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-104" x1="-100.579616" y1="132.964484" x2="-100.579616" y2="135.17511" transform="matrix(1.228573-.860256 0.77839 1.111656-132.799009 294.88172)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-105" x1="-87.677625" y1="142.048504" x2="-87.677625" y2="144.25913" transform="matrix(1.298874-.749906 0.678541 1.175267-132.650311 294.786989)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-106" x1="-69.996398" y1="140.109668" x2="-69.996398" y2="143.794043" transform="matrix(1.439142-.671083 0.607219 1.302186-132.544096 294.597979)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-107" x1="-59.975046" y1="156.324933" x2="-59.975046" y2="158.535559" transform="matrix(1.409361-.512966 0.464149 1.27524-132.331033 294.638107)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-108" x1="-45.385384" y1="161.408986" x2="-45.385384" y2="163.619612" transform="matrix(1.448706-.38818 0.351239 1.310841-132.162883 294.58509)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-109" x1="-30.45014" y1="165.068105" x2="-30.45014" y2="167.278731" transform="matrix(1.477026-.260439 0.235655 1.336465-131.990753 294.546929)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-110" x1="-15.283193" y1="167.274938" x2="-15.283193" y2="169.485564" transform="matrix(1.494104-.130717 0.118277 1.351918-131.815951 294.523916)" fill="none" stroke="#000" stroke-width="0.4"/><line id="left_side_analog-u-copy-of-line-111" x1="-15.283193" y1="167.274938" x2="-15.283193" y2="169.485564" transform="matrix(1.494104-.130717 0.118277 1.351918-131.815951 294.523916)" fill="none" stroke="#000" stroke-width="0.4"/></g><text id="left_side_analog-s-text4" dx="0" dy="0" font-family="&quot;left_side_analog:::Roboto&quot;" font-size="6" font-weight="900" transform="translate(12.307144 26.250258)" fill="#3f3f3f" stroke-width="0"><tspan id="left_side_analog-s-tspan8" y="0" font-weight="900" stroke-width="0"><![CDATA[
                                                        PRESSURE  IN STREAM
                                                        ]]></tspan><tspan id="left_side_analog-s-tspan9" x="35" y="6" font-weight="900" stroke-width="0"><![CDATA[
                                                                       DRUM
                                                        ]]></tspan><tspan id="left_side_analog-s-tspan10" x="0" y="12" font-weight="900" stroke-width="0"><![CDATA[
                                                         
                                                        ]]></tspan></text>
                                                        <style><![CDATA[
                                                        @font-face {font-family: 'left_side_analog:::Roboto';font-style: normal;font-weight: 400;src: url(https://fonts.gstatic.com/l/font?kit=KFOmCnqEu92Fr1Me5X5aIwcMGPXErckKPjL5TwlNMGCNOySs&skey=a0a0114a1dcab3ac&v=v32) format('truetype');}@font-face {font-family: 'left_side_analog:::Roboto';font-style: normal;font-weight: 500;src: url(https://fonts.gstatic.com/l/font?kit=KFOlCnqEu92Fr1MmEU9vAwUoCvHDp7x4QzrwRBBSLWSKCbJZT4sz&skey=ee881451c540fdec&v=v32) format('truetype');}@font-face {font-family: 'left_side_analog:::Roboto';font-style: normal;font-weight: 700;src: url(https://fonts.gstatic.com/l/font?kit=KFOlCnqEu92Fr1MmWUlvAwUoCvHDp7x4QzrwRBBSLWSKCbJZT4sz&skey=c06e7213f788649e&v=v32) format('truetype');}@font-face {font-family: 'left_side_analog:::Roboto';font-style: normal;font-weight: 900;src: url(https://fonts.gstatic.com/l/font?kit=KFOlCnqEu92Fr1MmYUtvAwUoCvHDp7x4QzrwRBBSLWSKCbJZT4sz&skey=934406f772f9777d&v=v32) format('truetype');}
                                                        ]]></style>
                                                        </svg>
                                                        
                                            
                                                 '''),
          );
        });
  }
}
