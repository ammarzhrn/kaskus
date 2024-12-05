import 'package:flutter/material.dart';
import 'package:kaskus/data/dataresource/auth_local_datasource.dart';
import 'package:kaskus/data/model/response/auth_response_datasource.dart';
import 'package:kaskus/preferences/preferences.dart';
import '../../models/newarrival_model.dart';
import '../../models/product_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:kaskus/features/auth/pages/login.dart';
import 'package:kaskus/features/home/blocs/logout/logout_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sections/header_section.dart';
part 'sections/content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categoryData = [
    'All Product',
    'Shoes',
    'Apparel',
    'Luxury',
    'Slides',
    'Basketball',
    'Running',
    'Soccer',
  ];

  final List<String> imgList = [
    'https://i.ibb.co.com/4WvwNGF/banner1.png',
    'https://i.ibb.co.com/cx3WKsw/banner2.png',
    'https://i.ibb.co.com/G0HC4YG/banner3.png',
  ];

  List<Widget> content = [
    const AllProduct(),
    const Shoes(),
    const Apparel(),
    const Luxury(),
    const Slides(),
    const BasketBall(),
    const Running(),
    const Soccer(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: ListView(
          children: [
            const _HeaderWidget(),
            const SizedBox(height: 20),
            CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 1.0,
                aspectRatio: 16 / 7,
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 500),
              ),
              items: imgList
                  .map((item) => Center(
                child: Image.network(
                  item,
                  fit: BoxFit.cover,
                  width: 500,
                ),
              ))
                  .toList(),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: SizedBox(
                height: 40,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: selectedIndex == index
                              ? const Color(0xff47975a)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: selectedIndex == index
                                ? Colors.transparent
                                : Colors.grey,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 13.0),
                          child: Center(
                            child: Text(
                              categoryData[index],
                              style: TextStyle(
                                color: selectedIndex == index
                                    ? Colors.white
                                    : AppColor.greyText,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(width: 10);
                  },
                  itemCount: categoryData.length,
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Menggunakan IndexedStack untuk memastikan hanya 1 widget yang terlihat
            IndexedStack(
              index: selectedIndex,
              children: content,
            ),
          ],
        ),
      ),
    );
  }
}
