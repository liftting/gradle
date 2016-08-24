package cyg.wm.smali;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Log;

/**
 * Created by wm on 16/6/15.
 */
public class CheckSignature {

    public static final String APP_SIGN = "";

    public static String getSignature() {
        Context context = MyApplication.getMyContext();

        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), PackageManager.GET_SIGNATURES);

            Signature[] signatures = packageInfo.signatures;

            StringBuilder builder = new StringBuilder();

//            for (Signature signature : signatures) {
//                builder.append(signature.toCharsString());
//            }
            builder.append(signatures[0].toCharsString());

            String data = builder.toString();

            Log.d("Smali",data);

            return builder.toString();

        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }

        return "";
    }

}
