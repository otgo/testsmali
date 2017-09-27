.class final Lcom/unity3d/ads/android/cache/b;
.super Ljava/lang/Thread;
.source "UnityAdsCacheThread.java"


# static fields
.field private static a:Lcom/unity3d/ads/android/cache/c;

.field private static b:Z

.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/android/cache/b;->a:Lcom/unity3d/ads/android/cache/c;

    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/ads/android/cache/b;->b:Z

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/cache/b;->c:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static declared-synchronized download(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 43
    const-class v1, Lcom/unity3d/ads/android/cache/b;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/unity3d/ads/android/cache/b;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/unity3d/ads/android/cache/b;

    invoke-direct {v0}, Lcom/unity3d/ads/android/cache/b;-><init>()V

    const-string v2, "UnityAdsCacheThread"

    invoke-virtual {v0, v2}, Lcom/unity3d/ads/android/cache/b;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/unity3d/ads/android/cache/b;->start()V

    :goto_0
    sget-boolean v0, Lcom/unity3d/ads/android/cache/b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    :try_start_1
    sget-object v2, Lcom/unity3d/ads/android/cache/b;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v0, Lcom/unity3d/ads/android/cache/b;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    :try_start_4
    const-string v0, "Couldn\'t synchronize thread"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 45
    :cond_0
    :try_start_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    const-string v2, "source"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v2, "target"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 50
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 51
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 53
    sget-object v0, Lcom/unity3d/ads/android/cache/b;->a:Lcom/unity3d/ads/android/cache/c;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/unity3d/ads/android/cache/c;->setStoppedStatus(Z)V

    .line 54
    sget-object v0, Lcom/unity3d/ads/android/cache/b;->a:Lcom/unity3d/ads/android/cache/c;

    invoke-virtual {v0, v2}, Lcom/unity3d/ads/android/cache/c;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 55
    monitor-exit v1

    return-void
.end method

.method public static getCurrentDownload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/unity3d/ads/android/cache/b;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/cache/b;->a:Lcom/unity3d/ads/android/cache/c;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/cache/c;->getCurrentDownload()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stopAllDownloads()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 64
    sget-boolean v0, Lcom/unity3d/ads/android/cache/b;->b:Z

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/cache/b;->a:Lcom/unity3d/ads/android/cache/c;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/cache/c;->removeMessages(I)V

    .line 67
    sget-object v0, Lcom/unity3d/ads/android/cache/b;->a:Lcom/unity3d/ads/android/cache/c;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/cache/c;->setStoppedStatus(Z)V

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 34
    new-instance v0, Lcom/unity3d/ads/android/cache/c;

    invoke-direct {v0}, Lcom/unity3d/ads/android/cache/c;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/cache/b;->a:Lcom/unity3d/ads/android/cache/c;

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/ads/android/cache/b;->b:Z

    .line 36
    sget-object v1, Lcom/unity3d/ads/android/cache/b;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/unity3d/ads/android/cache/b;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 38
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 40
    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
