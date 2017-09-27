.class public Lcom/sponsorpay/utils/HostInfo;
.super Ljava/lang/Object;
.source "HostInfo.java"


# static fields
.field private static a:Lcom/sponsorpay/utils/HostInfo;

.field protected static sSimulateNoAccessNetworkState:Z

.field protected static sSimulateNoReadPhoneStatePermission:Z


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Landroid/util/DisplayMetrics;

.field private h:Landroid/view/WindowManager;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Landroid/location/LocationManager;

.field private s:Z

.field private t:Ljava/util/concurrent/CountDownLatch;

.field private u:Ljava/lang/String;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 429
    sput-boolean v0, Lcom/sponsorpay/utils/HostInfo;->sSimulateNoReadPhoneStatePermission:Z

    .line 430
    sput-boolean v0, Lcom/sponsorpay/utils/HostInfo;->sSimulateNoAccessNetworkState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean v1, p0, Lcom/sponsorpay/utils/HostInfo;->f:Z

    .line 101
    iput-boolean v2, p0, Lcom/sponsorpay/utils/HostInfo;->s:Z

    .line 236
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->t:Ljava/util/concurrent/CountDownLatch;

    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A context is required to initialize HostInfo"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_b

    .line 117
    new-instance v0, Lcom/sponsorpay/utils/b;

    const-string v3, "AdvertisingIdRetriever"

    invoke-direct {v0, p0, v3, p1}, Lcom/sponsorpay/utils/b;-><init>(Lcom/sponsorpay/utils/HostInfo;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sponsorpay/utils/b;->start()V

    .line 126
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->n:Ljava/lang/String;

    sget-boolean v0, Lcom/sponsorpay/utils/HostInfo;->sSimulateNoReadPhoneStatePermission:Z

    if-nez v0, :cond_1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sponsorpay/utils/HostInfo;->o:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->n:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 127
    :cond_1
    :goto_1
    const-string v0, ""

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->p:Ljava/lang/String;

    sget-boolean v0, Lcom/sponsorpay/utils/HostInfo;->sSimulateNoAccessNetworkState:Z

    if-nez v0, :cond_2

    :try_start_1
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_c

    const-string v0, "wifi"

    :goto_2
    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->p:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->g:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->g:Landroid/util/DisplayMetrics;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->h:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->h:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v3, p0, Lcom/sponsorpay/utils/HostInfo;->g:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 129
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->q:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 130
    :goto_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sponsorpay/utils/HostInfo;->getRotation()I

    move-result v3

    if-eqz v3, :cond_4

    if-ne v3, v5, :cond_5

    :cond_4
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_7

    :cond_5
    if-eq v3, v1, :cond_6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_d

    :cond_6
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_d

    :cond_7
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/sponsorpay/utils/HostInfo;->s:Z

    .line 132
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "gps"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "passive"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "network"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->r:Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/sponsorpay/utils/HostInfo;->v:Ljava/util/List;

    .line 135
    :cond_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->d:Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android OS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->b:Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->c:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->u:Ljava/lang/String;

    .line 143
    return-void

    .line 123
    :cond_b
    invoke-virtual {p0, p1}, Lcom/sponsorpay/utils/HostInfo;->retrieveAdvertisingId(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 127
    :cond_c
    :try_start_3
    const-string v0, "cellular"
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 129
    :catch_0
    move-exception v0

    const-string v0, ""

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->q:Ljava/lang/String;

    goto/16 :goto_4

    :cond_d
    move v0, v2

    .line 130
    goto/16 :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method

.method private static a(I)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x2

    .line 318
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "DENSITY_XHIGH"

    aput-object v3, v2, v0

    const-string v3, "DENSITY_TV"

    aput-object v3, v2, v6

    .line 319
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "EXTRA_HIGH"

    aput-object v4, v3, v0

    const-string v4, "TV"

    aput-object v4, v3, v6

    .line 321
    invoke-static {v5, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v7, v0

    move-object v0, v1

    move v1, v7

    .line 326
    :goto_0
    if-ge v1, v4, :cond_1

    .line 328
    :try_start_0
    const-class v5, Landroid/util/DisplayMetrics;

    aget-object v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 330
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 331
    if-ne p0, v5, :cond_0

    .line 332
    aget-object v0, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    :cond_1
    if-nez v0, :cond_2

    const-string v0, "undefined"

    :cond_2
    return-object v0

    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static getHostInfo(Landroid/content/Context;)Lcom/sponsorpay/utils/HostInfo;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/sponsorpay/utils/HostInfo;->a:Lcom/sponsorpay/utils/HostInfo;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/sponsorpay/utils/HostInfo;

    invoke-direct {v0, p0}, Lcom/sponsorpay/utils/HostInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sponsorpay/utils/HostInfo;->a:Lcom/sponsorpay/utils/HostInfo;

    .line 61
    :cond_0
    sget-object v0, Lcom/sponsorpay/utils/HostInfo;->a:Lcom/sponsorpay/utils/HostInfo;

    return-object v0
.end method

.method public static isDeviceSupported()Z
    .locals 2

    .prologue
    .line 347
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSimulateNoAccessNetworkState(Z)V
    .locals 0

    .prologue
    .line 437
    sput-boolean p0, Lcom/sponsorpay/utils/HostInfo;->sSimulateNoAccessNetworkState:Z

    .line 438
    return-void
.end method

.method public static setSimulateNoReadPhoneStatePermission(Z)V
    .locals 0

    .prologue
    .line 433
    sput-boolean p0, Lcom/sponsorpay/utils/HostInfo;->sSimulateNoReadPhoneStatePermission:Z

    .line 434
    return-void
.end method


# virtual methods
.method public getAdvertisingId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->t:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->e:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getAppBundleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrierCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageSetting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationManager()Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->r:Landroid/location/LocationManager;

    return-object v0
.end method

.method public getLocationProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->v:Ljava/util/List;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->h:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public getScreenDensityCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->g:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 297
    sparse-switch v0, :sswitch_data_0

    .line 311
    invoke-static {v0}, Lcom/sponsorpay/utils/HostInfo;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->i:Ljava/lang/String;

    .line 314
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->i:Ljava/lang/String;

    return-object v0

    .line 299
    :sswitch_0
    const-string v0, "MEDIUM"

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->i:Ljava/lang/String;

    goto :goto_0

    .line 302
    :sswitch_1
    const-string v0, "HIGH"

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->i:Ljava/lang/String;

    goto :goto_0

    .line 305
    :sswitch_2
    const-string v0, "LOW"

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->i:Ljava/lang/String;

    goto :goto_0

    .line 308
    :sswitch_3
    const-string v0, "EXTRA_HIGH"

    iput-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->i:Ljava/lang/String;

    goto :goto_0

    .line 297
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_2
        0xa0 -> :sswitch_0
        0xf0 -> :sswitch_1
        0x140 -> :sswitch_3
    .end sparse-switch
.end method

.method public getScreenDensityX()Ljava/lang/String;
    .locals 2

    .prologue
    .line 365
    const/4 v0, 0x0

    iget v1, p0, Lcom/sponsorpay/utils/HostInfo;->l:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->g:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Lcom/sponsorpay/utils/HostInfo;->l:F

    .line 368
    :cond_0
    iget v0, p0, Lcom/sponsorpay/utils/HostInfo;->l:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenDensityY()Ljava/lang/String;
    .locals 2

    .prologue
    .line 372
    const/4 v0, 0x0

    iget v1, p0, Lcom/sponsorpay/utils/HostInfo;->m:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->g:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Lcom/sponsorpay/utils/HostInfo;->m:F

    .line 375
    :cond_0
    iget v0, p0, Lcom/sponsorpay/utils/HostInfo;->m:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/sponsorpay/utils/HostInfo;->k:I

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->g:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/sponsorpay/utils/HostInfo;->k:I

    .line 361
    :cond_0
    iget v0, p0, Lcom/sponsorpay/utils/HostInfo;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenOrientation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 277
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "portrait"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "landscape"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "portrait"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "landscape"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "portrait"

    aput-object v2, v1, v0

    .line 278
    invoke-virtual {p0}, Lcom/sponsorpay/utils/HostInfo;->getRotation()I

    move-result v0

    .line 279
    iget-boolean v2, p0, Lcom/sponsorpay/utils/HostInfo;->s:Z

    if-eqz v2, :cond_0

    .line 280
    add-int/lit8 v0, v0, 0x1

    .line 282
    :cond_0
    aget-object v0, v1, v0

    return-object v0
.end method

.method public getScreenWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/sponsorpay/utils/HostInfo;->j:I

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->g:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/sponsorpay/utils/HostInfo;->j:I

    .line 354
    :cond_0
    iget v0, p0, Lcom/sponsorpay/utils/HostInfo;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasDeviceRevserseOrientation()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/sponsorpay/utils/HostInfo;->s:Z

    return v0
.end method

.method public isAdvertisingIdLimitedTrackingEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/sponsorpay/utils/HostInfo;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected retrieveAdvertisingId(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 246
    :try_start_0
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 248
    const-string v1, "getAdvertisingIdInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 249
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 252
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isLimitAdTrackingEnabled"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 254
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sponsorpay/utils/HostInfo;->e:Ljava/lang/String;

    .line 255
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sponsorpay/utils/HostInfo;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/sponsorpay/utils/HostInfo;->t:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 261
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    const-string v1, "HostInfo"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
