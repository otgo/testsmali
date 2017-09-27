.class public Lcom/fyber/ads/videos/RewardedVideoActivity;
.super Landroid/app/Activity;
.source "RewardedVideoActivity.java"

# interfaces
.implements Lcom/fyber/ads/videos/t;


# static fields
.field public static final ENGAGEMENT_STATUS:Ljava/lang/String; = "ENGAGEMENT_STATUS"

.field public static final REQUEST_STATUS_PARAMETER_ABORTED_VALUE:Ljava/lang/String; = "CLOSE_ABORTED"

.field public static final REQUEST_STATUS_PARAMETER_ERROR:Ljava/lang/String; = "ERROR"

.field public static final REQUEST_STATUS_PARAMETER_FINISHED_VALUE:Ljava/lang/String; = "CLOSE_FINISHED"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Lcom/fyber/mediation/MediationUserActivityListener;

.field private e:Z

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    iput-boolean v0, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->a:Z

    .line 62
    iput-boolean v0, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->b:Z

    .line 64
    iput-boolean v0, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->c:Z

    .line 67
    iput-boolean v0, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->e:Z

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->c:Z

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/RewardedVideoActivity;->setRequestedOrientation(I)V

    .line 104
    :cond_0
    sget-object v0, Lcom/fyber/ads/videos/c;->a:Lcom/fyber/ads/videos/c;

    invoke-virtual {v0, p0}, Lcom/fyber/ads/videos/c;->a(Lcom/fyber/ads/videos/t;)Z

    .line 106
    sget-object v0, Lcom/fyber/ads/videos/c;->a:Lcom/fyber/ads/videos/c;

    iget-boolean v1, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->c:Z

    invoke-virtual {v0, p0, v1}, Lcom/fyber/ads/videos/c;->a(Lcom/fyber/ads/videos/RewardedVideoActivity;Z)Z

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/videos/RewardedVideoActivity;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/fyber/ads/videos/RewardedVideoActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/videos/RewardedVideoActivity;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->c:Z

    return p1
.end method


# virtual methods
.method protected closeActivity()V
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->b:Z

    .line 147
    sget-object v0, Lcom/fyber/ads/videos/c;->a:Lcom/fyber/ads/videos/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fyber/ads/videos/c;->a(Lcom/fyber/ads/videos/t;)Z

    .line 148
    invoke-virtual {p0}, Lcom/fyber/ads/videos/RewardedVideoActivity;->finish()V

    .line 149
    return-void
.end method

.method public didChangeStatus(Lcom/fyber/ads/videos/t$a;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 165
    sget-object v0, Lcom/fyber/ads/videos/b;->a:[I

    invoke-virtual {p1}, Lcom/fyber/ads/videos/t$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 184
    :goto_0
    return-void

    .line 167
    :pswitch_0
    const-string v0, "CLOSE_FINISHED"

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/RewardedVideoActivity;->setResultAndClose(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :pswitch_1
    const-string v0, "CLOSE_ABORTED"

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/RewardedVideoActivity;->setResultAndClose(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :pswitch_2
    const-string v0, "ERROR"

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/RewardedVideoActivity;->setResultAndClose(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :pswitch_3
    iput-boolean v2, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->a:Z

    goto :goto_0

    .line 179
    :pswitch_4
    iput-boolean v2, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->e:Z

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public didReceiveOffers(Z)V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->e:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->d:Lcom/fyber/mediation/MediationUserActivityListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->d:Lcom/fyber/mediation/MediationUserActivityListener;

    invoke-interface {v0}, Lcom/fyber/mediation/MediationUserActivityListener;->notifyOnBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-boolean v0, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->c:Z

    if-nez v0, :cond_2

    .line 225
    sget-object v0, Lcom/fyber/ads/videos/c;->a:Lcom/fyber/ads/videos/c;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/c;->a()V

    goto :goto_0

    .line 227
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/fyber/ads/videos/RewardedVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 77
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 78
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 81
    if-eqz p1, :cond_0

    .line 82
    const-string v0, "PENDING_CLOSE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->a:Z

    .line 83
    const-string v0, "ENGAGEMENT_ALREADY_CLOSE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->b:Z

    .line 84
    const-string v0, "PLAY_THROUGH_MEDIATION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->c:Z

    .line 85
    invoke-direct {p0}, Lcom/fyber/ads/videos/RewardedVideoActivity;->a()V

    .line 95
    :goto_0
    return-void

    .line 87
    :cond_0
    sget-object v0, Lcom/fyber/ads/videos/c;->a:Lcom/fyber/ads/videos/c;

    new-instance v1, Lcom/fyber/ads/videos/a;

    invoke-direct {v1, p0}, Lcom/fyber/ads/videos/a;-><init>(Lcom/fyber/ads/videos/RewardedVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/fyber/ads/videos/c;->a(Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/RewardedVideoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->f:Landroid/content/BroadcastReceiver;

    .line 142
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 143
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 120
    iget-boolean v0, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->b:Z

    if-nez v0, :cond_0

    .line 122
    sget-object v0, Lcom/fyber/ads/videos/c;->a:Lcom/fyber/ads/videos/c;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/c;->d()V

    .line 123
    sget-object v0, Lcom/fyber/ads/videos/c;->a:Lcom/fyber/ads/videos/c;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/c;->a()V

    .line 124
    sget-object v0, Lcom/fyber/ads/videos/c;->a:Lcom/fyber/ads/videos/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fyber/ads/videos/c;->a(Lcom/fyber/ads/videos/t;)Z

    .line 126
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 112
    iget-boolean v0, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->a:Z

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/fyber/ads/videos/c;->a:Lcom/fyber/ads/videos/c;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/c;->a()V

    .line 115
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 131
    const-string v0, "PENDING_CLOSE"

    iget-boolean v1, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    const-string v0, "ENGAGEMENT_ALREADY_CLOSE"

    iget-boolean v1, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    const-string v0, "PLAY_THROUGH_MEDIATION"

    iget-boolean v1, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->d:Lcom/fyber/mediation/MediationUserActivityListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->d:Lcom/fyber/mediation/MediationUserActivityListener;

    invoke-interface {v0}, Lcom/fyber/mediation/MediationUserActivityListener;->notifyOnHomePressed()V

    .line 210
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->e:Z

    .line 211
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 212
    return-void
.end method

.method public register(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->f:Landroid/content/BroadcastReceiver;

    .line 237
    invoke-virtual {p0, p1, p2}, Lcom/fyber/ads/videos/RewardedVideoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 238
    return-void
.end method

.method protected setResultAndClose(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 188
    const-string v1, "ENGAGEMENT_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/fyber/ads/videos/RewardedVideoActivity;->setResult(ILandroid/content/Intent;)V

    .line 190
    invoke-virtual {p0}, Lcom/fyber/ads/videos/RewardedVideoActivity;->closeActivity()V

    .line 191
    return-void
.end method

.method public setRewardedVideoListener(Lcom/fyber/mediation/MediationUserActivityListener;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->d:Lcom/fyber/mediation/MediationUserActivityListener;

    if-nez v0, :cond_0

    .line 198
    iput-object p1, p0, Lcom/fyber/ads/videos/RewardedVideoActivity;->d:Lcom/fyber/mediation/MediationUserActivityListener;

    .line 200
    :cond_0
    return-void
.end method
