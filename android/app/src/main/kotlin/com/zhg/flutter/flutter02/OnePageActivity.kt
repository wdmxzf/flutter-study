package com.zhg.flutter.flutter02

import android.app.Activity
import android.os.Bundle
import android.view.View
import io.flutter.embedding.android.FlutterActivity
import kotlinx.android.synthetic.main.activity_one_page.*

class OnePageActivity : Activity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_one_page);
        var title = intent.getStringExtra("activityKey");
        tvContent.text = title;
        tv_flutter.setOnClickListener{
//            FlutterActivity.withNewEngine().initialRoute("/TwoPage").build(this@OnePageActivity)
            startActivity((FlutterActivity.withNewEngine().initialRoute("TwoPage").build(this)))
        }
        tv_back.setOnClickListener { finish(); }
    }
}