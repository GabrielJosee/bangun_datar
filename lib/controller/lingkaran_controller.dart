import 'package:get/get.dart';

class LingkaranController extends GetxController{
  var r;
  final hasil = "".obs;
  final angka = "".obs;

  void hitungluas(){
    var hitung;
    if(r % 7 == 0){
      hitung = (22 / 7) * r * r;
    }else{
      hitung = 3.14 * r * r;
    }
    hasil.value = "Hasil Perhitungan luas dari jari jari $r adalah $hitung";
    angka.value = "$hitung";
  }

  void hitungkeliling(){
    var keliling;
    if(r % 7 == 0){
      keliling = 2 *  (22 / 7) * r;
    }else{
      keliling = 2 * 3.14 * r;
    }
    hasil.value = "Hasil Perhitungan Keliling dari jari jari $r adalah $keliling";
    angka.value = "$keliling";
    }
}