import 'package:flutter/cupertino.dart';

class CCC extends StatefulWidget{
  const CCC({super.key});
  @override
  State<CCC> createState(){
    return _Currency_convertor_cupertino();
  }

}
class _Currency_convertor_cupertino extends State<CCC>{
    
  double result=0.0;
  TextEditingController textEditingController=TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    print("rebuilt");
   
    return CupertinoPageScaffold(
      navigationBar:CupertinoNavigationBar(
        middle:Text('Currency Convertor'),
       ),
      backgroundColor: CupertinoColors.systemGrey5  ,
      child:Center(child:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        
        children:[

        Container(
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.all(5.0),
          
         // color: Colors.yellow,
          child: Text('INR ${result!=0?result.toStringAsFixed(2):result.toStringAsFixed(0)}',style:TextStyle(
            fontSize:50,
            fontWeight:FontWeight.bold,
            color: CupertinoColors.black
          ),
          ),
        ),
        
          Container(
            padding: const EdgeInsets.only(left:15.0, right:15.00),
            child: CupertinoTextField(
              controller:textEditingController,
              style:TextStyle(color:const Color.fromARGB(255, 0, 0, 0)),
            decoration:
            BoxDecoration(
              color:CupertinoColors.white,
              border: Border.all(),
              borderRadius: BorderRadius.all(Radius.circular(20)),
                
            ),
            placeholder: 'enter the amount in USD',
            prefix:Icon(CupertinoIcons.money_dollar_circle),
          
            keyboardType:TextInputType.numberWithOptions()
            
            ),
          ),
          Container(padding:EdgeInsets.all(50.0),
            child:
            CupertinoButton(onPressed: (){result=double.parse(textEditingController.text)*81.0;
              setState((){

              });
            },
            color:CupertinoColors.black,
            minSize:50.0,
            
            child:Text('click me', style:TextStyle(color:CupertinoColors.white)), 
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