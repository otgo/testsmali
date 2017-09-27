.class public Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;
.super Ljava/lang/Object;
.source "GeneralPropertiesWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final SDK_VERSION:Ljava/lang/String; = "sdkVersion"


# instance fields
.field private final ADVERTISING_ID:Ljava/lang/String;

.field private final ADVERTISING_ID_IS_LIMIT_TRACKING:Ljava/lang/String;

.field private final ANDROID_OS_VERSION:Ljava/lang/String;

.field private final APPLICATION_KEY:Ljava/lang/String;

.field private final BATTERY_LEVEL:Ljava/lang/String;

.field private final BUNDLE_ID:Ljava/lang/String;

.field private final CONNECTION_TYPE:Ljava/lang/String;

.field private final DEVICE_MODEL:Ljava/lang/String;

.field private final DEVICE_OEM:Ljava/lang/String;

.field private final DEVICE_OS:Ljava/lang/String;

.field private final EXTERNAL_FREE_MEMORY:Ljava/lang/String;

.field private final INTERNAL_FREE_MEMORY:Ljava/lang/String;

.field private final KEY_PLUGIN_TYPE:Ljava/lang/String;

.field private final KEY_PLUGIN_VERSION:Ljava/lang/String;

.field private final KEY_SESSION_ID:Ljava/lang/String;

.field private final LANGUAGE:Ljava/lang/String;

.field private final LOCATION_LAT:Ljava/lang/String;

.field private final LOCATION_LON:Ljava/lang/String;

.field private final MOBILE_CARRIER:Ljava/lang/String;

.field private final PUBLISHER_APP_VERSION:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TIME_ZONE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->TAG:Ljava/lang/String;

    .line 48
    const-string v0, "bundleId"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->BUNDLE_ID:Ljava/lang/String;

    .line 49
    const-string v0, "advertisingId"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->ADVERTISING_ID:Ljava/lang/String;

    .line 50
    const-string v0, "isLimitAdTrackingEnabled"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->ADVERTISING_ID_IS_LIMIT_TRACKING:Ljava/lang/String;

    .line 51
    const-string v0, "appKey"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->APPLICATION_KEY:Ljava/lang/String;

    .line 52
    const-string v0, "deviceOS"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->DEVICE_OS:Ljava/lang/String;

    .line 53
    const-string v0, "osVersion"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->ANDROID_OS_VERSION:Ljava/lang/String;

    .line 54
    const-string v0, "connectionType"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->CONNECTION_TYPE:Ljava/lang/String;

    .line 56
    const-string v0, "language"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->LANGUAGE:Ljava/lang/String;

    .line 57
    const-string v0, "deviceOEM"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->DEVICE_OEM:Ljava/lang/String;

    .line 58
    const-string v0, "deviceModel"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->DEVICE_MODEL:Ljava/lang/String;

    .line 59
    const-string v0, "mobileCarrier"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->MOBILE_CARRIER:Ljava/lang/String;

    .line 60
    const-string v0, "externalFreeMemory"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->EXTERNAL_FREE_MEMORY:Ljava/lang/String;

    .line 61
    const-string v0, "internalFreeMemory"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->INTERNAL_FREE_MEMORY:Ljava/lang/String;

    .line 62
    const-string v0, "battery"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->BATTERY_LEVEL:Ljava/lang/String;

    .line 63
    const-string v0, "lat"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->LOCATION_LAT:Ljava/lang/String;

    .line 64
    const-string v0, "lon"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->LOCATION_LON:Ljava/lang/String;

    .line 65
    const-string v0, "timeZone"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->TIME_ZONE:Ljava/lang/String;

    .line 66
    const-string v0, "appVersion"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->PUBLISHER_APP_VERSION:Ljava/lang/String;

    .line 67
    const-string v0, "sessionId"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->KEY_SESSION_ID:Ljava/lang/String;

    .line 68
    const-string v0, "pluginType"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->KEY_PLUGIN_TYPE:Ljava/lang/String;

    .line 69
    const-string v0, "pluginVersion"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->KEY_PLUGIN_VERSION:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->TAG:Ljava/lang/String;

    .line 48
    const-string v0, "bundleId"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->BUNDLE_ID:Ljava/lang/String;

    .line 49
    const-string v0, "advertisingId"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->ADVERTISING_ID:Ljava/lang/String;

    .line 50
    const-string v0, "isLimitAdTrackingEnabled"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->ADVERTISING_ID_IS_LIMIT_TRACKING:Ljava/lang/String;

    .line 51
    const-string v0, "appKey"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->APPLICATION_KEY:Ljava/lang/String;

    .line 52
    const-string v0, "deviceOS"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->DEVICE_OS:Ljava/lang/String;

    .line 53
    const-string v0, "osVersion"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->ANDROID_OS_VERSION:Ljava/lang/String;

    .line 54
    const-string v0, "connectionType"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->CONNECTION_TYPE:Ljava/lang/String;

    .line 56
    const-string v0, "language"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->LANGUAGE:Ljava/lang/String;

    .line 57
    const-string v0, "deviceOEM"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->DEVICE_OEM:Ljava/lang/String;

    .line 58
    const-string v0, "deviceModel"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->DEVICE_MODEL:Ljava/lang/String;

    .line 59
    const-string v0, "mobileCarrier"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->MOBILE_CARRIER:Ljava/lang/String;

    .line 60
    const-string v0, "externalFreeMemory"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->EXTERNAL_FREE_MEMORY:Ljava/lang/String;

    .line 61
    const-string v0, "internalFreeMemory"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->INTERNAL_FREE_MEMORY:Ljava/lang/String;

    .line 62
    const-string v0, "battery"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->BATTERY_LEVEL:Ljava/lang/String;

    .line 63
    const-string v0, "lat"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->LOCATION_LAT:Ljava/lang/String;

    .line 64
    const-string v0, "lon"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->LOCATION_LON:Ljava/lang/String;

    .line 65
    const-string v0, "timeZone"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->TIME_ZONE:Ljava/lang/String;

    .line 66
    const-string v0, "appVersion"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->PUBLISHER_APP_VERSION:Ljava/lang/String;

    .line 67
    const-string v0, "sessionId"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->KEY_SESSION_ID:Ljava/lang/String;

    .line 68
    const-string v0, "pluginType"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->KEY_PLUGIN_TYPE:Ljava/lang/String;

    .line 69
    const-string v0, "pluginVersion"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->KEY_PLUGIN_VERSION:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method private collectInformation()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 100
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v6, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, ""

    .line 105
    .local v7, "strVal":Ljava/lang/String;
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->generateUUID()Ljava/lang/String;

    move-result-object v7

    .line 106
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 107
    const-string v8, "sessionId"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getBundleId()Ljava/lang/String;

    move-result-object v7

    .line 111
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 112
    const-string v8, "bundleId"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-direct {p0, v7}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getPublisherApplicationVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "publAppVersion":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 117
    const-string v8, "appVersion"

    invoke-interface {v6, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .end local v3    # "publAppVersion":Ljava/lang/String;
    :cond_1
    const-string v8, "appKey"

    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getApplicationKey()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getAdvertisingIdInfo()[Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "advertisingIdInfo":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v8, v0

    if-ne v8, v11, :cond_2

    .line 127
    const-string v8, "advertisingId"

    aget-object v9, v0, v10

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v8, "isLimitAdTrackingEnabled"

    aget-object v9, v0, v12

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_2
    const-string v8, "deviceOS"

    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getDeviceOS()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getAndroidVersion()Ljava/lang/String;

    move-result-object v7

    .line 134
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 135
    const-string v8, "osVersion"

    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getAndroidVersion()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_3
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getConnectionType()Ljava/lang/String;

    move-result-object v7

    .line 138
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 139
    const-string v8, "connectionType"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_4
    const-string v8, "sdkVersion"

    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getSDKVersion()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 144
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 145
    const-string v8, "language"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_5
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getDeviceOEM()Ljava/lang/String;

    move-result-object v7

    .line 148
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 149
    const-string v8, "deviceOEM"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_6
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getDeviceModel()Ljava/lang/String;

    move-result-object v7

    .line 152
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 153
    const-string v8, "deviceModel"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_7
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getMobileCarrier()Ljava/lang/String;

    move-result-object v7

    .line 156
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 157
    const-string v8, "mobileCarrier"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_8
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getInternalStorageFreeSize()J

    move-result-wide v4

    .line 160
    .local v4, "longVal":J
    const-string v8, "internalFreeMemory"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getExternalStorageFreeSize()J

    move-result-wide v4

    .line 163
    const-string v8, "externalFreeMemory"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getBatteryLevel()I

    move-result v1

    .line 167
    .local v1, "intVal":I
    const-string v8, "battery"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getLastKnownLocation()[D

    move-result-object v2

    .line 171
    .local v2, "lastKnownLocation":[D
    if-eqz v2, :cond_9

    array-length v8, v2

    if-ne v8, v11, :cond_9

    .line 172
    const-string v8, "lat"

    aget-wide v10, v2, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v8, "lon"

    aget-wide v10, v2, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_9
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getTimeZone()Ljava/lang/String;

    move-result-object v7

    .line 178
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 179
    const-string v8, "timeZone"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_a
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getPluginType()Ljava/lang/String;

    move-result-object v7

    .line 182
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 183
    const-string v8, "pluginType"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_b
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->getPluginVersion()Ljava/lang/String;

    move-result-object v7

    .line 186
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 187
    const-string v8, "pluginVersion"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_c
    return-object v6
.end method

.method private generateUUID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 611
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    return-object v0
.end method

.method private getAdvertisingIdInfo()[Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 253
    const-string v0, "unknown"

    .line 254
    .local v0, "advertisingId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 257
    .local v5, "isLimitedTrackingEnabled":Z
    :try_start_0
    const-string v8, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 259
    .local v6, "mAdvertisingIdClientClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "getAdvertisingIdInfo"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 260
    .local v2, "getAdvertisingIdInfoMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v2, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 262
    .local v7, "mInfoClass":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getId"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 263
    .local v3, "getIdMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "isLimitAdTrackingEnabled"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 265
    .local v4, "isLimitAdTrackingEnabledMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 268
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 269
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 283
    .end local v2    # "getAdvertisingIdInfoMethod":Ljava/lang/reflect/Method;
    .end local v3    # "getIdMethod":Ljava/lang/reflect/Method;
    .end local v4    # "isLimitAdTrackingEnabledMethod":Ljava/lang/reflect/Method;
    .end local v6    # "mAdvertisingIdClientClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "mInfoClass":Ljava/lang/Object;
    :goto_0
    return-object v8

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v8

    sget-object v9, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v10, "getAdvertisingIdInfo()"

    invoke-virtual {v8, v9, v10, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_1
    new-array v8, v12, [Ljava/lang/String;

    goto :goto_0

    .line 273
    :catch_1
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v8

    sget-object v9, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v10, "getAdvertisingIdInfo()"

    invoke-virtual {v8, v9, v10, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 275
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 276
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v8

    sget-object v9, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v10, "getAdvertisingIdInfo()"

    invoke-virtual {v8, v9, v10, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 277
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v8

    sget-object v9, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v10, "getAdvertisingIdInfo()"

    invoke-virtual {v8, v9, v10, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 279
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v8

    sget-object v9, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v10, "getAdvertisingIdInfo()"

    invoke-virtual {v8, v9, v10, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private getAndroidVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 320
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 321
    .local v1, "release":Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 322
    .local v2, "sdkVersion":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 324
    .end local v1    # "release":Ljava/lang/String;
    .end local v2    # "sdkVersion":I
    :goto_0
    return-object v3

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_0
.end method

.method private getApplicationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBatteryLevel()I
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 495
    const/4 v3, -0x1

    .line 498
    .local v3, "result":I
    :try_start_0
    iget-object v5, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 499
    .local v0, "batteryIntent":Landroid/content/Intent;
    const-string v5, "level"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 500
    .local v2, "level":I
    const-string v5, "scale"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 503
    .local v4, "scale":I
    if-eq v2, v9, :cond_0

    if-eq v4, v9, :cond_0

    .line 504
    int-to-float v5, v2

    int-to-float v6, v4

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 511
    .end local v0    # "batteryIntent":Landroid/content/Intent;
    .end local v2    # "level":I
    .end local v4    # "scale":I
    :cond_0
    :goto_0
    return v3

    .line 507
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v5

    sget-object v6, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":getBatteryLevel()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getBundleId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 241
    :goto_0
    return-object v1

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method private getConnectionType()Ljava/lang/String;
    .locals 11

    .prologue
    .line 334
    const-string v4, ""

    .line 337
    .local v4, "type":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 338
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 340
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 341
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    .line 343
    .local v6, "typeName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    .line 345
    .local v5, "typeId":I
    if-nez v5, :cond_1

    .line 347
    iget-object v7, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 348
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 360
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    .end local v5    # "typeId":I
    .end local v6    # "typeName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 350
    .restart local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v5    # "typeId":I
    .restart local v6    # "typeName":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x1

    if-ne v5, v7, :cond_2

    .line 351
    const-string v4, "wifi"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :cond_2
    move-object v4, v6

    goto :goto_0

    .line 356
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v5    # "typeId":I
    .end local v6    # "typeName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 357
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v7

    sget-object v8, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":getConnectionType()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getDeviceModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 406
    :try_start_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_0
    return-object v1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method private getDeviceOEM()Ljava/lang/String;
    .locals 2

    .prologue
    .line 392
    :try_start_0
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    return-object v1

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method private getDeviceOS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    const-string v0, "Android"

    return-object v0
.end method

.method private getExternalStorageFreeSize()J
    .locals 10

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->isExternalStorageAbvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 476
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 477
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 480
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 482
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 483
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    const-wide/32 v8, 0x100000

    div-long/2addr v6, v8

    .line 485
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v4    # "path":Ljava/io/File;
    .end local v5    # "stat":Landroid/os/StatFs;
    :goto_0
    return-wide v6

    :cond_0
    const-wide/16 v6, -0x1

    goto :goto_0
.end method

.method private getInternalStorageFreeSize()J
    .locals 12

    .prologue
    .line 455
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    .line 456
    .local v5, "path":Ljava/io/File;
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 459
    .local v6, "stat":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 461
    .local v2, "blockSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 463
    .local v0, "availableBlocks":J
    mul-long v8, v0, v2

    const-wide/32 v10, 0x100000

    div-long/2addr v8, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v5    # "path":Ljava/io/File;
    .end local v6    # "stat":Landroid/os/StatFs;
    :goto_0
    return-wide v8

    .line 464
    :catch_0
    move-exception v4

    .line 465
    .local v4, "e":Ljava/lang/Exception;
    const-wide/16 v8, -0x1

    goto :goto_0
.end method

.method private getLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 379
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 381
    :goto_0
    return-object v1

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method private getLastKnownLocation()[D
    .locals 24

    .prologue
    .line 520
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [D

    move-object/from16 v19, v0

    .line 521
    .local v19, "result":[D
    const-wide/high16 v6, -0x8000000000000000L

    .line 526
    .local v6, "bestLocationTime":J
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->locationPermissionGranted()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    const-string v21, "location"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/location/LocationManager;

    .line 530
    .local v14, "locationManager":Landroid/location/LocationManager;
    const/4 v11, 0x0

    .line 531
    .local v11, "location":Landroid/location/Location;
    const/4 v4, 0x0

    .line 533
    .local v4, "bestLocation":Landroid/location/Location;
    invoke-virtual {v14}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v18

    .line 534
    .local v18, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 535
    .local v15, "provider":Ljava/lang/String;
    invoke-virtual {v14, v15}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v11

    .line 537
    if-eqz v11, :cond_0

    .line 539
    invoke-virtual {v11}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    .line 540
    .local v8, "currentTime":J
    cmp-long v20, v8, v6

    if-lez v20, :cond_0

    .line 541
    move-object v4, v11

    .line 542
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    goto :goto_0

    .line 548
    .end local v8    # "currentTime":J
    .end local v15    # "provider":Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    .line 549
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    .line 550
    .local v12, "lat":D
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    .line 552
    .local v16, "lon":D
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [D

    move-object/from16 v19, v0

    .end local v19    # "result":[D
    const/16 v20, 0x0

    aput-wide v12, v19, v20

    const/16 v20, 0x1

    aput-wide v16, v19, v20
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    .end local v4    # "bestLocation":Landroid/location/Location;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "location":Landroid/location/Location;
    .end local v12    # "lat":D
    .end local v14    # "locationManager":Landroid/location/LocationManager;
    .end local v16    # "lon":D
    .end local v18    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "result":[D
    :cond_2
    :goto_1
    return-object v19

    .line 556
    .end local v19    # "result":[D
    :catch_0
    move-exception v5

    .line 557
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v20

    sget-object v21, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":getLastLocation()"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v5}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 558
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [D

    move-object/from16 v19, v0

    .restart local v19    # "result":[D
    goto :goto_1
.end method

.method private getMobileCarrier()Ljava/lang/String;
    .locals 8

    .prologue
    .line 418
    const-string v2, ""

    .line 421
    .local v2, "ret":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 422
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_0

    .line 423
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "operatorName":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 425
    move-object v2, v1

    .line 431
    .end local v1    # "operatorName":Ljava/lang/String;
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-object v2

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v4

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":getMobileCarrier()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getPluginType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 210
    const-string v1, ""

    .line 212
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/supersonic/mediationsdk/config/ConfigFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 217
    :goto_0
    return-object v1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v4, "getPluginType()"

    invoke-virtual {v2, v3, v4, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getPluginVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 221
    const-string v1, ""

    .line 223
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/supersonic/mediationsdk/config/ConfigFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getPluginVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 228
    :goto_0
    return-object v1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v4, "getPluginVersion()"

    invoke-virtual {v2, v3, v4, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getPublisherApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 200
    const-string v0, ""

    .line 202
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-object v0

    .line 203
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimeZone()Ljava/lang/String;
    .locals 9

    .prologue
    .line 585
    const-string v3, ""

    .line 588
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    .line 589
    .local v4, "tz":Ljava/util/TimeZone;
    invoke-static {v4}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 590
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 592
    .local v2, "offsetInMillis":I
    const-string v5, "%02d:%02d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const v8, 0x36ee80

    div-int v8, v2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const v8, 0xea60

    div-int v8, v2, v8

    rem-int/lit8 v8, v8, 0x3c

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 593
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-ltz v2, :cond_0

    const-string v5, "+"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 595
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GMT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 602
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v2    # "offsetInMillis":I
    .end local v4    # "tz":Ljava/util/TimeZone;
    :goto_1
    return-object v3

    .line 593
    .restart local v0    # "cal":Ljava/util/Calendar;
    .restart local v2    # "offsetInMillis":I
    .restart local v4    # "tz":Ljava/util/TimeZone;
    :cond_0
    const-string v5, "-"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v2    # "offsetInMillis":I
    .end local v4    # "tz":Ljava/util/TimeZone;
    :catch_0
    move-exception v1

    .line 597
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_1
.end method

.method private isExternalStorageAbvailable()Z
    .locals 3

    .prologue
    .line 441
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 444
    :goto_0
    return v1

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private locationPermissionGranted()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 571
    :try_start_0
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 572
    .local v1, "permission":Ljava/lang/String;
    iget-object v4, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 573
    .local v2, "res":I
    if-nez v2, :cond_0

    const/4 v3, 0x1

    .line 575
    .end local v1    # "permission":Ljava/lang/String;
    .end local v2    # "res":I
    :cond_0
    :goto_0
    return v3

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 84
    :try_start_0
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->collectInformation()Ljava/util/Map;

    move-result-object v1

    .line 85
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->putKeys(Ljava/util/Map;)V

    .line 88
    iget-object v2, p0, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->saveGeneralProperties(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
