package cyg.wm.smali;

import android.app.Application;
import android.content.Context;

/**
 * Created by wm on 16/6/15.
 */
public class MyApplication extends Application {

    private static Context context;

    @Override
    public void onCreate() {
        super.onCreate();
        context = this;
    }

    public static Context getMyContext() {
        return context;
    }
}
