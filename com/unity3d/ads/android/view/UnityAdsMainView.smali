.class public Lcom/unity3d/ads/android/view/UnityAdsMainView;
.super Landroid/widget/RelativeLayout;
.source "UnityAdsMainView.java"

# interfaces
.implements Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;
.implements Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# instance fields
.field private a:Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;

.field private b:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

.field private c:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

.field public videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

.field public webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .line 43
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    .line 46
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a:Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;

    .line 47
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->b:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .line 48
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->WebView:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->c:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    .line 61
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .line 43
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    .line 46
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a:Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;

    .line 47
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->b:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .line 48
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->WebView:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->c:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    .line 66
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .line 43
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    .line 46
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a:Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;

    .line 47
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->b:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .line 48
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->WebView:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->c:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    .line 72
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .line 43
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    .line 46
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a:Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;

    .line 47
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->b:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .line 48
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->WebView:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->c:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    .line 53
    iput-object p2, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a:Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;

    .line 54
    iput-object p3, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->b:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .line 55
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a()V

    .line 56
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 171
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 172
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->setId(I)V

    .line 173
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    iget-object v3, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->b:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    invoke-direct {v2, v3}, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;-><init>(Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;-><init>(Landroid/app/Activity;Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setId(I)V

    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    return-void
.end method

.method private static a(Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 200
    if-eqz p0, :cond_0

    .line 201
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 202
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 205
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 208
    :cond_0
    return-void
.end method

.method private a(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;)V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a:Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a:Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;

    invoke-interface {v0, p1}, Lcom/unity3d/ads/android/view/IUnityAdsMainViewListener;->onMainViewAction(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;)V

    .line 222
    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 177
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 179
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->clearVideoPlayer()V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a(Landroid/view/View;)V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .line 184
    return-void
.end method

.method private static b(Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 211
    if-eqz p0, :cond_0

    .line 212
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 213
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 214
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 216
    :cond_0
    return-void
.end method


# virtual methods
.method public afterVideoPlaybackOperations()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setKeepScreenOn(Z)V

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->b()V

    .line 144
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->WebView:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->setViewState(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;)V

    .line 146
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_1

    .line 148
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 150
    :cond_1
    return-void
.end method

.method public closeAds(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 105
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->b()V

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 111
    return-void
.end method

.method public fixActivityAttachment()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 96
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 99
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    return-void
.end method

.method public getViewState()Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->c:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 165
    invoke-static {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->b(Landroid/view/View;)V

    .line 166
    return-void
.end method

.method public onBackButtonClicked(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->c:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Seconds: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getSecondsUntilBackButtonAllowed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 234
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 235
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->c:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->VideoPlayer:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->c:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->VideoPlayer:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .line 237
    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getSecondsUntilBackButtonAllowed()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->c:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->VideoPlayer:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    if-ne v0, v1, :cond_4

    .line 238
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->disableBackButtonForSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 239
    :cond_3
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->BackButtonPressed:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    invoke-direct {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_4
    const-string v0, "Prevented back-button"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 300
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 301
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->afterVideoPlaybackOperations()V

    .line 302
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->End:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->onEventPositionReached(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)V

    .line 304
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 307
    :try_start_0
    const-string v1, "campaignId"

    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    iget-object v1, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v2, "videoCompleted"

    invoke-virtual {v1, v2, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 314
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->VideoEnd:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    invoke-direct {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;)V

    .line 315
    return-void

    .line 310
    :catch_0
    move-exception v1

    const-string v1, "Could not create JSON"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEventPositionReached(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)V
    .locals 2

    .prologue
    .line 294
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignStatus()Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0, v1, p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->sendCampaignViewProgress(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)Z

    .line 296
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 154
    packed-switch p1, :pswitch_data_0

    .line 160
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 156
    :pswitch_0
    invoke-virtual {p0, p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->onBackButtonClicked(Landroid/view/View;)V

    .line 157
    const/4 v0, 0x1

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onVideoHidden()V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setKeepScreenOn(Z)V

    .line 370
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->hideVideo()V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .line 374
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->WebView:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->setViewState(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;)V

    .line 376
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_1

    .line 378
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 381
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 383
    :try_start_0
    const-string v1, "campaignId"

    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    iget-object v1, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v2, "videoCompleted"

    invoke-virtual {v1, v2, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 390
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->VideoSkipped:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    invoke-direct {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;)V

    .line 391
    return-void

    .line 386
    :catch_0
    move-exception v1

    const-string v1, "Could not create JSON"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onVideoPlaybackError()V
    .locals 5

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->afterVideoPlaybackOperations()V

    .line 320
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 321
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    const-string v1, "videoError"

    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->sendAnalyticsRequest(Ljava/lang/String;Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    .line 323
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 324
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 325
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 328
    :try_start_0
    const-string v3, "textKey"

    const-string v4, "videoPlaybackError"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    const-string v3, "textKey"

    const-string v4, "buffering"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    const-string v3, "campaignId"

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v4}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    iget-object v3, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    if-eqz v3, :cond_0

    .line 337
    iget-object v3, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v4, "completed"

    invoke-virtual {v3, v4, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 339
    iget-object v3, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v4, "showError"

    invoke-virtual {v3, v4, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 340
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v3, "videoCompleted"

    invoke-virtual {v0, v3, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 341
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v2, "hideSpinner"

    invoke-virtual {v0, v2, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 344
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v0, :cond_1

    .line 345
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    sget-object v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->setCampaignStatus(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;)V

    .line 346
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 348
    :cond_1
    return-void

    .line 333
    :catch_0
    move-exception v3

    const-string v3, "Could not create JSON"

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onVideoPlaybackStarted()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 251
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 252
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 255
    :try_start_0
    const-string v0, "campaignId"

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v4}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v0, "textKey"

    const-string v4, "buffering"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->VideoStart:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    invoke-direct {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;)V

    .line 263
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->bringChildToFront(Landroid/view/View;)V

    .line 266
    const/4 v0, 0x6

    .line 268
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-ge v4, v5, :cond_0

    move v0, v1

    .line 271
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v4

    .line 272
    invoke-virtual {v4}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->useDeviceOrientationForVideo()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 273
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 276
    const/4 v0, -0x1

    .line 279
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 280
    if-eqz v1, :cond_2

    .line 281
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->b(Landroid/view/View;)V

    .line 286
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    if-eqz v0, :cond_3

    .line 287
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v1, "hideSpinner"

    invoke-virtual {v0, v1, v3}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 288
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v1, "completed"

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 290
    :cond_3
    return-void

    .line 259
    :catch_0
    move-exception v0

    const-string v0, "Could not create JSON"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onVideoSkip()V
    .locals 3

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->afterVideoPlaybackOperations()V

    .line 352
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 355
    :try_start_0
    const-string v1, "campaignId"

    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    iget-object v1, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v2, "videoCompleted"

    invoke-virtual {v1, v2, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 362
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->VideoSkipped:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    invoke-direct {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;)V

    .line 363
    return-void

    .line 358
    :catch_0
    move-exception v1

    const-string v1, "Could not create JSON"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWebAppLoaded()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    sget-object v1, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->initWebApp(Lorg/json/JSONObject;)V

    .line 397
    return-void
.end method

.method public openAds(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 79
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-virtual {v0, p1, p2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 82
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 86
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    :cond_1
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->WebView:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->setViewState(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_2
    const-string v0, "Cannot open, wrong activity"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setViewState(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 114
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->c:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    invoke-virtual {v0, p1}, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iput-object p1, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->c:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    .line 117
    sget-object v0, Lcom/unity3d/ads/android/view/a;->a:[I

    invoke-virtual {p1}, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-static {v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a(Landroid/view/View;)V

    .line 120
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-static {v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->b(Landroid/view/View;)V

    goto :goto_0

    .line 124
    :pswitch_1
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;-><init>(Landroid/content/Context;Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setId(I)V

    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->addView(Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->bringChildToFront(Landroid/view/View;)V

    .line 127
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-static {v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->b(Landroid/view/View;)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
