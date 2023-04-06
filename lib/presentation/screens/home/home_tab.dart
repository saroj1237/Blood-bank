import 'package:blood_bank/core/resources/resources.dart';
import 'package:blood_bank/domain/models/home/blood_service.dart';
import 'package:blood_bank/presentation/widgets/custom_cached_network_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<String> bannerItems = [
    "https://www.kelsey-seybold.com/-/media/Project/KelseySeybold/KelseySeyboldClinic/Images/Blog-Images/donating-blood-banner.jpg?h=592&iar=0&w=1052&hash=CA207919D3D4DC295B5B717045C872E9",
    "https://www.osfhealthcare.org/blog/wp-content/uploads/2021/12/shutterstock_1586903512-1.jpg",
    "https://www.capecodhealth.org/app/files/public/9919/COVIDBloodDonate_cchn.jpg",
    "https://www.thephuketnews.com/photo/listing/2016/1463739923_1-org.jpg",
  ];

  List<Widget> widgetList = [
    InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        height: 120,
        width: 130,
        child: Padding(
          padding: EdgeInsets.zero,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/blood_stock.png',
                height: 70,
                width: 70,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Blood Stock',
                style: TextStyle(),
              )
            ],
          ),
        ),
      ),
    ),
    InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        height: 120,
        width: 130,
        child: Padding(
          // padding: EdgeInsets.zero,
          padding: const EdgeInsets.all(6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Hero(
                tag: 'request',
                child: Image.asset(
                  'assets/images/request.png',
                  height: 70,
                  width: 70,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Request Blood',
                style: TextStyle(),
              )
            ],
          ),
        ),
      ),
    ),
    InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        height: 120,
        width: 130,
        child: Padding(
          padding: EdgeInsets.zero,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Hero(
                tag: 'donate',
                child: Image.asset(
                  'assets/images/donate.png',
                  height: 70,
                  width: 70,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Donate Blood',
                style: TextStyle(),
              )
            ],
          ),
        ),
      ),
    ),
    InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        height: 120,
        width: 130,
        child: Padding(
          padding: EdgeInsets.zero,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Hero(
                tag: 'book_camp',
                child: Image.asset(
                  'assets/images/book_camp.png',
                  height: 70,
                  width: 70,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Book Camp',
                style: TextStyle(),
              )
            ],
          ),
        ),
      ),
    ),
  ];
  int initialIndex = 0;
  CarouselController controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("TU Lions Blood Bank"),
      ),
      body: CustomScrollView(
        slivers: [
          // banner section ---------------------
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.only(top: 16),
              width: double.infinity,
              height: size.height * 0.25,
              child: CarouselSlider(
                carouselController: controller,
                options: CarouselOptions(
                  enlargeCenterPage: false,
                  viewportFraction: 1,
                ),
                items: bannerItems
                    .map(
                      (banner) => Builder(
                        builder: (context) {
                          return Container(
                            width: size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: CustomCachedImage(
                                height: size.height * 0.25,
                                imageUrl: banner,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          );
                        },
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),

          // Blood Services -----------------------------------------------

          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Blood Services',
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),

          SliverToBoxAdapter(
            child: SizedBox(
              height: 110,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: BloodService.bloodServices.length,
                itemBuilder: (context, index) {
                  final bloodService = BloodService.bloodServices[index];
                  return GestureDetector(
                    onTap: () {
                      bloodService.onPressed!(context);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.only(bottom: 8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: AppColor.secondaryColor.withOpacity(0.1))),
                      height: 120,
                      width: 130,
                      child: Padding(
                        padding: EdgeInsets.zero,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              bloodService.imageUrl,
                              height: 70,
                              width: 70,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              bloodService.label,
                              style: const TextStyle(),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          // Other Services------------------------------------------------
          // const SliverToBoxAdapter(
          //   child: Padding(
          //     padding: EdgeInsets.symmetric(horizontal: 16.0),
          //     child: Text(
          //       'Other Services',
          //     ),
          //   ),
          // ),

          // SliverToBoxAdapter(
          //   child: Wrap(
          //     children: BloodService.bloodServices
          //         .map((e) => Image.asset(e.imageUrl))
          //         .toList(),
          //   ),
          // )
        ],
      ),
    );
  }
}
