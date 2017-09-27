.class public Lcom/unity3d/ads/android/webapp/UnityAdsWebView;
.super Landroid/webkit/WebView;
.source "UnityAdsWebView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

.field private c:Z

.field private d:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->a:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->b:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->c:Z

    .line 38
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->d:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    .line 39
    const-string v0, "start"

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->e:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading WebView from URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->WEBVIEW_BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->WEBVIEW_BASE_URL:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p3}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->a(Ljava/lang/String;Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->a:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->b:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->c:Z

    .line 38
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->d:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    .line 39
    const-string v0, "start"

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->e:Ljava/lang/String;

    .line 62
    invoke-direct {p0, p2, p3, p4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->a(Ljava/lang/String;Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->a:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->b:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->c:Z

    .line 38
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->d:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    .line 39
    const-string v0, "start"

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->e:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->a:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->b:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->c:Z

    .line 38
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->d:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    .line 39
    const-string v0, "start"

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->e:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->a:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->b:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->c:Z

    .line 38
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->d:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    .line 39
    const-string v0, "start"

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->e:Ljava/lang/String;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;)Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->b:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 188
    iput-object p2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->b:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    .line 189
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->a:Ljava/lang/String;

    .line 190
    iput-object p3, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->d:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    .line 191
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->a:Ljava/lang/String;

    const-string v4, "_raw.html"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_2

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const-string v0, "LOAD_NO_CACHE"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p0, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setClickable(Z)V

    invoke-virtual {p0, v3}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setInitialScale(I)V

    const/high16 v4, -0x1000000

    invoke-virtual {p0, v4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setBackgroundColor(I)V

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setBackgroundResource(I)V

    new-instance v1, Lcom/unity3d/ads/android/webapp/o;

    invoke-direct {v1, p0, v2}, Lcom/unity3d/ads/android/webapp/o;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;B)V

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v1, Lcom/unity3d/ads/android/webapp/n;

    invoke-direct {v1, p0, v2}, Lcom/unity3d/ads/android/webapp/n;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;B)V

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x7

    if-gt v1, v4, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-wide/32 v4, 0xa00000

    invoke-virtual {v1, v4, v5}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    :cond_0
    const-string v0, "Adding javascript interface"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->d:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    const-string v1, "unityadsnativebridge"

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->loadUrl(Ljava/lang/String;)V

    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 195
    new-instance v0, Lcom/unity3d/ads/android/webapp/l;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/webapp/l;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 201
    invoke-virtual {p0, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setLongClickable(Z)V

    .line 203
    :cond_1
    return-void

    .line 191
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-ge v0, v4, :cond_3

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto/16 :goto_0

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;)Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->c:Z

    return v0
.end method


# virtual methods
.method public clearWebView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->c:Z

    .line 67
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->b:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    .line 68
    invoke-virtual {p0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 70
    return-void
.end method

.method public getWebViewCurrentView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->e:Ljava/lang/String;

    return-object v0
.end method

.method public initWebApp(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->isWebAppLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 143
    :try_start_0
    const-string v0, "campaignData"

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v0, "platform"

    const-string v4, "android"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAdvertisingTrackingId()Ljava/lang/String;

    move-result-object v4

    .line 147
    if-eqz v4, :cond_4

    .line 148
    const-string v5, "trackingEnabled"

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsUtils;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v5, "advertisingTrackingId"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v0, "rawAdvertisingTrackingId"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    :cond_0
    :goto_1
    const-string v0, "sdkVersion"

    const-string v4, "1407"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v0, "gameId"

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAME_ID:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v0, "screenDensity"

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getScreenDensity()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 163
    const-string v0, "screenSize"

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getScreenSize()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    const-string v0, "zones"

    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getZonesJson()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 167
    const-string v0, "unityVersion"

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    :cond_1
    const-string v0, "softwareVersion"

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v0, "deviceType"

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getDeviceType()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    const-string v0, "%s%s(%s);"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "javascript:unityads."

    aput-object v5, v4, v1

    const-string v1, "init"

    aput-object v1, v4, v2

    const/4 v1, 0x2

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initializing WebView with JS call: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 181
    new-instance v1, Lcom/unity3d/ads/android/webapp/m;

    invoke-direct {v1, p0, v0, p0}, Lcom/unity3d/ads/android/webapp/m;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 183
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v2

    .line 148
    goto/16 :goto_0

    .line 154
    :cond_4
    :try_start_1
    const-string v0, "unknown"

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const-string v0, "androidId"

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v0, "rawAndroidId"

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 175
    :catch_0
    move-exception v0

    const-string v0, "Error creating webview init params"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public isWebAppLoaded()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->c:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 283
    packed-switch p1, :pswitch_data_0

    .line 291
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 285
    :pswitch_0
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 286
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->b:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->b:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    invoke-interface {v0, p0}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;->onBackButtonClicked(Landroid/view/View;)V

    .line 288
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->isWebAppLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const-string v0, "{}"

    .line 128
    if-eqz p2, :cond_0

    .line 129
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_0
    const-string v1, "%s%s(\"%s\", %s);"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "javascript:unityads."

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "handleNativeEvent"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Send native event to WebApp: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 133
    new-instance v1, Lcom/unity3d/ads/android/webapp/m;

    invoke-direct {v1, p0, v0, p0}, Lcom/unity3d/ads/android/webapp/m;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 135
    :cond_1
    return-void
.end method

.method public setRenderMode(I)V
    .locals 5

    .prologue
    .line 271
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 272
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    const-string v0, "Could not invoke setLayerType"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setWebViewCurrentView(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 82
    return-void
.end method

.method public setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->isWebAppLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const-string v0, "{}"

    .line 88
    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_0
    const-string v1, "%s%s(\"%s\", %s);"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "javascript:unityads."

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, "setView"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 92
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->e:Ljava/lang/String;

    .line 93
    new-instance v1, Lcom/unity3d/ads/android/webapp/m;

    invoke-direct {v1, p0, v0, p0}, Lcom/unity3d/ads/android/webapp/m;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Send change view to WebApp: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 96
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getBaseActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    const-string v0, "test"

    .line 99
    :try_start_0
    const-string v1, "action"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dataHasApiActionKey="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "action"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "actionEqualsWebViewApiOpen="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "open"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isDebuggable="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getBaseActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "runWebViewTests="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->RUN_WEBVIEW_TESTS:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "testJavaScriptContents="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_JAVASCRIPT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 110
    const-string v1, "action"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "open"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getBaseActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->RUN_WEBVIEW_TESTS:Ljava/lang/Boolean;

    .line 114
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_JAVASCRIPT:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Running test-javascript: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_JAVASCRIPT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 117
    new-instance v0, Lcom/unity3d/ads/android/webapp/m;

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_JAVASCRIPT:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p0}, Lcom/unity3d/ads/android/webapp/m;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 118
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->RUN_WEBVIEW_TESTS:Ljava/lang/Boolean;

    .line 122
    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method
