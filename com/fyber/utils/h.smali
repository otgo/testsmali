.class public Lcom/fyber/utils/h;
.super Ljava/lang/Object;
.source "HostInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/utils/h$a;,
        Lcom/fyber/utils/h$b;,
        Lcom/fyber/utils/h$c;,
        Lcom/fyber/utils/h$d;,
        Lcom/fyber/utils/h$e;
    }
.end annotation


# static fields
.field private static a:Lcom/fyber/utils/h;


# instance fields
.field private b:Landroid/view/WindowManager;

.field private c:Landroid/net/ConnectivityManager;

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Landroid/location/LocationManager;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v2, p0, Lcom/fyber/utils/h;->h:Z

    .line 82
    iput-boolean v1, p0, Lcom/fyber/utils/h;->n:Z

    .line 87
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/fyber/utils/h;->q:Ljava/util/concurrent/CountDownLatch;

    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A context is required to initialize HostInfo"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_9

    .line 103
    new-instance v0, Lcom/fyber/utils/i;

    const-string v3, "AdvertisingIdRetriever"

    invoke-direct {v0, p0, v3, p1}, Lcom/fyber/utils/i;-><init>(Lcom/fyber/utils/h;Ljava/lang/String;Landroid/content/Context;)V

    .line 107
    invoke-virtual {v0}, Lcom/fyber/utils/i;->start()V

    .line 1142
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/fyber/utils/h;->j:Ljava/lang/String;

    .line 1143
    const-string v0, ""

    iput-object v0, p0, Lcom/fyber/utils/h;->i:Ljava/lang/String;

    .line 1145
    const-string v0, "phone"

    .line 1146
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1148
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fyber/utils/h;->j:Ljava/lang/String;

    .line 1149
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/utils/h;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2133
    :goto_1
    :try_start_1
    const-string v0, "connectivity"

    .line 2134
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/fyber/utils/h;->c:Landroid/net/ConnectivityManager;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2155
    :goto_2
    iget v0, p0, Lcom/fyber/utils/h;->e:I

    if-nez v0, :cond_1

    .line 2156
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2157
    const-string v0, "window"

    .line 2158
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/fyber/utils/h;->b:Landroid/view/WindowManager;

    .line 2159
    iget-object v0, p0, Lcom/fyber/utils/h;->b:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2160
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/fyber/utils/h;->d:I

    .line 2161
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/fyber/utils/h;->e:I

    .line 2162
    iget v0, v3, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Lcom/fyber/utils/h;->f:F

    .line 2163
    iget v0, v3, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Lcom/fyber/utils/h;->g:F

    .line 2170
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2171
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2172
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/utils/h;->k:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3124
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3125
    invoke-virtual {p0}, Lcom/fyber/utils/h;->b()I

    move-result v3

    .line 3127
    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_3

    :cond_2
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_5

    :cond_3
    if-eq v3, v1, :cond_4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a

    :cond_4
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_a

    :cond_5
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/fyber/utils/h;->h:Z

    .line 3259
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 3260
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 3262
    const-string v0, "gps"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3263
    const-string v0, "passive"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3265
    :cond_6
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 3267
    const-string v0, "network"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3269
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3270
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/fyber/utils/h;->o:Landroid/location/LocationManager;

    .line 3271
    iput-object v1, p0, Lcom/fyber/utils/h;->p:Ljava/util/List;

    .line 120
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/utils/h;->l:Ljava/lang/String;

    .line 121
    return-void

    .line 109
    :cond_9
    invoke-direct {p0, p1}, Lcom/fyber/utils/h;->b(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2174
    :catch_0
    move-exception v0

    const-string v0, ""

    iput-object v0, p0, Lcom/fyber/utils/h;->k:Ljava/lang/String;

    goto :goto_3

    :cond_a
    move v0, v2

    .line 3127
    goto :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/fyber/utils/h;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/fyber/utils/h;->d:I

    return v0
.end method

.method public static a(Landroid/content/Context;)Lcom/fyber/utils/h;
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/fyber/utils/h;->a:Lcom/fyber/utils/h;

    if-nez v0, :cond_1

    .line 56
    const-class v1, Lcom/fyber/utils/h;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/fyber/utils/h;->a:Lcom/fyber/utils/h;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/fyber/utils/h;

    invoke-direct {v0, p0}, Lcom/fyber/utils/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fyber/utils/h;->a:Lcom/fyber/utils/h;

    .line 60
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_1
    sget-object v0, Lcom/fyber/utils/h;->a:Lcom/fyber/utils/h;

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/fyber/utils/h;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/fyber/utils/h;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/fyber/utils/h;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/fyber/utils/h;->e:I

    return v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 193
    :try_start_0
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 195
    const-string v1, "getAdvertisingIdInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 196
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 199
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isLimitAdTrackingEnabled"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 201
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fyber/utils/h;->m:Ljava/lang/String;

    .line 202
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fyber/utils/h;->n:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/fyber/utils/h;->q:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 208
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    const-string v1, "HostInfo"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/fyber/utils/h;)F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/fyber/utils/h;->f:F

    return v0
.end method

.method static synthetic d(Lcom/fyber/utils/h;)F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/fyber/utils/h;->g:F

    return v0
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 246
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

.method static synthetic e(Lcom/fyber/utils/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/fyber/utils/h;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/fyber/utils/h;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/fyber/utils/h;->i()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g()Lcom/fyber/utils/h;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/fyber/utils/h;->a:Lcom/fyber/utils/h;

    return-object v0
.end method

.method static synthetic g(Lcom/fyber/utils/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fyber/utils/h;->j:Ljava/lang/String;

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 4

    .prologue
    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/fyber/utils/h;->q:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/fyber/utils/h;->m:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/fyber/utils/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fyber/utils/h;->i:Ljava/lang/String;

    return-object v0
.end method

.method private i()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/fyber/utils/h;->q:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    iget-boolean v0, p0, Lcom/fyber/utils/h;->n:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic i(Lcom/fyber/utils/h;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    .line 4179
    iget-object v0, p0, Lcom/fyber/utils/h;->c:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    .line 4180
    iget-object v0, p0, Lcom/fyber/utils/h;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 4181
    if-eqz v0, :cond_1

    .line 4182
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 4183
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "wifi"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cellular"

    goto :goto_0

    .line 4187
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic j(Lcom/fyber/utils/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fyber/utils/h;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/fyber/utils/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fyber/utils/h;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 229
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

    .line 230
    invoke-virtual {p0}, Lcom/fyber/utils/h;->b()I

    move-result v0

    .line 231
    iget-boolean v2, p0, Lcom/fyber/utils/h;->h:Z

    if-eqz v2, :cond_0

    .line 232
    add-int/lit8 v0, v0, 0x1

    .line 234
    :cond_0
    aget-object v0, v1, v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/fyber/utils/h;->b:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/fyber/utils/h;->h:Z

    return v0
.end method

.method public final e()Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/fyber/utils/h;->o:Landroid/location/LocationManager;

    return-object v0
.end method

.method public final f()Ljava/util/List;
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
    .line 254
    iget-object v0, p0, Lcom/fyber/utils/h;->p:Ljava/util/List;

    return-object v0
.end method
