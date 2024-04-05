package ch.masus.libs;

import com.google.android.gms.location.FusedLocationProviderClient;
import androidx.annotation.Keep;


@Keep
public class JNILocation {

    public FusedLocationProviderClient client;

    public void sayHi() {
        System.out.println("Hi Team!");
    }
}
