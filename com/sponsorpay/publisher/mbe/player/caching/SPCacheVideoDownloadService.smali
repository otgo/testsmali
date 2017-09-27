.class public Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;
.super Landroid/app/Service;
.source "SPCacheVideoDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;,
        Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;,
        Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;,
        Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$d;
    }
.end annotation


# static fields
.field public static final ACTION_EXTRA:Ljava/lang/String; = "action.to.perform"

.field public static final CANCEL_DOWNLOADS_EXTRA_VALUE:I = 0xa

.field public static final RESUME_DOWNLOADS_EXTRA_VALUE:I = 0x14

.field private static a:Lcom/sponsorpay/publisher/mbe/player/caching/SPConfigurationBroadcastReceiver;


# instance fields
.field private b:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;

.field private c:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;

.field private d:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;

.field private e:Z

.field private volatile f:I

.field private volatile g:Z

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    iput-boolean v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->e:Z

    .line 67
    sget v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$d;->a:I

    iput v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->f:I

    .line 68
    iput-boolean v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->g:Z

    .line 559
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/caching/f;

    invoke-direct {v0, p0}, Lcom/sponsorpay/publisher/mbe/player/caching/f;-><init>(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->h:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;I)I
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->f:I

    return p1
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->c:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".player.caching.DONE_PRECACHING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;I)V
    .locals 4

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "refresh.interval"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SPCacheVideoDownloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating broadcast receiver with refresh interval = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 36
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceDownloadThread"

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;-><init>(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->c:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceDecisionThread"

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;-><init>(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->d:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v3, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->e:Z

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->d:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;

    return-object v0
.end method

.method static synthetic e(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->f:I

    return v0
.end method

.method static synthetic f(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->b:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;

    return-object v0
.end method

.method static synthetic g(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->g:Z

    return v0
.end method

.method static synthetic h(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;
    .locals 2

    .prologue
    .line 36
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;->WIFI:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;->CELLULAR:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 78
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 83
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPConfigurationBroadcastReceiver;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    new-instance v1, Lcom/sponsorpay/publisher/mbe/player/caching/SPConfigurationBroadcastReceiver;

    invoke-direct {v1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPConfigurationBroadcastReceiver;-><init>()V

    sput-object v1, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPConfigurationBroadcastReceiver;

    .line 87
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPConfigurationBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceDispatcherThread"

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;-><init>(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->b:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;

    .line 92
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->c()Lcom/sponsorpay/publisher/mbe/player/caching/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a(Z)V

    .line 95
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 159
    const-string v0, "SPCacheVideoDownloadService"

    const-string v1, "The service will shutdown"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a(Z)V

    .line 161
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->b:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 162
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->e:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->d:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 164
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->c:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 166
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 168
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/16 v3, 0xa

    .line 101
    const-string v0, "SPCacheVideoDownloadService"

    const-string v1, "onStartCommand called on the service"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "action.to.perform"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 106
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->c()Lcom/sponsorpay/publisher/mbe/player/caching/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->c()Z

    move-result v1

    .line 107
    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->e:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->f:I

    sget v2, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$d;->a:I

    if-ne v1, v2, :cond_1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->b:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;

    invoke-virtual {v0, v4}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;->sendEmptyMessage(I)Z

    .line 146
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 110
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 130
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getAllCredentials()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 131
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 135
    sget v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$d;->c:I

    iput v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->f:I

    goto :goto_0

    .line 112
    :sswitch_0
    sget v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$d;->b:I

    iput v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->f:I

    .line 113
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->b:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 116
    :sswitch_1
    iget v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->f:I

    .line 117
    sget v1, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$d;->a:I

    iput v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->f:I

    .line 118
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    sget v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$d;->c:I

    iput v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->f:I

    goto :goto_0

    .line 123
    :cond_2
    sget v1, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$d;->c:I

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->e:Z

    if-nez v0, :cond_4

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->b:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;

    invoke-virtual {v0, v3}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->d:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->b:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;

    invoke-virtual {v0, v3}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 140
    :cond_6
    const-string v0, "SPCacheVideoDownloadService"

    const-string v1, "The SDK appears to not have been started yet..."

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->b:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;

    invoke-virtual {v0, v4}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 110
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method
