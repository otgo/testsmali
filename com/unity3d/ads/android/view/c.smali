.class final Lcom/unity3d/ads/android/view/c;
.super Ljava/lang/Object;
.source "UnityAdsMainView.java"

# interfaces
.implements Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWebAppLoaded()V
    .locals 2

    .prologue
    .line 100
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->initWebApp(Lorg/json/JSONObject;)V

    .line 101
    return-void
.end method
