package com.zhg.flutter.flutter02

import android.app.Activity
import android.os.Bundle
import android.view.View
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.FlutterView

class FlutterPageActivity: Activity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        var flutterView : FlutterView = FlutterView(this)
    }
}