import 'package:flutter/material.dart';
import 'package:quanly_kho/add_product/add_product_page.dart';
import 'package:quanly_kho/edit_product/edit_product_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trang chủ '),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const AddProductPage()));
              },
              child: const Text(
                'Thêm ',
                style: TextStyle(fontSize: 15),
              ),
              style: TextButton.styleFrom(primary: Colors.white)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
                labelText: 'Search',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: InkWell(
                onTap: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        const ClipRRect(
                          child: Icon(
                            Icons.image_outlined,
                            size: 100,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 100, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Day cap tran phu'),
                              Text('gia', style: TextStyle(color: Colors.red),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 300),
                          child: Column(
                            children: [
                              IconButton(onPressed: () {},
                                icon: const Icon(Icons.delete),),
                              TextButton(onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => const EditProduct()));                              },
                                child: const Text('Chi tiet',
                                  style: TextStyle(color: Colors.blue),),)
                            ],
                          ),
                        )

                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
