import 'package:day10/cubit/app_cubits.dart';
import 'package:day10/utils/colors.dart';
import 'package:day10/widgets/app_large_text.dart';
import 'package:day10/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/app_cubut_states.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var images = {
    "checkin-one.png": "Da Lat",
    "checkin-two.jpg": "Ha Noi",
    "checkin-three.jpg": "Hue",
    "welcome-two.png": "NTN",
  };
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(body: BlocBuilder<AppCubits, CubitStates>(
      builder: (context, state) {
        if (state is LoadedState) {
          var info = state.places;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //menu top
              Container(
                margin: EdgeInsets.only(right: 20),
                padding: EdgeInsets.only(top: 70, left: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.black54,
                    ),
                    Expanded(child: Container()),
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(0.5)))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              //discover top
              Container(
                margin: EdgeInsets.only(left: 20),
                child: AppLargeText(text: "?????A DANH "),
              ),
              SizedBox(
                height: 10,
              ),
              //tabbar
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                      labelPadding: EdgeInsets.only(left: 20, right: 20),
                      controller: _tabController,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator:
                          CircleTabIndicator(color: Colors.red, radius: 4),
                      // indicator: ,
                      tabs: [
                        Tab(
                          text: "Places",
                        ),
                        Tab(
                          text: "Insporation",
                        ),
                        Tab(
                          text: "Emotions",
                        ),
                      ]),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                height: 300,
                width: double.maxFinite,
                child: TabBarView(controller: _tabController, children: [
                  ListView.builder(
                    itemCount: info.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(right: 15, top: 10),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "http://mark.bsmeiyu.com/uploads" +
                                        info[index].img),
                                fit: BoxFit.cover)),
                      );
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15, top: 10),
                    height: 300,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("assets/img/welcome-one.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15, top: 10),
                    height: 300,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("assets/img/welcome-two.jpg"),
                            fit: BoxFit.cover)),
                  ),
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppLargeText(
                      text: "Explore more",
                      size: 22,
                    ),
                    AppText(
                      text: "see all",
                      color: AppColors.textColor1,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 110,
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 25),
                child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Container(
                        margin: EdgeInsets.only(
                          right: 20,
                        ),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                BlocProvider.of<AppCubits>(context)
                                    .detailPage(info[index]);
                              },
                              child: Container(
                                // margin: EdgeInsets.only(right: 50),
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: AssetImage("assets/img/" +
                                            images.keys.elementAt(index)),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: AppText(
                                text: images.values.elementAt(index),
                                color: AppColors.textColor2,
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              )
            ],
          );
        } else {
          return Container();
        }
      },
    ));
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2, configuration.size!.height);
    // TODO: implement paint
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
