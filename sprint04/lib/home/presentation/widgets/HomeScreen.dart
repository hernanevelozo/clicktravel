import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:clicktravel/details/presentation/pages/details_page.dart';

class SwiperComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Swiper(
      onTap: (index) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlacePage(
              index: index,
            ),
            fullscreenDialog: true,
          ),
        );
      },
      itemCount: 6,
      itemHeight: _size.height / 2.6,
      itemWidth: double.infinity,
      containerWidth: double.infinity,
      layout: SwiperLayout.CUSTOM,
      controller: new SwiperController(),
      customLayoutOption: CustomLayoutOption(
        startIndex: 0,
        stateCount: 3,
      ),
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.network(
                "https://firebasestorage.googleapis.com/v0/b/clicktravel-f2302.appspot.com/o/assets%2Ffront-page.png?alt=media&token=aef5cbd5-e027-44c4-9a25-d1bab1981c0c",
                height: _size.height / 1.8,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Explorar",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Encontre o lugar exótico perfeito para você",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
