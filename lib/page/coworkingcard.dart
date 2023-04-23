import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:coworking_space_app/models/call_api.dart';
import 'package:getwidget/getwidget.dart';

class Coworkingcard extends StatelessWidget {
  final Coworking coworking;
  const  Coworkingcard(this.coworking);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 400,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: GFCard(
                    boxFit: BoxFit.cover,
                    titlePosition: GFPosition.start,
                    image: Image.network(coworking.imageUrl,
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover),
                    showImage: true,
                    title: GFListTile(
                      avatar: GFAvatar(
                        backgroundImage: NetworkImage(coworking.logo),
                      ),
                      titleText: coworking.namecowork,
                      subTitleText: coworking.categories,
                    ),
                    content: Text(coworking.description),
            
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
