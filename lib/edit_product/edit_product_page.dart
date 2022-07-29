import 'package:flutter/material.dart';

class EditProduct extends StatefulWidget {
  const EditProduct({Key? key}) : super(key: key);

  @override
  _EditProductState createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('Sửa sản phẩm  '),
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
              TextButton(onPressed: (){}, child: const Text('Chon Anh'),),
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
                  child: const Text('Luu '),
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
