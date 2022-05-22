import 'package:flutter/material.dart';

import 'main.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0e3360),
        appBar: AppBar(
          backgroundColor:  Color(0xff0e3360),
          leading: Icon(Icons.menu_rounded),
          actions: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5),
                  height: 40,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.2),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Icon(Icons.search),
                      SizedBox(width: 10,),
                      Text("Search"),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),
                SizedBox(width: 20,),
              ],
            ),
          ],
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text("Stay Home", style: TextStyle(fontSize: 35, color: Colors.white, fontWeight: FontWeight.w600),),
              ),
              Container(
                child: Text("Stay Safe", style: TextStyle(fontSize: 35, color: Colors.white, fontWeight: FontWeight.w600),),
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    height: 60,
                    width: 150,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(0.2),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.blue,
                          ),
                          child: Icon(Icons.local_hospital_outlined, color: Colors.white,),
                        ),
                        SizedBox(width: 10,),
                        Text("Hospital", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    height: 60,
                    width: 150,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(0.2),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.deepOrangeAccent,
                          ),
                          child: Icon(Icons.mic_external_on, color: Colors.white,),
                        ),
                        SizedBox(width: 10,),
                        Text("Medicine", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    height: 60,
                    width: 150,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(0.2),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.amber,
                          ),
                          child: Icon(Icons.link, color: Colors.white,),
                        ),
                        SizedBox(width: 10,),
                        Text("Consulte", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    height: 60,
                    width: 150,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(0.2),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.purple,
                          ),
                          child: Icon(Icons.lightbulb_outline, color: Colors.white,),
                        ),
                        SizedBox(width: 10,),
                        Text("Diagonist", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50,),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home_Page()));
                },
                child: Stack(
                  children: [
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://cdn.pixabay.com/photo/2020/05/15/18/46/corona-5174671__480.jpg"),
                          )
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 25, top: 18),
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.redAccent.withOpacity(0.8),
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              const Text("Live update", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white),),
                              Text("about Corona Virus", style: TextStyle(fontSize: 18, color: Colors.white.withOpacity(0.8)),),
                            ],
                          ),
                          SizedBox(width: 90,),
                          Column(
                            children: [
                              SizedBox(height: 8,),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white.withOpacity(0.3),
                                ),
                                child: Icon(Icons.arrow_forward, color: Colors.white,),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Stack(
                children: [
                  Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("https://media.istockphoto.com/photos/coronavirus-virus-outbreak-picture-id1206774789?k=20&m=1206774789&s=612x612&w=0&h=7MgIbLQbVUCSic3wnpcqAj-0fNZdD_s-w5QTVxO_MNU="),
                        )
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff0c213e),
                    ),
                    child: Row(
                      children: [
                        Image(image: AssetImage("assets/img/1.png"), height: 150,),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 30,),
                            const Text("5 Simptoms", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),),
                            Text("about Corona", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),),
                            SizedBox(height: 20,),
                            Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white.withOpacity(0.3),
                                ),
                                child: Text("Learn More", style: TextStyle(color: Colors.white, fontSize: 18),)
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}