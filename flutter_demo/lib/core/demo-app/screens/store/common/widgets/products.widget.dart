import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_demo/core/demo-app/screens/store/common/services/dummy-products.service.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../mon.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Text'),
          ],
        ),
        Expanded(
          child: StreamBuilder<List<Mon>>(
            stream: DummyProductsService().getMons(),
            builder: (BuildContext context, AsyncSnapshot<List<Mon>> snapshot) {
              if (snapshot.hasData) {
                return AnimationLimiter(
                  child: ListView.builder( // TODO this aint working right
                    itemCount: snapshot.data?.length ?? 0,
                    padding: EdgeInsets.all(0),
                    itemBuilder: (BuildContext context, int index) {
                      final Mon mon = snapshot.data![index];
                      return AnimationConfiguration.staggeredList(
                        position: index,
                        duration: Duration(milliseconds: 500),
                        child: Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: SizedBox(
                            height: 110,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('#'),
                                      Text(mon.pokemonId.toString()),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 14, bottom: 14),
                                        child: Text(mon.pokemonName),
                                      ),
                                      Spacer(),
                                      Image.network(
                                        DummyProductsService().getImageUrl(mon.formatNumber()),
                                        width: 50,
                                        height: 50,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(r'$'),
                                      Text(Random().nextInt(mon.pokemonId > 10 ? mon.pokemonId : 10).toString()),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(5),
                        ),
                      );
                    },
                  ),
                );
              } else {
                return SizedBox();
              }
            },
          ),
        ),
      ],
    );
  }
}
