import 'package:get/get.dart';

class SegitigaController extends GetxController{
  var Alas = 0;
  var Tinggi = 0;
  final hasil ="".obs;
  final angka ="".obs;

  void hitungLuas(){
    var hitungL = 0.5 * Alas* Tinggi;
    hasil.value = "Hasil Perhitungan Luas dari Segitiga Sama Sisi adalah $hitungL";
    angka.value = "$angka";
  }
  void hitungKeliling(){
    int hitungK = Alas + Alas + Alas;
    hasil.value = "Hasil Perhitungan Keliling Segitiga sama Sisi adalah $hitungK";
    angka.value = "$angka";
  }
}