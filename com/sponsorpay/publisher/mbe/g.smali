.class final Lcom/sponsorpay/publisher/mbe/g;
.super Landroid/os/Handler;
.source "SPBrandEngageClient.java"


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/g;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 233
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 249
    const-string v0, "SPBrandEngageClient"

    const-string v1, "Unknown message what field"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 235
    :sswitch_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/g;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->c(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/g;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->c(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {}, Lcom/sponsorpay/utils/d;->createUserSegmentationMapForHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 239
    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/g;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->d(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/webkit/WebView;

    .line 241
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/g;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->e(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/app/Activity;

    goto :goto_0

    .line 246
    :sswitch_1
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/g;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->f(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)V

    goto :goto_0

    .line 233
    nop

    :sswitch_data_0
    .sparse-switch
        0x7b -> :sswitch_0
        0x20a -> :sswitch_1
    .end sparse-switch
.end method
