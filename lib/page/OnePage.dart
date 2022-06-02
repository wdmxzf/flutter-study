import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter02/page/TwoPage.dart';

class OnePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final msg = ModalRoute.of(context)?.settings.arguments;
    Object? result = "";
    print("---------------------1");
    print(msg);
    print("---------------------2");

    return Scaffold(
      appBar: AppBar(title: const Text("第一页"),leading: BackButton(onPressed: (){print("返回");},),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("路由参数: " + msg.toString()),
            CupertinoButton(child: const Text("返回"), onPressed: (){
              Navigator.pop(context,"我从第一页来");
            }),
            CupertinoButton(child: const Text("下一页"), onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){return TwoPage(msg:"我从第一页来");})).then((value){
                result = value;
                print("---------------------1");
                print(result);
                print("---------------------2");});
            }),
            Text("下页来的参数"),
            Text(result.toString()),
          ],
        ),
      ),
    );
  }

}