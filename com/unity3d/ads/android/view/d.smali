.class final Lcom/unity3d/ads/android/view/d;
.super Ljava/lang/Object;
.source "UnityAdsMainView.java"

# interfaces
.implements Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCloseAdsView(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public final onLaunchIntent(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public final onOpenPlayStore(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public final onOrientationRequest(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public final onPauseVideo(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public final onPlayVideo(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public final onWebAppInitComplete(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 117
    const-string v0, "WebView reported WebAppInitComplete"

    .line 118
    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_0
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 122
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->hasViewableAds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 126
    :try_start_0
    const-string v2, "action"

    const-string v3, "initComplete"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v2, "none"

    invoke-virtual {v0, v2, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 135
    new-instance v0, Lcom/unity3d/ads/android/view/e;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/view/e;-><init>(Lcom/unity3d/ads/android/view/d;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 147
    :cond_1
    return-void

    .line 129
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public final onWebAppLoadComplete(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method
