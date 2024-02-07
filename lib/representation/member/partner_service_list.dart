import 'package:flutter/material.dart';
import 'package:exe201_lumos_mobile/component/app_bar.dart';
import 'package:exe201_lumos_mobile/core/const/color_const.dart';
import 'package:exe201_lumos_mobile/core/helper/asset_helper.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rich_readmore/rich_readmore.dart';

class PartnerServiceList extends StatefulWidget {
  const PartnerServiceList({Key? key});

  static String routeName = '/partner_service_list';

  @override
  State<PartnerServiceList> createState() => _PartnerServiceListState();
}

class _PartnerServiceListState extends State<PartnerServiceList> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    List<Service> services = [
      Service(
        name: 'Điều trị nha khoa',
        executionTime: '60',
        description: 'Dịch vụ chăm sóc và điều trị nha khoa chuyên sâu.',
        price: 200.0,
      ),
      Service(
        name: 'Kiểm tra mắt',
        executionTime: '30',
        description:
            'Kiểm tra mắt chuyên sâu với các bước đo chính xác và hiện đại.',
        price: 150.0,
      ),
      Service(
        name: 'Masage thư giãn',
        executionTime: '45',
        description: 'Dịch vụ masage thư giãn giúp giảm căng thẳng và mệt mỏi.',
        price: 120.0,
      ),
      Service(
        name: 'Điều trị nha khoa',
        executionTime: '60',
        description: 'Dịch vụ chăm sóc và điều trị nha khoa chuyên sâu.',
        price: 200.0,
      ),
      Service(
        name: 'Kiểm tra mắt',
        executionTime: '30',
        description:
            'Kiểm tra mắt chuyên sâu với các bước đo chính xác và hiện đại.',
        price: 150.0,
      ),
      Service(
        name: 'Masage thư giãn',
        executionTime: '45',
        description: 'Dịch vụ masage thư giãn giúp giảm căng thẳng và mệt mỏi.',
        price: 120.0,
      ),
      Service(
        name: 'Điều trị nha khoa',
        executionTime: '60',
        description:
            'Dịch vụ chăm sóc và điều trị nha khoa chuyên sâu. Kiểm tra mắt chuyên sâu với các bước đo chính xác và hiện đại. Kiểm tra mắt chuyên sâu với các bước đo chính xác và hiện đại.',
        price: 200.0,
      ),
      Service(
        name: 'Kiểm tra mắt',
        executionTime: '30',
        description:
            'Kiểm tra mắt chuyên sâu với các bước đo chính xác và hiện đại. Kiểm tra mắt chuyên sâu với các bước đo chính xác và hiện đại. Kiểm tra mắt chuyên sâu với các bước đo chính xác và hiện đại.',
        price: 150.0,
      ),
      Service(
        name: 'Masage thư giãn',
        executionTime: '45',
        description:
            'Dịch vụ masage thư giãn giúp giảm căng thẳng và mệt mỏi. Kiểm tra mắt chuyên sâu với các bước đo chính xác và hiện đại. Kiểm tra mắt chuyên sâu với các bước đo chính xác và hiện đại.',
        price: 120.0,
      ),
    ];

    return Scaffold(
      appBar: AppBarCom(
        appBarText: 'Dịch vụ',
        leading: true,
        action: [
          Container(
            width: 36,
            height: 36,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ColorPalette.blue2,
            ),
            child: IconButton(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(bottom: 2),
              icon: const Icon(
                Ionicons.calendar_outline,
                size: 21,
                color: ColorPalette.blueBold2,
              ),
              onPressed: () {
                print('Search');
              },
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            child: Image.asset(
              AssetHelper.partnerImage,
              fit: BoxFit.fill,
              alignment: Alignment.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: ListTile(
              title: const Text(
                'Bệnh viện Đại Học Y Dược TPHCM',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              titleTextStyle: GoogleFonts.almarai(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: ColorPalette.blueBold2,
              ),
              subtitle: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const RatingStars(
                          starColor: ColorPalette.star,
                          starOffColor: ColorPalette.grey2,
                          value: 1.5,
                          valueLabelVisibility: false,
                          starSize: 16,
                        ),
                        Container(
                          height: 20,
                          width: 1.2,
                          color: ColorPalette.blueBold2,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                        ),
                        const Icon(
                          FontAwesomeIcons.calendarCheck,
                          size: 16,
                          color: ColorPalette.blueBold2,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          "30 lượt đã đặt",
                          style: GoogleFonts.almarai(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: ColorPalette.blueBold2,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon: Icon(
                          _isFavorited
                              ? Icons.favorite
                              : Icons.favorite_border_outlined,
                          size: 25,
                          color: _isFavorited
                              ? ColorPalette.pink
                              : ColorPalette.blueBold2,
                        ),
                        onPressed: () {
                          setState(() {
                            _isFavorited = !_isFavorited;
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 12,
            color: ColorPalette.grey2,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: services.map((service) {
                return Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        leading: const Icon(
                          Icons.medical_services,
                          size: 23,
                          color: ColorPalette.pink,
                        ),
                        title: Text(
                          service.name,
                          style: GoogleFonts.almarai(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: ColorPalette.blueBold2,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${service.executionTime} phút',
                                    style: GoogleFonts.almarai(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: ColorPalette.blueBold2,
                                    ),
                                  ),
                                  RichReadMoreText.fromString(
                                    text: service.description,
                                    textStyle: GoogleFonts.almarai(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: ColorPalette.bluelight2,
                                        decorationStyle:
                                            TextDecorationStyle.solid,
                                        textStyle: const TextStyle(
                                          textBaseline: TextBaseline.alphabetic,
                                        )),
                                    settings: LineModeSettings(
                                      trimLines: 3,
                                      trimCollapsedText: 'Xem thêm',
                                      trimExpandedText: 'Rút gọn',
                                      onPressReadMore: () {},
                                      onPressReadLess: () {
                                        /// specific method to be called on press to show less
                                      },
                                      lessStyle: GoogleFonts.almarai(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: ColorPalette.bluelight2,
                                      ),
                                      moreStyle: GoogleFonts.almarai(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: ColorPalette.bluelight2,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      '${service.price} VNĐ',
                                      style: GoogleFonts.almarai(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: ColorPalette.blueBold2,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    if (service != services.last)
                      const Divider(
                        thickness: 0.7,
                        height: 2,
                        color: ColorPalette.blue2,
                      ),
                  ],
                );
              }).toList(),
            ),
          ),
          Container(
            height: 20,
            color: ColorPalette.grey2,
          ),
        ],
      ),
    );
  }
}

class Service {
  String name;
  String executionTime;
  String description;
  double price;

  Service({
    required this.name,
    required this.executionTime,
    required this.description,
    required this.price,
  });
}