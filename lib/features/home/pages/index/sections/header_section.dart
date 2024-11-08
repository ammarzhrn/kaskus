part of '../page.dart';

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(right: 20.0, left: 20.0, top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hallo, Ammar!',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '@ammar.zhrn',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.w200),
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            // Adjust the radius as needed
            child: Image.asset(
              'assets/images/pp.png',
              height: 65,
            ),
          )
        ],
      ),
    );
  }
}