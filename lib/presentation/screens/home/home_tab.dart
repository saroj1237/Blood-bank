import 'package:blood_bank/core/helpers/custom_scroll_behavior.dart';
import 'package:blood_bank/core/resources/resources.dart';
import 'package:blood_bank/core/routes/go_router.dart';
import 'package:blood_bank/domain/models/home/blood_service.dart';
import 'package:blood_bank/presentation/widgets/custom_cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nepali_date_picker/nepali_date_picker.dart';

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

  int initialIndex = 0;
  CarouselController controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: AppColor.white,
            child: Image.asset(AssetManager.logo),
          ),
        ),
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "TU Lions Blood Bank",
              style: TextStyle(
                color: AppColor.primaryColor,
              ),
            ),
            Text(
              NepaliDateTime.parse(NepaliDateTime.now().toIso8601String())
                  .format(
                "MMMM dd : EEE",
                Language.nepali,
              ),
              style: const TextStyle(
                color: AppColor.secondaryColor,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 0.0),
          child: Divider(height: 1),
        ),
        actions: [
          IconButton(
              onPressed: () {
                context.push(AppRoutes.notificationRoute);
              },
              icon: const Icon(
                Icons.notifications,
                color: AppColor.primaryColor,
              ))
        ],
      ),
      body: CustomScrollView(
        scrollBehavior: CustomScrollBehavior(),
        slivers: [
          // banner section ---------------------
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: size.height * 0.22,
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
                                height: size.height * 0.22,
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
          const SliverToBoxAdapter(
              child: SizedBox(
            height: 16,
            child: Divider(),
          )),

          // Blood Services -----------------------------------------------

          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Blood Services',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
              child: SizedBox(
            height: 12,
          )),
          SliverToBoxAdapter(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 115,
                minHeight: 110,
                maxWidth: double.infinity,
                minWidth: double.infinity,
              ),
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
                      padding: const EdgeInsets.only(bottom: 8, top: 4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: AppColor.secondaryColor.withOpacity(0.1))),
                      height: 120,
                      width: 125,
                      child: Padding(
                        padding: EdgeInsets.zero,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              bloodService.imageUrl,
                              height: 70,
                              width: 70,
                              fit: BoxFit.fitHeight,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              bloodService.label,
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
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
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
          // Other Services------------------------------------------------
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Other Information',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 12)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverGrid.builder(
              itemCount: BloodService.otherServices.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.75,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                final otherService = BloodService.otherServices[index];
                return GestureDetector(
                  onTap: () => otherService.onPressed!(context),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: AppColor.secondaryColor.withOpacity(0.1))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Image.asset(
                            otherService.imageUrl,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Text(
                          otherService.label,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 16),
          )
        ],
      ),
    );
  }
}
