import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:getwidget/getwidget.dart';
import 'package:coworking_space_app/models/call_api.dart';
import 'package:coworking_space_app/services/remote_service.dart';
import 'package:coworking_space_app/controllers/coworking_controller.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:coworking_space_app/page/coworkingcard.dart';



class SelectCoworking extends StatefulWidget {
  @override
  State<SelectCoworking> createState() =>
      SelectCoworkingState();
}

class SelectCoworkingState extends State<SelectCoworking> {
  final CoworkingController coworkingController =
      Get.put(CoworkingController());

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Workly Space',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.home), onPressed: () => Navigator.pushNamed((context), "/home"),),
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              if (coworkingController.isLoading.value)
                return Center(child: CircularProgressIndicator());
              else
                return StaggeredGridView.countBuilder(
                  crossAxisCount: 1,
                  itemCount: coworkingController.cowork_list.length,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  itemBuilder: (context, index) {
                    return  Coworkingcard(coworkingController.cowork_list[index]);
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                );
            }),
          ),
        ],
      ),
    );
  }
}