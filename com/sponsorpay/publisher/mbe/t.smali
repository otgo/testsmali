.class public final Lcom/sponsorpay/publisher/mbe/t;
.super Ljava/lang/Object;
.source "SPBrandEngageRequest.java"

# interfaces
.implements Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/sponsorpay/credentials/SPCredentials;

.field private c:Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;

.field private d:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;


# direct methods
.method public constructor <init>(Lcom/sponsorpay/credentials/SPCredentials;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/t;->b:Lcom/sponsorpay/credentials/SPCredentials;

    .line 35
    iput-object p2, p0, Lcom/sponsorpay/publisher/mbe/t;->a:Landroid/app/Activity;

    .line 36
    iput-object p3, p0, Lcom/sponsorpay/publisher/mbe/t;->d:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    .line 37
    iput-object p4, p0, Lcom/sponsorpay/publisher/mbe/t;->c:Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/t;->d:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-virtual {v0, p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->setStatusListener(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener;)Z

    .line 42
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/t;->d:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/t;->b:Lcom/sponsorpay/credentials/SPCredentials;

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/t;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->requestOffers(Lcom/sponsorpay/credentials/SPCredentials;Landroid/app/Activity;)Z

    .line 43
    return-void
.end method

.method public final didChangeStatus(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;)V
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->ERROR:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    if-ne p1, v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/t;->c:Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;

    const-string v1, "An error happened while trying to get offers from mBE"

    invoke-interface {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;->onSPBrandEngageError(Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public final didReceiveOffers(Z)V
    .locals 4

    .prologue
    .line 56
    if-eqz p1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/t;->c:Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/t;->d:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->canStartEngagement()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/t;->a:Landroid/app/Activity;

    const-class v3, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;->onSPBrandEngageOffersAvailable(Landroid/content/Intent;)V

    .line 61
    :goto_1
    return-void

    .line 57
    :cond_0
    const-string v0, "SPBrandEngageRequest"

    const-string v2, "Undefined error"

    invoke-static {v0, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/t;->c:Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;

    invoke-interface {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;->onSPBrandEngageOffersNotAvailable()V

    goto :goto_1
.end method
