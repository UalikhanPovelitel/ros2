import 'package:flutter/material.dart';
import 'package:rossecond/Page/Page10.dart';

class Pagenine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Import Images'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ImageWidget(),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pageten()),
                );
              },
              child: Text('NextPage'),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String assetNamePath = 'assets/images/amazonka.jpeg';

    AssetImage imageFromAssetImage = AssetImage(assetNamePath);

    return Container(
      constraints: BoxConstraints.expand(height: double.infinity),
      child: Image(image: imageFromAssetImage, fit: BoxFit.cover),
    );
  }
}
