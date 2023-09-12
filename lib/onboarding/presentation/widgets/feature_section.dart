import '../../../core/util/constants.dart';
import '../../../core/util/entities.dart';
import '../../../core/util/responsive/responsive_text.dart';
import '../../../core/util/responsive/responsive_text_style.dart';
import '../../domain/model/feature_model.dart';
import '../../utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../core/util/responsive/responsive_layout.dart';

class FeatureSection extends StatefulWidget {
  final GlobalKey featureKey;
  const FeatureSection({Key? key, required this.featureKey}) : super(key: key);

  @override
  State<FeatureSection> createState() => _FeatureSectionState();
}

class _FeatureSectionState extends State<FeatureSection> {
  int _currentIndex = 0;
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      key: widget.featureKey,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Column(
              children: [_buildCarousel(), _buildMobileScreen()],
            ),
            ..._buildCarouselNavigators()
          ],
        ),
        const SizedBox(height: 16),
        _buildDesktopDotIndicators(),
      ],
    );
  }

  Widget _buildDesktopDotIndicators() {
    return !isMobile(context)
        ? _DotContainer(currentIndex: _currentIndex)
        : const SizedBox.shrink();
  }

  Widget _buildCarousel() {
    return CarouselSlider.builder(
      carouselController: _carouselController,
      itemCount: features.length,
      itemBuilder: (context, index, realIndex) {
        return !isMobile(context)
            ? Row(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: _GIFContainer(gifContent: features[index].gif),
                  ),
                  SizedBox(width: isDesktop(context) ? 96 : 72),
                  Flexible(
                    flex: 1,
                    child: _ContentContainer(featureModel: features[index]),
                  ),
                ],
              )
            : Column(
                children: [
                  _GIFContainer(gifContent: features[index].gif),
                ],
              );
      },
      options: CarouselOptions(
        viewportFraction: 1,
        height: heightOfFeatureCarousel,
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: delayTimeInFeatureCarousel),
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: false,
        initialPage: 0,
        disableCenter: true,
        onPageChanged: (index, reason) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  Widget _buildMobileScreen() {
    return isMobile(context)
        ? Column(
            children: [
              const SizedBox(height: 16),
              _DotContainer(currentIndex: _currentIndex),
              const SizedBox(height: 16),
              _ContentContainer(featureModel: features[_currentIndex])
            ],
          )
        : const SizedBox.shrink();
  }

  List<Widget> _buildCarouselNavigators() {
    return [
      Positioned(
        top: isMobile(context) ? heightOfFeatureCarousel / 2 : null,
        left: 0,
        child: Visibility(
          visible: _currentIndex != 0,
          child: IconButton(
            icon: Icon(
              color: Colors.grey,
              Icons.keyboard_arrow_left_rounded,
              size: isDesktop(context) ? 60 : 40,
            ),
            onPressed: () {
              _carouselController.previousPage();
              if (_currentIndex > 0) {
                setState(() {
                  _currentIndex--;
                });
              }
            },
          ),
        ),
      ),
      Positioned(
        top: isMobile(context) ? heightOfFeatureCarousel / 2 : null,
        right: 0,
        child: Visibility(
          visible: _currentIndex != features.length - 1,
          child: IconButton(
            icon: Icon(
              color: Colors.grey,
              Icons.keyboard_arrow_right_rounded,
              size: isDesktop(context) ? 60 : 40,
            ),
            onPressed: () {
              _carouselController.nextPage();
              if (_currentIndex < features.length - 1) {
                setState(() {
                  _currentIndex++;
                });
              }
            },
          ),
        ),
      )
    ];
  }
}

class _DotContainer extends StatelessWidget {
  final int currentIndex;
  const _DotContainer({required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: features.asMap().entries.map((entry) {
        final int index = entry.key;
        final bool isActive = currentIndex == index;
        return Container(
          width: !isMobile(context)
              ? sizeOfFeatureDotDesktopTablet
              : sizeOfFeatureDotMobile,
          height: !isMobile(context)
              ? sizeOfFeatureDotDesktopTablet
              : sizeOfFeatureDotMobile,
          margin: const EdgeInsets.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color:
                isActive ? Theme.of(context).primaryColor : Colors.transparent,
            border: isActive
                ? null
                : Border.all(
                    color: Theme.of(context).primaryColor,
                    width: 1.0,
                  ),
          ),
        );
      }).toList(),
    );
  }
}

class _ContentContainer extends StatelessWidget {
  final FeatureModel featureModel;
  const _ContentContainer({required this.featureModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ResponsiveText(
          text: featureModel.heading,
          textStyle: getResponsiveTextStyle(context, AppTextTheme.headline),
        ),
        const SizedBox(height: 16),
        ResponsiveText(
          text: featureModel.subHeading,
          textStyle: getResponsiveTextStyle(context, AppTextTheme.title),
        ),
        const SizedBox(height: 32),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: featureModel.details.map((feature) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(!isMobile(context) ? 4 : 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: lightGreen,
                    ),
                    child: Icon(
                      Icons.done,
                      size: !isMobile(context) ? 24 : 16,
                      color: darkGreen,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: ResponsiveText(
                      text: feature,
                      textStyle:
                          getResponsiveTextStyle(context, AppTextTheme.title),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class _GIFContainer extends StatelessWidget {
  final String gifContent;
  const _GIFContainer({
    required this.gifContent,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: curvedBorderRadius,
      child: Image.asset(
        gifContent,
        fit: BoxFit.fill,
        height: heightOfFeatureCarousel,
        width: double.infinity,
      ),
    );
  }
}
