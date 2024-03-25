import 'package:flutter/material.dart';



class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tomate"),
        leading: BackButton(),
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),


      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Padding(padding: EdgeInsets.all(10),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.height,

                        child: Image.asset("images/image7.jpg")),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 65,
                    child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index){
                        return GestureDetector(
                          onTap: (){
                            setState(() {

                            });
                          },

                          child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.red,

                                ),
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: Image.asset("images/image7.jpg", width: 50,height: 150,fit: BoxFit.cover,),
                            ),


                          ),
                        );
                      },

                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text("Tomate Fresh", style: TextStyle(fontSize: 25,color: Colors.black87,fontWeight: FontWeight.bold,),),
                      SizedBox(height: 5,),
                      Text("FC 87000",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 25),),
                      
                    ],
                  ),
                  Column(
                    children: [
                      Text("Tomate fresh",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text("FC 120.000",style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black38,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.red,
                            decorationThickness: 2.0,
                          ),),
                          SizedBox(height: 5,),
                          Text("-50%",style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black38

                          ),)

                        ],
                      ),
                      SizedBox(height: 20,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Description: ",style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 5,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("DescriptionDescription DescriptionDescription Description Description Description Description Description Description Description Description"
                            "DescriptionDescriptionDescriptionDescription Description Description Description Description"),
                      ),
                      SizedBox(height: 10,),
                      Padding(padding: EdgeInsets.all(10),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  spreadRadius: 2
                                )
                              ]
                            ),
                            child: Icon(Icons.email, size: 30, color: Color(0XFF146ABE),),
                          ),

                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 6,
                                      spreadRadius: 2
                                  )
                                ]
                            ),
                            child: Icon(Icons.phone, size: 30, color: Colors.green,),
                          ),

                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 6,
                                      spreadRadius: 2
                                  )
                                ]
                            ),
                            child: Icon(Icons.whatshot, size: 30, color: Colors.green,),
                          ),
                        ],
                      ),
                      )
                    ],
                  )
                ],
              ),
            
            )
        
        ),
      ),
    );
  }
}
