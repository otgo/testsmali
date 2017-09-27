.class final Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;
.super Landroid/os/Handler;
.source "SPCacheVideoDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sponsorpay/publisher/mbe/player/caching/h;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 351
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    .line 352
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 348
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->b:Landroid/util/SparseArray;

    .line 349
    const/4 v0, 0x0

    iput v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->c:I

    .line 353
    return-void
.end method

.method private a()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 475
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->h(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_5

    .line 477
    const-string v1, "SPCacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Queuing video for network "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    move-result-object v1

    .line 479
    invoke-virtual {v1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->b()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration;

    move-result-object v3

    .line 480
    invoke-virtual {v3}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration;->getMaxVideoDownloads()I

    move-result v5

    .line 481
    invoke-virtual {v1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->c()Lcom/sponsorpay/publisher/mbe/player/caching/e;

    move-result-object v6

    .line 482
    invoke-virtual {v3, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration;->getCacheNetworkPolicy(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;)Lcom/sponsorpay/publisher/mbe/player/caching/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->a()I

    move-result v7

    move v1, v2

    .line 483
    :goto_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    if-ge v1, v7, :cond_5

    .line 484
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/player/caching/h;

    .line 485
    if-eqz v0, :cond_4

    .line 487
    const-string v3, "SPCacheVideoDownloadService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Queuing video entry for ad_id "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/h;->a()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and URL "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/h;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v4

    .line 490
    :goto_1
    invoke-virtual {v6, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a(Lcom/sponsorpay/publisher/mbe/player/caching/h;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->getDownloadState()I

    move-result v8

    .line 494
    if-eqz v8, :cond_0

    if-ne v8, v4, :cond_3

    .line 495
    :cond_0
    if-eqz v3, :cond_1

    .line 498
    invoke-virtual {v6}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    sub-int/2addr v2, v5

    .line 500
    invoke-virtual {v6, v2}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->b(I)V

    .line 503
    :cond_1
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->setDownloadState(I)V

    .line 504
    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v2}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, v3, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 506
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 507
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 516
    :goto_2
    return v4

    :cond_2
    move v3, v2

    .line 488
    goto :goto_1

    .line 510
    :cond_3
    const-string v0, "SPCacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "This cache entry will not be queued for download. Current state: "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 515
    :cond_5
    const-string v0, "SPCacheVideoDownloadService"

    const-string v1, "No videos to be queued for download at the moment"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 516
    goto :goto_2
.end method

.method private b()V
    .locals 7

    .prologue
    .line 526
    const-string v0, "SPCacheVideoDownloadService"

    const-string v1, "Checking videos already available locally..."

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->c()Lcom/sponsorpay/publisher/mbe/player/caching/e;

    move-result-object v2

    .line 528
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 529
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/player/caching/h;

    .line 530
    if-eqz v0, :cond_0

    .line 531
    const-string v3, "SPCacheVideoDownloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Video entry for ad_id "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/h;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/h;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;

    move-result-object v3

    .line 533
    if-eqz v3, :cond_0

    .line 534
    const-string v4, "SPCacheVideoDownloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "A cache entry already exists for url - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->getRemoteUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-virtual {v3, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->addVideoEntry(Lcom/sponsorpay/publisher/mbe/player/caching/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    const-string v0, "SPCacheVideoDownloadService"

    const-string v4, "Video entry successfully added to cache entry"

    invoke-static {v0, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :goto_1
    invoke-virtual {v2}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->b()V

    .line 545
    invoke-virtual {v3}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->getDownloadState()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 546
    const-string v0, "SPCacheVideoDownloadService"

    const-string v4, "Cache entry is already fully downloaded"

    invoke-static {v0, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v0, "SPCacheVideoDownloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Removing URL "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->getRemoteUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from the new downloads list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->b:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 550
    iget v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->c:I

    .line 528
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 540
    :cond_1
    const-string v0, "SPCacheVideoDownloadService"

    const-string v4, "The video entry was already part of this cache entry"

    invoke-static {v0, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 555
    :cond_2
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v4, 0x1

    const/16 v10, 0xc8

    const/4 v2, 0x0

    .line 357
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 359
    :sswitch_0
    const/16 v3, 0xe10

    .line 360
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 361
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    sget v5, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$d;->a:I

    invoke-static {v1, v5}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;I)I

    iput v2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->c:I

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 362
    if-eqz v0, :cond_2

    .line 363
    const-string v1, "SPCacheVideoDownloadService"

    const-string v5, "Cache config received, parsing..."

    invoke-static {v1, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/g;->a(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/caching/g;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/g;->a()Lcom/sponsorpay/publisher/mbe/player/caching/a;

    move-result-object v1

    .line 366
    if-eqz v1, :cond_2

    .line 367
    const-string v5, "SPCacheVideoDownloadService"

    const-string v6, "Creating cache configuration object"

    invoke-static {v5, v6}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v1}, Lcom/sponsorpay/publisher/mbe/player/caching/a;->a()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration;

    move-result-object v5

    .line 370
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration;)V

    .line 372
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/g;->b()Ljava/util/ArrayList;

    move-result-object v6

    .line 374
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 375
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->b()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration;->getMaxVideoDownloads()I

    move-result v7

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/player/caching/h;

    iget-object v9, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v9, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    if-ne v0, v7, :cond_3

    const-string v0, "SPCacheVideoDownloadService"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "There are %d videos to download and the maximum cache slots size is %d"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v4

    invoke-static {v1, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SPCacheVideoDownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trimming the list of new videos to download to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_1
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->b()V

    .line 379
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->c()Lcom/sponsorpay/publisher/mbe/player/caching/e;

    move-result-object v0

    invoke-virtual {v5}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration;->getMaxVideoDownloads()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a(I)V

    .line 382
    invoke-virtual {p0, v10}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->sendEmptyMessage(I)Z

    .line 387
    :cond_2
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->b()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration;

    move-result-object v0

    .line 388
    if-eqz v0, :cond_8

    .line 389
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration;->getRefreshInterval()I

    move-result v0

    .line 390
    const-string v1, "SPCacheVideoDownloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cache configuration exists, refresh interval is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :goto_2
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v1, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->b(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;I)V

    goto/16 :goto_0

    :cond_3
    move v1, v0

    .line 375
    goto/16 :goto_1

    .line 401
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->c()Lcom/sponsorpay/publisher/mbe/player/caching/e;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v5, "SPCacheVideoDownloadService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Updating entry "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->getRemoteUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->setDownloadState(I)V

    invoke-virtual {v4}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->b()V

    if-eq v3, v11, :cond_4

    const/4 v0, 0x4

    if-ne v3, v0, :cond_5

    :cond_4
    const-string v0, "SPCacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removing videos to cache, entry num "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->b:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->c:I

    .line 405
    :cond_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    invoke-virtual {p0, v10}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 410
    :sswitch_2
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->e(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)I

    move-result v0

    sget v1, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$d;->a:I

    if-ne v0, v1, :cond_0

    .line 411
    iget v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->c:I

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    move v2, v4

    :cond_6
    if-eqz v2, :cond_7

    .line 412
    const-string v0, "SPCacheVideoDownloadService"

    const-string v1, "No more videos to download \\m/"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->f(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 414
    :cond_7
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->g(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->a()Z

    goto/16 :goto_0

    .line 420
    :sswitch_3
    invoke-virtual {p0, v10}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 423
    :sswitch_4
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->f(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_8
    move v0, v3

    goto/16 :goto_2

    .line 357
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_2
        0x44c -> :sswitch_0
        0x488 -> :sswitch_1
        0x514 -> :sswitch_4
        0x51e -> :sswitch_3
    .end sparse-switch
.end method
