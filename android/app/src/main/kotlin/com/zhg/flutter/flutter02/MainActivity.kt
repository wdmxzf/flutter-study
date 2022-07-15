package com.zhg.flutter.flutter02

import android.content.Intent
import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugin.common.MethodChannel

open class MainActivity: FlutterActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        MethodChannel(
            flutterEngine!!.dartExecutor,"app-channel"
        ).setMethodCallHandler { call, result ->
            if (call.method.equals("gotoPage")) {
                // 参数
                val params: String? = call.argument("title")

                // 跳转
                val intent = Intent(this@MainActivity, OnePageActivity::class.java)
                intent.putExtra("activityKey", params)
                startActivity(intent)
            } else {
                result.notImplemented()
            }
        }
    }
}
