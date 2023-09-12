import 'package:imagine_works_landing_page/onboarding/domain/model/award_model.dart';
import 'package:imagine_works_landing_page/onboarding/domain/model/feature_model.dart';
import 'package:flutter/material.dart';
// Pages constants

// OnBoarding
const double heightBetweenSectionsDesktop = 56;
const double heightBetweenSectionsTablet = 48;
const double heightBetweenSectionsMobile = 32;

// Widget Constants

const BorderRadius curvedBorderRadius = BorderRadius.only(
  topLeft: Radius.circular(213),
  bottomLeft: Radius.circular(218),
  bottomRight: Radius.circular(216),
);

// NavBar Constants
const String product = "Product";
const String subscribe = "Subscribe";
const String about = "About";
const List<String> navItems = [product, subscribe, about];
const String logoTitle = "ImagineWorks";
const String logoIcon = "assets/svg/logo.svg";
const double logoSizeDesktop = 50;
const double logoSizeTablet = 40;
const double logoSizeMobile = 30;

// Hero Constants
const String heroHeading = "Imagination Meets Intelligence";
const String heroSubHeading =
    "As AI as your collaborator to create anything you can imagine";
const String heroImage = "assets/images/hero_image.png";
const double heroImageHeightDesktop = 500;
const double heroImageHeightTablet = 450;
const double heroImageHeightMobile = 400;

// Feature Constants
final List<FeatureModel> features = [
  FeatureModel(
      gif: "assets/gifs/custom_ai_training.gif",
      heading: "Custom AI Training",
      subHeading: "Create your own custom portrait generator for text to image",
      details: [
        "Upload your desired photos",
        "Give a unique name",
        "Click Create Portrait"
      ]),
  FeatureModel(
      gif: "assets/gifs/background_removal.gif",
      heading: "Background Removal",
      subHeading: "Remove background from any video",
      details: [
        "Import your clip",
        "Create a Mask for object of interest",
        "Click Export "
      ]),
  FeatureModel(
      gif: "assets/gifs/text_to_image.gif",
      heading: "Text to Image",
      subHeading: "Create an image by entering descriptive text.",
      details: ["Write your prompt", "Adjust Settings ", "Click Generate"]),
  FeatureModel(
      gif: "assets/gifs/inpainting.gif",
      heading: "Inpainting",
      subHeading: "Automatically remove unwanted objects throughout your clip",
      details: ["Import your clips", "Inpaint", "Click Export"]),
];
const double heightOfFeatureCarousel = 400;
const double sizeOfFeatureDotDesktopTablet = 20;
const double sizeOfFeatureDotMobile = 16;
const int delayTimeInFeatureCarousel = 10;

// Awards Constants
final List<AwardModel> awards = [
  AwardModel(
      imageUrl: 'assets/images/awards/award_1.png',
      title: "Stage 1 & 2 Winners"),
  AwardModel(
      imageUrl: "assets/images/awards/award_2.png",
      title: "Second place in 3/4 events"),
  AwardModel(
      imageUrl: "assets/images/awards/award_3.png",
      title: "Finalist in the virtual circuit")
];
const String learnMore = "Learn More";

// SubFeature Constants
const String subFeatureHeading = "Create Personal Image";
const String subFeatureGIF1 = "assets/gifs/subfeature_1.gif";
const String subFeatureGIF2 = "assets/gifs/subfeature_2.gif";
const double heightOfsubFeatureGIF = 400;

// Footer Constants
const footerTitle = "\u00a9 2023 AAUNO Inc. All rights reserved.";
const List<String> footerItems = [
  "Terms of Service",
  "Privacy Policy",
  "Code of Conduct"
];
const List<String> footerSocialMediaLogos = [
  "assets/svg/social_media_logos/reddit.svg",
  "assets/svg/social_media_logos/linkedIn.svg",
  "assets/svg/social_media_logos/facebook.svg",
  "assets/svg/social_media_logos/youtube.svg",
  "assets/svg/social_media_logos/twitter.svg",
  "assets/svg/social_media_logos/instagram.svg",
  "assets/svg/social_media_logos/tiktok.svg"
];

// Community Constants
final List<String> communityLogos = [
  'assets/images/community_logos/cbs.png', // Replace with your png paths
  'assets/images/community_logos/corridor.png',
  'assets/images/community_logos/google.png',
  'assets/images/community_logos/microsoft.png',
  'assets/images/community_logos/nb.png',
  'assets/images/community_logos/nick.png',
  'assets/images/community_logos/ny.png',
  'assets/images/community_logos/rga.png',
  'assets/images/community_logos/vox.png'
];
const int noOfCommunityLogosDesktop = 8;
const int noOfCommunityLogosTablet = 6;
const int noOfCommunityLogosMobile = 4;
const double heightOfCommunityLogo = 80;

//About Us Constants
const aboutUsString =
    "AAUNO is an independent research lab focused in the field of Artificial Intelligence, Blockchain and Autonomous Systems, exploring efficient and cost effective ways in solving problems in these domain.\n\nWe believe everyone is unique and has a story. Our mission is to make technology accessible to all.\n\nWe are a small self-funded, fully-distributed passionate team who are domain experts in there field working with decades of experience and an incredible set of open minded advisors.";
