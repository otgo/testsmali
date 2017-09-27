.class final Lcom/fyber/ads/videos/player/d;
.super Landroid/webkit/WebViewClient;
.source "NativeVideoPlayerMicroBrowser.java"


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/player/c;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/player/c;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/fyber/ads/videos/player/d;->a:Lcom/fyber/ads/videos/player/c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/fyber/ads/videos/player/d;->a:Lcom/fyber/ads/videos/player/c;

    invoke-static {v1}, Lcom/fyber/ads/videos/player/c;->b(Lcom/fyber/ads/videos/player/c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/fyber/ads/videos/player/d;->a:Lcom/fyber/ads/videos/player/c;

    invoke-static {v0}, Lcom/fyber/ads/videos/player/c;->a(Lcom/fyber/ads/videos/player/c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fyber/ads/videos/player/d;->a:Lcom/fyber/ads/videos/player/c;

    invoke-static {v0}, Lcom/fyber/ads/videos/player/c;->a(Lcom/fyber/ads/videos/player/c;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_LOADING_MESSAGE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v1}, Lcom/fyber/utils/r;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const/4 v0, 0x0

    return v0
.end method
