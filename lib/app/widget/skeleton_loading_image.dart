import 'package:ids_flutter/app/controllers/home_controller.dart';
import 'package:ids_flutter/constant/core.dart';
import 'package:shimmer/shimmer.dart';

class SkeletonLoadingImage extends StatelessWidget {
  const SkeletonLoadingImage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
        ),
        itemCount: controller.pictureList.length,
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          );
        },
      ),
    );
  }
}
