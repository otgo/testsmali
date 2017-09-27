.class public Lcom/unity3d/ads/android/UnityAds;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;
.implements Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;
.implements Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;
.implements Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field public static final UNITY_ADS_OPTION_GAMERSID_KEY:Ljava/lang/String; = "sid"

.field public static final UNITY_ADS_OPTION_MUTE_VIDEO_SOUNDS:Ljava/lang/String; = "muteVideoSounds"

.field public static final UNITY_ADS_OPTION_NOOFFERSCREEN_KEY:Ljava/lang/String; = "noOfferScreen"

.field public static final UNITY_ADS_OPTION_OPENANIMATED_KEY:Ljava/lang/String; = "openAnimated"

.field public static final UNITY_ADS_OPTION_VIDEO_USES_DEVICE_ORIENTATION:Ljava/lang/String; = "useDeviceOrientationForVideo"

.field public static final UNITY_ADS_REWARDITEM_NAME_KEY:Ljava/lang/String; = "name"

.field public static final UNITY_ADS_REWARDITEM_PICTURE_KEY:Ljava/lang/String; = "picture"

.field private static a:Z

.field private static b:Z

.field private static c:Z

.field public static cachemanager:Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;

.field private static d:Z

.field private static e:Z

.field private static f:Z

.field private static g:Z

.field private static h:Z

.field private static i:Z

.field private static j:Z

.field private static k:Landroid/app/AlertDialog;

.field private static l:Ljava/util/TimerTask;

.field private static m:Ljava/util/Timer;

.field public static mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

.field private static n:Ljava/util/TimerTask;

.field private static o:Ljava/util/Timer;

.field private static p:J

.field private static q:Lcom/unity3d/ads/android/UnityAds;

.field private static r:Lcom/unity3d/ads/android/IUnityAdsListener;

.field private static s:I

.field private static final t:[Ljava/lang/String;

.field public static webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 77
    sput-object v3, Lcom/unity3d/ads/android/UnityAds;->cachemanager:Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;

    .line 78
    sput-object v3, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    .line 79
    sput-object v3, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    .line 82
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAds;->a:Z

    .line 83
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAds;->b:Z

    .line 84
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAds;->c:Z

    .line 85
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAds;->d:Z

    .line 86
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAds;->e:Z

    .line 87
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAds;->f:Z

    .line 88
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAds;->g:Z

    .line 89
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAds;->h:Z

    .line 90
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAds;->i:Z

    .line 91
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAds;->j:Z

    .line 92
    sput-object v3, Lcom/unity3d/ads/android/UnityAds;->k:Landroid/app/AlertDialog;

    .line 94
    sput-object v3, Lcom/unity3d/ads/android/UnityAds;->l:Ljava/util/TimerTask;

    .line 95
    sput-object v3, Lcom/unity3d/ads/android/UnityAds;->m:Ljava/util/Timer;

    .line 96
    sput-object v3, Lcom/unity3d/ads/android/UnityAds;->n:Ljava/util/TimerTask;

    .line 97
    sput-object v3, Lcom/unity3d/ads/android/UnityAds;->o:Ljava/util/Timer;

    .line 98
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/unity3d/ads/android/UnityAds;->p:J

    .line 100
    sput-object v3, Lcom/unity3d/ads/android/UnityAds;->q:Lcom/unity3d/ads/android/UnityAds;

    .line 103
    sput-object v3, Lcom/unity3d/ads/android/UnityAds;->r:Lcom/unity3d/ads/android/IUnityAdsListener;

    .line 343
    const/4 v0, -0x1

    sput v0, Lcom/unity3d/ads/android/UnityAds;->s:I

    .line 344
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Unity Ads is ready to show ads"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "Unity Ads not ready to show ads: not initialized"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Unity Ads not ready to show ads: webapp not initialized"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Unity Ads not ready to show ads: already showing ads"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Unity Ads not ready to show ads: no internet connection available"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Unity Ads not ready to show ads: no ads are available"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Unity Ads not ready to show ads: zero ads available"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Unity Ads not ready to show ads: video not cached"

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/ads/android/UnityAds;->t:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method static synthetic a()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->k:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;)Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 726
    :try_start_0
    const-string v2, "packageName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "className"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "action"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "mimeType"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 727
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 728
    if-nez v0, :cond_1

    .line 729
    const-string v0, "Unable to parse data to generate intent: current activity is null"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    move-object v0, v1

    .line 801
    :cond_0
    :goto_0
    return-object v0

    .line 733
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 734
    const-string v2, "packageName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 736
    if-eqz v0, :cond_0

    const-string v2, "flags"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 737
    const-string v2, "flags"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 799
    :catch_0
    move-exception v0

    .line 800
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception while parsing intent json: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    move-object v0, v1

    .line 801
    goto :goto_0

    .line 743
    :cond_2
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 745
    const-string v3, "className"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "packageName"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 746
    const-string v3, "packageName"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "className"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 749
    :cond_3
    const-string v3, "action"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 750
    const-string v3, "action"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    :cond_4
    const-string v3, "uri"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 754
    const-string v3, "uri"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 757
    :cond_5
    const-string v3, "mimeType"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 758
    const-string v3, "mimeType"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    :cond_6
    const-string v3, "categories"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 762
    const-string v3, "categories"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 764
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_7

    move v3, v0

    .line 765
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 766
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 765
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 771
    :cond_7
    const-string v3, "flags"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 772
    const-string v3, "flags"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 775
    :cond_8
    const-string v3, "extras"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 776
    const-string v3, "extras"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v3, v0

    .line 778
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_d

    .line 779
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 781
    const-string v5, "key"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 782
    const-string v6, "value"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 784
    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 785
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 778
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 786
    :cond_9
    instance-of v6, v0, Ljava/lang/Integer;

    if-eqz v6, :cond_a

    .line 787
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 788
    :cond_a
    instance-of v6, v0, Ljava/lang/Double;

    if-eqz v6, :cond_b

    .line 789
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    goto :goto_3

    .line 790
    :cond_b
    instance-of v6, v0, Ljava/lang/Boolean;

    if-eqz v6, :cond_c

    .line 791
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 793
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Unable to parse launch intent extra "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_d
    move-object v0, v2

    .line 798
    goto/16 :goto_0
.end method

.method private static a(I)V
    .locals 1

    .prologue
    .line 356
    sget v0, Lcom/unity3d/ads/android/UnityAds;->s:I

    if-eq p0, v0, :cond_0

    .line 357
    sput p0, Lcom/unity3d/ads/android/UnityAds;->s:I

    .line 358
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->t:[Ljava/lang/String;

    aget-object v0, v0, p0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 360
    :cond_0
    return-void
.end method

.method private static a(J)V
    .locals 2

    .prologue
    .line 1039
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->h:Z

    if-eqz v0, :cond_0

    .line 1040
    const-string v0, "Prevent double start of video playback"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 1048
    :goto_0
    return-void

    .line 1043
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/ads/android/UnityAds;->h:Z

    .line 1045
    const-string v0, "Running threaded"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 1046
    new-instance v0, Lcom/unity3d/ads/android/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/android/l;-><init>(B)V

    .line 1047
    invoke-static {v0, p0, p1}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method static synthetic b()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/ads/android/UnityAds;->a:Z

    return v0
.end method

.method static synthetic c()V
    .locals 2

    .prologue
    .line 60
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/UnityAds;->a(J)V

    return-void
.end method

.method public static canShow()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 287
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    if-nez v0, :cond_0

    .line 288
    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAds;->a(I)V

    move v0, v1

    .line 340
    :goto_0
    return v0

    .line 292
    :cond_0
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->d:Z

    if-nez v0, :cond_1

    .line 293
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->a(I)V

    move v0, v1

    .line 294
    goto :goto_0

    .line 297
    :cond_1
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->b:Z

    if-eqz v0, :cond_2

    .line 298
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->a(I)V

    move v0, v1

    .line 299
    goto :goto_0

    .line 302
    :cond_2
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_4

    .line 304
    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 306
    if-eqz v0, :cond_4

    .line 307
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 310
    :goto_1
    if-nez v0, :cond_4

    .line 311
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->a(I)V

    move v0, v1

    .line 312
    goto :goto_0

    :cond_3
    move v0, v1

    .line 308
    goto :goto_1

    .line 317
    :cond_4
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->initInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_0

    .line 319
    :cond_5
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    .line 321
    if-nez v0, :cond_6

    .line 322
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->a(I)V

    move v0, v1

    .line 323
    goto :goto_0

    .line 326
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 327
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->a(I)V

    move v0, v1

    .line 328
    goto :goto_0

    .line 331
    :cond_7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 332
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->allowStreamingVideo()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_8

    .line 333
    sget-object v3, Lcom/unity3d/ads/android/UnityAds;->cachemanager:Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;

    invoke-virtual {v3, v0, v2}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->isCampaignCached(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Z)Z

    move-result v0

    if-nez v0, :cond_8

    .line 334
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->a(I)V

    move v0, v1

    .line 335
    goto/16 :goto_0

    .line 339
    :cond_8
    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAds;->a(I)V

    move v0, v2

    .line 340
    goto/16 :goto_0
.end method

.method public static canShowAds()Z
    .locals 1

    .prologue
    .line 276
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v0

    return v0
.end method

.method public static changeActivity(Landroid/app/Activity;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 158
    if-nez p0, :cond_1

    .line 159
    const-string v0, "changeActivity: null, ignoring"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "changeActivity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 165
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 169
    if-eqz p0, :cond_4

    instance-of v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    if-eqz v0, :cond_4

    .line 170
    const/4 v0, 0x0

    .line 172
    sget-boolean v1, Lcom/unity3d/ads/android/UnityAds;->e:Z

    if-eqz v1, :cond_5

    .line 173
    const-string v0, "start"

    .line 174
    const-string v1, "This open request is from the developer, setting start view"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    move-object v2, v0

    .line 177
    :goto_1
    if-eqz v2, :cond_3

    .line 178
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    const-string v4, "action"

    const-string v5, "open"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "zone"

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v4

    if-eqz v4, :cond_2

    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    const-string v4, "itemKey"

    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getCurrentItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v1

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "DataOk: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Opening with view:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/unity3d/ads/android/c;

    invoke-direct {v1, v2, v3}, Lcom/unity3d/ads/android/c;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 181
    :cond_3
    sput-boolean v6, Lcom/unity3d/ads/android/UnityAds;->e:Z

    goto/16 :goto_0

    .line 178
    :catch_0
    move-exception v0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    .line 184
    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    goto/16 :goto_0

    :cond_5
    move-object v2, v0

    goto/16 :goto_1
.end method

.method public static checkMainview()V
    .locals 1

    .prologue
    .line 1073
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->g:Z

    if-eqz v0, :cond_0

    .line 1074
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/ads/android/UnityAds;->g:Z

    .line 1075
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    if-eqz v0, :cond_0

    .line 1076
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->fixActivityAttachment()V

    .line 1079
    :cond_0
    return-void
.end method

.method static synthetic d()Lcom/unity3d/ads/android/IUnityAdsListener;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->r:Lcom/unity3d/ads/android/IUnityAdsListener;

    return-object v0
.end method

.method static synthetic e()V
    .locals 0

    .prologue
    .line 60
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->q()V

    return-void
.end method

.method public static enableUnityDeveloperInternalTestMode()V
    .locals 1

    .prologue
    .line 147
    const-string v0, "https://impact.staging.applifier.com/mobile/campaigns"

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_DATA_URL:Ljava/lang/String;

    .line 148
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_DEVELOPER_INTERNAL_TEST:Ljava/lang/Boolean;

    .line 149
    return-void
.end method

.method static synthetic f()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->c:Z

    return v0
.end method

.method static synthetic g()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/ads/android/UnityAds;->c:Z

    return v0
.end method

.method public static getCurrentRewardItemKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 398
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getCurrentItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 403
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultRewardItemKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 389
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getDefaultItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 394
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRewardItemDetailsWithKey(Ljava/lang/String;)Ljava/util/Map;
    .locals 2

    .prologue
    .line 428
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 431
    invoke-virtual {v0, p0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getItem(Ljava/lang/String;)Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getDetails()Ljava/util/Map;

    move-result-object v0

    .line 439
    :goto_0
    return-object v0

    .line 436
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not fetch reward item: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 439
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRewardItemKeys()Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 374
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->allItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 378
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 379
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    .line 380
    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 385
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string v0, "1407"

    return-object v0
.end method

.method public static getZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneId()Ljava/lang/String;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h()V
    .locals 0

    .prologue
    .line 60
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->r()V

    return-void
.end method

.method public static handleFullscreenDestroy()V
    .locals 1

    .prologue
    .line 1082
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->i:Z

    if-eqz v0, :cond_1

    .line 1083
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->t()V

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1087
    :cond_1
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->b:Z

    if-eqz v0, :cond_0

    .line 1088
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/ads/android/UnityAds;->g:Z

    goto :goto_0
.end method

.method public static hasMultipleRewardItems()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 365
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 367
    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->itemCount()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    .line 370
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 368
    goto :goto_0

    :cond_1
    move v0, v2

    .line 370
    goto :goto_0
.end method

.method public static hide()Z
    .locals 1

    .prologue
    .line 190
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->b:Z

    if-eqz v0, :cond_0

    .line 191
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->q()V

    .line 192
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->b:Z

    return v0
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/android/IUnityAdsListener;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 832
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->q:Lcom/unity3d/ads/android/UnityAds;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->a:Z

    if-eqz v0, :cond_1

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 834
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 835
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "gameId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 838
    :cond_3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 839
    if-gtz v0, :cond_4

    .line 840
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "gameId is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "gameId does not parse as an integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 847
    :cond_4
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Initializing Unity Ads version 1407 (Unity + "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") with gameId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 854
    :goto_1
    :try_start_1
    const-string v0, "com.unity3d.ads.android.webapp.UnityAdsWebBridge"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 856
    const-string v2, "handleWebEvent"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 857
    const-string v0, "UnityAds ProGuard check OK"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 868
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 869
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 871
    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    .line 873
    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    move v0, v1

    .line 875
    :goto_3
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_7

    .line 876
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v1, v6, :cond_5

    .line 877
    const/4 v1, 0x1

    sput-boolean v1, Lcom/unity3d/ads/android/UnityAds;->i:Z

    .line 878
    const-string v1, "Running in singleTask application mode"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 875
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 850
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Initializing Unity Ads version 1407 with gameId "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 859
    :catch_1
    move-exception v0

    const-string v0, "UnityAds ProGuard check fail: com.unity3d.ads.android.webapp.UnityAdsWebBridge class not found, check ProGuard settings"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 862
    :catch_2
    move-exception v0

    const-string v0, "UnityAds ProGuard check fail: com.unity3d.ads.android.webapp.handleWebEvent method not found, check ProGuard settings"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 864
    :catch_3
    move-exception v0

    .line 865
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UnityAds ProGuard check: Unknown exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 882
    :catch_4
    move-exception v0

    const-string v0, "Error while checking singleTask activities"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 886
    :cond_7
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->q:Lcom/unity3d/ads/android/UnityAds;

    if-nez v0, :cond_8

    .line 887
    new-instance v0, Lcom/unity3d/ads/android/UnityAds;

    invoke-direct {v0}, Lcom/unity3d/ads/android/UnityAds;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/UnityAds;->q:Lcom/unity3d/ads/android/UnityAds;

    .line 890
    :cond_8
    invoke-static {p2}, Lcom/unity3d/ads/android/UnityAds;->setListener(Lcom/unity3d/ads/android/IUnityAdsListener;)V

    .line 892
    sput-object p1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAME_ID:Ljava/lang/String;

    .line 893
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 894
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 895
    invoke-static {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->initScreenMetrics(Landroid/app/Activity;)V

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Is debuggable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAdsUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 899
    new-instance v0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;-><init>(Landroid/app/Activity;)V

    .line 900
    sput-object v0, Lcom/unity3d/ads/android/UnityAds;->cachemanager:Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;

    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->q:Lcom/unity3d/ads/android/UnityAds;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->setDownloadListener(Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;)V

    .line 901
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-direct {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;-><init>()V

    .line 902
    sput-object v0, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->q:Lcom/unity3d/ads/android/UnityAds;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->setWebDataListener(Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;)V

    .line 906
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/unity3d/ads/android/b;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/android/b;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 913
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public static isSupported()Z
    .locals 2

    .prologue
    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic j()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/ads/android/UnityAds;->f:Z

    return v0
.end method

.method static synthetic k()V
    .locals 0

    .prologue
    .line 60
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->t()V

    return-void
.end method

.method static synthetic l()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->j:Z

    return v0
.end method

.method static synthetic m()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/ads/android/UnityAds;->j:Z

    return v0
.end method

.method static synthetic n()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/ads/android/UnityAds;->b:Z

    return v0
.end method

.method static synthetic o()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    sget-boolean v2, Lcom/unity3d/ads/android/UnityAds;->f:Z

    if-eqz v2, :cond_1

    sput-boolean v1, Lcom/unity3d/ads/android/UnityAds;->f:Z

    const-string v2, "Starting delayed ad plan refresh"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/unity3d/ads/android/g;

    invoke-direct {v1}, Lcom/unity3d/ads/android/g;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-wide v2, Lcom/unity3d/ads/android/UnityAds;->p:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/unity3d/ads/android/UnityAds;->p:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->s()V

    const-string v2, "Refreshing ad plan from server due to timer deadline"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_MAX:I

    if-lez v2, :cond_3

    sget v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    sget v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_MAX:I

    if-lt v2, v3, :cond_3

    const-string v2, "Refreshing ad plan from server due to endscreen limit"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "All available videos watched, refreshing ad plan from server"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->cachemanager:Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;

    invoke-virtual {v2, v0, v1}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->isCampaignCached(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->allowCacheVideo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->cachemanager:Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;

    invoke-virtual {v1, v0}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->cacheNextVideo(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto/16 :goto_0
.end method

.method static synthetic p()V
    .locals 6

    .prologue
    .line 60
    new-instance v0, Lcom/unity3d/ads/android/f;

    invoke-direct {v0}, Lcom/unity3d/ads/android/f;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/UnityAds;->l:Ljava/util/TimerTask;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/UnityAds;->m:Ljava/util/Timer;

    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->l:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private static q()V
    .locals 4

    .prologue
    .line 917
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->r()V

    .line 918
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    if-eqz v0, :cond_0

    .line 919
    new-instance v0, Lcom/unity3d/ads/android/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/android/k;-><init>(B)V

    .line 920
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 921
    const-wide/16 v2, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 926
    :goto_0
    return-void

    .line 924
    :cond_0
    const-string v0, "Did not close"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static r()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1093
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->l:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 1094
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->l:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1097
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->m:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1098
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->m:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1099
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->m:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1102
    :cond_1
    sput-object v1, Lcom/unity3d/ads/android/UnityAds;->l:Ljava/util/TimerTask;

    .line 1103
    sput-object v1, Lcom/unity3d/ads/android/UnityAds;->m:Ljava/util/Timer;

    .line 1104
    return-void
.end method

.method private static s()V
    .locals 2

    .prologue
    .line 1199
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/unity3d/ads/android/UnityAds;->p:J

    .line 1201
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->o:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1202
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->o:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1204
    :cond_0
    return-void
.end method

.method public static setCampaignDataURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    sput-object p0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_DATA_URL:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 1

    .prologue
    .line 119
    if-eqz p0, :cond_0

    .line 120
    sget v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOGLEVEL_DEBUG:I

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->setLogLevel(I)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    sget v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOGLEVEL_INFO:I

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->setLogLevel(I)V

    goto :goto_0
.end method

.method public static setDefaultRewardItemAsRewardItem()V
    .locals 2

    .prologue
    .line 418
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getDefaultItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->setCurrentItem(Ljava/lang/String;)Z

    .line 425
    :cond_0
    return-void
.end method

.method public static setListener(Lcom/unity3d/ads/android/IUnityAdsListener;)V
    .locals 0

    .prologue
    .line 154
    sput-object p0, Lcom/unity3d/ads/android/UnityAds;->r:Lcom/unity3d/ads/android/IUnityAdsListener;

    .line 155
    return-void
.end method

.method public static setRewardItemKey(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 407
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 411
    invoke-virtual {v0, p0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->setCurrentItem(Ljava/lang/String;)Z

    move-result v0

    .line 414
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setTestDeveloperId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    sput-object p0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_DEVELOPER_ID:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public static setTestMode(Z)V
    .locals 1

    .prologue
    .line 127
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TESTMODE_ENABLED:Ljava/lang/Boolean;

    .line 128
    return-void
.end method

.method public static setTestOptionsId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    sput-object p0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_OPTIONS_ID:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public static setZone(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 199
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->b:Z

    if-nez v0, :cond_1

    .line 200
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to set zone before campaigns are available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->setCurrentZone(Ljava/lang/String;)Z

    move-result v0

    .line 206
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setZone(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 210
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->b:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAds;->setZone(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 214
    invoke-virtual {v0, p1}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->setCurrentItem(Ljava/lang/String;)Z

    move-result v0

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static show()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->show(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static show(Ljava/util/Map;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 235
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v2

    .line 238
    if-eqz v2, :cond_2

    .line 239
    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->stopAllDownloads()V

    .line 241
    invoke-virtual {v2, p0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->mergeOptions(Ljava/util/Map;)V

    .line 243
    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->noOfferScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 247
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 248
    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Launching ad from \""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\", options: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneOptions()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 254
    sput-boolean v4, Lcom/unity3d/ads/android/UnityAds;->e:Z

    .line 255
    sput-boolean v4, Lcom/unity3d/ads/android/UnityAds;->b:Z

    .line 256
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAds;->h:Z

    .line 257
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAds;->j:Z

    .line 258
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN_CACHED:Ljava/lang/Boolean;

    .line 259
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10010000

    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->openAnimated()Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v0, 0x10000000

    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getBaseActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 260
    :goto_0
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->b:Z

    .line 268
    :goto_1
    return v0

    .line 259
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find UnityAdsFullScreenActivity (failed Android manifest merging?): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Weird error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_2
    const-string v0, "Unity Ads current zone is null"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    :goto_2
    move v0, v1

    .line 268
    goto :goto_1

    .line 265
    :cond_3
    const-string v0, "Unity Ads not ready to show ads"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static t()V
    .locals 6

    .prologue
    .line 1231
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->j:Z

    if-eqz v0, :cond_0

    .line 1275
    :goto_0
    return-void

    .line 1235
    :cond_0
    const/16 v0, 0x1e

    .line 1236
    sget-boolean v1, Lcom/unity3d/ads/android/UnityAds;->i:Z

    if-eqz v1, :cond_1

    .line 1237
    const/16 v0, 0xfa

    .line 1240
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1241
    new-instance v2, Lcom/unity3d/ads/android/i;

    invoke-direct {v2}, Lcom/unity3d/ads/android/i;-><init>()V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onAllCampaignsReady()V
    .locals 0

    .prologue
    .line 508
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 509
    return-void
.end method

.method public onCampaignReady(Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;)V
    .locals 1

    .prologue
    .line 501
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->getCampaign()Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    move-result-object v0

    if-nez v0, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    invoke-virtual {p1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->getCampaign()Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCampaignUpdateStarted()V
    .locals 1

    .prologue
    .line 496
    const-string v0, "Campaign updates started."

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method public onCloseAdsView(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 617
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->hide()Z

    .line 618
    return-void
.end method

.method public onLaunchIntent(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 702
    :try_start_0
    invoke-static {p1}, Lcom/unity3d/ads/android/UnityAds;->a(Lorg/json/JSONObject;)Landroid/content/Intent;

    move-result-object v0

    .line 704
    if-nez v0, :cond_0

    .line 705
    const-string v0, "No suitable intent to launch"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Intent JSON: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 720
    :goto_0
    return-void

    .line 710
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 711
    if-nez v1, :cond_1

    .line 712
    const-string v0, "Unable to launch intent: current activity is null"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 717
    :catch_0
    move-exception v0

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to launch intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 716
    :cond_1
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onMainViewAction(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 447
    sget-object v0, Lcom/unity3d/ads/android/j;->a:[I

    invoke-virtual {p1}, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 449
    :pswitch_0
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->b:Z

    if-eqz v0, :cond_0

    .line 450
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->q()V

    goto :goto_0

    .line 454
    :pswitch_1
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->r:Lcom/unity3d/ads/android/IUnityAdsListener;

    if-eqz v0, :cond_1

    .line 455
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->r:Lcom/unity3d/ads/android/IUnityAdsListener;

    invoke-interface {v0}, Lcom/unity3d/ads/android/IUnityAdsListener;->onVideoStarted()V

    .line 457
    :cond_1
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    .line 459
    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 460
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 462
    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->cachemanager:Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;

    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v1, v2, v3}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->isCampaignCached(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->cachemanager:Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;

    invoke-virtual {v1, v0, v3}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->isCampaignCached(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Z)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->allowCacheVideo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 463
    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->cachemanager:Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;

    invoke-virtual {v1, v0}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->cacheNextVideo(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    .line 467
    :cond_2
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->r()V

    goto :goto_0

    .line 470
    :pswitch_2
    sget v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    .line 471
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->r:Lcom/unity3d/ads/android/IUnityAdsListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    const-string v0, "Unity Ads video completed"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 473
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    sget-object v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->setCampaignStatus(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;)V

    .line 474
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->r:Lcom/unity3d/ads/android/IUnityAdsListener;

    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getCurrentRewardItemKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/unity3d/ads/android/IUnityAdsListener;->onVideoCompleted(Ljava/lang/String;Z)V

    goto :goto_0

    .line 478
    :pswitch_3
    sget v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    .line 479
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->r:Lcom/unity3d/ads/android/IUnityAdsListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    const-string v0, "Unity Ads video skipped"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 481
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    sget-object v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->setCampaignStatus(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;)V

    .line 482
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->r:Lcom/unity3d/ads/android/IUnityAdsListener;

    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getCurrentRewardItemKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/unity3d/ads/android/IUnityAdsListener;->onVideoCompleted(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 486
    :pswitch_4
    const-string v0, "Retrying video play, because something went wrong."

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 487
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAds;->h:Z

    .line 488
    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/UnityAds;->a(J)V

    goto/16 :goto_0

    .line 447
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onOpenPlayStore(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 653
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 655
    if-eqz p1, :cond_2

    .line 657
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 661
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 663
    const-string v0, "iTunesId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 665
    :try_start_0
    const-string v0, "iTunesId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 672
    :goto_0
    const-string v3, "clickUrl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 674
    :try_start_1
    const-string v3, "clickUrl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 681
    :cond_0
    :goto_1
    const-string v3, "bypassAppSheet"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 683
    :try_start_2
    const-string v3, "bypassAppSheet"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 690
    :cond_1
    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Opening playstore activity with storeId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_3
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "market://details?id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 697
    :cond_2
    :goto_3
    return-void

    .line 668
    :catch_0
    move-exception v0

    const-string v0, "Could not fetch playStoreId"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    :cond_3
    move-object v0, v1

    goto :goto_0

    .line 677
    :catch_1
    move-exception v3

    const-string v3, "Could not fetch clickUrl"

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 686
    :catch_2
    move-exception v3

    const-string v3, "Could not fetch bypassAppSheet"

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 691
    :catch_3
    move-exception v0

    const-string v0, "Couldn\'t start PlayStore intent!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 693
    :cond_4
    if-eqz v1, :cond_2

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Opening playStore in browser: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_4
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    const-string v0, "Couldn\'t start browser intent!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onOrientationRequest(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 649
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "orientation"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 650
    return-void
.end method

.method public onPauseVideo(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 613
    return-void
.end method

.method public onPlayVideo(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 570
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 571
    const-string v0, "campaignId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 572
    const/4 v0, 0x0

    .line 575
    :try_start_0
    const-string v1, "campaignId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 581
    :goto_0
    if-eqz v0, :cond_3

    .line 582
    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v1, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getCampaignById(Ljava/lang/String;)Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 583
    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v1, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getCampaignById(Ljava/lang/String;)Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    move-result-object v1

    sput-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 586
    :cond_0
    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 587
    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 588
    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 590
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 593
    :try_start_1
    const-string v1, "rewatch"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 598
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Selected campaign="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isViewed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 599
    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 600
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    sput-boolean v3, Lcom/unity3d/ads/android/UnityAds;->h:Z

    .line 604
    :cond_2
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/UnityAds;->a(J)V

    .line 609
    :cond_3
    return-void

    .line 578
    :catch_0
    move-exception v1

    const-string v1, "Could not get campaignId"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public onWebAppInitComplete(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 627
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 628
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAds;->d:Z

    .line 629
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 631
    sget-object v3, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v3}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v3}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    :goto_0
    if-eqz v1, :cond_0

    .line 632
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 635
    :try_start_0
    const-string v3, "action"

    const-string v4, "initComplete"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v0, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 643
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->r:Lcom/unity3d/ads/android/IUnityAdsListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/unity3d/ads/android/e;

    invoke-direct {v0}, Lcom/unity3d/ads/android/e;-><init>()V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 646
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 631
    goto :goto_0

    .line 638
    :catch_0
    move-exception v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method public onWebAppLoadComplete(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 622
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 623
    return-void
.end method

.method public onWebDataCompleted()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 515
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 520
    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getData()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getData()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 522
    :try_start_0
    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getData()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v3, v1

    move v1, v2

    .line 528
    :goto_0
    if-nez v1, :cond_1

    .line 529
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->s()V

    sget v5, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_SECONDS:I

    if-lez v5, :cond_0

    new-instance v5, Lcom/unity3d/ads/android/h;

    invoke-direct {v5}, Lcom/unity3d/ads/android/h;-><init>()V

    sput-object v5, Lcom/unity3d/ads/android/UnityAds;->n:Ljava/util/TimerTask;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sget v5, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_SECONDS:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v8, v5

    add-long/2addr v6, v8

    sput-wide v6, Lcom/unity3d/ads/android/UnityAds;->p:J

    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    sput-object v5, Lcom/unity3d/ads/android/UnityAds;->o:Ljava/util/Timer;

    sget-object v6, Lcom/unity3d/ads/android/UnityAds;->n:Ljava/util/TimerTask;

    sget v7, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_SECONDS:I

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 531
    :cond_0
    const-string v5, "sdkIsCurrent"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 533
    :try_start_1
    const-string v5, "sdkIsCurrent"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 542
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 543
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 544
    sput-object v0, Lcom/unity3d/ads/android/UnityAds;->k:Landroid/app/AlertDialog;

    const-string v1, "Unity Ads"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 545
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->k:Landroid/app/AlertDialog;

    const-string v1, "You are not running the latest version of Unity Ads android. Please update your version (this dialog won\'t appear in release builds)."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 546
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->k:Landroid/app/AlertDialog;

    const-string v1, "OK"

    new-instance v3, Lcom/unity3d/ads/android/a;

    invoke-direct {v3, p0}, Lcom/unity3d/ads/android/a;-><init>(Lcom/unity3d/ads/android/UnityAds;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 553
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->k:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 556
    :cond_2
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->a:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->cachemanager:Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;

    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->updateCache(Ljava/util/ArrayList;)V

    :cond_3
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAds;->d:Z

    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    if-eqz v0, :cond_4

    const-string v0, "Destroying views"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v0, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->destroy()V

    sput-object v4, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    :cond_4
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "Current activity is null when initializing mainview, halting Unity Ads init"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->q:Lcom/unity3d/ads/android/UnityAds;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/UnityAds;->onWebDataFailed()V

    .line 557
    :goto_2
    return-void

    .line 525
    :catch_0
    move-exception v1

    move v1, v0

    move-object v3, v4

    goto/16 :goto_0

    .line 536
    :catch_1
    move-exception v1

    move v1, v0

    goto :goto_1

    .line 556
    :cond_5
    :try_start_2
    new-instance v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/android/UnityAds;->q:Lcom/unity3d/ads/android/UnityAds;

    sget-object v3, Lcom/unity3d/ads/android/UnityAds;->q:Lcom/unity3d/ads/android/UnityAds;

    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/ads/android/view/UnityAdsMainView;-><init>(Landroid/content/Context;Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;)V

    sput-object v0, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Out of memory error when allocating Unity Ads views, halting Unity Ads init: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->q:Lcom/unity3d/ads/android/UnityAds;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/UnityAds;->onWebDataFailed()V

    goto :goto_2

    :cond_6
    move v1, v2

    goto/16 :goto_1
.end method

.method public onWebDataFailed()V
    .locals 1

    .prologue
    .line 561
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->r:Lcom/unity3d/ads/android/IUnityAdsListener;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->c:Z

    if-nez v0, :cond_0

    .line 562
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->r:Lcom/unity3d/ads/android/IUnityAdsListener;

    invoke-interface {v0}, Lcom/unity3d/ads/android/IUnityAdsListener;->onFetchFailed()V

    .line 563
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/ads/android/UnityAds;->c:Z

    .line 565
    :cond_0
    return-void
.end method
