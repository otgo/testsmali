.class public Lcom/fyber/ads/interstitials/InterstitialActivity;
.super Landroid/app/Activity;
.source "InterstitialActivity.java"

# interfaces
.implements Lcom/fyber/ads/interstitials/b;


# static fields
.field public static final AD_STATUS:Ljava/lang/String; = "AD_STATUS"

.field public static final ERROR_MESSAGE:Ljava/lang/String; = "ERROR_MESSAGE"


# instance fields
.field private a:Lcom/fyber/mediation/MediationUserActivityListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/fyber/ads/interstitials/InterstitialActivity;->a:Lcom/fyber/mediation/MediationUserActivityListener;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/fyber/ads/interstitials/InterstitialActivity;->a:Lcom/fyber/mediation/MediationUserActivityListener;

    invoke-interface {v0}, Lcom/fyber/mediation/MediationUserActivityListener;->notifyOnBackPressed()Z

    .line 103
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 104
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fyber/ads/interstitials/InterstitialActivity;->requestWindowFeature(I)Z

    .line 38
    sget-object v0, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    invoke-virtual {v0, p0}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/b;)V

    .line 40
    sget-object v0, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    invoke-virtual {v0, p0}, Lcom/fyber/ads/interstitials/c;->a(Landroid/app/Activity;)Z

    .line 41
    return-void
.end method

.method public onInterstitialAdClosed(Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;)V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    const-string v1, "AD_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 59
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/fyber/ads/interstitials/InterstitialActivity;->setResult(ILandroid/content/Intent;)V

    .line 60
    invoke-virtual {p0}, Lcom/fyber/ads/interstitials/InterstitialActivity;->finish()V

    .line 61
    return-void
.end method

.method public onInterstitialAdError(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    const-string v1, "AD_STATUS"

    sget-object v2, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;->ReasonError:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 70
    const-string v1, "ERROR_MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/fyber/ads/interstitials/InterstitialActivity;->setResult(ILandroid/content/Intent;)V

    .line 72
    invoke-virtual {p0}, Lcom/fyber/ads/interstitials/InterstitialActivity;->finish()V

    .line 73
    return-void
.end method

.method public onInterstitialAdShown()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fyber/ads/interstitials/InterstitialActivity;->a:Lcom/fyber/mediation/MediationUserActivityListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/fyber/ads/interstitials/InterstitialActivity;->a:Lcom/fyber/mediation/MediationUserActivityListener;

    invoke-interface {v0}, Lcom/fyber/mediation/MediationUserActivityListener;->notifyOnHomePressed()V

    .line 92
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 93
    return-void
.end method

.method public setMarketPlaceInterstitialListener(Lcom/fyber/mediation/MediationUserActivityListener;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fyber/ads/interstitials/InterstitialActivity;->a:Lcom/fyber/mediation/MediationUserActivityListener;

    if-nez v0, :cond_0

    .line 80
    iput-object p1, p0, Lcom/fyber/ads/interstitials/InterstitialActivity;->a:Lcom/fyber/mediation/MediationUserActivityListener;

    .line 82
    :cond_0
    return-void
.end method
