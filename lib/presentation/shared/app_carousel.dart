import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AppCarousel extends StatefulWidget {
  final String tagHero;
  final List<String> images;
  final double height;
  const AppCarousel({
    Key? key,
    required this.tagHero,
    required this.images,
    required this.height,
  }) : super(key: key);

  @override
  State<AppCarousel> createState() => _AppCarouselState();
}

class _AppCarouselState extends State<AppCarousel> {
  int _currentIndex = 0;
  final PageController _controller = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: widget.height,
      child: Stack(
        children: [
          SizedBox(
            height: widget.height * 0.82,
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  _currentIndex = value;
                });
              },
              children: [
                Hero(
                  tag: widget.tagHero,
                  child: CachedNetworkImage(imageUrl: widget.images[0]),
                ),
                if (widget.images.length > 1)
                  ...widget.images
                      .sublist(1)
                      .map((e) => CachedNetworkImage(imageUrl: e)),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            child: SizedBox(
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  widget.images.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    height: 10,
                    width: _currentIndex == index ? 20 : 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: _currentIndex == index
                          ? Theme.of(context).colorScheme.secondary
                          : Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
