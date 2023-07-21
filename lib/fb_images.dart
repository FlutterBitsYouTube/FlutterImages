import 'package:flutter/material.dart';

class FBImages extends StatelessWidget {
  const FBImages({super.key});

  @override
  Widget build(BuildContext context) {
    String baseURL = 'https://images.unsplash.com/photo-1502175353174-a7a70e73b362?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2026&q=80';
    String assetImage = 'assets/images/taylor.jpg';
    return SingleChildScrollView(
      child: Container(
        color: Colors.black,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Image.network(
                  baseURL,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Image.asset(
                  assetImage,
                  height: 300,
                  width: 300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Image.asset(
                  assetImage,
                  fit: BoxFit.cover,
                  //fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: CircleAvatar(
                    radius: 240,
                    backgroundImage: AssetImage(
                      assetImage,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/gn_funko.jpeg',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                child: Image.asset(
                  assetImage,
                  //fit: BoxFit.cover,
                  fit: BoxFit.fill,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
