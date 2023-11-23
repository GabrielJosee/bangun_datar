import 'package:bangun_datar_kelas_c/controller/segitiga_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaPage extends StatelessWidget {
   SegitigaPage({super.key});
    final SegitigaController _segitigaController = Get.put(SegitigaController());

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Segitiga', style: TextStyle(color: Color(0xFFFFFFFF)),),
            backgroundColor: Colors.green.shade500,
          ),
          body: ListView(
            children: [
              Image.asset(
                "assets/Segitiga.png",
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Segitiga",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(color: Colors.green.shade500,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Text(
                  "Sebuah segitiga adalah poligon dengan tiga ujung dan tiga simpul. Ini adalah salah satu bentuk dasar dalam geometri. Segitiga dengan simpul A, B, dan C dilambangkan. Dalam geometri Euclidean, setiap tiga titik, ketika non-collinear, menentukan segitiga unik dan sekaligus, sebuah bidang unik.",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(color: Colors.green.shade500,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              child: TextFormField(
                                onChanged: (value) {
                                  _segitigaController.Alas = int.parse(value);
                                },
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  labelText: "Alas / Sisi",
                                  hintText: "Masukan Alas / Sisi",
                                  hintStyle: TextStyle(color: Colors.grey.shade400),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 8),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(width: 1, color: Colors.grey),
                                      borderRadius: BorderRadius.all(Radius.circular(10))),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(width: 1, color: Colors.grey),
                                      borderRadius: BorderRadius.all(Radius.circular(10))),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: 1, color: Colors.blue),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              child: TextFormField(
                                onChanged: (value) {
                                  _segitigaController.Tinggi = int.parse(value);
                                },
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  labelText: "Lebar",
                                  hintText: "Masukan Lebar",
                                  hintStyle: TextStyle(color: Colors.grey.shade400),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 8),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(width: 1, color: Colors.grey),
                                      borderRadius: BorderRadius.all(Radius.circular(10))),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(width: 1, color: Colors.grey),
                                      borderRadius: BorderRadius.all(Radius.circular(10))),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: 1, color: Colors.blue),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      Container(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: ElevatedButton(onPressed: () {
                              _segitigaController.hitungKeliling();
                            }, child: Text("Hitung Keliling"), style: ElevatedButton.styleFrom(
                              primary: Colors.greenAccent,
                              onPrimary: Colors.white,
                            ),),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: ElevatedButton(onPressed: () {
                              _segitigaController.hitungLuas();
                            },  child: Text("Hitung Luas"), style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                            )),
                          ),
                        ],
                      )),
                    ],
                  )
              ),
              Container(
                  height: 200,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(color: Colors.orange,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Column(
                      children: [
                        Text("Hasil :", style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                        Obx(() => Text(_segitigaController.angka.value, textAlign: TextAlign.center, style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 75,
                          fontWeight: FontWeight.bold,
                        ),)),
                        Obx(() => Text(_segitigaController.hasil.value, textAlign: TextAlign.center, style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16))),
                      ],
                  )
              )
            ],
          )
    );
  }
}
