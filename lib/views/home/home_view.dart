import 'package:flutter/material.dart';
import 'package:fullclass/controller/home_controller.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: getuser(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(snapshot.data[index].address.city),
                        subtitle:Text("${snapshot.data[index].id}") ,
                      );
                    });
              } else {
                return CircularProgressIndicator();
              }
            }
            )
            );
  }
}
