.class final Lcom/fyber/ads/videos/e;
.super Ljava/lang/Object;
.source "RewardedVideoClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/d;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/d;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/fyber/ads/videos/e;->a:Lcom/fyber/ads/videos/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/fyber/ads/videos/e;->a:Lcom/fyber/ads/videos/d;

    iget-object v0, v0, Lcom/fyber/ads/videos/d;->a:Lcom/fyber/ads/videos/c;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_MESSAGE_OFFLINE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v1}, Lcom/fyber/utils/r;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/c;->a(Lcom/fyber/ads/videos/c;Ljava/lang/String;)V

    .line 158
    return-void
.end method
