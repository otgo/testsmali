.class final Lcom/fyber/requesters/RewardedVideoRequester$a;
.super Ljava/lang/Object;
.source "RewardedVideoRequester.java"

# interfaces
.implements Lcom/fyber/ads/videos/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/requesters/RewardedVideoRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/requesters/RewardedVideoRequester;


# direct methods
.method private constructor <init>(Lcom/fyber/requesters/RewardedVideoRequester;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/fyber/requesters/RewardedVideoRequester$a;->a:Lcom/fyber/requesters/RewardedVideoRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fyber/requesters/RewardedVideoRequester;B)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/fyber/requesters/RewardedVideoRequester$a;-><init>(Lcom/fyber/requesters/RewardedVideoRequester;)V

    return-void
.end method


# virtual methods
.method public final didChangeStatus(Lcom/fyber/ads/videos/t$a;)V
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lcom/fyber/ads/videos/t$a;->e:Lcom/fyber/ads/videos/t$a;

    if-ne p1, v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/fyber/requesters/RewardedVideoRequester$a;->a:Lcom/fyber/requesters/RewardedVideoRequester;

    sget-object v1, Lcom/fyber/requesters/RequestError;->ERROR_REQUESTING_ADS:Lcom/fyber/requesters/RequestError;

    invoke-virtual {v0, v1}, Lcom/fyber/requesters/RewardedVideoRequester;->a(Lcom/fyber/requesters/RequestError;)V

    .line 159
    :cond_0
    return-void
.end method

.method public final didReceiveOffers(Z)V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/fyber/requesters/RewardedVideoRequester$a;->a:Lcom/fyber/requesters/RewardedVideoRequester;

    new-instance v1, Lcom/fyber/requesters/f;

    invoke-direct {v1, p0, p1}, Lcom/fyber/requesters/f;-><init>(Lcom/fyber/requesters/RewardedVideoRequester$a;Z)V

    invoke-virtual {v0, v1}, Lcom/fyber/requesters/RewardedVideoRequester;->a(Lcom/fyber/utils/b;)V

    .line 151
    return-void
.end method
