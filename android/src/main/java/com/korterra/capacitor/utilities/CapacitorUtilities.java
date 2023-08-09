package com.equimaps.capacitor_background_geolocation;

import android.content.Context;
import android.app.ActivityManager;

import com.getcapacitor.JSObject;
import com.getcapacitor.annotation.CapacitorPlugin;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;

import org.json.JSONObject;

@CapacitorPlugin(name = "CapacitorUtilities")
public class CapacitorUtilities extends Plugin {

    @PluginMethod
    public void getDeviceSpecifications(final PluginCall call) {
        try {

            Context context = getContext();
            ActivityManager actManager = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
            ActivityManager.MemoryInfo memInfo = new ActivityManager.MemoryInfo();
            assert actManager != null;
            actManager.getMemoryInfo(memInfo);
            long totalMemory = memInfo.totalMem;

            JSObject result = new JSObject();
            result.put("physicalMemory", totalMemory);
            call.resolve(result);
        } catch (Exception e) {
            call.reject(e.getMessage());
        }
    }
}