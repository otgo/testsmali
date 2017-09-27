.class final Lcom/fyber/ads/videos/g;
.super Ljava/lang/Object;
.source "RewardedVideoClient.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/c;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/c;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/fyber/ads/videos/g;->a:Lcom/fyber/ads/videos/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    .line 189
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 205
    const-string v0, "RewardedVideoClient"

    const-string v1, "Unknown message what field"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 191
    :sswitch_0
    iget-object v0, p0, Lcom/fyber/ads/videos/g;->a:Lcom/fyber/ads/videos/c;

    invoke-static {v0}, Lcom/fyber/ads/videos/c;->c(Lcom/fyber/ads/videos/c;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/fyber/ads/videos/g;->a:Lcom/fyber/ads/videos/c;

    invoke-static {v1}, Lcom/fyber/ads/videos/c;->c(Lcom/fyber/ads/videos/c;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {}, Lcom/fyber/utils/j;->d()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 195
    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/fyber/ads/videos/g;->a:Lcom/fyber/ads/videos/c;

    invoke-static {v0}, Lcom/fyber/ads/videos/c;->d(Lcom/fyber/ads/videos/c;)Landroid/webkit/WebView;

    .line 197
    iget-object v0, p0, Lcom/fyber/ads/videos/g;->a:Lcom/fyber/ads/videos/c;

    invoke-static {v0}, Lcom/fyber/ads/videos/c;->e(Lcom/fyber/ads/videos/c;)Lcom/fyber/ads/videos/RewardedVideoActivity;

    goto :goto_0

    .line 202
    :sswitch_1
    iget-object v0, p0, Lcom/fyber/ads/videos/g;->a:Lcom/fyber/ads/videos/c;

    invoke-static {v0}, Lcom/fyber/ads/videos/c;->f(Lcom/fyber/ads/videos/c;)V

    goto :goto_0

    .line 189
    :sswitch_data_0
    .sparse-switch
        0x7b -> :sswitch_0
        0x20a -> :sswitch_1
    .end sparse-switch
.end method
