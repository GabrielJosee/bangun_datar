import 'package:bangun_datar_kelas_c/controller/lingkaran_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranPage extends StatelessWidget {
   LingkaranPage({super.key});
final LingkaranController _lingkaranController = Get.put(LingkaranController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Lingkaran', style: TextStyle(color: Color(0xFFFFFFFF)),),
          backgroundColor: Colors.green.shade500,
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            Image.asset(
              "assets/lingkaran.png",
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Lingkaran",
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
                "Lingkaran adalah bentuk yang terdiri dari semua titik dalam bidang yang berjarak tertentu dari titik tertentu, pusat; ekuivalennya adalah kurva yang dilacak oleh titik yang bergerak dalam bidang sehingga jaraknya dari titik tertentu adalah konstan",
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: TextFormField(
                        onChanged: (value) {
                          _lingkaranController.r = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Jari Jari",
                          hintText: "Masukan Jari-Jari",
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
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ElevatedButton(onPressed: () {
                            _lingkaranController.hitungkeliling();
                          }, child: Text("Hitung Keliling"), style: ElevatedButton.styleFrom(
                            primary: Colors.greenAccent,
                            onPrimary: Colors.white,
                          ),),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: ElevatedButton(onPressed: () {
                            _lingkaranController.hitungluas();
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
                      Obx(() => Text(_lingkaranController.angka.value, textAlign: TextAlign.center, style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 75,
                        fontWeight: FontWeight.bold,
                      ),)),
                      Obx(() => Text(_lingkaranController.hasil.value, textAlign: TextAlign.center, style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16))),
                    ],
                    )
            )
          ],
        )
    );
  }
}
