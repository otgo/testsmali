.class public Lcom/unity3d/ads/android/view/UnityAdsMainView;
.super Landroid/widget/RelativeLayout;
.source "UnityAdsMainView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field public static webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;


# instance fields
.field private a:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

.field private b:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

.field public videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .line 35
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .line 36
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->WebView:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    .line 48
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .line 35
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .line 36
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->WebView:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    .line 53
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .line 35
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .line 36
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->WebView:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    .line 59
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .line 35
    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .line 36
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->WebView:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    .line 41
    iput-object p2, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .line 42
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a()V

    .line 43
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 163
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 164
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    iget-object v1, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->a:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebBridgeListener(Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;)V

    .line 165
    new-instance v0, Lcom/unity3d/ads/android/view/f;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/view/f;-><init>(Lcom/unity3d/ads/android/view/UnityAdsMainView;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->post(Ljava/lang/Runnable;)Z

    .line 171
    return-void
.end method

.method static synthetic a(Lcom/unity3d/ads/android/view/UnityAdsMainView;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 25
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-static {v0}, Lcom/unity3d/ads/android/view/UnityAdsViewUtils;->removeViewFromParent(Landroid/view/View;)V

    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public static initWebView()V
    .locals 5

    .prologue
    .line 89
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-static {v0}, Lcom/unity3d/ads/android/view/UnityAdsViewUtils;->removeViewFromParent(Landroid/view/View;)V

    .line 91
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->destroy()V

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    .line 95
    :cond_0
    const-string v0, "Initing WebView"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    new-instance v2, Lcom/unity3d/ads/android/view/c;

    invoke-direct {v2}, Lcom/unity3d/ads/android/view/c;-><init>()V

    new-instance v3, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    new-instance v4, Lcom/unity3d/ads/android/view/d;

    invoke-direct {v4}, Lcom/unity3d/ads/android/view/d;-><init>()V

    invoke-direct {v3, v4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;-><init>(Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;-><init>(Landroid/content/Context;Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;)V

    sput-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    .line 158
    return-void
.end method


# virtual methods
.method public destroyVideoPlayerView()V
    .locals 1

    .prologue
    .line 174
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 176
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->clearVideoPlayer()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/view/UnityAdsViewUtils;->removeViewFromParent(Landroid/view/View;)V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .line 181
    return-void
.end method

.method public getViewState()Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    return-object v0
.end method

.method public setViewState(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 66
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    invoke-virtual {v0, p1}, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iput-object p1, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    .line 69
    sget-object v0, Lcom/unity3d/ads/android/view/g;->a:[I

    invoke-virtual {p1}, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 71
    :pswitch_0
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-static {v0}, Lcom/unity3d/ads/android/view/UnityAdsViewUtils;->removeViewFromParent(Landroid/view/View;)V

    .line 72
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 75
    :pswitch_1
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->addView(Landroid/view/View;)V

    .line 77
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
