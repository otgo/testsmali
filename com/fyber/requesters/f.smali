.class final Lcom/fyber/requesters/f;
.super Lcom/fyber/utils/b;
.source "RewardedVideoRequester.java"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/fyber/requesters/RewardedVideoRequester$a;


# direct methods
.method constructor <init>(Lcom/fyber/requesters/RewardedVideoRequester$a;Z)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/fyber/requesters/f;->b:Lcom/fyber/requesters/RewardedVideoRequester$a;

    iput-boolean p2, p0, Lcom/fyber/requesters/f;->a:Z

    invoke-direct {p0}, Lcom/fyber/utils/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/fyber/requesters/f;->a:Z

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/fyber/requesters/f;->b:Lcom/fyber/requesters/RewardedVideoRequester$a;

    iget-object v0, v0, Lcom/fyber/requesters/RewardedVideoRequester$a;->a:Lcom/fyber/requesters/RewardedVideoRequester;

    iget-object v0, v0, Lcom/fyber/requesters/RewardedVideoRequester;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/RequestCallback;

    iget-object v2, p0, Lcom/fyber/requesters/f;->b:Lcom/fyber/requesters/RewardedVideoRequester$a;

    .line 1162
    sget-object v1, Lcom/fyber/ads/videos/c;->a:Lcom/fyber/ads/videos/c;

    invoke-virtual {v1}, Lcom/fyber/ads/videos/c;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1164
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v2, Lcom/fyber/requesters/RewardedVideoRequester$a;->a:Lcom/fyber/requesters/RewardedVideoRequester;

    invoke-static {v2}, Lcom/fyber/requesters/RewardedVideoRequester;->a(Lcom/fyber/requesters/RewardedVideoRequester;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/fyber/ads/videos/RewardedVideoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1165
    const-string v2, "EXTRA_AD_FORMAT"

    sget-object v3, Lcom/fyber/ads/AdFormat;->REWARDED_VIDEO:Lcom/fyber/ads/AdFormat;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 145
    :goto_0
    invoke-interface {v0, v1}, Lcom/fyber/requesters/RequestCallback;->onAdAvailable(Landroid/content/Intent;)V

    .line 149
    :goto_1
    return-void

    .line 1168
    :cond_0
    const-string v1, "RewardedVideoRequester"

    const-string v2, "Undefined error"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    const/4 v1, 0x0

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/fyber/requesters/f;->b:Lcom/fyber/requesters/RewardedVideoRequester$a;

    iget-object v0, v0, Lcom/fyber/requesters/RewardedVideoRequester$a;->a:Lcom/fyber/requesters/RewardedVideoRequester;

    iget-object v0, v0, Lcom/fyber/requesters/RewardedVideoRequester;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/RequestCallback;

    sget-object v1, Lcom/fyber/ads/AdFormat;->REWARDED_VIDEO:Lcom/fyber/ads/AdFormat;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/RequestCallback;->onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V

    goto :goto_1
.end method
