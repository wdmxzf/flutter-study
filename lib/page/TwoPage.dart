import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter02/routes/RoutesConfig.dart';
import 'package:flutter02/util/SPUtil.dart';

class TwoPage extends StatelessWidget{
  final String msg;
  TwoPage({this.msg="默认"});
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    print("---------------------arguments");
    print(arguments);
    print("---------------------arguments");
    print("---------------------msg");
    print(msg);
    print("---------------------msg");
    Object? result ="";
    return Scaffold(
      appBar: AppBar(title: const Text("第二页")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text("接收参数:"),
            Text(msg.toString()),
            CupertinoButton(child: const Text("上一页"), onPressed: (){
              Navigator.of(context).pop("第二页返回了");
            }),
            const Text("下页返回的数据::"),
            Text(result.toString()),
            CupertinoButton(child: const Text("下一页"), onPressed: (){
              SPUtil.getInstant().save("test", "哈哈哈");
              Navigator.pushNamed(context, RoutesConfig.PAGE_THREE, arguments: "我从第二页来").then((value) => result = value);
            }),
            const Text("arguments"),
            Text(arguments.toString()),
          ],
        ),
      ),
    );
  }
}