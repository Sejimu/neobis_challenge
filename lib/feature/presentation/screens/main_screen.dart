import 'package:flutter/material.dart';
import 'package:neobis_challenge/data/model/productCategoryItems.dart';
import 'package:neobis_challenge/data/model/productCategoryMotelItem.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Эко-Маркет",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: MyBuildBody(),
    );
  }
}
// YES

class MyBuildBody extends StatefulWidget {
  const MyBuildBody({super.key});

  @override
  State<MyBuildBody> createState() => _MyBuildBodyState();
}

class _MyBuildBodyState extends State<MyBuildBody> {
  List<ProductCategoryMotelItem> items = []; // Declare items at the class level

  @override
  void initState() {
    super.initState();

    // Assign the items in the initState
    items = ProductCategoryItems.items;
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody(items);
  }
}

Widget _buildBody(List<dynamic> items) {
  print(items);
  return Column(
    children: (items as List<ProductCategoryMotelItem>).map((item) {
      return Container(
        child: Text("main screen"),
      );
    }).toList(),
  );
}
