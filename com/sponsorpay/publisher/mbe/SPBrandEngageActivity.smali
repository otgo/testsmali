.class public Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;
.super Landroid/app/Activity;
.source "SPBrandEngageActivity.java"

# interfaces
.implements Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity$1;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Lcom/sponsorpay/mediation/SPMediationUserActivityListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->a:Z

    .line 39
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->b:Z

    .line 41
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->c:Z

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->c:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->setRequestedOrientation(I)V

    .line 75
    :cond_0
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-virtual {v0, p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->setStatusListener(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener;)Z

    .line 76
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    iget-boolean v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->c:Z

    invoke-virtual {v0, p0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->startEngagement(Landroid/app/Activity;Z)Z

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->c:Z

    return p1
.end method


# virtual methods
.method protected closeActivity()V
    .locals 2

    .prologue
    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->b:Z

    .line 108
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->setStatusListener(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener;)Z

    .line 109
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->finish()V

    .line 110
    return-void
.end method

.method public didChangeStatus(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;)V
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity$1;->a:[I

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 122
    :pswitch_0
    const-string v0, "CLOSE_FINISHED"

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->setResultAndClose(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :pswitch_1
    const-string v0, "CLOSE_ABORTED"

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->setResultAndClose(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :pswitch_2
    const-string v0, "ERROR"

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->setResultAndClose(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :pswitch_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->a:Z

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public didReceiveOffers(Z)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->d:Lcom/sponsorpay/mediation/SPMediationUserActivityListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->d:Lcom/sponsorpay/mediation/SPMediationUserActivityListener;

    invoke-interface {v0}, Lcom/sponsorpay/mediation/SPMediationUserActivityListener;->notifyOnBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->c:Z

    if-nez v0, :cond_1

    .line 167
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->closeEngagement()V

    goto :goto_0

    .line 169
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 50
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 51
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 53
    if-eqz p1, :cond_0

    .line 54
    const-string v0, "PENDING_CLOSE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->a:Z

    .line 55
    const-string v0, "ENGAGEMENT_ALREADY_CLOSE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->b:Z

    .line 56
    const-string v0, "PLAY_THROUGH_MEDIATION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->c:Z

    .line 57
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->a()V

    .line 67
    :goto_0
    return-void

    .line 59
    :cond_0
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    new-instance v1, Lcom/sponsorpay/publisher/mbe/a;

    invoke-direct {v1, p0}, Lcom/sponsorpay/publisher/mbe/a;-><init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;)V

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->playThroughMediation(Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 90
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->b:Z

    if-nez v0, :cond_0

    .line 92
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->onPause()V

    .line 93
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->closeEngagement()V

    .line 94
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->setStatusListener(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener;)Z

    .line 96
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 82
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->a:Z

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->closeEngagement()V

    .line 85
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 101
    const-string v0, "PENDING_CLOSE"

    iget-boolean v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    const-string v0, "ENGAGEMENT_ALREADY_CLOSE"

    iget-boolean v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    const-string v0, "PLAY_THROUGH_MEDIATION"

    iget-boolean v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->d:Lcom/sponsorpay/mediation/SPMediationUserActivityListener;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->d:Lcom/sponsorpay/mediation/SPMediationUserActivityListener;

    invoke-interface {v0}, Lcom/sponsorpay/mediation/SPMediationUserActivityListener;->notifyOnHomePressed()V

    .line 156
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 157
    return-void
.end method

.method protected setResultAndClose(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 140
    const-string v1, "ENGAGEMENT_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->setResult(ILandroid/content/Intent;)V

    .line 142
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->closeActivity()V

    .line 143
    return-void
.end method

.method public setSPBrandEngageListener(Lcom/sponsorpay/mediation/SPMediationUserActivityListener;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->d:Lcom/sponsorpay/mediation/SPMediationUserActivityListener;

    if-nez v0, :cond_0

    .line 147
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->d:Lcom/sponsorpay/mediation/SPMediationUserActivityListener;

    .line 149
    :cond_0
    return-void
.end method
