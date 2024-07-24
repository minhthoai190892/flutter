import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_backend/common/color_extension.dart';
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
                          onPressed: () {},
                          icon: Image.network(
                            'https://img.icons8.com/?size=100&id=86205&format=png&color=000000',
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
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Column(
                          children: [
                            Image.network(
                              'https://img.icons8.com/?size=100&id=sz8cPVwzLrMP&format=png&color=000000',
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '95.0%',
                              style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              'Acceptance',
                              style: TextStyle(
                                  color: TColor.secondaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800),
                            ),
                          ],
                        )),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
