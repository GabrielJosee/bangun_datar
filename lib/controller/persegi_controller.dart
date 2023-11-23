import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi = 0;
  final hasil ="".obs;
  final angka ="".obs;

  void hitungLuas(){
    int hitungL = sisi * sisi;
    hasil.value = "Hasil Perhitungan Luas dari $sisi * $sisi adalah $hitungL";
    angka.value = "$angka";
  }
  void hitungKeliling(){
    int hitungK = 4 * sisi;
    hasil.value = "Hasil Perhitungan Keliling dari $sisi * 4 adalah $hitungK";
    angka.value = "$angka";
  }
}