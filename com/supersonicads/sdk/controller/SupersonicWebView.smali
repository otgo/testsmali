.class public Lcom/supersonicads/sdk/controller/SupersonicWebView;
.super Landroid/webkit/WebView;
.source "SupersonicWebView.java"

# interfaces
.implements Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonicads/sdk/controller/SupersonicWebView$7;,
        Lcom/supersonicads/sdk/controller/SupersonicWebView$State;,
        Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;,
        Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;,
        Lcom/supersonicads/sdk/controller/SupersonicWebView$FrameBustWebViewClient;,
        Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;,
        Lcom/supersonicads/sdk/controller/SupersonicWebView$ViewClient;,
        Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;
    }
.end annotation


# static fields
.field public static APP_IDS:Ljava/lang/String;

.field public static DISPLAY_WEB_VIEW_INTENT:I

.field public static EXTERNAL_URL:Ljava/lang/String;

.field public static IS_INSTALLED:Ljava/lang/String;

.field public static IS_STORE:Ljava/lang/String;

.field public static IS_STORE_CLOSE:Ljava/lang/String;

.field private static JSON_KEY_FAIL:Ljava/lang/String;

.field private static JSON_KEY_SUCCESS:Ljava/lang/String;

.field public static OPEN_URL_INTENT:I

.field public static REQUEST_ID:Ljava/lang/String;

.field public static RESULT:Ljava/lang/String;

.field public static SECONDARY_WEB_VIEW:Ljava/lang/String;

.field public static WEBVIEW_TYPE:Ljava/lang/String;

.field public static mDebugMode:I

.field public static mDownloadDomain:Ljava/lang/String;


# instance fields
.field private final GENERIC_MESSAGE:Ljava/lang/String;

.field private PUB_TAG:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

.field private isKitkatAndAbove:Ljava/lang/Boolean;

.field private isRemoveCloseEventHandler:Z

.field private mBCAppKey:Ljava/lang/String;

.field private mBCUserId:Ljava/lang/String;

.field private mCacheDirectory:Ljava/lang/String;

.field private mChangeListener:Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;

.field private mCloseEventTimer:Landroid/os/CountDownTimer;

.field private mConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private mControllerKeyPressed:Ljava/lang/String;

.field private mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mExtraParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalControllerTimeFinish:Z

.field private mGlobalControllerTimer:Landroid/os/CountDownTimer;

.field private mHiddenForceCloseHeight:I

.field private mHiddenForceCloseLocation:Ljava/lang/String;

.field private mHiddenForceCloseWidth:I

.field private mISAppKey:Ljava/lang/String;

.field private mISExtraParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mISUserId:Ljava/lang/String;

.field private mISmiss:Z

.field private mIsInterstitialAvailable:Ljava/lang/Boolean;

.field private mLayout:Landroid/widget/FrameLayout;

.field private mLoadControllerTimer:Landroid/os/CountDownTimer;

.field private mOWAppKey:Ljava/lang/String;

.field private mOWCreditsAppKey:Ljava/lang/String;

.field private mOWCreditsMiss:Z

.field private mOWCreditsUserId:Ljava/lang/String;

.field private mOWUserId:Ljava/lang/String;

.field private mOWmiss:Z

.field private mOnGenericFunctionListener:Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;

.field private mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

.field private mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

.field private mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

.field private mOrientationState:Ljava/lang/String;

.field private mRVmiss:Z

.field private mRequestParameters:Ljava/lang/String;

.field private mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

.field private mSavedStateLocker:Ljava/lang/Object;

.field private mState:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

.field private mUri:Landroid/net/Uri;

.field private mVideoEventsListener:Lcom/supersonicads/sdk/controller/VideoEventsListener;

.field private mWebChromeClient:Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    const-string v0, "http://s.ssacdn.com/"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mDownloadDomain:Ljava/lang/String;

    .line 93
    sput v1, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mDebugMode:I

    .line 117
    const-string v0, "is_store"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->IS_STORE:Ljava/lang/String;

    .line 118
    const-string v0, "is_store_close"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->IS_STORE_CLOSE:Ljava/lang/String;

    .line 119
    const-string v0, "webview_type"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->WEBVIEW_TYPE:Ljava/lang/String;

    .line 120
    const-string v0, "external_url"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->EXTERNAL_URL:Ljava/lang/String;

    .line 121
    const-string v0, "secondary_web_view"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    .line 122
    sput v1, Lcom/supersonicads/sdk/controller/SupersonicWebView;->DISPLAY_WEB_VIEW_INTENT:I

    .line 123
    const/4 v0, 0x1

    sput v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->OPEN_URL_INTENT:I

    .line 124
    const-string v0, "appIds"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->APP_IDS:Ljava/lang/String;

    .line 125
    const-string v0, "requestId"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->REQUEST_ID:Ljava/lang/String;

    .line 126
    const-string v0, "isInstalled"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->IS_INSTALLED:Ljava/lang/String;

    .line 127
    const-string v0, "result"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->RESULT:Ljava/lang/String;

    .line 2841
    const-string v0, "success"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->JSON_KEY_SUCCESS:Ljava/lang/String;

    .line 2842
    const-string v0, "fail"

    sput-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->JSON_KEY_FAIL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x32

    const/4 v2, 0x0

    .line 185
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 88
    const-class v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    .line 89
    const-string v0, "Supersonic"

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->PUB_TAG:Ljava/lang/String;

    .line 95
    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->GENERIC_MESSAGE:Ljava/lang/String;

    .line 108
    iput-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;

    .line 143
    const-string v0, "interrupt"

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerKeyPressed:Ljava/lang/String;

    .line 150
    iput v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseWidth:I

    .line 151
    iput v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseHeight:I

    .line 152
    const-string v0, "top-right"

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseLocation:Ljava/lang/String;

    .line 170
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->None:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    .line 172
    iput-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->isKitkatAndAbove:Ljava/lang/Boolean;

    .line 181
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedStateLocker:Ljava/lang/Object;

    .line 3406
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$6;

    invoke-direct {v0, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$6;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 188
    new-instance v0, Lcom/supersonicads/sdk/data/AdUnitsState;

    invoke-direct {v0}, Lcom/supersonicads/sdk/data/AdUnitsState;-><init>()V

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    .line 190
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v1, "C\'tor"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initLayout(Landroid/content/Context;)V

    .line 193
    invoke-static {p1}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->initializeCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;

    invoke-static {v0}, Lcom/supersonicads/sdk/precache/DownloadManager;->getInstance(Ljava/lang/String;)Lcom/supersonicads/sdk/precache/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    .line 196
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    invoke-virtual {v0, p0}, Lcom/supersonicads/sdk/precache/DownloadManager;->setOnPreCacheCompletion(Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;)V

    .line 198
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;

    invoke-direct {v0, p0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/controller/SupersonicWebView$1;)V

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mWebChromeClient:Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;

    .line 200
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ViewClient;

    invoke-direct {v0, p0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView$ViewClient;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/controller/SupersonicWebView$1;)V

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 201
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mWebChromeClient:Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 203
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setWebViewSettings()V

    .line 205
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

    invoke-direct {v0, p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/content/Context;)V

    const-string v1, "Android"

    invoke-virtual {p0, v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 209
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;

    invoke-direct {v0, p0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/controller/SupersonicWebView$1;)V

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 211
    return-void
.end method

.method static synthetic access$1000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;)Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mGlobalControllerTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mLoadControllerTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mRVmiss:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mBCAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mBCUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mExtraParameters:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISmiss:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWmiss:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnOfferWallListener;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsMiss:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->sendProductErrorMessage(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->extractFailFunctionToCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/content/Context;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getDeviceParams(Landroid/content/Context;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)I
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseWidth:I

    return v0
.end method

.method static synthetic access$4000(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/supersonicads/sdk/controller/SupersonicWebView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseWidth:I

    return p1
.end method

.method static synthetic access$4100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getApplicationParams(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getAppsStatus(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/precache/DownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/SupersonicWebView$State;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mState:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->closeWebView()V

    return-void
.end method

.method static synthetic access$4900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mChangeListener:Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)I
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseHeight:I

    return v0
.end method

.method static synthetic access$5000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->PUB_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/supersonicads/sdk/controller/SupersonicWebView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseHeight:I

    return p1
.end method

.method static synthetic access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnGenericFunctionListener:Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setWebviewBackground(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Ljava/lang/String;
    .param p9, "x9"    # Ljava/lang/String;
    .param p10, "x10"    # Z

    .prologue
    .line 83
    invoke-direct/range {p0 .. p10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/VideoEventsListener;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mVideoEventsListener:Lcom/supersonicads/sdk/controller/VideoEventsListener;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->isKitkatAndAbove:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->isKitkatAndAbove:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->evaluateJavascriptKitKat(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mHiddenForceCloseLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->isRemoveCloseEventHandler:Z

    return v0
.end method

.method static synthetic access$702(Lcom/supersonicads/sdk/controller/SupersonicWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->isRemoveCloseEventHandler:Z

    return p1
.end method

.method static synthetic access$800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCloseEventTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCloseEventTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$902(Lcom/supersonicads/sdk/controller/SupersonicWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mGlobalControllerTimeFinish:Z

    return p1
.end method

.method private closeWebView()V
    .locals 1

    .prologue
    .line 2833
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mChangeListener:Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;

    if-eqz v0, :cond_0

    .line 2834
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mChangeListener:Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;

    invoke-interface {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;->onHide()V

    .line 2836
    :cond_0
    return-void
.end method

.method private createInitProductJSMethod(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V
    .locals 14
    .param p1, "type"    # Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    .prologue
    const/4 v7, 0x0

    .line 2506
    const/4 v13, 0x0

    .line 2508
    .local v13, "script":Ljava/lang/String;
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_2

    .line 2509
    const-string v0, "initBrandConnect"

    const-string v1, "onInitBrandConnectSuccess"

    const-string v2, "onInitBrandConnectFail"

    invoke-direct {p0, v0, v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2535
    :cond_0
    :goto_0
    if-eqz v13, :cond_1

    .line 2536
    invoke-direct {p0, v13}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2537
    :cond_1
    return-void

    .line 2511
    :cond_2
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_4

    .line 2514
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 2515
    .local v11, "interstitialParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "applicationKey"

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISAppKey:Ljava/lang/String;

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2516
    const-string v0, "applicationUserId"

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISUserId:Ljava/lang/String;

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2517
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISExtraParameters:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 2518
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISExtraParameters:Ljava/util/Map;

    invoke-interface {v11, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2521
    :cond_3
    invoke-direct {p0, v11}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 2522
    .local v12, "params":Ljava/lang/String;
    const-string v0, "initInterstitial"

    const-string v1, "onInitInterstitialSuccess"

    const-string v2, "onInitInterstitialFail"

    invoke-direct {p0, v0, v12, v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2524
    goto :goto_0

    .end local v11    # "interstitialParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "params":Ljava/lang/String;
    :cond_4
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_5

    .line 2525
    const-string v0, "showOfferWall"

    const-string v1, "onShowOfferWallSuccess"

    const-string v2, "onShowOfferWallFail"

    invoke-direct {p0, v0, v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 2527
    :cond_5
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_0

    .line 2528
    const-string v1, "productType"

    const-string v2, "OfferWall"

    const-string v3, "applicationKey"

    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsAppKey:Ljava/lang/String;

    const-string v5, "applicationUserId"

    iget-object v6, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsUserId:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v0, p0

    move-object v8, v7

    move-object v9, v7

    invoke-direct/range {v0 .. v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 2532
    .restart local v12    # "params":Ljava/lang/String;
    const-string v0, "getUserCredits"

    const-string v1, "null"

    const-string v2, "onGetUserCreditsFail"

    invoke-direct {p0, v0, v12, v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_0
.end method

.method private evaluateJavascriptKitKat(Ljava/lang/String;)V
    .locals 1
    .param p1, "script"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 2757
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 2758
    return-void
.end method

.method private extractFailFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 2897
    new-instance v1, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2898
    .local v1, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    sget-object v2, Lcom/supersonicads/sdk/controller/SupersonicWebView;->JSON_KEY_FAIL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2900
    .local v0, "funToCall":Ljava/lang/String;
    return-object v0
.end method

.method private extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 2889
    new-instance v1, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2890
    .local v1, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    sget-object v2, Lcom/supersonicads/sdk/controller/SupersonicWebView;->JSON_KEY_SUCCESS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2892
    .local v0, "funToCall":Ljava/lang/String;
    return-object v0
.end method

.method private flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2540
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2541
    .local v2, "jsObj":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 2542
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2543
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2544
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2546
    .local v3, "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2550
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2547
    :catch_0
    move-exception v0

    .line 2548
    .local v0, "e":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flatMapToJsonAsStringfailed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2554
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private generateJSToInject(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "funToCall"    # Ljava/lang/String;

    .prologue
    .line 3606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3607
    .local v0, "script":Ljava/lang/StringBuilder;
    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3608
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "funToCall"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;

    .prologue
    .line 3612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3614
    .local v0, "script":Ljava/lang/StringBuilder;
    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?parameters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3615
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "funToCall"    # Ljava/lang/String;
    .param p2, "successFunc"    # Ljava/lang/String;
    .param p3, "failFunc"    # Ljava/lang/String;

    .prologue
    .line 3620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3622
    .local v0, "script":Ljava/lang/StringBuilder;
    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3624
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "funToCall"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "successFunc"    # Ljava/lang/String;
    .param p4, "failFunc"    # Ljava/lang/String;

    .prologue
    .line 3629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3631
    .local v0, "script":Ljava/lang/StringBuilder;
    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?parameters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3634
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getApplicationParams(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 13
    .param p1, "productType"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 3116
    const/4 v3, 0x0

    .line 3118
    .local v3, "fail":Z
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 3120
    .local v5, "jsObj":Lorg/json/JSONObject;
    const-string v0, ""

    .line 3121
    .local v0, "appKey":Ljava/lang/String;
    const-string v7, ""

    .line 3125
    .local v7, "userId":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 3127
    sget-object v8, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v8}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3128
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mBCAppKey:Ljava/lang/String;

    .line 3129
    iget-object v7, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mBCUserId:Ljava/lang/String;

    .line 3141
    :cond_0
    :goto_0
    :try_start_0
    const-string v8, "productType"

    invoke-virtual {v5, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3157
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 3159
    :try_start_1
    const-string v8, "applicationUserId"

    invoke-static {v8}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3172
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 3174
    :try_start_2
    const-string v8, "applicationKey"

    invoke-static {v8}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 3186
    :goto_3
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mExtraParameters:Ljava/util/Map;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mExtraParameters:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 3188
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mExtraParameters:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3190
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "sdkWebViewCache"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3191
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setWebviewCache(Ljava/lang/String;)V

    .line 3195
    :cond_1
    :try_start_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 3196
    :catch_0
    move-exception v1

    .line 3197
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3198
    new-instance v8, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v8}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v9, v12, [Ljava/lang/String;

    const-string v10, "https://www.supersonicads.com/mobile/sdk5/log?method=extraParametersToJson"

    aput-object v10, v9, v11

    invoke-virtual {v8, v9}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4

    .line 3131
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    sget-object v8, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v8}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3132
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISAppKey:Ljava/lang/String;

    .line 3133
    iget-object v7, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISUserId:Ljava/lang/String;

    goto/16 :goto_0

    .line 3135
    :cond_3
    sget-object v8, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v8}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3136
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWAppKey:Ljava/lang/String;

    .line 3137
    iget-object v7, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWUserId:Ljava/lang/String;

    goto/16 :goto_0

    .line 3147
    :catch_1
    move-exception v1

    .line 3148
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3149
    new-instance v8, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v8}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v9, v12, [Ljava/lang/String;

    const-string v10, "https://www.supersonicads.com/mobile/sdk5/log?method=noProductType"

    aput-object v10, v9, v11

    invoke-virtual {v8, v9}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 3153
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_4
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 3163
    :catch_2
    move-exception v1

    .line 3164
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3165
    new-instance v8, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v8}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v9, v12, [Ljava/lang/String;

    const-string v10, "https://www.supersonicads.com/mobile/sdk5/log?method=encodeAppUserId"

    aput-object v10, v9, v11

    invoke-virtual {v8, v9}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 3168
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_5
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 3177
    :catch_3
    move-exception v1

    .line 3178
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3179
    new-instance v8, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v8}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v9, v12, [Ljava/lang/String;

    const-string v10, "https://www.supersonicads.com/mobile/sdk5/log?method=encodeAppKey"

    aput-object v10, v9, v11

    invoke-virtual {v8, v9}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_3

    .line 3182
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 3203
    :cond_7
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/Object;

    .line 3204
    .local v6, "result":[Ljava/lang/Object;
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v11

    .line 3205
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v12

    .line 3207
    return-object v6
.end method

.method private getAppsStatus(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 20
    .param p1, "appIds"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 3212
    const/4 v8, 0x0

    .line 3214
    .local v8, "fail":Z
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 3217
    .local v17, "result":Lorg/json/JSONObject;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    const-string v18, "null"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 3218
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, "null"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 3219
    invoke-direct/range {p0 .. p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    .line 3220
    .local v6, "ctx":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 3221
    .local v16, "pm":Landroid/content/pm/PackageManager;
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v15

    .line 3224
    .local v15, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v4, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3226
    .local v4, "appIdsArray":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 3228
    .local v5, "bundleIds":Lorg/json/JSONObject;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_3

    .line 3229
    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 3231
    .local v3, "appId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 3232
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 3233
    .local v13, "isInstalled":Lorg/json/JSONObject;
    const/4 v10, 0x0

    .line 3235
    .local v10, "found":Z
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ApplicationInfo;

    .line 3236
    .local v14, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 3237
    sget-object v18, Lcom/supersonicads/sdk/controller/SupersonicWebView;->IS_INSTALLED:Ljava/lang/String;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3238
    invoke-virtual {v5, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3239
    const/4 v10, 0x1

    .line 3243
    .end local v14    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    if-nez v10, :cond_2

    .line 3244
    sget-object v18, Lcom/supersonicads/sdk/controller/SupersonicWebView;->IS_INSTALLED:Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3245
    invoke-virtual {v5, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3228
    .end local v10    # "found":Z
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "isInstalled":Lorg/json/JSONObject;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 3250
    .end local v3    # "appId":Ljava/lang/String;
    :cond_3
    sget-object v18, Lcom/supersonicads/sdk/controller/SupersonicWebView;->RESULT:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3251
    sget-object v18, Lcom/supersonicads/sdk/controller/SupersonicWebView;->REQUEST_ID:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3265
    .end local v4    # "appIdsArray":Lorg/json/JSONArray;
    .end local v5    # "bundleIds":Lorg/json/JSONObject;
    .end local v6    # "ctx":Landroid/content/Context;
    .end local v11    # "i":I
    .end local v15    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v16    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v9, v0, [Ljava/lang/Object;

    .line 3266
    .local v9, "finalResult":[Ljava/lang/Object;
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v9, v18

    .line 3267
    const/16 v18, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, v9, v18

    .line 3269
    return-object v9

    .line 3254
    .end local v9    # "finalResult":[Ljava/lang/Object;
    :cond_4
    const/4 v8, 0x1

    .line 3255
    :try_start_1
    const-string v18, "error"

    const-string v19, "requestId is null or empty"

    invoke-virtual/range {v17 .. v19}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 3261
    :catch_0
    move-exception v7

    .line 3262
    .local v7, "e":Ljava/lang/Exception;
    const/4 v8, 0x1

    goto :goto_1

    .line 3258
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v8, 0x1

    .line 3259
    const-string v18, "error"

    const-string v19, "appIds is null or empty"

    invoke-virtual/range {v17 .. v19}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getBaseContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 2762
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/MutableContextWrapper;

    .line 2763
    .local v0, "mctx":Landroid/content/MutableContextWrapper;
    invoke-virtual {v0}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    return-object v1
.end method

.method private getDeviceParams(Landroid/content/Context;)[Ljava/lang/Object;
    .locals 35
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2959
    const/16 v17, 0x0

    .line 2961
    .local v17, "fail":Z
    invoke-static/range {p1 .. p1}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/supersonicads/sdk/utils/DeviceProperties;

    move-result-object v13

    .line 2963
    .local v13, "deviceProperties":Lcom/supersonicads/sdk/utils/DeviceProperties;
    new-instance v22, Lorg/json/JSONObject;

    invoke-direct/range {v22 .. v22}, Lorg/json/JSONObject;-><init>()V

    .line 2968
    .local v22, "jsObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v29, "appOrientation"

    const-string v30, "none"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2971
    invoke-virtual {v13}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceOem()Ljava/lang/String;

    move-result-object v12

    .line 2972
    .local v12, "deviceOem":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 2973
    const-string v29, "deviceOEM"

    invoke-static/range {v29 .. v29}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static {v12}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2977
    :cond_0
    invoke-virtual {v13}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceModel()Ljava/lang/String;

    move-result-object v9

    .line 2978
    .local v9, "deviceModel":Ljava/lang/String;
    if-eqz v9, :cond_7

    .line 2979
    const-string v29, "deviceModel"

    invoke-static/range {v29 .. v29}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static {v9}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2985
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/supersonicads/sdk/utils/SDKUtils;->loadGoogleAdvertiserInfo(Landroid/content/Context;)V

    .line 2986
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getAdvertiserId()Ljava/lang/String;

    move-result-object v4

    .line 2987
    .local v4, "advertiserId":Ljava/lang/String;
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->isLimitAdTrackingEnabled()Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 2989
    .local v21, "isLAT":Ljava/lang/Boolean;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_1

    .line 2991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "add AID and LAT"

    invoke-static/range {v29 .. v30}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2994
    const-string v29, "isLimitAdTrackingEnabled"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2997
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "deviceIds"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "AID"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3003
    .local v5, "aid":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static {v4}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3007
    .end local v5    # "aid":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v13}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceOsType()Ljava/lang/String;

    move-result-object v10

    .line 3008
    .local v10, "deviceOSType":Ljava/lang/String;
    if-eqz v10, :cond_8

    .line 3009
    const-string v29, "deviceOs"

    invoke-static/range {v29 .. v29}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static {v10}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3015
    :goto_1
    invoke-virtual {v13}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceOsVersion()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 3016
    .local v11, "deviceOSVersion":Ljava/lang/String;
    if-eqz v11, :cond_9

    .line 3017
    const-string v29, "deviceOSVersion"

    invoke-static/range {v29 .. v29}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3023
    :goto_2
    invoke-virtual {v13}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getSupersonicSdkVersion()Ljava/lang/String;

    move-result-object v27

    .line 3024
    .local v27, "ssaSDKVersion":Ljava/lang/String;
    if-eqz v27, :cond_2

    .line 3025
    const-string v29, "SDKVersion"

    invoke-static/range {v29 .. v29}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v27 .. v27}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3029
    :cond_2
    invoke-virtual {v13}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_3

    invoke-virtual {v13}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_3

    .line 3030
    const-string v29, "mobileCarrier"

    invoke-static/range {v29 .. v29}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual {v13}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3034
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/supersonicads/sdk/utils/SDKUtils;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 3035
    .local v6, "connectionType":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_a

    .line 3036
    const-string v29, "connectionType"

    invoke-static/range {v29 .. v29}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static {v6}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3042
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 3043
    .local v8, "deviceLanguage":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_4

    .line 3044
    const-string v29, "deviceLanguage"

    invoke-static/range {v29 .. v29}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3048
    :cond_4
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->isExternalStorageAvailable()Z

    move-result v29

    if-eqz v29, :cond_b

    .line 3049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/SDKUtils;->getAvailableSpaceInMB(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v18

    .line 3050
    .local v18, "freeDiskSize":J
    const-string v29, "diskFreeSize"

    invoke-static/range {v29 .. v29}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3058
    .end local v18    # "freeDiskSize":J
    :goto_4
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getDeviceWidth()I

    move-result v15

    .line 3059
    .local v15, "deviceWidth":I
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    .line 3060
    .local v28, "width":Ljava/lang/String;
    if-eqz v28, :cond_c

    .line 3062
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 3063
    .local v23, "key":Ljava/lang/StringBuilder;
    const-string v29, "deviceScreenSize"

    invoke-static/range {v29 .. v29}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "width"

    invoke-static/range {v30 .. v30}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3068
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v28}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3075
    .end local v23    # "key":Ljava/lang/StringBuilder;
    :goto_5
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getDeviceHeight()I

    move-result v7

    .line 3076
    .local v7, "deviceHeigh":I
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    .line 3077
    .local v20, "height":Ljava/lang/String;
    if-eqz v20, :cond_d

    .line 3079
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 3080
    .restart local v23    # "key":Ljava/lang/StringBuilder;
    const-string v29, "deviceScreenSize"

    invoke-static/range {v29 .. v29}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "height"

    invoke-static/range {v30 .. v30}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3085
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v20 .. v20}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3091
    .end local v23    # "key":Ljava/lang/StringBuilder;
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/supersonicads/sdk/utils/SDKUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    .line 3092
    .local v24, "packageName":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_5

    .line 3093
    const-string v29, "bundleId"

    invoke-static/range {v29 .. v29}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v24 .. v24}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3096
    :cond_5
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getDeviceScale()F

    move-result v14

    .line 3097
    .local v14, "deviceScale":F
    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v26

    .line 3098
    .local v26, "scaleStr":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_6

    .line 3099
    const-string v29, "deviceScreenScale"

    invoke-static/range {v29 .. v29}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v26 .. v26}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3107
    .end local v4    # "advertiserId":Ljava/lang/String;
    .end local v6    # "connectionType":Ljava/lang/String;
    .end local v7    # "deviceHeigh":I
    .end local v8    # "deviceLanguage":Ljava/lang/String;
    .end local v9    # "deviceModel":Ljava/lang/String;
    .end local v10    # "deviceOSType":Ljava/lang/String;
    .end local v11    # "deviceOSVersion":Ljava/lang/String;
    .end local v12    # "deviceOem":Ljava/lang/String;
    .end local v14    # "deviceScale":F
    .end local v15    # "deviceWidth":I
    .end local v20    # "height":Ljava/lang/String;
    .end local v21    # "isLAT":Ljava/lang/Boolean;
    .end local v24    # "packageName":Ljava/lang/String;
    .end local v26    # "scaleStr":Ljava/lang/String;
    .end local v27    # "ssaSDKVersion":Ljava/lang/String;
    .end local v28    # "width":Ljava/lang/String;
    :cond_6
    :goto_7
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    .line 3108
    .local v25, "result":[Ljava/lang/Object;
    const/16 v29, 0x0

    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v25, v29

    .line 3109
    const/16 v29, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    aput-object v30, v25, v29

    .line 3111
    return-object v25

    .line 2981
    .end local v25    # "result":[Ljava/lang/Object;
    .restart local v9    # "deviceModel":Ljava/lang/String;
    .restart local v12    # "deviceOem":Ljava/lang/String;
    :cond_7
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 3011
    .restart local v4    # "advertiserId":Ljava/lang/String;
    .restart local v10    # "deviceOSType":Ljava/lang/String;
    .restart local v21    # "isLAT":Ljava/lang/Boolean;
    :cond_8
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 3019
    .restart local v11    # "deviceOSVersion":Ljava/lang/String;
    :cond_9
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 3038
    .restart local v6    # "connectionType":Ljava/lang/String;
    .restart local v27    # "ssaSDKVersion":Ljava/lang/String;
    :cond_a
    const/16 v17, 0x1

    goto/16 :goto_3

    .line 3054
    .restart local v8    # "deviceLanguage":Ljava/lang/String;
    :cond_b
    const/16 v17, 0x1

    goto/16 :goto_4

    .line 3071
    .restart local v15    # "deviceWidth":I
    .restart local v28    # "width":Ljava/lang/String;
    :cond_c
    const/16 v17, 0x1

    goto/16 :goto_5

    .line 3088
    .restart local v7    # "deviceHeigh":I
    .restart local v20    # "height":Ljava/lang/String;
    :cond_d
    const/16 v17, 0x1

    goto :goto_6

    .line 3102
    .end local v4    # "advertiserId":Ljava/lang/String;
    .end local v6    # "connectionType":Ljava/lang/String;
    .end local v7    # "deviceHeigh":I
    .end local v8    # "deviceLanguage":Ljava/lang/String;
    .end local v9    # "deviceModel":Ljava/lang/String;
    .end local v10    # "deviceOSType":Ljava/lang/String;
    .end local v11    # "deviceOSVersion":Ljava/lang/String;
    .end local v12    # "deviceOem":Ljava/lang/String;
    .end local v15    # "deviceWidth":I
    .end local v20    # "height":Ljava/lang/String;
    .end local v21    # "isLAT":Ljava/lang/Boolean;
    .end local v27    # "ssaSDKVersion":Ljava/lang/String;
    .end local v28    # "width":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 3103
    .local v16, "e":Lorg/json/JSONException;
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONException;->printStackTrace()V

    .line 3104
    new-instance v29, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct/range {v29 .. v29}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v33

    const/16 v34, 0x0

    aget-object v33, v33, v34

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-virtual/range {v29 .. v30}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_7
.end method

.method private getRequestParameters()Ljava/lang/String;
    .locals 10

    .prologue
    .line 2768
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/supersonicads/sdk/utils/DeviceProperties;

    move-result-object v5

    .line 2770
    .local v5, "properties":Lcom/supersonicads/sdk/utils/DeviceProperties;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2772
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getSupersonicSdkVersion()Ljava/lang/String;

    move-result-object v7

    .line 2773
    .local v7, "sdkVer":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2774
    const-string v8, "SDKVersion"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2780
    :cond_0
    invoke-virtual {v5}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getDeviceOsType()Ljava/lang/String;

    move-result-object v3

    .line 2781
    .local v3, "osType":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2782
    const-string v8, "deviceOs"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2787
    :cond_1
    const/4 v1, 0x0

    .line 2789
    .local v1, "debugModeAdded":Z
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getDebugMode()I

    move-result v8

    if-eqz v8, :cond_2

    .line 2791
    const/4 v1, 0x1

    .line 2793
    const-string v8, "&"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "debug"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getDebugMode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2799
    :cond_2
    const-string v8, "http://s.ssacdn.com/"

    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSDKLoadUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 2800
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getUri()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 2802
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2803
    .local v6, "scheme":Ljava/lang/String;
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 2804
    .local v2, "host":Ljava/lang/String;
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getPort()I

    move-result v4

    .line 2806
    .local v4, "port":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_3

    .line 2807
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2810
    :cond_3
    if-nez v1, :cond_4

    .line 2811
    const-string v8, "&"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "debug"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getDebugMode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2817
    :cond_4
    const-string v8, "&"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "protocol"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "domain"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2829
    .end local v2    # "host":Ljava/lang/String;
    .end local v4    # "port":I
    .end local v6    # "scheme":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x1

    .line 295
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 300
    .local v0, "coverScreenParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mLayout:Landroid/widget/FrameLayout;

    .line 304
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 305
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 306
    .local v1, "fp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 310
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 311
    .local v3, "mContentView":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 312
    .local v2, "lpChild2":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 316
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 318
    return-void
.end method

.method private initProduct(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .locals 2
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/supersonicads/sdk/data/SSAEnums$ProductType;
    .param p5, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/data/SSAEnums$ProductType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2367
    .local p3, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2368
    :cond_0
    const-string v0, "User id or Application key are missing"

    invoke-direct {p0, v0, p4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 2398
    :cond_1
    :goto_0
    return-void

    .line 2372
    :cond_2
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    if-ne v0, v1, :cond_3

    .line 2375
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p4}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setApplicationKey(Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 2376
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setUserID(Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 2377
    invoke-direct {p0, p4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->createInitProductJSMethod(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    goto :goto_0

    .line 2381
    :cond_3
    invoke-direct {p0, p4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setMissProduct(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 2383
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Failed:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    if-ne v0, v1, :cond_4

    .line 2386
    const-string v0, "Initiating Controller"

    invoke-static {p5, v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->createErrorMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    goto :goto_0

    .line 2393
    :cond_4
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mGlobalControllerTimeFinish:Z

    if-eqz v0, :cond_1

    .line 2394
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadController()V

    goto :goto_0
.end method

.method private injectJavascript(Ljava/lang/String;)V
    .locals 9
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    .line 2682
    const-string v1, "empty"

    .line 2683
    .local v1, "catchClosure":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getDebugMode()I

    move-result v5

    sget-object v6, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->MODE_0:Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v6}, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 2685
    const-string v1, "console.log(\"JS exeption: \" + JSON.stringify(e));"

    .line 2698
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2699
    .local v3, "scriptBuilder":Ljava/lang/StringBuilder;
    const-string v5, "try{"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}catch(e){"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2706
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "javascript:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2708
    .local v4, "url":Ljava/lang/String;
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 2710
    .local v2, "ctx":Landroid/content/Context;
    instance-of v5, v2, Landroid/app/Activity;

    if-eqz v5, :cond_2

    move-object v0, v2

    .line 2711
    check-cast v0, Landroid/app/Activity;

    .line 2712
    .local v0, "activity":Landroid/app/Activity;
    new-instance v5, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;

    invoke-direct {v5, p0, v4, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2753
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_1
    return-void

    .line 2687
    .end local v2    # "ctx":Landroid/content/Context;
    .end local v3    # "scriptBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getDebugMode()I

    move-result v5

    sget-object v6, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->MODE_1:Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v6}, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v6

    if-lt v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getDebugMode()I

    move-result v5

    sget-object v6, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->MODE_3:Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v6}, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v6

    if-gt v5, v6, :cond_0

    .line 2690
    const-string v1, "console.log(\"JS exeption: \" + JSON.stringify(e));"

    goto :goto_0

    .line 2751
    .restart local v2    # "ctx":Landroid/content/Context;
    .restart local v3    # "scriptBuilder":Ljava/lang/StringBuilder;
    .restart local v4    # "url":Ljava/lang/String;
    :cond_2
    new-instance v5, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v5}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "https://www.supersonicads.com/mobile/sdk5/log?method=contextIsNotActivity"

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method private mapToJson(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2940
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2942
    .local v2, "jsObj":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2944
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2945
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2947
    .local v4, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2948
    :catch_0
    move-exception v0

    .line 2949
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 2954
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p1, "key1"    # Ljava/lang/String;
    .param p2, "value1"    # Ljava/lang/String;
    .param p3, "key2"    # Ljava/lang/String;
    .param p4, "value2"    # Ljava/lang/String;
    .param p5, "key3"    # Ljava/lang/String;
    .param p6, "value3"    # Ljava/lang/String;
    .param p7, "key4"    # Ljava/lang/String;
    .param p8, "value4"    # Ljava/lang/String;
    .param p9, "key5"    # Ljava/lang/String;
    .param p10, "value5"    # Z

    .prologue
    .line 2906
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2910
    .local v3, "jsObj":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2911
    invoke-static {p2}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2914
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2915
    invoke-static {p4}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2918
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2919
    invoke-static/range {p6 .. p6}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2922
    :cond_2
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2923
    invoke-static/range {p8 .. p8}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2926
    :cond_3
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2927
    move-object/from16 v0, p9

    move/from16 v1, p10

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2935
    :cond_4
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2930
    :catch_0
    move-exception v2

    .line 2931
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 2932
    new-instance v4, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v4}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private resetMissProduct()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2571
    iput-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mRVmiss:Z

    .line 2572
    iput-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISmiss:Z

    .line 2573
    iput-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWmiss:Z

    .line 2574
    iput-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsMiss:Z

    .line 2575
    return-void
.end method

.method private responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Z
    .param p3, "errorMessage"    # Ljava/lang/String;
    .param p4, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 2846
    new-instance v4, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v4, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2847
    .local v4, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    sget-object v6, Lcom/supersonicads/sdk/controller/SupersonicWebView;->JSON_KEY_SUCCESS:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2848
    .local v5, "success":Ljava/lang/String;
    sget-object v6, Lcom/supersonicads/sdk/controller/SupersonicWebView;->JSON_KEY_FAIL:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2850
    .local v0, "fail":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2853
    .local v1, "funToCall":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 2854
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2855
    move-object v1, v5

    .line 2864
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2866
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2868
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2869
    .local v2, "jsObj":Lorg/json/JSONObject;
    const-string v6, "errMsg"

    invoke-virtual {v2, v6, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .line 2874
    .end local v2    # "jsObj":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2876
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2877
    .restart local v2    # "jsObj":Lorg/json/JSONObject;
    const-string v6, "errCode"

    invoke-virtual {v2, v6, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    .line 2882
    .end local v2    # "jsObj":Lorg/json/JSONObject;
    :cond_2
    :goto_2
    invoke-direct {p0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2883
    .local v3, "script":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2885
    .end local v3    # "script":Ljava/lang/String;
    :cond_3
    return-void

    .line 2858
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2859
    move-object v1, v0

    goto :goto_0

    .line 2878
    :catch_0
    move-exception v6

    goto :goto_2

    .line 2870
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private sendProductErrorMessage(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V
    .locals 3
    .param p1, "type"    # Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    .prologue
    .line 3560
    const-string v0, ""

    .line 3562
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/supersonicads/sdk/controller/SupersonicWebView$7;->$SwitchMap$com$supersonicads$sdk$data$SSAEnums$ProductType:[I

    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3586
    :goto_0
    const-string v1, "Initiating Controller"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/SDKUtils;->createErrorMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 3589
    return-void

    .line 3565
    :pswitch_0
    const-string v0, "Init BC"

    .line 3566
    goto :goto_0

    .line 3570
    :pswitch_1
    const-string v0, "Init IS"

    .line 3571
    goto :goto_0

    .line 3575
    :pswitch_2
    const-string v0, "Show OW"

    .line 3576
    goto :goto_0

    .line 3580
    :pswitch_3
    const-string v0, "Show OW Credits"

    goto :goto_0

    .line 3562
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setDisplayZoomControls(Landroid/webkit/WebSettings;)V
    .locals 2
    .param p1, "s"    # Landroid/webkit/WebSettings;

    .prologue
    .line 357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 359
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 361
    :cond_0
    return-void
.end method

.method public static setEXTERNAL_URL(Ljava/lang/String;)V
    .locals 0
    .param p0, "EXTERNAL_URL"    # Ljava/lang/String;

    .prologue
    .line 2240
    sput-object p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->EXTERNAL_URL:Ljava/lang/String;

    .line 2241
    return-void
.end method

.method private setMediaPlaybackJellyBean(Landroid/webkit/WebSettings;)V
    .locals 2
    .param p1, "s"    # Landroid/webkit/WebSettings;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 372
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 373
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 375
    :cond_0
    return-void
.end method

.method private setMissProduct(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V
    .locals 3
    .param p1, "type"    # Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    .prologue
    const/4 v1, 0x1

    .line 2558
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_1

    .line 2559
    iput-boolean v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mRVmiss:Z

    .line 2567
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMissProduct("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2568
    return-void

    .line 2560
    :cond_1
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_2

    .line 2561
    iput-boolean v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISmiss:Z

    goto :goto_0

    .line 2562
    :cond_2
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_3

    .line 2563
    iput-boolean v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWmiss:Z

    goto :goto_0

    .line 2564
    :cond_3
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_0

    .line 2565
    iput-boolean v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsMiss:Z

    goto :goto_0
.end method

.method private setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mUri:Landroid/net/Uri;

    .line 458
    return-void
.end method

.method private setWebDebuggingEnabled()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 379
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 380
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setWebContentsDebuggingEnabled(Z)V

    .line 382
    :cond_0
    return-void
.end method

.method private setWebViewSettings()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 321
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 323
    .local v1, "s":Landroid/webkit/WebSettings;
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 324
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 325
    invoke-virtual {p0, v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setVerticalScrollBarEnabled(Z)V

    .line 326
    invoke-virtual {p0, v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 332
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 334
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 336
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 337
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 340
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 341
    const-string v2, "/data/data/org.itri.html5webview/databases/"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 348
    :try_start_0
    invoke-direct {p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setDisplayZoomControls(Landroid/webkit/WebSettings;)V

    .line 349
    invoke-direct {p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setMediaPlaybackJellyBean(Landroid/webkit/WebSettings;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWebSettings - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v2, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v2}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method=setWebViewSettings"

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setWebviewBackground(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2263
    new-instance v2, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2264
    .local v2, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v3, "color"

    invoke-virtual {v2, v3}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2266
    .local v1, "keyColor":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2268
    .local v0, "bgColor":I
    const-string v3, "transparent"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2269
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 2272
    :cond_0
    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setBackgroundColor(I)V

    .line 2273
    return-void
.end method

.method private setWebviewCache(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3525
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3527
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 3532
    :goto_0
    return-void

    .line 3530
    :cond_0
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0
.end method

.method private shouldNotifyDeveloper(Ljava/lang/String;)Z
    .locals 4
    .param p1, "product"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 467
    const/4 v0, 0x0

    .line 470
    .local v0, "shouldNotify":Z
    if-nez p1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v3, "Trying to trigger a listener - no product was found"

    invoke-static {v1, v3}, Lcom/supersonicads/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :goto_0
    return v2

    .line 475
    :cond_0
    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 476
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    if-eqz v3, :cond_3

    move v0, v1

    .line 483
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 484
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to trigger a listener - no listener was found for product "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v2, v0

    .line 486
    goto :goto_0

    :cond_3
    move v0, v2

    .line 476
    goto :goto_1

    .line 477
    :cond_4
    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 478
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    if-eqz v3, :cond_5

    move v0, v1

    :goto_2
    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    .line 479
    :cond_6
    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 481
    :cond_7
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    if-eqz v3, :cond_8

    move v0, v1

    :goto_3
    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_3
.end method

.method private toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 3327
    new-instance v3, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v3, p2}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 3328
    .local v3, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v4, "errMsg"

    invoke-virtual {v3, v4}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3330
    .local v2, "message":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3331
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 3332
    .local v1, "ctx":Landroid/content/Context;
    instance-of v4, v1, Landroid/app/Activity;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 3334
    check-cast v0, Landroid/app/Activity;

    .line 3335
    .local v0, "activity":Landroid/app/Activity;
    new-instance v4, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;

    invoke-direct {v4, p0, p1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3344
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "ctx":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method private triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    .prologue
    .line 2579
    invoke-virtual {p2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2580
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 2581
    .local v1, "ctx":Landroid/content/Context;
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 2583
    check-cast v0, Landroid/app/Activity;

    .line 2585
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$3;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2619
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "ctx":Landroid/content/Context;
    :cond_0
    return-void
.end method


# virtual methods
.method public assetCached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2627
    const-string v1, "file"

    const-string v3, "path"

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-direct/range {v0 .. v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 2628
    .local v11, "params":Ljava/lang/String;
    const-string v0, "assetCached"

    invoke-direct {p0, v0, v11}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2629
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2630
    return-void
.end method

.method public assetCachedFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 2633
    const-string v1, "file"

    const-string v3, "path"

    const-string v5, "errMsg"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 2634
    .local v11, "params":Ljava/lang/String;
    const-string v0, "assetCachedFailed"

    invoke-direct {p0, v0, v11}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2635
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2636
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 3593
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 3595
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    if-eqz v0, :cond_0

    .line 3596
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/precache/DownloadManager;->release()V

    .line 3598
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 3599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 3602
    :cond_1
    return-void
.end method

.method public deviceStatusChanged(ZZ)V
    .locals 13
    .param p1, "isWifiConnected"    # Z
    .param p2, "isMobileConnected"    # Z

    .prologue
    const/4 v3, 0x0

    .line 3384
    const-string v2, "none"

    .line 3385
    .local v2, "networkType":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 3386
    const-string v2, "wifi"

    .line 3391
    :cond_0
    :goto_0
    const-string v1, "connectionType"

    const/4 v10, 0x0

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 3392
    .local v11, "params":Ljava/lang/String;
    const-string v0, "deviceStatusChanged"

    invoke-direct {p0, v0, v11}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3393
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 3394
    return-void

    .line 3387
    .end local v11    # "params":Ljava/lang/String;
    .end local v12    # "script":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_0

    .line 3388
    const-string v2, "3g"

    goto :goto_0
.end method

.method public downloadController()V
    .locals 9

    .prologue
    .line 387
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;

    const-string v1, ""

    const-string v2, "mobileController.html"

    invoke-static {v0, v1, v2}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 391
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSDKLoadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setUri(Landroid/net/Uri;)V

    .line 394
    const-string v6, ""

    .line 398
    .local v6, "controllerPath":Ljava/lang/String;
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSDKDownloadUrl()Ljava/lang/String;

    move-result-object v7

    .line 400
    .local v7, "controllerUrl":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const-string v7, "http://s.ssacdn.com/mobileSDKController/mobileController.html"

    .line 404
    :cond_0
    new-instance v8, Lcom/supersonicads/sdk/data/SSAFile;

    invoke-direct {v8, v7, v6}, Lcom/supersonicads/sdk/data/SSAFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .local v8, "indexHtml":Lcom/supersonicads/sdk/data/SSAFile;
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$1;

    const-wide/32 v2, 0x9c40

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView$1;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;JJ)V

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mGlobalControllerTimer:Landroid/os/CountDownTimer;

    .line 424
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/precache/DownloadManager;->isMobileControllerThreadLive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download Mobile Controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    invoke-virtual {v0, v8}, Lcom/supersonicads/sdk/precache/DownloadManager;->downloadMobileControllerFile(Lcom/supersonicads/sdk/data/SSAFile;)V

    .line 430
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v1, "Download Mobile Controller: already alive"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public engageEnd(Ljava/lang/String;)V
    .locals 13
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3397
    const-string v0, "forceClose"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3398
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->closeWebView()V

    .line 3401
    :cond_0
    const-string v1, "action"

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 3402
    .local v11, "params":Ljava/lang/String;
    const-string v0, "engageEnd"

    invoke-direct {p0, v0, v11}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3403
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 3404
    return-void
.end method

.method public enterBackground()V
    .locals 3

    .prologue
    .line 2640
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    if-ne v1, v2, :cond_0

    .line 2641
    const-string v1, "enterBackground"

    invoke-direct {p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2642
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2644
    .end local v0    # "script":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public enterForeground()V
    .locals 3

    .prologue
    .line 2648
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    if-ne v1, v2, :cond_0

    .line 2649
    const-string v1, "enterForeground"

    invoke-direct {p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2650
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2652
    .end local v0    # "script":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public forceShowInterstitial()V
    .locals 4

    .prologue
    .line 2466
    const-string v1, "forceShowInterstitial"

    const-string v2, "onShowInterstitialSuccess"

    const-string v3, "onShowInterstitialFail"

    invoke-direct {p0, v1, v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2467
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2468
    return-void
.end method

.method public getControllerKeyPressed()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3353
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerKeyPressed:Ljava/lang/String;

    .line 3356
    .local v0, "keyPressed":Ljava/lang/String;
    const-string v1, "interrupt"

    invoke-virtual {p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setControllerKeyPressed(Ljava/lang/String;)V

    .line 3358
    return-object v0
.end method

.method public getDebugMode()I
    .locals 1

    .prologue
    .line 453
    sget v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mDebugMode:I

    return v0
.end method

.method public getDownloadDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    sget-object v0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mDownloadDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 3496
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V
    .locals 6
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    .prologue
    .line 2495
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsAppKey:Ljava/lang/String;

    .line 2496
    iput-object p2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsUserId:Ljava/lang/String;

    .line 2498
    iput-object p3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    .line 2500
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsUserId:Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    const-string v5, "Show OW Credits"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 2501
    return-void
.end method

.method public getOrientationState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOrientationState:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedState()Lcom/supersonicads/sdk/data/AdUnitsState;
    .locals 1

    .prologue
    .line 3639
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    return-object v0
.end method

.method public getState()Lcom/supersonicads/sdk/controller/SupersonicWebView$State;
    .locals 1

    .prologue
    .line 3555
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mState:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    return-object v0
.end method

.method public handleSearchKeysURLs(Ljava/lang/String;)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 3535
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSearchKeys()Ljava/util/List;

    move-result-object v3

    .line 3537
    .local v3, "searchKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3539
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3540
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3541
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3542
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3543
    const/4 v4, 0x1

    .line 3547
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "key":Ljava/lang/String;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public hideCustomView()V
    .locals 1

    .prologue
    .line 3504
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mWebChromeClient:Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->onHideCustomView()V

    .line 3505
    return-void
.end method

.method public inCustomView()Z
    .locals 1

    .prologue
    .line 3500
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initBrandConnect(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;)V
    .locals 6
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2409
    .local p3, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mBCAppKey:Ljava/lang/String;

    .line 2410
    iput-object p2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mBCUserId:Ljava/lang/String;

    .line 2411
    iput-object p3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mExtraParameters:Ljava/util/Map;

    .line 2412
    iput-object p4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    .line 2415
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mBCAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setRewardedVideoAppKey(Ljava/lang/String;)V

    .line 2416
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mBCUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setRewardedVideoUserId(Ljava/lang/String;)V

    .line 2417
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mExtraParameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setRewardedVideoExtraParams(Ljava/util/Map;)V

    .line 2422
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mBCAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mBCUserId:Ljava/lang/String;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mExtraParameters:Ljava/util/Map;

    sget-object v4, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    const-string v5, "Init BC"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 2423
    return-void
.end method

.method public initInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnInterstitialListener;)V
    .locals 6
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/supersonicads/sdk/listeners/OnInterstitialListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnInterstitialListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2437
    .local p3, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISAppKey:Ljava/lang/String;

    .line 2438
    iput-object p2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISUserId:Ljava/lang/String;

    .line 2439
    iput-object p3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISExtraParameters:Ljava/util/Map;

    .line 2440
    iput-object p4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    .line 2443
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setInterstitialAppKey(Ljava/lang/String;)V

    .line 2444
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setInterstitialUserId(Ljava/lang/String;)V

    .line 2445
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISExtraParameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setInterstitialExtraParams(Ljava/util/Map;)V

    .line 2447
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setReportInitInterstitial(Z)V

    .line 2449
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISUserId:Ljava/lang/String;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mExtraParameters:Ljava/util/Map;

    sget-object v4, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    const-string v5, "Init IS"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 2450
    return-void
.end method

.method public interceptedUrlToStore()V
    .locals 2

    .prologue
    .line 2675
    const-string v1, "interceptedUrlToStore"

    invoke-direct {p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2676
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2677
    return-void
.end method

.method public isInterstitialAdAvailable()Z
    .locals 1

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public load(I)V
    .locals 13
    .param p1, "loadAttemp"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2281
    :try_start_0
    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2288
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2290
    .local v7, "controllerPath":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCacheDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2291
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2294
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getRequestParameters()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mRequestParameters:Ljava/lang/String;

    .line 2297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mRequestParameters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2300
    .local v8, "controllerPathWithParams":Ljava/lang/String;
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;JJI)V

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mLoadControllerTimer:Landroid/os/CountDownTimer;

    .line 2345
    :try_start_1
    invoke-virtual {p0, v8}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2352
    :goto_1
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    .end local v8    # "controllerPathWithParams":Ljava/lang/String;
    :goto_2
    return-void

    .line 2282
    .end local v7    # "controllerPath":Ljava/lang/String;
    .end local v10    # "file":Ljava/io/File;
    :catch_0
    move-exception v9

    .line 2283
    .local v9, "e":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebViewController:: load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    new-instance v0, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v1, v12, [Ljava/lang/String;

    const-string v2, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewLoadBlank"

    aput-object v2, v1, v11

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 2346
    .end local v9    # "e":Ljava/lang/Throwable;
    .restart local v7    # "controllerPath":Ljava/lang/String;
    .restart local v8    # "controllerPathWithParams":Ljava/lang/String;
    .restart local v10    # "file":Ljava/io/File;
    :catch_1
    move-exception v9

    .line 2347
    .restart local v9    # "e":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebViewController:: load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    new-instance v0, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v1, v12, [Ljava/lang/String;

    const-string v2, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewLoadWithPath"

    aput-object v2, v1, v11

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 2355
    .end local v8    # "controllerPathWithParams":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v1, "load(): Mobile Controller HTML Does not exist"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    new-instance v0, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v1, v12, [Ljava/lang/String;

    const-string v2, "https://www.supersonicads.com/mobile/sdk5/log?method=htmlControllerDoesNotExistOnFileSystem"

    aput-object v2, v1, v11

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method

.method public nativeNavigationPressed(Ljava/lang/String;)V
    .locals 13
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2664
    const-string v1, "action"

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 2665
    .local v11, "params":Ljava/lang/String;
    const-string v0, "nativeNavigationPressed"

    invoke-direct {p0, v0, v11}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2666
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2667
    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 3321
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3323
    return-void
.end method

.method public onFileDownloadFail(Lcom/supersonicads/sdk/data/SSAFile;)V
    .locals 3
    .param p1, "file"    # Lcom/supersonicads/sdk/data/SSAFile;

    .prologue
    .line 3291
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3293
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mGlobalControllerTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 3296
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mRVmiss:Z

    if-eqz v0, :cond_0

    .line 3297
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->sendProductErrorMessage(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 3300
    :cond_0
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mISmiss:Z

    if-eqz v0, :cond_1

    .line 3301
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->sendProductErrorMessage(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 3304
    :cond_1
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWmiss:Z

    if-eqz v0, :cond_2

    .line 3305
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->sendProductErrorMessage(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 3308
    :cond_2
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWCreditsMiss:Z

    if-eqz v0, :cond_3

    .line 3309
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->sendProductErrorMessage(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 3315
    :cond_3
    :goto_0
    return-void

    .line 3313
    :cond_4
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getErrMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->assetCachedFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFileDownloadSuccess(Lcom/supersonicads/sdk/data/SSAFile;)V
    .locals 2
    .param p1, "file"    # Lcom/supersonicads/sdk/data/SSAFile;

    .prologue
    .line 3279
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3281
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->load(I)V

    .line 3285
    :goto_0
    return-void

    .line 3283
    :cond_0
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->assetCached(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pageFinished()V
    .locals 2

    .prologue
    .line 2670
    const-string v1, "pageFinished"

    invoke-direct {p0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2671
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2672
    return-void
.end method

.method public pause()V
    .locals 5

    .prologue
    .line 3457
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 3459
    :try_start_0
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3467
    :cond_0
    :goto_0
    return-void

    .line 3460
    :catch_0
    move-exception v0

    .line 3461
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewController: pause() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3462
    new-instance v1, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewPause"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public registerConnectionReceiver(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3435
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3437
    return-void
.end method

.method public removeVideoEventsListener()V
    .locals 1

    .prologue
    .line 2250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mVideoEventsListener:Lcom/supersonicads/sdk/controller/VideoEventsListener;

    .line 2251
    return-void
.end method

.method public restoreState(Lcom/supersonicads/sdk/data/AdUnitsState;)V
    .locals 9
    .param p1, "state"    # Lcom/supersonicads/sdk/data/AdUnitsState;

    .prologue
    const/4 v8, -0x1

    .line 3644
    iget-object v5, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedStateLocker:Ljava/lang/Object;

    monitor-enter v5

    .line 3646
    :try_start_0
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->shouldRestore()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    sget-object v6, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    invoke-virtual {v4, v6}, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3648
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreState(state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3651
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->getDisplayedProduct()I

    move-result v2

    .line 3652
    .local v2, "lastAd":I
    if-eq v2, v8, :cond_8

    .line 3656
    sget-object v4, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v4}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_6

    .line 3657
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v6, "onRVAdClosed()"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3658
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    if-eqz v4, :cond_0

    .line 3659
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    invoke-interface {v4}, Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;->onRVAdClosed()V

    .line 3675
    :cond_0
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p1, v4}, Lcom/supersonicads/sdk/data/AdUnitsState;->adOpened(I)V

    .line 3682
    :goto_1
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->isInterstitialInitSuccess()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3684
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v6, "onInterstitialAvailability(false)"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3685
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    if-eqz v4, :cond_1

    .line 3686
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/supersonicads/sdk/listeners/OnInterstitialListener;->onInterstitialAvailability(Z)V

    .line 3690
    :cond_1
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->getInterstitialAppKey()Ljava/lang/String;

    move-result-object v0

    .line 3691
    .local v0, "appKey":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->getInterstitialUserId()Ljava/lang/String;

    move-result-object v3

    .line 3692
    .local v3, "userId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->getInterstitialExtraParams()Ljava/util/Map;

    move-result-object v1

    .line 3694
    .local v1, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initInterstitial(appKey:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", userId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", extraParam:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3695
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    invoke-virtual {p0, v0, v3, v1, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnInterstitialListener;)V

    .line 3699
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v1    # "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "userId":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->isRewardedVideoInitSuccess()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3700
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v6, "onRVNoMoreOffers()"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3701
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    if-eqz v4, :cond_3

    .line 3702
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    invoke-interface {v4}, Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;->onRVNoMoreOffers()V

    .line 3705
    :cond_3
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->getRewardedVideoAppKey()Ljava/lang/String;

    move-result-object v0

    .line 3706
    .restart local v0    # "appKey":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->getRewardedVideoUserId()Ljava/lang/String;

    move-result-object v3

    .line 3707
    .restart local v3    # "userId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsState;->getRewardedVideoExtraParams()Ljava/util/Map;

    move-result-object v1

    .line 3709
    .restart local v1    # "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initRewardedVideo(appKey:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", userId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", extraParam:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3710
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    invoke-virtual {p0, v0, v3, v1, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initBrandConnect(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;)V

    .line 3713
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v1    # "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "userId":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/supersonicads/sdk/data/AdUnitsState;->setShouldRestore(Z)V

    .line 3716
    .end local v2    # "lastAd":I
    :cond_5
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mSavedState:Lcom/supersonicads/sdk/data/AdUnitsState;

    .line 3718
    monitor-exit v5

    .line 3719
    return-void

    .line 3662
    .restart local v2    # "lastAd":I
    :cond_6
    sget-object v4, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v4}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_7

    .line 3663
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v6, "onInterstitialAdClosed()"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    if-eqz v4, :cond_0

    .line 3665
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    invoke-interface {v4}, Lcom/supersonicads/sdk/listeners/OnInterstitialListener;->onInterstitialAdClosed()V

    goto/16 :goto_0

    .line 3718
    .end local v2    # "lastAd":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3668
    .restart local v2    # "lastAd":I
    :cond_7
    :try_start_1
    sget-object v4, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v4}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 3669
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v6, "onOWAdClosed()"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3670
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    if-eqz v4, :cond_0

    .line 3671
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    invoke-interface {v4}, Lcom/supersonicads/sdk/listeners/OnOfferWallListener;->onOWAdClosed()V

    goto/16 :goto_0

    .line 3677
    :cond_8
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    const-string v6, "No ad was opened"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 3471
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 3473
    :try_start_0
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3479
    :cond_0
    :goto_0
    return-void

    .line 3474
    :catch_0
    move-exception v0

    .line 3475
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewController: onResume() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3476
    new-instance v1, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewResume"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public runGenericFunction(Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3363
    .local p2, "keyValPairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnGenericFunctionListener:Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;

    .line 3365
    const-string v1, "initBrandConnect"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3367
    const-string v1, "applicationUserId"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "applicationKey"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnRewardedVideoListener:Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    invoke-virtual {p0, v1, v2, p2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initBrandConnect(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;)V

    .line 3380
    :goto_0
    return-void

    .line 3373
    :cond_0
    const-string v1, "showBrandConnect"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3375
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->showBrandConnect()V

    goto :goto_0

    .line 3377
    :cond_1
    invoke-direct {p0, p2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mapToJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onGenericFunctionSuccess"

    const-string v3, "onGenericFunctionFail"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3378
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 366
    invoke-super {p0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public setControllerKeyPressed(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3347
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerKeyPressed:Ljava/lang/String;

    .line 3348
    return-void
.end method

.method public setDebugMode(I)V
    .locals 0
    .param p1, "debugMode"    # I

    .prologue
    .line 433
    sput p1, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mDebugMode:I

    .line 434
    return-void
.end method

.method public setDownloadDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 445
    sput-object p1, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mDownloadDomain:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public setOnWebViewControllerChangeListener(Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;

    .prologue
    .line 3485
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mChangeListener:Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;

    .line 3486
    return-void
.end method

.method public setOrientationState(Ljava/lang/String;)V
    .locals 0
    .param p1, "orientaiton"    # Ljava/lang/String;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOrientationState:Ljava/lang/String;

    .line 491
    return-void
.end method

.method public setState(Lcom/supersonicads/sdk/controller/SupersonicWebView$State;)V
    .locals 0
    .param p1, "state"    # Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    .prologue
    .line 3551
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mState:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    .line 3552
    return-void
.end method

.method public setVideoEventsListener(Lcom/supersonicads/sdk/controller/VideoEventsListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/supersonicads/sdk/controller/VideoEventsListener;

    .prologue
    .line 2245
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mVideoEventsListener:Lcom/supersonicads/sdk/controller/VideoEventsListener;

    .line 2246
    return-void
.end method

.method public showBrandConnect()V
    .locals 4

    .prologue
    .line 2622
    const-string v1, "showBrandConnect"

    const-string v2, "onShowBrandConnectSuccess"

    const-string v3, "onShowBrandConnectFail"

    invoke-direct {p0, v1, v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2623
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2624
    return-void
.end method

.method public showInterstitial()V
    .locals 4

    .prologue
    .line 2461
    const-string v1, "showInterstitial"

    const-string v2, "onShowInterstitialSuccess"

    const-string v3, "onShowInterstitialFail"

    invoke-direct {p0, v1, v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2462
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2463
    return-void
.end method

.method public showOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V
    .locals 6
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/supersonicads/sdk/listeners/OnOfferWallListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnOfferWallListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2479
    .local p3, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWAppKey:Ljava/lang/String;

    .line 2480
    iput-object p2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWUserId:Ljava/lang/String;

    .line 2481
    iput-object p3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mExtraParameters:Ljava/util/Map;

    .line 2482
    iput-object p4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    .line 2487
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOWUserId:Ljava/lang/String;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mExtraParameters:Ljava/util/Map;

    sget-object v4, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    const-string v5, "Show OW"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 2488
    return-void
.end method

.method public unregisterConnectionReceiver(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3442
    :try_start_0
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3453
    :goto_0
    return-void

    .line 3443
    :catch_0
    move-exception v0

    .line 3446
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v2}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method=unregisterConnectionReceiverIllegal"

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 3447
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 3450
    .local v1, "e1":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterConnectionReceiver - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3451
    new-instance v2, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v2}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v3, v5, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public viewableChange(ZLjava/lang/String;)V
    .locals 13
    .param p1, "visibility"    # Z
    .param p2, "webview"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2655
    const-string v1, "webview"

    const-string v9, "isViewable"

    move-object v0, p0

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 2659
    .local v11, "params":Ljava/lang/String;
    const-string v0, "viewableChange"

    invoke-direct {p0, v0, v11}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2660
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2661
    return-void
.end method
