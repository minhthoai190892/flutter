import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_backend/common/color_extension.dart';
import 'package:flutter_backend/common_widget/icon_title_subtitle.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  MapController controller = MapController(
    initPosition: GeoPoint(latitude: 47.4358055, longitude: 8.4737324),
  );
  bool isOpen = true;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          OSMFlutter(
            controller: controller,
            osmOption: OSMOption(
              userTrackingOption: const UserTrackingOption(
                enableTracking: true,
                unFollowUser: false,
              ),
              zoomOption: const ZoomOption(
                initZoom: 8,
                minZoomLevel: 3,
                maxZoomLevel: 19,
                stepZoom: 1.0,
              ),
              showZoomController: true,
              userLocationMarker: UserLocationMaker(
                personMarker: const MarkerIcon(
                  icon: Icon(
                    Icons.location_history_rounded,
                    color: Colors.red,
                    size: 48,
                  ),
                ),
                directionArrowMarker: const MarkerIcon(
                  icon: Icon(
                    Icons.double_arrow,
                    size: 48,
                  ),
                ),
              ),
              roadConfiguration: const RoadOption(
                roadColor: Colors.yellowAccent,
              ),
              // markerOption: MarkerOption(
              //     defaultMarker: MarkerIcon(
              //   icon: Icon(
              //     Icons.person_pin_circle,
              //     color: Colors.blue,
              //     size: 56,
              //   ),
              // )),
            ),
            onMapIsReady: (bool value) async {
              if (value) {
                Future.delayed(const Duration(seconds: 1), () async {
                  await controller.currentLocation();
                });
              }
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 40,
                      width: 40,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: TColor.primary,
                              borderRadius: BorderRadius.circular(35),
                              // boxShadow: const [
                              //   BoxShadow(
                              //     color: Colors.black,
                              //     blurRadius: 10,
                              //     // offset: Offset(0, -5)
                              //   )
                              // ]
                            ),
                          ),
                          Container(
                            width: 65,
                            height: 65,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: const Text(
                              'GO',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          'https://img.icons8.com/?size=100&id=3396&format=png&color=000000',
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(0, -5))
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isOpen = !isOpen;
                            });
                          },
                          icon: Image.network(
                            isOpen
                                ? 'https://img.icons8.com/?size=100&id=102286&format=png&color=000000'
                                : 'https://img.icons8.com/?size=100&id=102290&format=png&color=000000',
                            width: 15,
                            height: 15,
                          ),
                        ),
                        const Text(
                          'You\'re offline',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(
                          width: 15,
                          height: 15,
                        )
                      ],
                    ),
                    if (isOpen)
                      Container(
                        width: double.maxFinite,
                        height: 0.5,
                        decoration: BoxDecoration(
                            color: TColor.placeholder.withOpacity(0.5)),
                      ),
                    if (isOpen)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconTitleSubtitleButton(
                            title: '95.5%',
                            subTitle: 'Acceptance',
                            icon:
                                'https://img.icons8.com/?size=100&id=sz8cPVwzLrMP&format=png&color=000000',
                            onPressed: () {},
                          ),
                          Container(
                            width: 0.5,
                            height: 100,
                            decoration: BoxDecoration(
                                color: TColor.placeholder.withOpacity(0.5)),
                          ),
                          IconTitleSubtitleButton(
                            title: '4.75',
                            subTitle: 'Rating',
                            icon:
                                'https://img.icons8.com/?size=100&id=sz8cPVwzLrMP&format=png&color=000000',
                            onPressed: () {},
                          ),
                          Container(
                            width: 0.5,
                            height: 100,
                            decoration: BoxDecoration(
                                color: TColor.placeholder.withOpacity(0.5)),
                          ),
                          IconTitleSubtitleButton(
                            title: '2.0%',
                            subTitle: 'Cancelleation',
                            icon:
                                'https://img.icons8.com/?size=100&id=sz8cPVwzLrMP&format=png&color=000000',
                            onPressed: () {},
                          ),
                        ],
                      )
                  ],
                ),
              )
            ],
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      width: 60,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: Offset(0, -5))
                        ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '\$',
                            style: TextStyle(
                                color: TColor.secondary,
                                fontSize: 14,
                                fontWeight: FontWeight.w800),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            '157.50',
                            style: TextStyle(
                                color: TColor.primary,
                                fontSize: 25,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 10,
                                    offset: Offset(0, -5))
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                'https://img.icons8.com/?size=100&id=21441&format=png&color=000000',
                                width: 40,
                                height: 40,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 10,
                                    offset: Offset(0, -5))
                              ],
                            ),
                            constraints: const BoxConstraints(minWidth: 15),
                            child: const Text(
                              '3',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
