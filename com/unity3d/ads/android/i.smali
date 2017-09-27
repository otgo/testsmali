.class final Lcom/unity3d/ads/android/i;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1244
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1273
    :goto_0
    return-void

    .line 1248
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->m()Z

    .line 1250
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1253
    :try_start_0
    const-string v1, "action"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1259
    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v1, v1, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    if-eqz v1, :cond_1

    .line 1260
    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v1, v1, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v2, "none"

    invoke-virtual {v1, v2, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1263
    :cond_1
    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    if-eqz v1, :cond_2

    .line 1264
    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->mainview:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    invoke-virtual {v1, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->closeAds(Lorg/json/JSONObject;)V

    .line 1267
    :cond_2
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->n()Z

    .line 1269
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->d()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1270
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->d()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/ads/android/IUnityAdsListener;->onHide()V

    .line 1272
    :cond_3
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->o()V

    goto :goto_0

    .line 1256
    :catch_0
    move-exception v0

    goto :goto_0
.end method
