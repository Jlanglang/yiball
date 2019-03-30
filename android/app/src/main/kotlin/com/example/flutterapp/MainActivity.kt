package com.example.flutterapp

import android.app.Activity
import android.content.Context
import android.os.Bundle
import android.widget.Toast
import com.example.flutterapp.A.test

import io.flutter.app.FlutterActivity
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity() : FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        GeneratedPluginRegistrant.registerWith(this)
        test()
    }


}


object A {
    fun Activity.test() {

    }

    @JvmStatic
    fun register(context: Context, messenger: BinaryMessenger) = MethodChannel(messenger, "jlanglang/Toast").setMethodCallHandler { methodCall, result ->
        when (methodCall.method) {
            "showShortToast" -> showToast(context, methodCall.argument<String>("message"), Toast.LENGTH_SHORT)
            "showLongToast" -> showToast(context, methodCall.argument<String>("message"), Toast.LENGTH_LONG)
            "showToast" -> showToast(context, methodCall.argument<String>("message"), methodCall.argument<Int>("duration"))
        }
        result.success(null) //没有返回值，所以直接返回为null
    }

    private fun showToast(context: Context, message: String = "", duration: Int = Toast.LENGTH_SHORT) = Toast.makeText(context, message, duration).show()

}