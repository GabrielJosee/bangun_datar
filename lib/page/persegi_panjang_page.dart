import 'package:bangun_datar_kelas_c/controller/persegi_panjang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangPage extends StatelessWidget {
   PersegiPanjangPage({super.key});
  final PersegiPanjangController _persegiPanjangController = Get.put(PersegiPanjangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Persegi Panjang', style: TextStyle(color: Color(0xFFFFFFFF)),),
          backgroundColor: Colors.green.shade500,
        ),
        body: ListView(
          children: [
            Image.asset(
              "assets/Persegi Panjang.png",
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Persegi Panjang",
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
                "Persegi panjang adalah bangun datar dua dimensi yang dibentuk oleh dua pasang sisi yang masing-masing sama panjang dan sejajar dengan pasangannya, dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku.",
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              child: TextFormField(
                                onChanged: (value) {
                                  _persegiPanjangController.panjang = int.parse(value);
                                },
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  labelText: "Panjang",
                                  hintText: "Masukan Panjang",
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
                            _persegiPanjangController.lebar = int.parse(value);
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
                            _persegiPanjangController.hitungKeliling();
                          }, child: Text("Hitung Keliling"), style: ElevatedButton.styleFrom(
                            primary: Colors.greenAccent,
                            onPrimary: Colors.white,
                          ),),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: ElevatedButton(onPressed: () {
                            _persegiPanjangController.hitungLuas();
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
                      Obx(() => Text(_persegiPanjangController.angka.value, textAlign: TextAlign.center, style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 75,
                        fontWeight: FontWeight.bold,
                      ),)),
                      Obx(() => Text(_persegiPanjangController.hasil.value, textAlign: TextAlign.center, style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16))),
                    ],
                    )
            )
          ],
    )
    );
  }
}
