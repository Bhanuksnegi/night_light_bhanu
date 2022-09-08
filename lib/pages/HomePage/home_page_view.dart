import 'dart:math';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:night_light/appStyle/app_color.dart';
import 'package:night_light/appStyle/app_dimension.dart';
import 'package:night_light/appStyle/app_theme_style.dart';
import 'package:night_light/appStyle/assets_images.dart';
import 'package:night_light/model/multi_model_colors.dart';
import 'package:night_light/model/multiple_audio_model.dart';
import 'package:night_light/navigation/app_route_maps.dart';
import 'package:night_light/pages/HomePage/home_page_controller.dart';
import 'package:night_light/utils/app_strings.dart';
import '../../widget/oval_top_clipper.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  var dsh = Get.isRegistered<HomePageController>()
      ? Get.find<HomePageController>()
      : Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    dsh.onInit();
    return GetBuilder<HomePageController>(builder: (controller) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.colorBlueDark,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColors.colorBlueDark,
          ),
          drawer: Drawer(
            child: Column(
              children: [
                Container(
                    height: AppDimensions.eighty,
                    width: double.infinity,
                    decoration:
                        const BoxDecoration(color: AppColors.colorBlueDark),
                    child: Row(
                      children: [
                        DrawerHeader(
                          decoration: const BoxDecoration(
                              color: AppColors.colorBlueDark),
                          child: Row(
                            children: [
                              Container(
                                height: AppDimensions.fifty,
                                width: AppDimensions.fifty,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: AppColors.colorGrey),
                                child: const Image(
                                    image: AssetImage(AssetsBase.yellowbulb)),
                              ),
                              SizedBox(
                                width: AppDimensions.twenty,
                              ),
                              Text(
                                AppStrings.navigationDrawerHeader,
                                style: AppThemeStyles.whiteLight,
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
                ListTile(
                  leading: SizedBox(
                      height: AppDimensions.twenty,
                      width: AppDimensions.twenty,
                      child: Image.asset(AssetsBase.aboutIcon)),
                  title: Text(
                    "About",
                    textScaleFactor: AppDimensions.onepointtwo,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: SizedBox(
                      height: AppDimensions.twenty,
                      width: AppDimensions.twenty,
                      child: Image.asset("assets/images/help_icon.png")),
                  title: Text(
                    "Help",
                    textScaleFactor: AppDimensions.onepointtwo,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: SizedBox(
                      height: AppDimensions.twenty,
                      width: AppDimensions.twenty,
                      child: Image.asset("assets/images/trophy_icon.png")),
                  title: Text(
                    "Trophy",
                    textScaleFactor: AppDimensions.onepointtwo,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: SizedBox(
                      height: AppDimensions.twenty,
                      width: AppDimensions.twenty,
                      child: Image.asset("assets/images/rating_icon.png")),
                  title: Text(
                    "Rate Our App",
                    textScaleFactor: AppDimensions.onepointtwo,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: SizedBox(
                      //MediaQuery.of(context).size.height*0.3
                      height: AppDimensions.twenty,
                      width: AppDimensions.twenty,
                      child: Image.asset("assets/images/share_icon.png")),
                  title: Text(
                    "Share",
                    textScaleFactor: AppDimensions.onepointtwo,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: SizedBox(
                      height: AppDimensions.twenty,
                      width: AppDimensions.twenty,
                      child: Image.asset("assets/images/setting_icon.png")),
                  title: Text(
                    "Setting",
                    textScaleFactor: AppDimensions.onepointtwo,
                  ),
                  onTap: () {},
                ),
                const Spacer(),
                const Text("Version 1.0.0"),
                SizedBox(height: AppDimensions.twenty),
              ],
            ),
          ),
          body: Column(
            children: [
              const Spacer(),
              Container(
                height: controller.selectColor == 0
                    ? MediaQuery.of(context).size.height / 2.3
                    : MediaQuery.of(context).size.height / 1.9,
                margin: EdgeInsets.only(
                    left: AppDimensions.fifTeen, right: AppDimensions.fifTeen),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Night Light Duration",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              controller.select = "SimpleLight";
                              controller.update();
                              controller.selectColor = 0;
                            },
                            child: Container(
                              // margin: EdgeInsets.all(10) ,
                              padding: const EdgeInsets.all(18),
                              decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: controller.selectColor == 0
                                          ? Colors.black
                                          : Colors.white70)),
                              child: Image.asset(
                                "assets/images/white_light.png",
                                height: AppDimensions.fifty,
                                width: AppDimensions.fifty,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.select = "RainbowLight";
                              controller.update();
                              controller.selectColor = 1;
                            },
                            child: Container(
                              // margin: EdgeInsets.all(10),
                              padding: const EdgeInsets.all(18),
                              decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: controller.selectColor == 1
                                          ? Colors.black
                                          : Colors.white70)),
                              child: Image.asset(
                                "assets/images/multicolor_light.png",
                                height: AppDimensions.fifty,
                                width: AppDimensions.fifty,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.select = "YellowLight";
                              controller.update();
                              controller.selectColor = 2;
                            },
                            child: Container(
                              // margin: EdgeInsets.all(10),
                              padding: const EdgeInsets.all(18),
                              decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: controller.selectColor == 2
                                          ? Colors.black
                                          : Colors.white70)),
                              child: Image.asset(
                                "assets/images/bulbyellow_icon.png",
                                height: AppDimensions.fifty,
                                width: AppDimensions.fifty,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    controller.selectColor == 0
                        ? Column(
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      controller.decrement();
                                    },
                                    child: Container(
                                      height: AppDimensions.forty,
                                      width: AppDimensions.forty,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: const Color(0xff040438),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 7),
                                        child: Icon(
                                          Icons.arrow_back_ios,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: AppDimensions.forty,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color(0xff040438),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "${controller.mint} Mins",
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      controller.increment();
                                    },
                                    child: Container(
                                      height: AppDimensions.forty,
                                      width: AppDimensions.forty,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff040438),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Center(
                                          child: Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: Colors.white,
                                      )),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      showDialog(
                                          context: Get.context!,
                                          builder: (context) {
                                            return AlertDialog(
                                                contentPadding: EdgeInsets.zero,
                                                content: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    const SizedBox(height: 20),
                                                    const Text(
                                                      "Select mood light colors",
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    LayoutBuilder(
                                                      builder:
                                                          (BuildContext context,
                                                              BoxConstraints
                                                                  constraints) {
                                                        final boxWidth =
                                                            constraints
                                                                .constrainWidth();
                                                        const dashWidth = 4.0;
                                                        final dashCount =
                                                            (boxWidth /
                                                                    (2 *
                                                                        dashWidth))
                                                                .floor();
                                                        return Flex(
                                                          children:
                                                              List.generate(
                                                                  dashCount,
                                                                  (_) {
                                                            return const SizedBox(
                                                              width: dashWidth,
                                                              height: 1,
                                                              child:
                                                                  DecoratedBox(
                                                                decoration: BoxDecoration(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            61,
                                                                            61,
                                                                            61,
                                                                            0.4)),
                                                              ),
                                                            );
                                                          }),
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          direction:
                                                              Axis.horizontal,
                                                        );
                                                      },
                                                    ),
                                                    SizedBox(
                                                      height: AppDimensions.ten,
                                                    ),
                                                    Obx(
                                                      () => Wrap(
                                                        children: [
                                                          for (int index = 0;
                                                              index <
                                                                  controller
                                                                      .model
                                                                      .length;
                                                              index++)
                                                            InkWell(
                                                              onTap: () {
                                                                controller
                                                                    .changeColorState(
                                                                        index);
                                                                // for(int i=0;i<controller.model.length;i++){
                                                                //   controller.model[i].isSelect.value=false;
                                                                // }
                                                                // controller.model[index].isSelect.value=true;
                                                                //
                                                                if (kDebugMode) {
                                                                  print(
                                                                      "Colors:${controller.model[index].colorName}");
                                                                }
                                                                controller
                                                                        .color =
                                                                    controller
                                                                        .model[
                                                                            index]
                                                                        .colorName!;
                                                              },
                                                              child: Padding(
                                                                padding:
                                                                    AppDimensions
                                                                        .margin0_5_5_5,
                                                                child:
                                                                    Container(
                                                                  height: AppDimensions
                                                                      .thirtyFive,
                                                                  width: AppDimensions
                                                                      .thirtyFive,
                                                                  decoration: BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      color: controller
                                                                          .model[
                                                                              index]
                                                                          .colorName),
                                                                  child: controller
                                                                          .model[
                                                                              index]
                                                                          .isSelect
                                                                          .value
                                                                      ? const Icon(
                                                                          Icons
                                                                              .check,
                                                                          color:
                                                                              Colors.white,
                                                                        )
                                                                      : Container(),
                                                                ),
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height:
                                                          AppDimensions.twenty,
                                                    ),
                                                    LayoutBuilder(
                                                      builder:
                                                          (BuildContext context,
                                                              BoxConstraints
                                                                  constraints) {
                                                        final boxWidth =
                                                            constraints
                                                                .constrainWidth();
                                                        const dashWidth = 4.0;
                                                        final dashCount =
                                                            (boxWidth /
                                                                    (2 *
                                                                        dashWidth))
                                                                .floor();
                                                        return Flex(
                                                          children:
                                                              List.generate(
                                                                  dashCount,
                                                                  (_) {
                                                            return const SizedBox(
                                                              width: dashWidth,
                                                              height: 1,
                                                              child:
                                                                  DecoratedBox(
                                                                decoration: BoxDecoration(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            61,
                                                                            61,
                                                                            61,
                                                                            0.4)),
                                                              ),
                                                            );
                                                          }),
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          direction:
                                                              Axis.horizontal,
                                                        );
                                                      },
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        InkWell(
                                                          onTap: () {
                                                            controller
                                                                .changeColorState(
                                                                    controller
                                                                        .selectRandomValue());
                                                          },
                                                          child: Container(
                                                            margin:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5),
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20),
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                            child: const Text(
                                                              "Random",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        //AppRouteMaps.gotoColorPick(color);
                                                        Get.back();
                                                      },
                                                      style: ElevatedButton.styleFrom(
                                                          primary: const Color(
                                                              0xff040438),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20))),
                                                      child: const Text(
                                                        "OK",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    )
                                                  ],
                                                ));
                                          });
                                    },
                                    child: Image.asset(
                                      "assets/images/color_picker_icon.png",
                                      height: AppDimensions.thirty,
                                      width: AppDimensions.thirty,
                                    ),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        showDialog(
                                            context: Get.context!,
                                            builder: (context) {
                                              return AlertDialog(
                                                contentPadding: EdgeInsets.zero,
                                                content: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Container(
                                                            padding:
                                                                AppDimensions
                                                                    .padding10,
                                                            child: const Text(
                                                              "Background Sound",
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ))),
                                                    LayoutBuilder(
                                                      builder:
                                                          (BuildContext context,
                                                              BoxConstraints
                                                                  constraints) {
                                                        final boxWidth =
                                                            constraints
                                                                .constrainWidth();
                                                        const dashWidth = 4.0;
                                                        final dashCount =
                                                            (boxWidth /
                                                                    (2 *
                                                                        dashWidth))
                                                                .floor();
                                                        return Flex(
                                                          children:
                                                              List.generate(
                                                                  dashCount,
                                                                  (_) {
                                                            return const SizedBox(
                                                              width: dashWidth,
                                                              height: 1,
                                                              child:
                                                                  DecoratedBox(
                                                                decoration: BoxDecoration(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            61,
                                                                            61,
                                                                            61,
                                                                            0.4)),
                                                              ),
                                                            );
                                                          }),
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          direction:
                                                              Axis.horizontal,
                                                        );
                                                      },
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Column(
                                                      children: [
                                                        ListView.builder(
                                                          itemCount: controller
                                                              .multiAudioModel
                                                              .length,
                                                          shrinkWrap: true,
                                                          itemBuilder:
                                                              (context, index) {
                                                            return Padding(
                                                                padding:
                                                                    AppDimensions
                                                                        .padding10_10_5_5,
                                                                child: InkWell(
                                                                    onTap: () {
                                                                      if (kDebugMode) {
                                                                        print(
                                                                            "Audio play");
                                                                        print(
                                                                            "audio...${controller.multiAudioModel[index].audio.toString()}");
                                                                        print(
                                                                            "isSelect...${controller.multiAudioModel[index].isSelect.toString()}");
                                                                      }
                                                                      controller.audio = controller
                                                                          .multiAudioModel[
                                                                              index]
                                                                          .audio
                                                                          .toString();
                                                                      controller
                                                                          .selectAudio(
                                                                              index);
                                                                    },
                                                                    child: Obx(
                                                                      () =>
                                                                          Container(
                                                                        height:
                                                                            50,
                                                                        width: double
                                                                            .infinity,
                                                                        // ignore: unrelated_type_equality_checks
                                                                        color: controller.multiAudioModel[index].isSelect ==
                                                                                true
                                                                            ? const Color(0xff040438)
                                                                            : Colors.transparent,
                                                                        // ignore: unrelated_type_equality_checks
                                                                        child: Center(
                                                                            child: Text(
                                                                          controller
                                                                              .multiAudioModel[index]
                                                                              .name,
                                                                          style:
                                                                              TextStyle(color: controller.multiAudioModel[index].isSelect == true ? Colors.white : AppColors.blackColor),
                                                                        )),
                                                                      ),
                                                                    )));
                                                          },
                                                        )
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      child: ElevatedButton(
                                                        onPressed: () {
                                                          Get.back();
                                                        },
                                                        style: ElevatedButton.styleFrom(
                                                            primary:
                                                                const Color(
                                                                    0xff040438),
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20)),
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10)),
                                                        child: const Text(
                                                          "OK",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              );
                                            });
                                      },
                                      child: Image.asset(
                                        "assets/images/music_icon.png",
                                        height: 30,
                                        width: 30,
                                      )),
                                ],
                              )
                            ],
                          )
                        // Multiple color select Bulb
                        : controller.selectColor == 1
                            ? Column(
                                children: [
                                  SizedBox(height: AppDimensions.twenty),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          controller.decrementSec();
                                          print("J decrement");
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            color: const Color(0xff040438),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 7),
                                            child: Icon(
                                              Icons.arrow_back_ios,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Container(
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: const Color(0xff040438),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "${controller.sec} Sec",
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          controller.incrementSec();
                                          print("J Increment");
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: const Color(0xff040438),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: const Center(
                                              child: Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            color: Colors.white,
                                          )),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: AppDimensions.twenty),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          controller.decrement();
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            color: const Color(0xff040438),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 7),
                                            child: Icon(
                                              Icons.arrow_back_ios,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Container(
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: const Color(0xff040438),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "${controller.mint} Mins",
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          controller.increment();
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: const Color(0xff040438),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: const Center(
                                              child: Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            color: Colors.white,
                                          )),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: AppDimensions.twenty,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        onTap: () async {
                                          showDialog(
                                              context: Get.context!,
                                              builder: (context) {
                                                return AlertDialog(
                                                    contentPadding:
                                                        EdgeInsets.zero,
                                                    content: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        const SizedBox(
                                                            height: 20),
                                                        const Text(
                                                          "Select mood light colors",
                                                        ),
                                                        const SizedBox(
                                                          height: 10,
                                                        ),
                                                        LayoutBuilder(
                                                          builder: (BuildContext
                                                                  context,
                                                              BoxConstraints
                                                                  constraints) {
                                                            final boxWidth =
                                                                constraints
                                                                    .constrainWidth();
                                                            const dashWidth =
                                                                4.0;
                                                            final dashCount =
                                                                (boxWidth /
                                                                        (2 *
                                                                            dashWidth))
                                                                    .floor();
                                                            return Flex(
                                                              children:
                                                                  List.generate(
                                                                      dashCount,
                                                                      (_) {
                                                                return const SizedBox(
                                                                  width:
                                                                      dashWidth,
                                                                  height: 1,
                                                                  child:
                                                                      DecoratedBox(
                                                                    decoration: BoxDecoration(
                                                                        color: Color.fromRGBO(
                                                                            61,
                                                                            61,
                                                                            61,
                                                                            0.4)),
                                                                  ),
                                                                );
                                                              }),
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              direction: Axis
                                                                  .horizontal,
                                                            );
                                                          },
                                                        ),
                                                        const SizedBox(
                                                          height: 20,
                                                        ),
                                                        Obx(
                                                          () => Wrap(
                                                            children: [
                                                              for (int index =
                                                                      0;
                                                                  index <
                                                                      controller
                                                                          .model
                                                                          .length;
                                                                  index++)
                                                                InkWell(
                                                                  onTap: () {
                                                                    controller
                                                                        .multiColorSelect(
                                                                            index);
                                                                    // for (int i = 0;i <controller.model.length;i++) {
                                                                    //   controller.model[i].isSelect.value = false;
                                                                    // }
                                                                    // controller.model[index].isSelect.value = true;

                                                                    if (kDebugMode) {
                                                                      print(
                                                                          "Colors:${controller.model[index].colorName}");
                                                                      //controller.multiModel.add(controller.model[index].colorName!) ;
                                                                      //print("Colors Selected is--> $controller.model[index].colorName");
                                                                    }
                                                                    // controller.color=controller.multiModel;
                                                                  },
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsets
                                                                            .only(
                                                                        left: 5,
                                                                        right:
                                                                            5,
                                                                        bottom:
                                                                            5),
                                                                    child:
                                                                        Container(
                                                                      height: AppDimensions
                                                                          .thirtyFive,
                                                                      width: AppDimensions
                                                                          .thirtyFive,
                                                                      decoration: BoxDecoration(
                                                                          shape: BoxShape
                                                                              .circle,
                                                                          color: controller
                                                                              .model[index]
                                                                              .colorName),
                                                                      child: controller
                                                                              .model[index]
                                                                              .isSelect
                                                                              .value
                                                                          ? const Icon(
                                                                              Icons.check,
                                                                              color: Colors.white,
                                                                            )
                                                                          : Container(),
                                                                    ),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: AppDimensions
                                                              .twenty,
                                                        ),
                                                        LayoutBuilder(
                                                          builder: (BuildContext
                                                                  context,
                                                              BoxConstraints
                                                                  constraints) {
                                                            final boxWidth =
                                                                constraints
                                                                    .constrainWidth();
                                                            const dashWidth =
                                                                4.0;
                                                            final dashCount =
                                                                (boxWidth /
                                                                        (2 *
                                                                            dashWidth))
                                                                    .floor();
                                                            return Flex(
                                                              children:
                                                                  List.generate(
                                                                      dashCount,
                                                                      (_) {
                                                                return const SizedBox(
                                                                  width:
                                                                      dashWidth,
                                                                  height: 1,
                                                                  child:
                                                                      DecoratedBox(
                                                                    decoration: BoxDecoration(
                                                                        color: Color.fromRGBO(
                                                                            61,
                                                                            61,
                                                                            61,
                                                                            0.4)),
                                                                  ),
                                                                );
                                                              }),
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              direction: Axis
                                                                  .horizontal,
                                                            );
                                                          },
                                                        ),
                                                        const SizedBox(
                                                          height: 10,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 10,
                                                                  right: 10),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              InkWell(
                                                                onTap: () {
                                                                  //controller.isRainbowSelect ==false ? controller.isRainbowSelect =true : controller.isRainbowSelect =false;
                                                                  controller
                                                                      .rainbowSelector();
                                                                  // controller.color=[Colors.red,Colors.black] as Color;
                                                                  // print("wopuireowrw...${controller.color}");
                                                                },
                                                                child:
                                                                    Container(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(5),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20),
                                                                    border: Border.all(
                                                                        color: Colors
                                                                            .black),
                                                                  ),
                                                                  child:
                                                                      const Text(
                                                                    "Rainbow",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            //AppRouteMaps.gotoColorPick(color);
                                                            Get.back();
                                                          },
                                                          style: ElevatedButton.styleFrom(
                                                              primary:
                                                                  const Color(
                                                                      0xff040438),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20))),
                                                          child: const Text(
                                                            "OK",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        )
                                                      ],
                                                    ));
                                              });
                                        },
                                        child: Image.asset(
                                          "assets/images/color_picker_icon.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                      InkWell(
                                          onTap: () {
                                            showDialog(
                                                context: Get.context!,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    contentPadding:
                                                        EdgeInsets.zero,
                                                    content: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Container(
                                                                padding:
                                                                    AppDimensions
                                                                        .padding10,
                                                                child:
                                                                    const Text(
                                                                  "Background Sound",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ))),
                                                        LayoutBuilder(
                                                          builder: (BuildContext
                                                                  context,
                                                              BoxConstraints
                                                                  constraints) {
                                                            final boxWidth =
                                                                constraints
                                                                    .constrainWidth();
                                                            const dashWidth =
                                                                4.0;
                                                            final dashCount =
                                                                (boxWidth /
                                                                        (2 *
                                                                            dashWidth))
                                                                    .floor();
                                                            return Flex(
                                                              children:
                                                                  List.generate(
                                                                      dashCount,
                                                                      (_) {
                                                                return const SizedBox(
                                                                  width:
                                                                      dashWidth,
                                                                  height: 1,
                                                                  child:
                                                                      DecoratedBox(
                                                                    decoration: BoxDecoration(
                                                                        color: Color.fromRGBO(
                                                                            61,
                                                                            61,
                                                                            61,
                                                                            0.4)),
                                                                  ),
                                                                );
                                                              }),
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              direction: Axis
                                                                  .horizontal,
                                                            );
                                                          },
                                                        ),
                                                        const SizedBox(
                                                          height: 10,
                                                        ),
                                                        Column(
                                                          children: [
                                                            ListView.builder(
                                                              itemCount: controller
                                                                  .multiAudioModel
                                                                  .length,
                                                              shrinkWrap: true,
                                                              itemBuilder:
                                                                  (context,
                                                                      index) {
                                                                return Padding(
                                                                    padding:
                                                                        AppDimensions
                                                                            .padding10_10_5_5,
                                                                    child: InkWell(
                                                                        onTap: () {
                                                                          if (kDebugMode) {
                                                                            print("Audio play");
                                                                            print("audio...${controller.multiAudioModel[index].audio.toString()}");
                                                                            print("isSelect...${controller.multiAudioModel[index].isSelect.toString()}");
                                                                          }
                                                                          controller.audio = controller
                                                                              .multiAudioModel[index]
                                                                              .audio
                                                                              .toString();
                                                                          controller
                                                                              .selectAudio(index);
                                                                        },
                                                                        child: Obx(
                                                                          () =>
                                                                              Container(
                                                                            height:
                                                                                50,
                                                                            width:
                                                                                double.infinity,
                                                                            // ignore: unrelated_type_equality_checks
                                                                            color: controller.multiAudioModel[index].isSelect == true
                                                                                ? const Color(0xff040438)
                                                                                : Colors.transparent,
                                                                            // ignore: unrelated_type_equality_checks
                                                                            child: Center(
                                                                                child: Text(
                                                                              controller.multiAudioModel[index].name,
                                                                              style: TextStyle(color: controller.multiAudioModel[index].isSelect == true ? Colors.white : AppColors.blackColor),
                                                                            )),
                                                                          ),
                                                                        )));
                                                              },
                                                            )
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          child: ElevatedButton(
                                                            onPressed: () {
                                                              Get.back();
                                                            },
                                                            style: ElevatedButton.styleFrom(
                                                                primary:
                                                                    const Color(
                                                                        0xff040438),
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20)),
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        10)),
                                                            child: const Text(
                                                              "OK",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  );
                                                });
                                          },
                                          child: Image.asset(
                                            "assets/images/music_icon.png",
                                            height: 30,
                                            width: 30,
                                          )),
                                    ],
                                  )
                                ],
                              )
                            : Column(
                                children: [
                                  SizedBox(height: AppDimensions.twenty),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          controller.screenselectdecrement();
                                          print("ajlsjlfjs.....${controller.sc}");
                                          controller.update();
                                          print("Screen decrement");
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            color: const Color(0xff040438),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 7),
                                            child: Icon(
                                              Icons.arrow_back_ios,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Container(
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: const Color(0xff040438),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "${controller.screens[controller.sc].toString()}",
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          controller.screenselectincrement();
                                          controller.update();
                                          print("Screen Increment....${controller.sc}");
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: const Color(0xff040438),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: const Center(
                                              child: Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            color: Colors.white,
                                          )),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: AppDimensions.twenty),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          controller.decrement();
                                          controller.update();
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            color: const Color(0xff040438),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 7),
                                            child: Icon(
                                              Icons.arrow_back_ios,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Container(
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: const Color(0xff040438),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "${controller.mint} Mins",
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          controller.increment();
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: const Color(0xff040438),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: const Center(
                                              child: Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            color: Colors.white,
                                          )),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: AppDimensions.twenty,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        onTap: () async {
                                          showDialog(
                                              context: Get.context!,
                                              builder: (context) {
                                                return AlertDialog(
                                                    contentPadding: EdgeInsets.zero,
                                                    content: Column(
                                                      mainAxisSize:
                                                      MainAxisSize.min,
                                                      children: [
                                                        const SizedBox(height: 20),
                                                        const Text(
                                                          "Select mood light colors",
                                                        ),
                                                        const SizedBox(
                                                          height: 10,
                                                        ),
                                                        LayoutBuilder(
                                                          builder:
                                                              (BuildContext context,
                                                              BoxConstraints
                                                              constraints) {
                                                            final boxWidth =
                                                            constraints
                                                                .constrainWidth();
                                                            const dashWidth = 4.0;
                                                            final dashCount =
                                                            (boxWidth /
                                                                (2 *
                                                                    dashWidth))
                                                                .floor();
                                                            return Flex(
                                                              children:
                                                              List.generate(
                                                                  dashCount,
                                                                      (_) {
                                                                    return const SizedBox(
                                                                      width: dashWidth,
                                                                      height: 1,
                                                                      child:
                                                                      DecoratedBox(
                                                                        decoration: BoxDecoration(
                                                                            color: Color
                                                                                .fromRGBO(
                                                                                61,
                                                                                61,
                                                                                61,
                                                                                0.4)),
                                                                      ),
                                                                    );
                                                                  }),
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              direction:
                                                              Axis.horizontal,
                                                            );
                                                          },
                                                        ),
                                                        SizedBox(
                                                          height: AppDimensions.ten,
                                                        ),
                                                        Obx(
                                                              () => Wrap(
                                                            children: [
                                                              for (int index = 0;
                                                              index <
                                                                  controller
                                                                      .model
                                                                      .length;
                                                              index++)
                                                                InkWell(
                                                                  onTap: () {
                                                                    controller
                                                                        .changeColorState(
                                                                        index);
                                                                    // for(int i=0;i<controller.model.length;i++){
                                                                    //   controller.model[i].isSelect.value=false;
                                                                    // }
                                                                    // controller.model[index].isSelect.value=true;
                                                                    //
                                                                    if (kDebugMode) {
                                                                      print(
                                                                          "Colors:${controller.model[index].colorName}");
                                                                    }
                                                                    controller
                                                                        .color =
                                                                    controller
                                                                        .model[
                                                                    index]
                                                                        .colorName!;
                                                                  },
                                                                  child: Padding(
                                                                    padding:
                                                                    AppDimensions
                                                                        .margin0_5_5_5,
                                                                    child:
                                                                    Container(
                                                                      height: AppDimensions
                                                                          .thirtyFive,
                                                                      width: AppDimensions
                                                                          .thirtyFive,
                                                                      decoration: BoxDecoration(
                                                                          shape: BoxShape
                                                                              .circle,
                                                                          color: controller
                                                                              .model[
                                                                          index]
                                                                              .colorName),
                                                                      child: controller
                                                                          .model[
                                                                      index]
                                                                          .isSelect
                                                                          .value
                                                                          ? const Icon(
                                                                        Icons
                                                                            .check,
                                                                        color:
                                                                        Colors.white,
                                                                      )
                                                                          : Container(),
                                                                    ),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                          AppDimensions.twenty,
                                                        ),
                                                        LayoutBuilder(
                                                          builder:
                                                              (BuildContext context,
                                                              BoxConstraints
                                                              constraints) {
                                                            final boxWidth =
                                                            constraints
                                                                .constrainWidth();
                                                            const dashWidth = 4.0;
                                                            final dashCount =
                                                            (boxWidth /
                                                                (2 *
                                                                    dashWidth))
                                                                .floor();
                                                            return Flex(
                                                              children:
                                                              List.generate(
                                                                  dashCount,
                                                                      (_) {
                                                                    return const SizedBox(
                                                                      width: dashWidth,
                                                                      height: 1,
                                                                      child:
                                                                      DecoratedBox(
                                                                        decoration: BoxDecoration(
                                                                            color: Color
                                                                                .fromRGBO(
                                                                                61,
                                                                                61,
                                                                                61,
                                                                                0.4)),
                                                                      ),
                                                                    );
                                                                  }),
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              direction:
                                                              Axis.horizontal,
                                                            );
                                                          },
                                                        ),
                                                        const SizedBox(
                                                          height: 10,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            InkWell(
                                                              onTap: () {
                                                                controller
                                                                    .changeColorState(
                                                                    controller
                                                                        .selectRandomValue());
                                                              },
                                                              child: Container(
                                                                margin:
                                                                const EdgeInsets
                                                                    .all(10),
                                                                padding:
                                                                const EdgeInsets
                                                                    .all(5),
                                                                decoration:
                                                                BoxDecoration(
                                                                  borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                      20),
                                                                  border: Border.all(
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                                child: const Text(
                                                                  "Random",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            //AppRouteMaps.gotoColorPick(color);
                                                            Get.back();
                                                          },
                                                          style: ElevatedButton.styleFrom(
                                                              primary: const Color(
                                                                  0xff040438),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                      20))),
                                                          child: const Text(
                                                            "OK",
                                                            style: TextStyle(
                                                                color:
                                                                Colors.white),
                                                          ),
                                                        )
                                                      ],
                                                    ));
                                              });
                                        },
                                        child: Image.asset(
                                          "assets/images/color_picker_icon.png",
                                          height: AppDimensions.thirty,
                                          width: AppDimensions.thirty,
                                        ),
                                      ),
                                      InkWell(
                                          onTap: () {
                                            showDialog(
                                                context: Get.context!,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    contentPadding: EdgeInsets.zero,
                                                    content: Column(
                                                      mainAxisSize:
                                                      MainAxisSize.min,
                                                      children: [
                                                        Align(
                                                            alignment:
                                                            Alignment.topLeft,
                                                            child: Container(
                                                                padding:
                                                                AppDimensions
                                                                    .padding10,
                                                                child: const Text(
                                                                  "Background Sound",
                                                                  textAlign:
                                                                  TextAlign
                                                                      .start,
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                                ))),
                                                        LayoutBuilder(
                                                          builder:
                                                              (BuildContext context,
                                                              BoxConstraints
                                                              constraints) {
                                                            final boxWidth =
                                                            constraints
                                                                .constrainWidth();
                                                            const dashWidth = 4.0;
                                                            final dashCount =
                                                            (boxWidth /
                                                                (2 *
                                                                    dashWidth))
                                                                .floor();
                                                            return Flex(
                                                              children:
                                                              List.generate(
                                                                  dashCount,
                                                                      (_) {
                                                                    return const SizedBox(
                                                                      width: dashWidth,
                                                                      height: 1,
                                                                      child:
                                                                      DecoratedBox(
                                                                        decoration: BoxDecoration(
                                                                            color: Color
                                                                                .fromRGBO(
                                                                                61,
                                                                                61,
                                                                                61,
                                                                                0.4)),
                                                                      ),
                                                                    );
                                                                  }),
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              direction:
                                                              Axis.horizontal,
                                                            );
                                                          },
                                                        ),
                                                        const SizedBox(
                                                          height: 10,
                                                        ),
                                                        Column(
                                                          children: [
                                                            ListView.builder(
                                                              itemCount: controller
                                                                  .multiAudioModel
                                                                  .length,
                                                              shrinkWrap: true,
                                                              itemBuilder:
                                                                  (context, index) {
                                                                return Padding(
                                                                    padding:
                                                                    AppDimensions
                                                                        .padding10_10_5_5,
                                                                    child: InkWell(
                                                                        onTap: () {
                                                                          if (kDebugMode) {
                                                                            print(
                                                                                "Audio play");
                                                                            print(
                                                                                "audio...${controller.multiAudioModel[index].audio.toString()}");
                                                                            print(
                                                                                "isSelect...${controller.multiAudioModel[index].isSelect.toString()}");
                                                                          }
                                                                          controller.audio = controller
                                                                              .multiAudioModel[
                                                                          index]
                                                                              .audio
                                                                              .toString();
                                                                          controller
                                                                              .selectAudio(
                                                                              index);
                                                                        },
                                                                        child: Obx(
                                                                              () =>
                                                                              Container(
                                                                                height:
                                                                                50,
                                                                                width: double
                                                                                    .infinity,
                                                                                // ignore: unrelated_type_equality_checks
                                                                                color: controller.multiAudioModel[index].isSelect ==
                                                                                    true
                                                                                    ? const Color(0xff040438)
                                                                                    : Colors.transparent,
                                                                                // ignore: unrelated_type_equality_checks
                                                                                child: Center(
                                                                                    child: Text(
                                                                                      controller
                                                                                          .multiAudioModel[index]
                                                                                          .name,
                                                                                      style:
                                                                                      TextStyle(color: controller.multiAudioModel[index].isSelect == true ? Colors.white : AppColors.blackColor),
                                                                                    )),
                                                                              ),
                                                                        )));
                                                              },
                                                            )
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          child: ElevatedButton(
                                                            onPressed: () {
                                                              Get.back();
                                                            },
                                                            style: ElevatedButton.styleFrom(
                                                                primary:
                                                                const Color(
                                                                    0xff040438),
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                        20)),
                                                                padding:
                                                                const EdgeInsets
                                                                    .all(10)),
                                                            child: const Text(
                                                              "OK",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  );
                                                });
                                          },
                                          child: Image.asset(
                                            "assets/images/music_icon.png",
                                            height: 30,
                                            width: 30,
                                          )),
                                    ],
                                  )
                                ],
                              )
                  ],
                ),
              ),
              const Spacer(),
              ClipPath(
                clipper: OvalTopBorderClipper(),
                child: Container(
                  height: 120,
                  color: Colors.white70,
                  child: Center(
                      child: SizedBox(
                    height: 40,
                    width: 180,
                    child: ElevatedButton(
                        onPressed: () {
                          print("min.......${controller.mint}");
                          print("sec.......${controller.sec}");
                          print(
                              "multiModel...:${controller.multiModel.length}");
                          print("multiModelColor...:${controller.multiModel}");
                          //
                          // if(controller.color == null || controller.multiModel == null)
                          // {
                          //   Fluttertoast.showToast(
                          //       msg: "Please Select Color !",
                          //       toastLength: Toast.LENGTH_SHORT,
                          //       gravity: ToastGravity.CENTER,
                          //       timeInSecForIosWeb: 1,
                          //       backgroundColor: Colors.grey,
                          //       textColor: Colors.white,
                          //       fontSize: 16.0
                          //   );
                          // }
                          // else if(controller.audio == null)
                          // {
                          //   Fluttertoast.showToast(
                          //       msg: "Please Select Audio !",
                          //       toastLength: Toast.LENGTH_SHORT,
                          //       gravity: ToastGravity.CENTER,
                          //       timeInSecForIosWeb: 1,
                          //       backgroundColor: Colors.grey,
                          //       textColor: Colors.white,
                          //       fontSize: 16.0
                          //   );
                          // } else {
                          if (controller.selectColor == 0) {
                            if (controller.color == null) {
                              Fluttertoast.showToast(
                                  msg: "Please Select Color !",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.grey,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            } else if (controller.audio == null) {
                              Fluttertoast.showToast(
                                  msg: "Please Select Audio !",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.grey,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            } else {
                              AppRouteMaps.gotoColorPick(controller.color!,
                                  controller.audio!, controller.mint);
                            }
                          } else if (controller.selectColor == 1) {
                            if (!controller.checkModel()) {
                              Fluttertoast.showToast(
                                  msg: "Please Select Color !",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.grey,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            } else if (controller.audio == null) {
                              Fluttertoast.showToast(
                                  msg: "Please Select Audio !",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.grey,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            } else {
                              controller.multipleColorSelection();
                              AppRouteMaps.gotoColorPick1(
                                  controller.isRainbowSelect == true
                                      ? controller.multiModel.reversed.toList()
                                      : controller.multiModel,
                                  controller.audio!,
                                  controller.mint,
                                  controller.sec);
                            }
                          } else {
                            // controller.multipleColorSelection();
                            // AppRouteMaps.gotoColorPick2(controller.isRainbowSelect == true
                            //     ? controller.multiModel.reversed.toList()
                            //     : controller.multiModel,
                            //     controller.audio!,
                            //     controller.mint);

                            if (controller.color == null) {
                              Fluttertoast.showToast(
                                  msg: "Please Select Color !",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.grey,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            } else if (controller.audio == null) {
                              Fluttertoast.showToast(
                                  msg: "Please Select Audio !",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.grey,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            } else {
                              //AppRouteMaps.goToLavaPage(controller.colors.,
                                //  controller.audio!, controller.mint);
                            }

                            // if (!controller.checkModel()) {
                            //   Fluttertoast.showToast(
                            //       msg: "Please Select Color !",
                            //       toastLength: Toast.LENGTH_SHORT,
                            //       gravity: ToastGravity.CENTER,
                            //       timeInSecForIosWeb: 1,
                            //       backgroundColor: Colors.grey,
                            //       textColor: Colors.white,
                            //       fontSize: 16.0);
                            // } else if (controller.audio == null) {
                            //   Fluttertoast.showToast(
                            //       msg: "Please Select Audio !",
                            //       toastLength: Toast.LENGTH_SHORT,
                            //       gravity: ToastGravity.CENTER,
                            //       timeInSecForIosWeb: 1,
                            //       backgroundColor: Colors.grey,
                            //       textColor: Colors.white,
                            //       fontSize: 16.0);
                            // } else {
                            //   AppRouteMaps.goToLavaPage(controller.isRainbowSelect == true
                            //       ? controller.multiModel.reversed.toList()
                            //       : controller.multiModel,
                            //       controller.audio!,
                            //       controller.mint);
                            //
                            //   // controller.multipleColorSelection();
                            //   // AppRouteMaps.gotoColorPick1(
                            //   //     controller.isRainbowSelect == true
                            //   //         ? controller.multiModel.reversed.toList()
                            //   //         : controller.multiModel,
                            //   //     controller.audio!,
                            //   //     controller.mint,
                            //   //     controller.sec);
                            // }

                            //AppRouteMaps.goToLavaPage();
                          }
                          // }
                          //controller.multipleColorSelection();
                          // AppRouteMaps.gotoColorPick(controller.color,controller.audio):
                          // // AppRouteMaps.gotoColorPick1(controller.multiModel as MultipleColors);
                          // print("Multiple Colors printer... ${controller.multiModel}");
                        },
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xff040438),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            padding: const EdgeInsets.all(10)),
                        child: const Text(
                          "Start",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        )),
                  )),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
