.class public Lcom/unity3d/ads/android/UnityAdsDeviceLog;
.super Ljava/lang/Object;
.source "UnityAdsDeviceLog.java"


# static fields
.field public static final LOGLEVEL_DEBUG:I = 0x8

.field public static final LOGLEVEL_INFO:I = 0x4

.field private static a:Z

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static final e:Ljava/util/HashMap;

.field private static f:Ljava/util/HashMap;

.field private static g:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 9
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a:Z

    .line 10
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->b:Z

    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->c:Z

    .line 12
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->d:Z

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    sput-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 27
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    const-string v3, "i"

    invoke-direct {v2, v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    const-string v3, "d"

    invoke-direct {v2, v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->WARNING:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    const-string v3, "w"

    invoke-direct {v2, v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    const-string v3, "e"

    invoke-direct {v2, v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    const-string p0, "DO NOT USE EMPTY MESSAGES, use UnityAdsDeviceLog.entered() instead"

    .line 146
    :cond_1
    return-object p0
.end method

.method private static a(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 116
    .line 118
    sget-object v0, Lcom/unity3d/ads/android/d;->a:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 130
    :goto_0
    if-eqz v0, :cond_3

    .line 136
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    if-eqz v0, :cond_4

    move v3, v1

    :goto_1
    array-length v6, v5

    if-ge v3, v6, :cond_2

    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/unity3d/ads/android/UnityAdsDeviceLog;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/unity3d/ads/android/UnityAdsDeviceLog;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    if-nez v1, :cond_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 120
    :pswitch_0
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->d:Z

    goto :goto_0

    .line 123
    :pswitch_1
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->c:Z

    goto :goto_0

    .line 126
    :pswitch_2
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->b:Z

    goto :goto_0

    .line 129
    :pswitch_3
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a:Z

    goto :goto_0

    .line 136
    :cond_2
    array-length v1, v5

    if-ge v3, v1, :cond_5

    aget-object v1, v5, v3

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_4

    new-instance v1, Lcom/unity3d/ads/android/e;

    invoke-direct {v1, v0, p1, v2}, Lcom/unity3d/ads/android/e;-><init>(Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;Ljava/lang/String;Ljava/lang/StackTraceElement;)V

    .line 137
    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/unity3d/ads/android/e;->getLogLevel()Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    const-class v0, Landroid/util/Log;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/e;->getLogLevel()Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;->getReceivingMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/unity3d/ads/android/e;->getLogLevel()Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;->getLogTag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/e;->getParsedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    :cond_3
    :goto_5
    return-void

    .line 137
    :catch_0
    move-exception v0

    const-string v0, "UnityAds"

    const-string v2, "Writing to log failed!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v0, "UnityAds"

    const-string v1, "Writing to log failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_4
    move-object v1, v4

    goto :goto_3

    :cond_5
    move-object v2, v4

    goto :goto_2

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0xc00

    .line 77
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7800

    if-ge v0, v1, :cond_1

    .line 83
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 89
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    .line 90
    :cond_1
    return-void
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 94
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static entered()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "ENTERED METHOD"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 112
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 73
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static logShowStatus(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;)V
    .locals 3

    .prologue
    .line 233
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->g:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    if-eq p0, v0, :cond_3

    .line 234
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->READY:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    const-string v2, "Unity Ads is ready to show ads"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->NOT_INITIALIZED:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    const-string v2, "not initialized"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->WEBAPP_NOT_INITIALIZED:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    const-string v2, "webapp not initialized"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->SHOWING_ADS:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    const-string v2, "already showing ads"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->NO_INTERNET:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    const-string v2, "no internet connection available"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->NO_ADS:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    const-string v2, "no ads are available"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->ZERO_ADS:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    const-string v2, "zero ads available"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->VIDEO_NOT_CACHED:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    const-string v2, "video not cached"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_1
    sput-object p0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->g:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    .line 236
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 237
    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->READY:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    if-eq p0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unity Ads cannot show ads: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    :cond_2
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 240
    :cond_3
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 35
    const/16 v0, 0x8

    if-lt p0, v0, :cond_0

    .line 36
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a:Z

    .line 37
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->b:Z

    .line 38
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->d:Z

    .line 39
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->c:Z

    .line 61
    :goto_0
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x4

    if-lt p0, v0, :cond_1

    .line 41
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a:Z

    .line 42
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->b:Z

    .line 43
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->d:Z

    .line 44
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->c:Z

    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x2

    if-lt p0, v0, :cond_2

    .line 46
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a:Z

    .line 47
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->b:Z

    .line 48
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->d:Z

    .line 49
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->c:Z

    goto :goto_0

    .line 50
    :cond_2
    if-lez p0, :cond_3

    .line 51
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a:Z

    .line 52
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->b:Z

    .line 53
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->d:Z

    .line 54
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->c:Z

    goto :goto_0

    .line 56
    :cond_3
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a:Z

    .line 57
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->b:Z

    .line 58
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->d:Z

    .line 59
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->c:Z

    goto :goto_0
.end method

.method public static warning(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->WARNING:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 103
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->warning(Ljava/lang/String;)V

    .line 104
    return-void
.end method
