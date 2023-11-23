import 'package:get/get.dart';

class PersegiPanjangController extends GetxController{
  int panjang = 0;
  int lebar = 0;
  final hasil ="".obs;
  final angka ="".obs;

  void hitungLuas(){
    int hitungL = panjang * lebar;
    hasil.value = "Hasil Perhitungan Luas dari $panjang * $lebar adalah $hitungL";
    angka.value = "$angka";
  }
  void hitungKeliling(){
    int hitungK = 2 * (panjang + lebar);
    hasil.value = "Hasil Perhitungan Keliling 2 * ($panjang + $lebar) adalah $hitungK";
    angka.value = "$angka";
  }
}