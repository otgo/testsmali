.class public Lcom/sponsorpay/publisher/mbe/player/caching/SPConfigurationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SPConfigurationBroadcastReceiver.java"


# static fields
.field public static final REFRESH_INTERVAL_EXTRA_KEY:Ljava/lang/String; = "refresh.interval"

.field private static a:Landroid/app/AlarmManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    .line 28
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPConfigurationBroadcastReceiver;->a:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 29
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPConfigurationBroadcastReceiver;->a:Landroid/app/AlarmManager;

    .line 31
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 35
    const-string v1, "refresh.interval"

    const/16 v2, 0xe10

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 37
    mul-int/lit16 v2, v1, 0x3e8

    .line 38
    const-string v3, "SPConfigurationBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Next precache query will occur in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " seconds"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v1, Lcom/sponsorpay/publisher/mbe/player/caching/SPConfigurationBroadcastReceiver;->a:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 42
    sget-object v1, Lcom/sponsorpay/publisher/mbe/player/caching/SPConfigurationBroadcastReceiver;->a:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 43
    return-void
.end method
