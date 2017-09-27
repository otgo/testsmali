.class final Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;
.super Landroid/os/Handler;
.source "SPCacheVideoDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;


# direct methods
.method public constructor <init>(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    .line 220
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 221
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;->a()V

    .line 247
    :cond_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 226
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 241
    :goto_0
    return-void

    .line 228
    :sswitch_0
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;->a()V

    goto :goto_0

    .line 232
    :sswitch_1
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    sget v1, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$d;->c:I

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;I)I

    .line 233
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;->a()V

    .line 234
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->b(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->c(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)V

    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$c;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 237
    :sswitch_2
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;->a()V

    .line 238
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$b;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->stopSelf()V

    goto :goto_0

    .line 226
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x64 -> :sswitch_2
        0x12c -> :sswitch_0
    .end sparse-switch
.end method
