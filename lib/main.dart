import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'helper_class.dart';
import 'home.dart';
import 'model_class.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    ),
  );
}

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {

  late Future<List<Covid>> alldata;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    alldata = HttpService.httpService.fechCovidData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0e3360),
      appBar: AppBar(
        title: Text("Live update"),
        centerTitle: true,
        backgroundColor: Color(0xff0e3360),
        elevation: 0,
        actions: [
          Icon(Icons.search),
        ],
      ),
      body: _buildBody(context),
    );
  }

  FutureBuilder _buildBody(BuildContext context) {
    return FutureBuilder(
      future: alldata,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Covid> posts = snapshot.data;
          return _buildPosts(context, posts);
        }
        else if(snapshot.hasError){
          return Center(
            child: Text("Error:- ${snapshot.error}"),
          );
        }
        else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  // build list view & its tile
  ListView _buildPosts(BuildContext context, List<Covid> posts) {

    return ListView.builder(
      itemCount: posts.length,
      padding: EdgeInsets.all(20),
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              height: 160,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.location_on, size: 50, color: Color(0xff0e3360),),
                      Text("${posts[index].location}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,  color: Color(0xff0e3360),),)
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.orangeAccent,
                                offset: const Offset(
                                  5.0,
                                  5.0,
                                ),
                                blurRadius: 6.0,
                                spreadRadius: 1.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 3,),
                              Text("Cases", style: TextStyle(color: Color(0xff0e3360), fontSize: 16, fontWeight: FontWeight.w600),),
                              SizedBox(height: 3,),
                              Text("${posts[index].cases}",  style: TextStyle(color: Color(0xff0e3360), fontSize: 18, fontWeight: FontWeight.w600),),
                            ],
                          )
                      ),
                      SizedBox(width: 40,),
                      Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.redAccent,
                                offset: const Offset(
                                  5.0,
                                  5.0,
                                ),
                                blurRadius: 6.0,
                                spreadRadius: 1.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 3,),
                              Text("Deaths", style: TextStyle(color: Color(0xff0e3360), fontSize: 16, fontWeight: FontWeight.w600),),
                              SizedBox(height: 3,),
                              Text("${posts[index].deaths}",  style: TextStyle(color: Color(0xff0e3360), fontSize: 18, fontWeight: FontWeight.w600),),
                            ],
                          )
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
          ],
        );
      },
    );
  }
}