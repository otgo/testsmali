.class public final Lcom/purplebrain/adbuddiz/sdk/i/r$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/i/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/i/r$3;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz$RewardedVideo;->getDelegate()Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/r$3;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    invoke-interface {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoDelegate;->didFail(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;)V

    return-void
.end method
