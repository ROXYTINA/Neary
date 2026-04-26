import 'package:flutter/material.dart';

enum LoadState { loading, loaded, empty, error }

class CatalogPage extends StatefulWidget {
  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  LoadState state = LoadState.loading;
  List<String> items = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      // change this to test states
      items = ["A", "B", "C"];
      state = items.isEmpty ? LoadState.empty : LoadState.loaded;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (state == LoadState.loading) {
      return Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (state == LoadState.error) {
      return Scaffold(
        body: Center(child: Text("Error loading data")),
      );
    }

    if (state == LoadState.empty) {
      return Scaffold(
        body: Center(child: Text("No items found")),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text("Catalog")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (_, i) => ListTile(title: Text(items[i])),
      ),
    );
  }
}