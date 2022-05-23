import 'package:demo/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Data extends GetView<DataController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Network Call'),
      ),
      body: controller.obx(
              (data) => Center(
              child: ListView.builder(
                  itemCount: data!.length,
                  itemBuilder: (BuildContext context, int index){
                    return Card(

                      child: Column(
                        children: [
                          ListTile(
                            title: Text(data[index]['name']['first']),
                            subtitle: Text(data[index]['name']['last']),
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  data[index]['picture']['thumbnail']
                              ),
                            ),

                          )
                        ],
                      ),
                    );
                  })
          )
      ),
    );
  }
}