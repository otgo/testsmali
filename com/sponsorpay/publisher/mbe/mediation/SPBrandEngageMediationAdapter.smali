.class public abstract Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;
.super Ljava/lang/Object;
.source "SPBrandEngageMediationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/sponsorpay/mediation/SPMediationAdapter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final START_TIMEOUT_DELAY:I = 0x1194

.field public static final VALIDATION_TIMEOUT_DELAY:I = 0x1194


# instance fields
.field private a:Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Landroid/os/Handler;

.field protected mAdapter:Lcom/sponsorpay/mediation/SPMediationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sponsorpay/mediation/SPMediationAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->e:Z

    .line 86
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mAdapter:Lcom/sponsorpay/mediation/SPMediationAdapter;

    .line 88
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sponsorpay/publisher/mbe/mediation/a;-><init>(Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->f:Landroid/os/Handler;

    .line 101
    return-void
.end method


# virtual methods
.method protected clearVideoEvent()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->c:Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;

    .line 222
    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->d:Ljava/util/Map;

    .line 223
    return-void
.end method

.method public getMediationAdapter()Lcom/sponsorpay/mediation/SPMediationAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mAdapter:Lcom/sponsorpay/mediation/SPMediationAdapter;

    return-object v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mAdapter:Lcom/sponsorpay/mediation/SPMediationAdapter;

    invoke-virtual {v0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mAdapter:Lcom/sponsorpay/mediation/SPMediationAdapter;

    invoke-virtual {v0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected notifyCloseEngagement()V
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventClosed:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->sendVideoEvent(Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;)V

    .line 247
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->clearVideoEvent()V

    .line 248
    return-void

    .line 245
    :cond_0
    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventAborted:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    goto :goto_0
.end method

.method protected notifyVideoError()V
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventError:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->sendVideoEvent(Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;)V

    .line 255
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->clearVideoEvent()V

    .line 256
    return-void
.end method

.method protected notifyVideoStarted()V
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventStarted:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->sendVideoEvent(Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;)V

    .line 239
    return-void
.end method

.method protected sendValidationEvent(Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 186
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->a:Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->a:Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;

    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->getVersion()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->b:Ljava/util/Map;

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;->validationEventResult(Ljava/lang/String;Ljava/lang/String;Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;Ljava/util/Map;)V

    .line 189
    iput-object v4, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->a:Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;

    .line 190
    iput-object v4, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->b:Ljava/util/Map;

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    const-string v0, "SPBrandEngageMediationAdapter"

    const-string v1, "No validation event listener"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sendVideoEvent(Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;)V
    .locals 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->c:Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;

    if-eqz v0, :cond_1

    .line 206
    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventStarted:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    invoke-virtual {p1, v0}, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->c:Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;

    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->getVersion()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->d:Ljava/util/Map;

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;->videoEventOccured(Ljava/lang/String;Ljava/lang/String;Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;Ljava/util/Map;)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_1
    const-string v0, "SPBrandEngageMediationAdapter"

    const-string v1, "No video event listener"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setVideoPlayed()V
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventFinished:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->sendVideoEvent(Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;)V

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->e:Z

    .line 232
    return-void
.end method

.method public abstract startVideo(Landroid/app/Activity;)V
.end method

.method public startVideo(Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->e:Z

    .line 165
    iput-object p2, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->c:Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;

    .line 166
    iput-object p3, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->d:Ljava/util/Map;

    .line 167
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 168
    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->startVideo(Landroid/app/Activity;)V

    .line 169
    return-void
.end method

.method public abstract videosAvailable(Landroid/content/Context;)V
.end method

.method public videosAvailable(Landroid/content/Context;Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    iput-object p2, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->a:Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;

    .line 143
    iput-object p3, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->b:Ljava/util/Map;

    .line 144
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 145
    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->videosAvailable(Landroid/content/Context;)V

    .line 146
    return-void
.end method
