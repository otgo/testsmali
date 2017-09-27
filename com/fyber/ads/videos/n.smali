.class final Lcom/fyber/ads/videos/n;
.super Ljava/lang/Object;
.source "RewardedVideoClient.java"

# interfaces
.implements Lcom/fyber/ads/videos/player/b;


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/l;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/l;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lcom/fyber/ads/videos/n;->a:Lcom/fyber/ads/videos/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 666
    const-string v0, "RewardedVideoClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nativeVideoPlayerEventOccurred() called with URL:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/fyber/ads/videos/n;->a:Lcom/fyber/ads/videos/l;

    iget-object v0, v0, Lcom/fyber/ads/videos/l;->a:Lcom/fyber/ads/videos/c;

    invoke-static {v0, p1}, Lcom/fyber/ads/videos/c;->c(Lcom/fyber/ads/videos/c;Ljava/lang/String;)V

    .line 668
    return-void
.end method
