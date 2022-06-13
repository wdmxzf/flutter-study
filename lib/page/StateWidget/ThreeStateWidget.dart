import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter02/page/ThreeStatePage.dart';
import 'package:flutter02/routes/RoutesConfig.dart';
import 'package:flutter02/util/SPUtil.dart';

/**
 * 有状态组件
 */
class ThreeStateWidget extends State<ThreeStatePage> {

  Object? result = "";

  @override
  void deactivate() {
    super.deactivate();
    print("---------------------deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("---------------------dispose");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("---------------------initState");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("---------------------didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    final msg = ModalRoute.of(context)?.settings.arguments;
    print("---------------------msg");
    print(msg);
    print("---------------------msg");
    return Scaffold(
      appBar: AppBar(title: const Text("第三页")),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("接收参数:"),
            Text(msg.toString()+"++"+SPUtil.getInstant().getValue("test")
            ),
            CupertinoButton(
                child: const Text("上一页"),
                onPressed: () {
                  Navigator.of(context).pop("第三页返回了");
                }),
            const Text("下页返回的数据::"),
            Text(result.toString()),
            CupertinoButton(
                child: const Text("下一页"),
                onPressed: () {
                  Navigator.pushNamed(context, RoutesConfig.PAGE_FOUR,
                          arguments: "我从第三页来")
                      .then((value) {
                    setState(() {
                      result = value;
                    });
                    print("---------------------result3");
                    print(result);
                    print("---------------------result3");
                  });
                })
          ],
        ),
      ),
    );
  }
}
