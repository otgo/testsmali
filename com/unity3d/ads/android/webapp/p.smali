.class final Lcom/unity3d/ads/android/webapp/p;
.super Landroid/webkit/WebViewClient;
.source "UnityAdsWebView.java"


# instance fields
.field final synthetic a:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;


# direct methods
.method private constructor <init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/p;->a:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;B)V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/unity3d/ads/android/webapp/p;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 275
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finished url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/p;->a:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-static {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->a(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;)Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/p;->a:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-static {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->b(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/p;->a:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-static {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->c(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;)Z

    .line 279
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/p;->a:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-static {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->a(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;)Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;->onWebAppLoaded()V

    .line 281
    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 292
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying to load url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 286
    const/4 v0, 0x0

    return v0
.end method
