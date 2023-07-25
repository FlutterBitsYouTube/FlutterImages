import 'package:flutter/material.dart';

class FBImages extends StatelessWidget {
  const FBImages({super.key});

  @override
  Widget build(BuildContext context) {
    String networkAssetURL = 'https://images.unsplash.com/photo-1502175353174-a7a70e73b362?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2026&q=80';
    String assetImage = 'assets/images/taylor.jpg';
    String avatarAssetImage = 'assets/images/funko.jpeg';

    return SingleChildScrollView(
      child: Container(
        color: Colors.black,
        child: Column(
          children: [
            const Center(
                child: Text(
              'Network Image',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Image.network(
                  networkAssetURL,
                  errorBuilder: (context, error, stackTrace) => const Text(
                    'ERROR',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ),
            const Center(
                child: Text(
              'Asset Image',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Image.asset(
                  assetImage,
                ),
              ),
            ),
            const Center(
              child: Text(
                'Asset Image Sized',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Image.asset(
                  assetImage,
                  height: 400,
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Center(
              child: Text(
                'Asset Image Fill vs Cover',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Fill',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        child: Image.asset(
                          assetImage,
                          height: 200,
                          width: 100,
                          fit: BoxFit.fill,
                          //fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      const Text(
                        'Cover',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        child: Image.asset(
                          assetImage,
                          fit: BoxFit.cover,
                          height: 200,
                          width: 100,
                          //fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Center(
              child: Text(
                'Rounded Corner Image',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(40.0)),
                child: Image.asset(
                  assetImage,
                  //fit: BoxFit.cover,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Center(
              child: Text(
                'Circular Image CircleAvatar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
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
            const Center(
              child: Text(
                'Circular Image Sized',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: ClipOval(
                  child: Image.asset(
                    avatarAssetImage,
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 300,
            )
          ],
        ),
      ),
    );
  }
}
