import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quanly_kho/camera/take_picture.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({Key? key}) : super(key: key);

  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Them sản phẩm  '),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.image_outlined,
                  color: Colors.blueGrey,
                ),
                iconSize:100 ,
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(onPressed: ()async{
                await availableCameras().then((value) =>
                Navigator.push(context, MaterialPageRoute(builder: (context)=>TakePictureScreen(camera: value),),),);
              }, child: const Text('Chon Anh'),),
              const SizedBox(
                height: 80,
              ),
              createTextField('Tên sản phẩm '),
              const SizedBox(
                height: 10,
              ),
              createTextField('Giá  '),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                maxLines: 6,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // labelText: 'Mo ta',
                    hintText: 'Mo ta'),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  onPressed: () {},
                  child: const Text('Lưu  '),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget createTextField(String title) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: title,
      ),
    );
  }
}
