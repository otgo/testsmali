.class final Lcom/fyber/cache/CacheVideoDownloadService$b;
.super Landroid/os/Handler;
.source "CacheVideoDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/cache/CacheVideoDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/cache/CacheVideoDownloadService;


# direct methods
.method public constructor <init>(Lcom/fyber/cache/CacheVideoDownloadService;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/fyber/cache/CacheVideoDownloadService$b;->a:Lcom/fyber/cache/CacheVideoDownloadService;

    .line 256
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 257
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$b;->a:Lcom/fyber/cache/CacheVideoDownloadService;

    invoke-static {v0}, Lcom/fyber/cache/CacheVideoDownloadService;->a(Lcom/fyber/cache/CacheVideoDownloadService;)Lcom/fyber/cache/CacheVideoDownloadService$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$b;->a:Lcom/fyber/cache/CacheVideoDownloadService;

    invoke-static {v0}, Lcom/fyber/cache/CacheVideoDownloadService;->a(Lcom/fyber/cache/CacheVideoDownloadService;)Lcom/fyber/cache/CacheVideoDownloadService$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/CacheVideoDownloadService$c;->a()V

    .line 283
    :cond_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 262
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 277
    :goto_0
    return-void

    .line 264
    :sswitch_0
    invoke-direct {p0}, Lcom/fyber/cache/CacheVideoDownloadService$b;->a()V

    goto :goto_0

    .line 268
    :sswitch_1
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$b;->a:Lcom/fyber/cache/CacheVideoDownloadService;

    sget v1, Lcom/fyber/cache/CacheVideoDownloadService$d;->c:I

    invoke-static {v0, v1}, Lcom/fyber/cache/CacheVideoDownloadService;->a(Lcom/fyber/cache/CacheVideoDownloadService;I)I

    .line 269
    invoke-direct {p0}, Lcom/fyber/cache/CacheVideoDownloadService$b;->a()V

    .line 1286
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$b;->a:Lcom/fyber/cache/CacheVideoDownloadService;

    invoke-static {v0}, Lcom/fyber/cache/CacheVideoDownloadService;->b(Lcom/fyber/cache/CacheVideoDownloadService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$b;->a:Lcom/fyber/cache/CacheVideoDownloadService;

    invoke-static {v0}, Lcom/fyber/cache/CacheVideoDownloadService;->c(Lcom/fyber/cache/CacheVideoDownloadService;)V

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$b;->a:Lcom/fyber/cache/CacheVideoDownloadService;

    invoke-static {v0}, Lcom/fyber/cache/CacheVideoDownloadService;->a(Lcom/fyber/cache/CacheVideoDownloadService;)Lcom/fyber/cache/CacheVideoDownloadService$c;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/fyber/cache/CacheVideoDownloadService$c;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 273
    :sswitch_2
    invoke-direct {p0}, Lcom/fyber/cache/CacheVideoDownloadService$b;->a()V

    .line 274
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$b;->a:Lcom/fyber/cache/CacheVideoDownloadService;

    invoke-virtual {v0}, Lcom/fyber/cache/CacheVideoDownloadService;->stopSelf()V

    goto :goto_0

    .line 262
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x64 -> :sswitch_2
        0x12c -> :sswitch_0
    .end sparse-switch
.end method
