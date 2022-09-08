import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:get/get.dart';
import 'package:night_light/navigation/app_route_maps.dart';



class LavaScreenController extends GetxController {
  var argumentData=Get.arguments;
  late String audio;
  late String multipleColors;
  late int minut;
  final assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
  var colors;

  // var time;


  @override
  void onInit() {
    super.onInit();
    if(argumentData[0]["multipleColors"]==null){
      colors=argumentData[0]["color"];
      minut = argumentData[0]["min"];
      Future.delayed( Duration(minutes: minut), () {
        assetsAudioPlayer.stop();
        Get.offNamedUntil('homePage', (route) => false);
        });

    }

    audio=argumentData[0]["audio"];
    assetsAudioPlayer.open(
        Audio(audio),
        autoStart: true,
        showNotification: false,
        loopMode: LoopMode.single
    );

  }

  playOrPauseMusic() {
    AssetsAudioPlayer().stop();
  }

}