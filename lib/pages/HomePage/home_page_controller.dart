import 'dart:math';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:night_light/model/multi_model_colors.dart';
import 'package:night_light/pages/HomePage/home_page_view.dart';

import '../../model/multi_modal_lava.dart';
import '../../model/multiple_audio_model.dart';

class HomePageController extends GetxController {
  String select = "SimpleLight ";
  int selectColor = 0;
  int colorValue = 0;
  Color? color;
  String? audio;
  Color? screenPickerColor;
  String type = "color";
  var colorIndex;
  var soundIndex;
  bool isRainbowSelect = false;
  List<MultipleAudioModel> multiAudioModel = [
    MultipleAudioModel("Perfect rilence", "assets/sounds/forestbirds.mp3", false.obs),
    MultipleAudioModel("Gentle rainfall", "assets/sounds/dreams.mp3", false.obs),
    MultipleAudioModel("Topical jungle", "assets/sounds/ocean.mp3", false.obs),
  ];

  List<String> screens = [
    "Green Bubbles",
    "Blue Bubbles",
    "Red Bubbles",
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    model.clear();
    for (int i = 0; i < arrColors.length; i++) {
      MultipleColors color =
          MultipleColors(colorName: arrColors[i], isSelect: false.obs);
      print("Colors add....$color");
      model.add(color);
    }
    // model1.clear();
  }

  List<MultiLavaScreen> screens1 = [];
  int sc=0;
  screenselectincrement()
  {
    //screens[index];
        if(sc<2)
          {
            sc = sc +1;
          }
  }
  screenselectdecrement()
  {

    if(sc>0){
      sc = sc-1;
    }
  }

  int mint = 2;
  increment() {
    mint = mint + 1;
    update();
  }

  decrement() {
    if (mint != 1) {
      mint = mint - 1;
      update();
    }
  }

  int sec = 5;
  incrementSec() {
    if (sec != 60) {
      sec = sec + 1;
      update();
    }
  }

  decrementSec() {
    if (sec != 1) {
      sec = sec - 1;
      update();
    }
  }

  bool value = false;

  List<Color> arrColors = [
    Color.fromRGBO(233, 52, 35, 1),
    Color.fromRGBO(241, 169, 59, 1),
    Color.fromRGBO(255, 254, 84, 1),
    Color.fromRGBO(117, 251, 76, 1),
    Color.fromRGBO(0, 0, 244, 1),
    Color.fromRGBO(68, 7, 124, 1),
    Color.fromRGBO(223, 136, 231, 1),
    Color.fromRGBO(217, 217, 217, 1),
  ];

  // List<String> arrAudio = [
  //   "assets/sounds/dreams.mp3",
  //   "assets/sounds/forestbirds.mp3",
  //   "assets/sounds/ocean.mp3",
  //   "assets/sounds/forestbirds.mp3",
  // ];

  List<MultipleColors> model =
      []; //we have made List model of MultipleColor(multi_model_colors) class
  List<MultipleColors> multiModel = [];
  List<MultipleAudioModel> multipleAudioModel1 = [];

  changeColorState(int index) {
    for (int i = 0; i < model.length; i++) {
      model[i].isSelect.value = false;
    }
    model[index].isSelect.value = true;
    update();
  }

  bool checkModel()
  {
    for(int i=0; i<model.length ; i++)
      {
        if(model[i].isSelect.value == true)
          {
            return true;

          }
      }
    return false;
  }

  multiColorSelect(int index) {
    model[index].isSelect.value == false ? model[index].isSelect.value = true : model[index].isSelect.value = false;
    update();
  }

  multipleColorSelection() {
    if (multiModel.isNotEmpty) {
      multiModel.clear();
    }
    for (int i = 0; i < model.length; i++) {
      if (model[i].isSelect == true) {
        multiModel.add(model[i]);
      }
    }
    print("Color is...,,, ${multiModel.length}");
  }

  int selectRandomValue() {
    Random r = Random();
    return r.nextInt(model.length - 1);
  }

  rainbowSelector() {
    //isRainbowSelect ==false ? isRainbowSelect =true : isRainbowSelect =false;

    for (int i = 0; i < model.length; i++) {
      if (i < 6) {
        model[i].isSelect.value = true;
      } else {
        model[i].isSelect.value = false;
      }
    }
    update();
  }

  selectAudio(int index) {
    for (int i = 0; i < multiAudioModel.length; i++) {
      multiAudioModel[i].isSelect.value = false;
    }
    multiAudioModel[index].isSelect.value = true;
    update();
  }
}
