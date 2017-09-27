.class public final Lcom/purplebrain/adbuddiz/sdk/h/a/h;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/h/a/i;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/h/a/j;

    invoke-direct {v1, v3}, Lcom/purplebrain/adbuddiz/sdk/h/a/j;-><init>(B)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v1, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_1
    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/h/a/k;

    iget-boolean v0, v1, Lcom/purplebrain/adbuddiz/sdk/h/a/j;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :cond_1
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, v1, Lcom/purplebrain/adbuddiz/sdk/h/a/j;->a:Z

    iget-object v0, v1, Lcom/purplebrain/adbuddiz/sdk/h/a/j;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-direct {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/a/k;-><init>(Landroid/os/IBinder;)V

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/h/a/i;

    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/h/a/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/h/a/k;->b()Z

    move-result v2

    invoke-direct {v0, v3, v2}, Lcom/purplebrain/adbuddiz/sdk/h/a/i;-><init>(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Google Play connection failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
