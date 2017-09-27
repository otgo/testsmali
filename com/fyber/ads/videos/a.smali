.class final Lcom/fyber/ads/videos/a;
.super Ljava/lang/Object;
.source "RewardedVideoActivity.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/RewardedVideoActivity;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/RewardedVideoActivity;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/fyber/ads/videos/a;->a:Lcom/fyber/ads/videos/RewardedVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 87
    check-cast p1, Ljava/lang/Boolean;

    .line 1090
    iget-object v0, p0, Lcom/fyber/ads/videos/a;->a:Lcom/fyber/ads/videos/RewardedVideoActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/RewardedVideoActivity;->a(Lcom/fyber/ads/videos/RewardedVideoActivity;Z)Z

    .line 1091
    iget-object v0, p0, Lcom/fyber/ads/videos/a;->a:Lcom/fyber/ads/videos/RewardedVideoActivity;

    invoke-static {v0}, Lcom/fyber/ads/videos/RewardedVideoActivity;->a(Lcom/fyber/ads/videos/RewardedVideoActivity;)V

    .line 87
    return-void
.end method
