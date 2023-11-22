import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Home Page",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.green.shade300,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(child: CustomMenu(imageAsset: "assets/persegi.png", title: "Persegi")),
              Expanded(child: CustomMenu(imageAsset: "assets/Persegi Panjang.png", title: "Persegi Panjang")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(child: CustomMenu(imageAsset: "assets/Segitiga.png", title: "Segitiga")),
              Expanded(child: CustomMenu(imageAsset: "assets/jajar genjang.png", title: "Jajar Genjang")),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });
  final String imageAsset;
  final String title;


  @override
  Widget build(BuildContext context) {
    return Container(width: 200,height: 320,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(color: Colors.green.shade500,borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imageAsset, alignment: Alignment.center,width: 200,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ));
  }
}
