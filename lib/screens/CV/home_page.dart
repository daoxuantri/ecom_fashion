import 'package:ecom_fashion/screens/CV/app_styles.dart';
import 'package:ecom_fashion/screens/CV/product_detail_page.dart';
import 'package:ecom_fashion/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = [
    "House",
    "Apartment",
    "Hotel",
    "Villa",
    "Cottage",
  ];

  List<String> imageLinks = [
  'https://mod-movers.com/wp-content/uploads/2020/06/webaliser-_TPTXZd9mOo-unsplash-scaled-e1591134904605.jpg',
  'https://s3-alpha-sig.figma.com/img/fc2a/22eb/77b12515a6310130b669ed3062ff9bd9?Expires=1740355200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=dweKyW31POoTZC3wsUgUOAcK3X1VmiR9HWzMR3OHtZ73eG8GhKxbqiSkeWTu10IItklgoO3G8itfsCZjtoRQfrfMvLTzl3urY-QUmkCEWYMPWvE1gKTfp4T-Z3qCuK8n~YBboHHF2tdH-TAAug6sg5vCdDWL9A~5HWTwnJ3CkIG-1QMcFBx3-jDhANBXBU89cZtQ1VTNSzKDXEzPr8WSHtd9Iqqvt4lEG8c2IhTitQn1Iqrnl0u-gcUXRqi4a1vtEZkgdKUhVlLPvN1ccsKigRq7Ez68GIRK-o6tdX4yw7Ac2G-GGSwOmbiAWVltWwU2xnp-BmKft6sIQZLbV2aA7g__',
];

List<String> names = [
  'Dreamsville House',
  'Ascot House'
];

List<String> addresses = [
  'Jl. Sultan Iskandar Muda',
  'Jl. Cilandak Tengah'
];


  int current = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kPadding20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location',
                          style: kRalewayRegular.copyWith(
                            color: kGrey83,
                            fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical! * 0.5,
                        ),
                        Row(
                          children: [
                            Text(
                              'Jakarta',
                              style: kRalewayMedium.copyWith(
                                color: kBlack,
                                fontSize: SizeConfig.blockSizeHorizontal! * 5,
                              ),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 0.5,
                            ),
                            SvgPicture.asset(
                              'assets/images/icon_dropdown.svg',
                            ),
                          ],
                        )
                      ],
                    ),
                    SvgPicture.asset(
                      'assets/images/icon_notification_has_notif.svg',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kPadding24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kPadding20,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: kRalewayRegular.copyWith(
                          color: kBlack,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3,
                        ),
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: kPadding16,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(
                              kPadding8,
                            ),
                            child: SvgPicture.asset(
                              'assets/images/icon_search.svg',
                            ),
                          ),
                          hintText: 'Search address, or near you',
                          border: kInputBorder,
                          errorBorder: kInputBorder,
                          disabledBorder: kInputBorder,
                          focusedBorder: kInputBorder,
                          enabledBorder: kInputBorder,
                          hintStyle: kRalewayRegular.copyWith(
                            color: kGrey85,
                            fontSize: SizeConfig.blockSizeHorizontal! * 3,
                          ),
                          filled: true,
                          fillColor: kWhiteF7,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                    Container(
                      height: 49,
                      width: 49,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kBorderRadius10),
                        gradient: kLinearGradientBlue,
                      ),
                      child: SvgPicture.asset(
                        'assets/images/icon_filter.svg',
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: kPadding24,
              ),
              SizedBox(
                width: double.infinity,
                height: 34,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          current = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          left: index == 0 ? kPadding20 : 12,
                          right:
                              index == categories.length - 1 ? kPadding20 : 0,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: kPadding16,
                        ),
                        height: 34,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 0,
                              offset: const Offset(0, 18),
                              blurRadius: 18,
                              color: current == index
                                  ? kBlue.withOpacity(0.1)
                                  : kBlue.withOpacity(0),
                            )
                          ],
                          gradient: current == index
                              ? kLinearGradientBlue
                              : kLinearGradientWhite,
                          borderRadius: BorderRadius.circular(
                            kBorderRadius10,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            categories[index],
                            style: kRalewayMedium.copyWith(
                              color: current == index ? kWhite : kGrey85,
                              fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: kPadding24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kPadding20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Near from you',
                      style: kRalewayMedium.copyWith(
                        color: kBlack,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                    ),
                    Text(
                      'See more',
                      style: kRalewayRegular.copyWith(
                        color: kGrey85,
                        fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kPadding24,
              ),
              SizedBox(
  height: 272,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: imageLinks.length, // Sử dụng độ dài của danh sách hình ảnh
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: (() => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductDetailPage(),
              ),
            )),
        child: Container(
          height: 272,
          width: 222,
          margin: EdgeInsets.only(
            left: kPadding20,
            right: index == imageLinks.length - 1 ? kPadding20 : 0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              kBorderRadius20,
            ),
            boxShadow: [
              BoxShadow(
                spreadRadius: 0,
                offset: const Offset(0, 18),
                blurRadius: 18,
                color: kBlack.withOpacity(0.1),
              )
            ],
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageLinks[index]), // Sử dụng danh sách hình ảnh
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 136,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(kBorderRadius20),
                      bottomRight: Radius.circular(kBorderRadius20),
                    ),
                    gradient: kLinearGradientBlack,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kPadding16,
                    vertical: kPadding20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                kBorderRadius20,
                              ),
                              color: kBlack.withOpacity(
                                0.24,
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: kPadding8,
                              vertical: kPadding4,
                            ),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/images/icon_pinpoint.svg',
                                ),
                                const SizedBox(
                                  width: kPadding4,
                                ),
                                Text(
                                  '1.8 km',
                                  style: kRalewayRegular.copyWith(
                                    color: kWhite,
                                    fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            names[index], // Sử dụng danh sách tên
                            style: kRalewayMedium.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            ),
                          ),
                                        SizedBox(
                                          height:
                                              SizeConfig.blockSizeVertical! *
                                                  0.5,
                                        ),
                                        Text(
                                          addresses[index],
                                          style: kRalewayRegular.copyWith(
                                            color: kWhite,
                                            fontSize: SizeConfig
                                                    .blockSizeHorizontal! *
                                                2.5,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: kPadding24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kPadding20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best for you',
                      style: kRalewayMedium.copyWith(
                        color: kBlack,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                    ),
                    Text(
                      'See more',
                      style: kRalewayRegular.copyWith(
                        color: kGrey85,
                        fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kPadding24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kPadding20,
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 70,
                      margin: const EdgeInsets.only(
                        bottom: kPadding24,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius10),
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 0,
                                  offset: const Offset(0, 18),
                                  blurRadius: 18,
                                  color: kBlack.withOpacity(0.1),
                                )
                              ],
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  'https://mod-movers.com/wp-content/uploads/2020/06/webaliser-_TPTXZd9mOo-unsplash-scaled-e1591134904605.jpg',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal! * 4.5,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Orchad House',
                                  style: kRalewayMedium.copyWith(
                                    color: kBlack,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 4,
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConfig.blockSizeVertical! * 0.5,
                                ),
                                Text(
                                  'Rp. 2.500.000.000 / Year',
                                  style: kRalewayRegular.copyWith(
                                    color: kBlue,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 2.5,
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/images/icon_bedroom.svg',
                                          ),
                                          SizedBox(
                                            width: SizeConfig
                                                    .blockSizeHorizontal! *
                                                0.5,
                                          ),
                                          Text(
                                            '6 Bedroom',
                                            style: kRalewayRegular.copyWith(
                                              color: kGrey85,
                                              fontSize: SizeConfig
                                                      .blockSizeHorizontal! *
                                                  2.5,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width:
                                            SizeConfig.blockSizeHorizontal! * 1,
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/images/icon_bathroom.svg',
                                          ),
                                          SizedBox(
                                            width: SizeConfig
                                                    .blockSizeHorizontal! *
                                                0.5,
                                          ),
                                          Text(
                                            '4 Bathroom',
                                            style: kRalewayRegular.copyWith(
                                              color: kGrey85,
                                              fontSize: SizeConfig
                                                      .blockSizeHorizontal! *
                                                  2.5,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
