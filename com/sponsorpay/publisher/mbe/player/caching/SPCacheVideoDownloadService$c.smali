.class final Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;
.super Landroid/os/Handler;
.source "SPCacheVideoDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

.field private b:Lcom/sponsorpay/utils/e$a;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 262
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    .line 263
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;->c:Z

    .line 264
    return-void
.end method

.method private declared-synchronized a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;)I
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 307
    monitor-enter p0

    :try_start_0
    const-string v0, "SPCacheVideoDownloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Downloading video from URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->getRemoteUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :try_start_1
    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->getLocalFile()Ljava/io/File;

    move-result-object v2

    .line 311
    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->getDownloadState()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    :cond_0
    move v0, v1

    .line 313
    :goto_0
    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->getRemoteUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sponsorpay/utils/e;->a(Ljava/lang/String;Ljava/io/File;)Lcom/sponsorpay/utils/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sponsorpay/utils/e;->a(Z)Lcom/sponsorpay/utils/e;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Lcom/sponsorpay/utils/e;->open()Lcom/sponsorpay/utils/AbstractHttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/utils/AbstractHttpConnection;->getReturnObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/utils/e$a;

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;->b:Lcom/sponsorpay/utils/e$a;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    :try_start_2
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;->b:Lcom/sponsorpay/utils/e$a;

    invoke-virtual {v0}, Lcom/sponsorpay/utils/e$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;->b:Lcom/sponsorpay/utils/e$a;

    .line 319
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->d()Lcom/sponsorpay/publisher/mbe/player/caching/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->b()V
    :try_end_2
    .catch Lcom/sponsorpay/utils/e$a$a; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sponsorpay/utils/e$a$b; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    const/4 v0, 0x2

    .line 330
    :goto_1
    monitor-exit p0

    return v0

    .line 311
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    :goto_2
    const/4 v0, 0x4

    goto :goto_1

    .line 328
    :catch_1
    move-exception v0

    .line 326
    :try_start_3
    const-string v2, "SPCacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Video downloading from URL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->getRemoteUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has been interrupted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v2, "SPCacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An error occurred while downloading the videos: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;->b:Lcom/sponsorpay/utils/e$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    .line 330
    goto :goto_1

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 323
    :catch_2
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 334
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;->removeMessages(I)V

    .line 335
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;->removeMessages(I)V

    .line 336
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;->b:Lcom/sponsorpay/utils/e$a;

    if-eqz v0, :cond_0

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;->c:Z

    .line 338
    const-string v0, "SPCacheVideoDownloadService"

    const-string v1, "Download handler - canceling downloads"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;->b:Lcom/sponsorpay/utils/e$a;

    invoke-virtual {v0}, Lcom/sponsorpay/utils/e$a;->b()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;->b:Lcom/sponsorpay/utils/e$a;

    .line 342
    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 268
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 304
    :goto_0
    return-void

    .line 271
    :sswitch_0
    const-string v0, "SPCacheVideoDownloadService"

    const-string v1, "Download handler - Downloading config..."

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const/4 v1, 0x0

    .line 275
    :try_start_0
    const-string v0, "precaching"

    invoke-static {v0}, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sponsorpay/utils/UrlBuilder;->newBuilder(Ljava/lang/String;Lcom/sponsorpay/credentials/SPCredentials;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/utils/UrlBuilder;->buildUrl()Ljava/lang/String;

    move-result-object v0

    .line 276
    const-string v2, "SPCacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Download handler - Config will be fetched from - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {v0}, Lcom/sponsorpay/utils/d;->a(Ljava/lang/String;)Lcom/sponsorpay/utils/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/utils/d;->open()Lcom/sponsorpay/utils/AbstractHttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/utils/AbstractHttpConnection;->getReturnObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_1
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->d(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;

    move-result-object v1

    const/16 v2, 0x44c

    invoke-virtual {v1, v2, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    :goto_2
    const-string v2, "SPCacheVideoDownloadService"

    const-string v3, "An error occurred"

    invoke-static {v2, v3, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_1

    .line 287
    :sswitch_1
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0, v6}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;Z)Z

    .line 288
    const-string v0, "SPCacheVideoDownloadService"

    const-string v1, "Download handler - Downloading video..."

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;

    .line 290
    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;->a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;)I

    move-result v1

    .line 291
    const-string v2, "SPCacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Download handler - Video state = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v2, v5}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;Z)Z

    .line 294
    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v2}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->d(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;

    move-result-object v2

    const/16 v3, 0x488

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->getRemoteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 295
    iget-boolean v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;->c:Z

    if-eqz v1, :cond_0

    .line 296
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 297
    const-string v2, "canceled"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 298
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 299
    iput-boolean v5, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;->c:Z

    .line 301
    :cond_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 279
    :catch_1
    move-exception v0

    goto :goto_2

    .line 268
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
