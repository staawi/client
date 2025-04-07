package im.stawi.app

import com.famedly.fcm_shared_isolate.FcmSharedIsolateService

import im.stawi.app.MainActivity

import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.dart.DartExecutor.DartEntrypoint

import android.content.Context
import android.os.Bundle
import android.util.Log
import android.view.WindowManager

class FcmPushService : FcmSharedIsolateService() {
    override fun getEngine(): FlutterEngine {
        return provideEngine(getApplicationContext())
    }

    companion object {
        fun provideEngine(context: Context): FlutterEngine {
            val flutterEngine = FlutterEngine(context)
    flutterEngine.dartExecutor.executeDartEntrypoint(
        DartEntrypoint.createDefault()
    )

    return flutterEngine
        }
    }
}
