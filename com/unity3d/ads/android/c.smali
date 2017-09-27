.class final Lcom/unity3d/ads/android/c;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 519
    invoke-static {}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->initWebView()V

    .line 520
    return-void
.end method
