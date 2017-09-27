.class final Lcom/fyber/ads/videos/player/e;
.super Ljava/lang/Object;
.source "NativeVideoPlayerMicroBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/player/c;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/player/c;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/fyber/ads/videos/player/e;->a:Lcom/fyber/ads/videos/player/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/fyber/ads/videos/player/e;->a:Lcom/fyber/ads/videos/player/c;

    invoke-static {v0}, Lcom/fyber/ads/videos/player/c;->c(Lcom/fyber/ads/videos/player/c;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 154
    return-void
.end method
