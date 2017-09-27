.class final Lcom/unity3d/ads/android/c;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Lcom/unity3d/ads/android/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/ads/android/c;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 955
    new-instance v0, Lcom/unity3d/ads/android/d;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/d;-><init>(Lcom/unity3d/ads/android/c;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 974
    return-void
.end method
