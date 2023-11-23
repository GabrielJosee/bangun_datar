import 'package:get/get.dart';

class LingkaranController extends GetxController{
  var r;
  final hasil = "".obs;
  final angka = "".obs;

  void hitungluas(){
    var hitungL = 3.14 * r * r;
    hasil.value = "Hasil Perhitungan luas dari jari jari $r adalah $hitungL";
    angka.value = "$hitungL";
  }

  void hitungkeliling(){
    var hitungK = 2 * 3.14 * r;
    hasil.value = "Hasil Perhitungan Keliling dari jari jari $r adalah $hitungK";
    angka.value = "$hitungK";
  }

}