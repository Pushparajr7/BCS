// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:bcs/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_animations/animation_builder/custom_animation_builder.dart';
import 'package:simple_animations/movie_tween/movie_tween.dart';

class Diff_Pressure1 extends ConsumerStatefulWidget {
  const Diff_Pressure1({super.key});

  @override
  ConsumerState<Diff_Pressure1> createState() => _Diff_Pressure1State();
}

class _Diff_Pressure1State extends ConsumerState<Diff_Pressure1>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  double knobValue1 = -135;
  double knobValue2 = -135;

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
    // final isStateTrue =
    //     ref.read(mapListProvider)[0]["steps"][0]["steps"][0]["state"];

    // // Update the knob values based on the state
    // if (isStateTrue) {
    //   setState(() {});
    //   knobValue1 = 0;
    //   knobValue2 = 90;
    // } else {
    //   knobValue1 =
    //       0; // You can change this to whatever value you need when the state is false
    //   knobValue2 = 0; // Same here
    // }
    tween = MovieTween()
      ..scene(
              begin: const Duration(seconds: 0),
              end: const Duration(seconds: 3))
          .tween('needle', Tween<double>(begin: knobValue1, end: knobValue2));
    _controller.reset();
    _controller.forward();
    print(knobValue1);
    print(knobValue2);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<bool>(
        mapListProvider
            .select((state) => state[2]["steps"][1]["steps"][8]["state"]),
        (previous, next) {
      if (next) {
        
        setState(() {
          knobValue1=-135;
          knobValue2=-85;
          print(
              "state============> ${ref.read(mapListProvider)[2]["steps"][1]["steps"][8]["state"]}");
          _updateTween();
        });
      }
    });
ref.listen<bool>(
        mapListProvider
            .select((state) => state[2]["steps"][8]["steps"][13]["state"]),
        (previous, next) {
      if (next) {
        
        setState(() {
          knobValue1=-135;
          knobValue2=45;
          print(
              "state============> ${ref.read(mapListProvider)[2]["steps"][8]["steps"][13]["state"]}");
          _updateTween();
        });
      }
    });

    double HEIGHT = MediaQuery.of(context).size.height;
    return CustomAnimationBuilder<Movie>(
        control: control,
        tween: tween,
        duration: const Duration(seconds: 3),
        builder: (context, value, animation) {
          return SvgPicture.string(
             height: HEIGHT*0.07,
              '''<svg id="right_side_analog" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 13 120 141" shape-rendering="geometricPrecision" text-rendering="geometricPrecision" project-id="409f0026765545d695d97136708af4eb" export-id="f4fb5cbc4876462aa67bbf9da5333971" cached="false">
                                                        <style><![CDATA[
                                                       
                                                        ]]></style>
                                                        <defs><filter id="right_side_analog-u-copy-of-group-2-filter" x="-150%" width="400%" y="-150%" height="400%"><feGaussianBlur id="right_side_analog-u-copy-of-group-2-filter-drop-shadow-0-blur" in="SourceAlpha" stdDeviation="2,2"/><feOffset id="right_side_analog-u-copy-of-group-2-filter-drop-shadow-0-offset" dx="0" dy="0" result="tmp"/><feFlood id="right_side_analog-u-copy-of-group-2-filter-drop-shadow-0-flood" flood-color="#000"/><feComposite id="right_side_analog-u-copy-of-group-2-filter-drop-shadow-0-composite" operator="in" in2="tmp"/><feMerge id="right_side_analog-u-copy-of-group-2-filter-drop-shadow-0-merge" result="result"><feMergeNode id="right_side_analog-u-copy-of-group-2-filter-drop-shadow-0-merge-node-1"/><feMergeNode id="right_side_analog-u-copy-of-group-2-filter-drop-shadow-0-merge-node-2" in="SourceGraphic"/></feMerge></filter><linearGradient id="right_side_analog-s-circle1-fill" x1="-1.6273" y1="-3.39" x2="0" y2="4.34" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="right_side_analog-s-circle1-fill-0" offset="0%" stop-color="#a4a4a4"/><stop id="right_side_analog-s-circle1-fill-1" offset="100%" stop-color="#5b5b5b"/></linearGradient><linearGradient id="right_side_analog-s-circle3-stroke" x1="0" y1="-4.339" x2="0" y2="4.34" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="right_side_analog-s-circle3-stroke-0" offset="0%" stop-color="rgba(157,157,157,0.75)"/><stop id="right_side_analog-s-circle3-stroke-1" offset="100%" stop-color="#3e3e3e"/></linearGradient><filter id="right_side_analog-u-copy-of-group-22-filter" x="-150%" width="400%" y="-150%" height="400%"><feGaussianBlur id="right_side_analog-u-copy-of-group-22-filter-drop-shadow-0-blur" in="SourceAlpha" stdDeviation="2,2"/><feOffset id="right_side_analog-u-copy-of-group-22-filter-drop-shadow-0-offset" dx="0" dy="0" result="tmp"/><feFlood id="right_side_analog-u-copy-of-group-22-filter-drop-shadow-0-flood" flood-color="#000"/><feComposite id="right_side_analog-u-copy-of-group-22-filter-drop-shadow-0-composite" operator="in" in2="tmp"/><feMerge id="right_side_analog-u-copy-of-group-22-filter-drop-shadow-0-merge" result="result"><feMergeNode id="right_side_analog-u-copy-of-group-22-filter-drop-shadow-0-merge-node-1"/><feMergeNode id="right_side_analog-u-copy-of-group-22-filter-drop-shadow-0-merge-node-2" in="SourceGraphic"/></feMerge></filter><linearGradient id="right_side_analog-s-circle6-fill" x1="-1.424" y1="-2.967" x2="0" y2="3.797" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="right_side_analog-s-circle6-fill-0" offset="0%" stop-color="#a4a4a4"/><stop id="right_side_analog-s-circle6-fill-1" offset="100%" stop-color="#5b5b5b"/></linearGradient><linearGradient id="right_side_analog-s-circle8-stroke" x1="0" y1="-3.797" x2="0" y2="3.797" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="right_side_analog-s-circle8-stroke-0" offset="0%" stop-color="rgba(157,157,157,0.75)"/><stop id="right_side_analog-s-circle8-stroke-1" offset="100%" stop-color="#3e3e3e"/></linearGradient><filter id="right_side_analog-u-copy-of-group-23-filter" x="-150%" width="400%" y="-150%" height="400%"><feGaussianBlur id="right_side_analog-u-copy-of-group-23-filter-drop-shadow-0-blur" in="SourceAlpha" stdDeviation="2,2"/><feOffset id="right_side_analog-u-copy-of-group-23-filter-drop-shadow-0-offset" dx="0" dy="0" result="tmp"/><feFlood id="right_side_analog-u-copy-of-group-23-filter-drop-shadow-0-flood" flood-color="#000"/><feComposite id="right_side_analog-u-copy-of-group-23-filter-drop-shadow-0-composite" operator="in" in2="tmp"/><feMerge id="right_side_analog-u-copy-of-group-23-filter-drop-shadow-0-merge" result="result"><feMergeNode id="right_side_analog-u-copy-of-group-23-filter-drop-shadow-0-merge-node-1"/><feMergeNode id="right_side_analog-u-copy-of-group-23-filter-drop-shadow-0-merge-node-2" in="SourceGraphic"/></feMerge></filter><linearGradient id="right_side_analog-s-circle11-fill" x1="-1.627" y1="-3.39" x2="0" y2="4.34" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="right_side_analog-s-circle11-fill-0" offset="0%" stop-color="#a4a4a4"/><stop id="right_side_analog-s-circle11-fill-1" offset="100%" stop-color="#5b5b5b"/></linearGradient><linearGradient id="right_side_analog-s-circle13-stroke" x1="0" y1="-4.339" x2="0" y2="4.34" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="right_side_analog-s-circle13-stroke-0" offset="0%" stop-color="rgba(157,157,157,0.75)"/><stop id="right_side_analog-s-circle13-stroke-1" offset="100%" stop-color="#3e3e3e"/></linearGradient><filter id="right_side_analog-u-copy-of-group-24-filter" x="-150%" width="400%" y="-150%" height="400%"><feGaussianBlur id="right_side_analog-u-copy-of-group-24-filter-drop-shadow-0-blur" in="SourceAlpha" stdDeviation="2,2"/><feOffset id="right_side_analog-u-copy-of-group-24-filter-drop-shadow-0-offset" dx="0" dy="0" result="tmp"/><feFlood id="right_side_analog-u-copy-of-group-24-filter-drop-shadow-0-flood" flood-color="#000"/><feComposite id="right_side_analog-u-copy-of-group-24-filter-drop-shadow-0-composite" operator="in" in2="tmp"/><feMerge id="right_side_analog-u-copy-of-group-24-filter-drop-shadow-0-merge" result="result"><feMergeNode id="right_side_analog-u-copy-of-group-24-filter-drop-shadow-0-merge-node-1"/><feMergeNode id="right_side_analog-u-copy-of-group-24-filter-drop-shadow-0-merge-node-2" in="SourceGraphic"/></feMerge></filter><linearGradient id="right_side_analog-s-circle16-fill" x1="-1.4239" y1="-2.967" x2="0" y2="3.797" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="right_side_analog-s-circle16-fill-0" offset="0%" stop-color="#a4a4a4"/><stop id="right_side_analog-s-circle16-fill-1" offset="100%" stop-color="#5b5b5b"/></linearGradient><linearGradient id="right_side_analog-s-circle18-stroke" x1="0" y1="-3.797" x2="0" y2="3.797" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="right_side_analog-s-circle18-stroke-0" offset="0%" stop-color="rgba(157,157,157,0.75)"/><stop id="right_side_analog-s-circle18-stroke-1" offset="100%" stop-color="#3e3e3e"/></linearGradient><radialGradient id="right_side_analog-u-copy-of-ellipse-stroke" cx="0" cy="0" r="0.5" spreadMethod="pad" gradientUnits="objectBoundingBox" gradientTransform="translate(0.5 0.5)"><stop id="right_side_analog-u-copy-of-ellipse-stroke-0" offset="85%" stop-color="#000"/><stop id="right_side_analog-u-copy-of-ellipse-stroke-1" offset="100%" stop-color="#fff"/></radialGradient><filter id="right_side_analog-u-copy-of-group-25-filter" x="-150%" width="400%" y="-150%" height="400%"><feGaussianBlur id="right_side_analog-u-copy-of-group-25-filter-inner-shadow-0-blur" in="SourceAlpha" stdDeviation="2,2"/><feOffset id="right_side_analog-u-copy-of-group-25-filter-inner-shadow-0-offset" dx="0" dy="4" result="tmp"/><feComposite id="right_side_analog-u-copy-of-group-25-filter-inner-shadow-0-composite" operator="arithmetic" k2="-1" k3="1" in2="SourceGraphic"/><feColorMatrix id="right_side_analog-u-copy-of-group-25-filter-inner-shadow-0-color-matrix" type="matrix" values="0 0 0 0 0.188235 0 0 0 0 0.188235 0 0 0 0 0.188235 0 0 0 0.25 0"/><feMerge id="right_side_analog-u-copy-of-group-25-filter-inner-shadow-0-merge" result="result"><feMergeNode id="right_side_analog-u-copy-of-group-25-filter-inner-shadow-0-merge-node-1" in="SourceGraphic"/><feMergeNode id="right_side_analog-u-copy-of-group-25-filter-inner-shadow-0-merge-node-2"/></feMerge></filter><filter id="right_side_analog-u-copy-of-group-26-filter" x="-150%" width="400%" y="-150%" height="400%"><feGaussianBlur id="right_side_analog-u-copy-of-group-26-filter-drop-shadow-0-blur" in="SourceAlpha" stdDeviation="2,2"/><feOffset id="right_side_analog-u-copy-of-group-26-filter-drop-shadow-0-offset" dx="0" dy="4" result="tmp"/><feFlood id="right_side_analog-u-copy-of-group-26-filter-drop-shadow-0-flood" flood-color="rgba(48,48,48,0.25)"/><feComposite id="right_side_analog-u-copy-of-group-26-filter-drop-shadow-0-composite" operator="in" in2="tmp"/><feMerge id="right_side_analog-u-copy-of-group-26-filter-drop-shadow-0-merge" result="result"><feMergeNode id="right_side_analog-u-copy-of-group-26-filter-drop-shadow-0-merge-node-1"/><feMergeNode id="right_side_analog-u-copy-of-group-26-filter-drop-shadow-0-merge-node-2" in="SourceGraphic"/></feMerge></filter><linearGradient id="right_side_analog-s-circle22-fill" x1="0" y1="-9.764" x2="0" y2="9.764" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="right_side_analog-s-circle22-fill-0" offset="0%" stop-color="#6e6e6d"/><stop id="right_side_analog-s-circle22-fill-1" offset="18.4%" stop-color="#fffff7"/><stop id="right_side_analog-s-circle22-fill-2" offset="64.5%" stop-color="#cacfcf"/><stop id="right_side_analog-s-circle22-fill-3" offset="93.5%" stop-color="#fff"/></linearGradient><radialGradient id="right_side_analog-u-copy-of-ellipse-3-stroke" cx="0" cy="0" r="0.5" spreadMethod="pad" gradientUnits="objectBoundingBox" gradientTransform="translate(0.5 0.5)"><stop id="right_side_analog-u-copy-of-ellipse-3-stroke-0" offset="85%" stop-color="#000"/><stop id="right_side_analog-u-copy-of-ellipse-3-stroke-1" offset="100%" stop-color="#fff"/></radialGradient><radialGradient id="right_side_analog-u-rpm_b1-fill" cx="0" cy="0" r="0.5" spreadMethod="pad" gradientUnits="objectBoundingBox" gradientTransform="translate(0.5 0.5)"><stop id="right_side_analog-u-rpm_b1-fill-0" offset="0%" stop-color="#dfd9d9"/><stop id="right_side_analog-u-rpm_b1-fill-1" offset="100%" stop-color="#534f4f"/></radialGradient><filter id="right_side_analog-u-copy-of-group-27-filter" x="-150%" width="400%" y="-150%" height="400%"><feGaussianBlur id="right_side_analog-u-copy-of-group-27-filter-inner-shadow-0-blur" in="SourceAlpha" stdDeviation="2,2"/><feOffset id="right_side_analog-u-copy-of-group-27-filter-inner-shadow-0-offset" dx="0" dy="4" result="tmp"/><feComposite id="right_side_analog-u-copy-of-group-27-filter-inner-shadow-0-composite" operator="arithmetic" k2="-1" k3="1" in2="SourceGraphic"/><feColorMatrix id="right_side_analog-u-copy-of-group-27-filter-inner-shadow-0-color-matrix" type="matrix" values="0 0 0 0 1 0 0 0 0 0.901961 0 0 0 0 0.901961 0 0 0 0.25 0"/><feMerge id="right_side_analog-u-copy-of-group-27-filter-inner-shadow-0-merge" result="result"><feMergeNode id="right_side_analog-u-copy-of-group-27-filter-inner-shadow-0-merge-node-1" in="SourceGraphic"/><feMergeNode id="right_side_analog-u-copy-of-group-27-filter-inner-shadow-0-merge-node-2"/></feMerge></filter><filter id="right_side_analog-u-copy-of-group-28-filter" x="-150%" width="400%" y="-150%" height="400%"><feGaussianBlur id="right_side_analog-u-copy-of-group-28-filter-blur-0" stdDeviation="0.5,0.5" result="result"/></filter><linearGradient id="right_side_analog-u-copy-of-rectangle-fill" x1="0" y1="0.5" x2="1" y2="0.5" spreadMethod="pad" gradientUnits="objectBoundingBox" gradientTransform="translate(0 0)"><stop id="right_side_analog-u-copy-of-rectangle-fill-0" offset="0%" stop-color="#8a8888"/><stop id="right_side_analog-u-copy-of-rectangle-fill-1" offset="42%" stop-color="#c2bdbd"/><stop id="right_side_analog-u-copy-of-rectangle-fill-2" offset="100%" stop-color="#757777"/></linearGradient></defs><rect id="right_side_analog-u-copy-of-rectangle-2" width="120" height="115" rx="10" ry="10" transform="translate(.180149 38.703032)" fill="#dbdbdb"/><path id="right_side_analog-u-copy-of-path-2" d="M7,367c0-5.523,4.4772-10,10-10h100.425c5.522,0,10,4.477,10,10v95c0,5.523-4.478,10-10,10L17,472c-5.5229,0-10-4.477-10-10v-95Z" transform="translate(-6.81985-318.287799)" fill="none"/><g id="right_side_analog-u-copy-of-group-2" transform="translate(126.141107-287.409547)" filter="url(#right_side_analog-u-copy-of-group-2-filter)"><circle id="right_side_analog-s-circle1" r="4.33962" transform="translate(-112.941658 425.93276)" fill="url(#right_side_analog-s-circle1-fill)"/><circle id="right_side_analog-s-circle2" r="4.33962" transform="translate(-112.941658 425.93276)" fill="none" fill-opacity="0.05"/><circle id="right_side_analog-s-circle3" r="4.33962" transform="translate(-112.941658 425.93276)" fill="none" stroke="url(#right_side_analog-s-circle3-stroke)"/><circle id="right_side_analog-s-circle4" r="4.33962" transform="translate(-112.941658 425.93276)" fill="none" stroke-opacity="0.05"/><circle id="right_side_analog-s-circle5" r="4.33962" transform="translate(-112.941658 425.93276)" fill="none" stroke="#000" stroke-opacity="0.2"/></g><g id="right_side_analog-u-copy-of-group-22" transform="translate(126.141108-287.409544)" filter="url(#right_side_analog-u-copy-of-group-22-filter)"><circle id="right_side_analog-s-circle6" r="3.79717" transform="translate(-19.977958 341.85276)" fill="url(#right_side_analog-s-circle6-fill)"/><circle id="right_side_analog-s-circle7" r="3.79717" transform="translate(-19.977958 341.85276)" fill="none" fill-opacity="0.05"/><circle id="right_side_analog-s-circle8" r="3.79717" transform="translate(-19.977958 341.85276)" fill="none" stroke="url(#right_side_analog-s-circle8-stroke)"/><circle id="right_side_analog-s-circle9" r="3.79717" transform="translate(-19.977958 341.85276)" fill="none" stroke-opacity="0.05"/><circle id="right_side_analog-s-circle10" r="3.79717" transform="translate(-19.977958 341.85276)" fill="none" stroke="#000" stroke-opacity="0.2"/></g><g id="right_side_analog-u-copy-of-group-23" transform="translate(126.141108-287.409547)" filter="url(#right_side_analog-u-copy-of-group-23-filter)"><circle id="right_side_analog-s-circle11" r="4.33962" transform="translate(-19.639958 425.93276)" fill="url(#right_side_analog-s-circle11-fill)"/><circle id="right_side_analog-s-circle12" r="4.33962" transform="translate(-19.639958 425.93276)" fill="none" fill-opacity="0.05"/><circle id="right_side_analog-s-circle13" r="4.33962" transform="translate(-19.639958 425.93276)" fill="none" stroke="url(#right_side_analog-s-circle13-stroke)"/><circle id="right_side_analog-s-circle14" r="4.33962" transform="translate(-19.639958 425.93276)" fill="none" stroke-opacity="0.05"/><circle id="right_side_analog-s-circle15" r="4.33962" transform="translate(-19.639958 425.93276)" fill="none" stroke="#000" stroke-opacity="0.2"/></g><g id="right_side_analog-u-copy-of-group-24" transform="translate(126.141107-287.409544)" filter="url(#right_side_analog-u-copy-of-group-24-filter)"><circle id="right_side_analog-s-circle16" r="3.79717" transform="translate(-112.400158 341.85276)" fill="url(#right_side_analog-s-circle16-fill)"/><circle id="right_side_analog-s-circle17" r="3.79717" transform="translate(-112.400158 341.85276)" fill="none" fill-opacity="0.05"/><circle id="right_side_analog-s-circle18" r="3.79717" transform="translate(-112.400158 341.85276)" fill="none" stroke="url(#right_side_analog-s-circle18-stroke)"/><circle id="right_side_analog-s-circle19" r="3.79717" transform="translate(-112.400158 341.85276)" fill="none" stroke-opacity="0.05"/><circle id="right_side_analog-s-circle20" r="3.79717" transform="translate(-112.400158 341.85276)" fill="none" stroke="#000" stroke-opacity="0.2"/></g><g id="right_side_analog-u-copy-of-group" transform="translate(120.141108 38.590454)"><circle id="right_side_analog-u-copy-of-circle" r="45.566" transform="matrix(1.098543 0 0 1.098543-60.219682 57.612579)" fill="#fff"/><ellipse id="right_side_analog-u-copy-of-ellipse" rx="44.980826" ry="44.980826" transform="matrix(.852202 0 0 0.852202-59.960957 57.621745)" opacity="0.5" fill="none" stroke="url(#right_side_analog-u-copy-of-ellipse-stroke)" stroke-width="3"/></g><path id="right_side_analog-u-copy-of-path-22" d="M45.187729,445.526961c6.67039,4.912321,14.708073,7.502807,22.927654,7.3906c8.219685-.113287,16.186149-2.924952,22.724654-8.019611L71.006226,418.281c-.958655.746612-2.126641,1.15876-3.33166,1.176023-1.205125.016183-2.383556-.363596-3.36152-1.084315L45.187729,445.526961Z" transform="translate(-7.682902-319.287796)" fill="#d2dde1"/><text id="right_side_analog-u-copy-of-text" dx="0" dy="0" font-family="&quot;right_side_analog:::Roboto&quot;" font-size="7" font-weight="700" transform="translate(37.362893 120.05267)" stroke-width="0"><tspan id="right_side_analog-s-tspan1" y="0" font-weight="700" stroke-width="0"><![CDATA[
                                                        0.6 
                                                        ]]></tspan></text><text id="right_side_analog-u-copy-of-text-2" dx="0" dy="0" font-family="&quot;right_side_analog:::Roboto&quot;" font-size="7" font-weight="700" transform="translate(42 98)" stroke-width="0"><tspan id="right_side_analog-s-tspan2" y="0" font-weight="700" stroke-width="0"><![CDATA[
                                                        0.5 
                                                        ]]></tspan></text><text id="right_side_analog-u-copy-of-text-3" dx="0" dy="0" font-family="&quot;right_side_analog:::Roboto&quot;" font-size="7" font-weight="700" transform="translate(36.362892 73.05267)" stroke-width="0"><tspan id="right_side_analog-s-tspan3" y="0" font-weight="700" stroke-width="0"><![CDATA[
                                                        0.4 
                                                        ]]></tspan></text><text id="right_side_analog-u-copy-of-text-4" dx="0" dy="0" font-family="&quot;right_side_analog:::Roboto&quot;" font-size="7" font-weight="700" transform="translate(17.362892 74.05267)" stroke-width="0"><tspan id="right_side_analog-s-tspan4" y="0" font-weight="700" stroke-width="0"><![CDATA[
                                                        0.2
                                                        ]]></tspan></text><text id="right_side_analog-u-copy-of-text-42" dx="0" dy="0" font-family="&quot;right_side_analog:::Roboto&quot;" font-size="7" font-weight="700" transform="translate(27.362891 66.052674)" stroke-width="0"><tspan id="right_side_analog-s-tspan5" y="0" font-weight="700" stroke-width="0"><![CDATA[
                                                        0.3
                                                        ]]></tspan></text><text id="right_side_analog-u-copy-of-text-32" dx="0" dy="0" font-family="&quot;right_side_analog:::Roboto&quot;" font-size="7" font-weight="700" transform="translate(12.362892 98)" stroke-width="0"><tspan id="right_side_analog-s-tspan6" y="0" font-weight="700" stroke-width="0"><![CDATA[
                                                        0.1 
                                                        ]]></tspan></text><text id="right_side_analog-u-copy-of-text-22" dx="0" dy="0" font-family="&quot;right_side_analog:::Roboto&quot;" font-size="7" font-weight="700" transform="translate(18.362892 121.05267)" stroke-width="0"><tspan id="right_side_analog-s-tspan7" y="0" font-weight="700" stroke-width="0"><![CDATA[
                                                        0
                                                        ]]></tspan></text><text id="right_side_analog-u-copy-of-text2" dx="0" dy="0" font-family="&quot;right_side_analog:::Roboto&quot;" font-size="8" font-weight="400" transform="translate(25 123.479677)" fill="#707070" stroke-width="0"><tspan id="right_side_analog-s-tspan8" y="0" font-weight="400" stroke-width="0"><![CDATA[
                                                        r/min
                                                        ]]></tspan></text><g id="right_side_analog-u-copy-of-group-25" transform="translate(125.207109-287.843546)" filter="url(#right_side_analog-u-copy-of-group-25-filter)"><circle id="right_side_analog-s-circle21" r="11.934" transform="translate(-65.026958 384.055759)" fill="#ababab"/></g><g id="right_side_analog-u-copy-of-group-26" transform="translate(125.376906-287.673543)" filter="url(#right_side_analog-u-copy-of-group-26-filter)"><circle id="right_side_analog-s-circle22" r="9.76415" transform="translate(-65.196758 383.88576)" fill="url(#right_side_analog-s-circle22-fill)"/></g><ellipse id="right_side_analog-u-copy-of-ellipse-3" rx="44.980826" ry="44.980826" transform="matrix(1.065225 0 0 1.065225 60.180149 96.212201)" fill="none" stroke="url(#right_side_analog-u-copy-of-ellipse-3-stroke)" stroke-width="3"/><g id="right_side_analog-u-rpm_b1_tr" transform="translate(60.106502,96.263776) rotate(${value.get('needle')})"><path id="right_side_analog-u-rpm_b1" d="M0,17.327926L0.739777,0.02851L1.57893,17.327926v19.088224h-1.57893v-19.088224Z" transform="scale(1.571488,1.041235) translate(-0.726976,-36.414217)" fill="url(#right_side_analog-u-rpm_b1-fill)" stroke-width="0"/></g><g id="right_side_analog-u-copy-of-group-27" transform="translate(125.886405-287.16454)" filter="url(#right_side_analog-u-copy-of-group-27-filter)"><circle id="right_side_analog-s-circle23" r="3.25472" transform="translate(-65.706258 383.37676)"/></g><g id="right_side_analog-u-copy-of-group-28" transform="translate(126.112301-287.675994)" filter="url(#right_side_analog-u-copy-of-group-28-filter)"><circle id="right_side_analog-s-circle24" r="1.08491" transform="translate(-67.546519 382.473207)" fill="#fff"/></g><rect id="right_side_analog-u-copy-of-rectangle" width="0.549915" height="6.50944" rx="0" ry="0" transform="matrix(1.560298 0 0 1 59.751134 92.957481)" opacity="0.59" fill="url(#right_side_analog-u-copy-of-rectangle-fill)" stroke-width="0"/><text id="right_side_analog-s-text1" dx="0" dy="0" font-family="&quot;right_side_analog:::Roboto&quot;" font-size="6" font-weight="900" transform="translate(17.657433 26.392543)" fill="#3f3f3f" stroke-width="0"><tspan id="right_side_analog-s-tspan9" y="0" font-weight="900" stroke-width="0"><![CDATA[
                                                      FUEL PRESSURE
                                                      ]]></tspan><tspan id="right_side_analog-s-tspan10" x="22" y="6" font-weight="900" stroke-width="0"><![CDATA[
                                                         DIFFRENTIAL 
                                                      ]]></tspan></text><g id="right_side_analog-s-g1" transform="translate(76.173097-10.177014)"><line id="right_side_analog-u-copy-of-line" x1="0" y1="-12.04957" x2="0" y2="-6.209576" transform="matrix(-1.010275 0 0 1.100058-15.780449 75.420005)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-2" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.997837-.158042-.158042 0.997837-11.363112 78.27713)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-3" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.960829-.312192-.312192 0.960829-7.054544 79.311526)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-4" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.900162-.458655-.458655 0.900162-2.960837 81.007195)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-5" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.81733-.593825-.593825 0.81733 0.817208 83.322384)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-6" x1="0" y1="-12.04957" x2="0" y2="-6.209576" transform="matrix(-.714372-.714372-.777858 0.777858 5.96103 84.42562)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-7" x1="0" y1="-12.04957" x2="0" y2="-6.209576" transform="matrix(.714372 0.714372 0.777858-.777858-37.521928 127.908578)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-72" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.593825-.81733-.81733 0.593825 7.064266 89.569442)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-8" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(.593825 0.81733 0.81733-.593825-38.625164 122.764756)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-82" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.458655-.900162-.900162 0.458655 9.379455 93.347487)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-9" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(.458655 0.900162 0.900162-.458655-40.940353 118.986711)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-92" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.312192-.960829-.960829 0.312192 11.075124 97.441194)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-10" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(.312192 0.960829 0.960829-.312192-42.636022 114.893004)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-102" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.158042-.997837-.997837 0.158042 12.10952 101.749762)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-11" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(.158042 0.997837 0.997837-.158042-43.670418 110.584436)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-112" x1="0" y1="-12.04957" x2="0" y2="-6.209576" transform="matrix(0-1.010275-1.100058 0 14.966645 106.167099)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-12" x1="0" y1="-12.04957" x2="0" y2="-6.209576" transform="matrix(0 1.010275 1.100058 0-46.527543 106.167099)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-122" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(.158042-.997837-.997837-.158042 12.10952 110.584436)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-13" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.158042 0.997837 0.997837 0.158042-43.670418 101.749762)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-132" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(.312192-.960829-.960829-.312192 11.075124 114.893004)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-14" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.312192 0.960829 0.960829 0.312192-42.636022 97.441194)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-142" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(.458655-.900162-.900162-.458655 9.379455 118.986711)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-15" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.458655 0.900162 0.900162 0.458655-40.940353 93.347487)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-152" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(.593825-.81733-.81733-.593825 7.064266 122.764756)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-16" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.593825 0.81733 0.81733 0.593825-38.625164 89.569442)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-162" x1="0" y1="-12.04957" x2="0" y2="-6.209576" transform="matrix(.714372-.714372-.777858-.777858 5.96103 127.908578)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-17" x1="0" y1="-12.04957" x2="0" y2="-6.209576" transform="matrix(-.714372 0.714372 0.777858 0.777858-37.521928 84.42562)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-18" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.81733 0.593825 0.593825 0.81733-32.378106 83.322384)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-19" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.900162 0.458655 0.458655 0.900162-28.600061 81.007195)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-20_" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.960829 0.312192 0.312192 0.960829-24.506354 79.311526)" fill="none" stroke="#000" stroke-width="0.65"/><line id="right_side_analog-u-copy-of-line-21_" x1="0" y1="-12.04957" x2="0" y2="-9.04957" transform="matrix(-.997837 0.158042 0.158042 0.997837-20.197786 78.27713)" fill="none" stroke="#000" stroke-width="0.65"/></g>
                                                      <style><![CDATA[
                                                      @font-face {font-family: 'right_side_analog:::Roboto';font-style: normal;font-weight: 400;src: url(https://fonts.gstatic.com/l/font?kit=KFOmCnqEu92Fr1Me5X5TIxkSGvDAprx7TTrwRB9WL3qICLVYeyD-xn0cNg&skey=a0a0114a1dcab3ac&v=v32) format('truetype');}@font-face {font-family: 'right_side_analog:::Roboto';font-style: normal;font-weight: 700;src: url(https://fonts.gstatic.com/l/font?kit=KFOlCnqEu92Fr1MmWUlvAwUhCu_dpbl8SE-BNxhbJnKRFqhcfBrH_Waz-C7kfw&skey=c06e7213f788649e&v=v32) format('truetype');}@font-face {font-family: 'right_side_analog:::Roboto';font-style: normal;font-weight: 900;src: url(https://fonts.gstatic.com/l/font?kit=KFOlCnqEu92Fr1MmYUtvAwUhCu_dpbl8SE-BNxhbJnKRFqhcfBrH_Waz-C7kfw&skey=934406f772f9777d&v=v32) format('truetype');}
                                                      ]]></style>
                                                      </svg>
                                                       ''');
        });
  }
}
