.class Lcom/warlings2/googleservices$7;
.super Landroid/os/AsyncTask;
.source "googleservices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warlings2/googleservices;->googleservices__sign_in(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/warlings2/googleservices;


# direct methods
.method constructor <init>(Lcom/warlings2/googleservices;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/warlings2/googleservices$7;->this$0:Lcom/warlings2/googleservices;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 419
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/warlings2/googleservices$7;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 423
    :try_start_0
    sget-object v0, Lcom/warlings2/googleservices;->mMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    iget-object v1, p0, Lcom/warlings2/googleservices$7;->this$0:Lcom/warlings2/googleservices;

    iget-object v1, v1, Lcom/warlings2/googleservices;->supersonicRewardeListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0, v1}, Lcom/supersonic/mediationsdk/sdk/Supersonic;->setRewardedVideoListener(Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;)V

    .line 424
    sget-object v0, Lcom/warlings2/googleservices;->mMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    iget-object v1, p0, Lcom/warlings2/googleservices$7;->this$0:Lcom/warlings2/googleservices;

    iget-object v1, v1, Lcom/warlings2/googleservices;->supersonicOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v0, v1}, Lcom/supersonic/mediationsdk/sdk/Supersonic;->setOfferwallListener(Lcom/supersonic/mediationsdk/sdk/OfferwallListener;)V

    .line 425
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    .line 428
    sget-object v1, Lcom/warlings2/googleservices;->mMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    sget-object v2, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v3, "3e374789"

    invoke-interface {v1, v2, v3, v0}, Lcom/supersonic/mediationsdk/sdk/Supersonic;->initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    sget-object v1, Lcom/warlings2/googleservices;->mMediationAgent:Lcom/supersonic/mediationsdk/sdk/Supersonic;

    sget-object v2, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v3, "3e374789"

    invoke-interface {v1, v2, v3, v0}, Lcom/supersonic/mediationsdk/sdk/Supersonic;->initOfferwall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    const-string v0, "DONE"

    return-object v0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    const-string v1, "googleservices"

    const-string v2, "supersonic"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
