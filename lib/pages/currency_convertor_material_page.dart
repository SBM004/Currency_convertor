import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class CC extends StatefulWidget  {
   CC({super.key}){
    print('constructor');
  }
  
  @override
  State<CC> createState(){
    print('create state');
    return _Currency_convertor();
    }
  //State createState()=>_Currency_convertor();
}
 class _Currency_convertor extends State<CC>
 //class _Currency_convertor extends State
 {
   //const CC({super.key});
  // @overridevoid @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  // }
  
  double result=0.0;
  TextEditingController textEditingController=TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    print("rebuilt");
    final border=OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width:5, 
              style:BorderStyle.solid ,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          );
    return Scaffold(
      appBar:AppBar(
        title:Text('Currency Convertor'),
        centerTitle:true,
      ),
      backgroundColor: Colors.blueGrey,
      body:Center(child:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        
        children:[

        Container(
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.all(5.0),
          
         // color: Colors.yellow,
          child: Text('INR ${result!=0?result.toStringAsFixed(2):result.toStringAsFixed(0)}',style:TextStyle(
            fontSize:50,
            fontWeight:FontWeight.bold,
            color: Colors.black
          ),
          ),
        ),
        
          Container(
            padding: const EdgeInsets.only(left:15.0, right:15.00),
            child: TextField(
              controller:textEditingController,
              style:TextStyle(color:const Color.fromARGB(255, 0, 0, 0)),
            decoration:InputDecoration(hintText:'enter the amount in USD',
            hintStyle:TextStyle(color:const Color.fromARGB(255, 0, 0, 0)),
            prefixIcon:Icon(Icons.monetization_on),
            filled: true,
            fillColor:Colors.white,
            focusedBorder:border,
            enabledBorder:border
            ,
            ),
            keyboardType:TextInputType.numberWithOptions()
            
            ),
          ),
          Container(padding:EdgeInsets.all(50.0),
            child:
            ElevatedButton(onPressed: (){result=double.parse(textEditingController.text)*81.0;
              setState((){

              });
            },style:ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.black),
            elevation:WidgetStatePropertyAll(25.0),
            shadowColor:WidgetStatePropertyAll(Colors.black),
  
            textStyle: WidgetStatePropertyAll(TextStyle(color:Colors.white)),
            padding: WidgetStatePropertyAll(EdgeInsets.fromLTRB(10.0,0.0,10.0,0.0)),
            minimumSize : WidgetStatePropertyAll(Size(double.infinity,50)),
            //shape:WidgetStatePropertyAll(CircleBorder())
            
            ), 
            child:Text('click me', style:TextStyle(color:Colors.white)), 
               // Icon(Icons.money)
             ),
             
          ),
           
        ],
        ),
        ),

      );
     // result=0.0;
  } 
  
 }

double cConvertor(double amt){
  return amt*82.0;
}