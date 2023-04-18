import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vayu/Controllers/LocationController/LocationController.dart';

class UserLocation extends StatelessWidget {
  const UserLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var locationController = Get.put(LocationController());
    return SizedBox(
      height: 60,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.location_on),
            SizedBox(
              width: 20,
            ),
            FutureBuilder(
              future: locationController.getAddress(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Text(
                    "loading...",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w600),
                  );
                }
                return Text(
                  "${snapshot.data!.locality}  ${snapshot.data!.administrativeArea}  ${snapshot.data!.country}",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w800),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
