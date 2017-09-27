.class public Lcom/unity3d/ads/android/data/UnityAdsDevice;
.super Ljava/lang/Object;
.source "UnityAdsDevice.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Map;)Lorg/json/JSONArray;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 109
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    return-object v1

    .line 111
    :cond_1
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 114
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 116
    :try_start_0
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 117
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsUtils;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 120
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 123
    const-string v5, "id"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_2

    .line 125
    const-string v2, "timestamp"

    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v4, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 128
    :cond_2
    if-nez v1, :cond_3

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move-object v1, v2

    .line 129
    :cond_3
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move-object v0, v1

    move-object v1, v0

    .line 134
    goto :goto_0

    .line 132
    :catch_0
    move-exception v2

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception when processing package "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAdvertisingTrackingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->getAdvertisingTrackingId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAndroidId(Z)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    if-eqz p0, :cond_0

    .line 46
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 55
    :cond_0
    :goto_0
    return-object v0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problems fetching androidId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 52
    const-string v0, "unknown"

    goto :goto_0
.end method

.method public static getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->isUsingWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "wifi"

    .line 71
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cellular"

    goto :goto_0
.end method

.method public static getDeviceType()I
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    return v0
.end method

.method public static getHardwareVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType()I
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 97
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public static getPackageDataJson(Ljava/util/Map;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-static {p0}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->a(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v1

    .line 142
    if-nez v1, :cond_0

    .line 150
    :goto_0
    return-object v0

    .line 144
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 146
    :try_start_0
    const-string v3, "games"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in getPackageDataJson"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getScreenDensity()I
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public static getScreenSize()I
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getDeviceType()I

    move-result v0

    return v0
.end method

.method public static getSoftwareVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isActiveNetworkConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 156
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 158
    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 160
    goto :goto_0

    :cond_1
    move v0, v1

    .line 163
    goto :goto_0
.end method

.method public static isLimitAdTrackingEnabled()Z
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->getLimitedAdTracking()Z

    move-result v0

    return v0
.end method

.method public static isUsingWifi()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 79
    if-nez v0, :cond_0

    move v0, v2

    .line 91
    :goto_0
    return v0

    .line 82
    :cond_0
    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 85
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 86
    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    move v0, v2

    .line 87
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 91
    if-ne v0, v3, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method
