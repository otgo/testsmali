.class public Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;
.super Lcom/chartboost/sdk/ChartboostDelegate;
.source "ChartboostMediationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FyberChartboostDelegate"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;


# direct methods
.method public constructor <init>(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;)V
    .locals 1

    .prologue
    .line 188
    iput-object p1, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    invoke-direct {p0}, Lcom/chartboost/sdk/ChartboostDelegate;-><init>()V

    .line 191
    const-string v0, "FyberChartboostDelegate"

    iput-object v0, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->TAG:Ljava/lang/String;

    return-void
.end method

.method private logMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 341
    const-string v0, "FyberChartboostDelegate"

    invoke-static {v0, p1}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void
.end method


# virtual methods
.method public didCacheInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCacheInterstitial(Ljava/lang/String;)V

    .line 214
    const-string v0, "Interstitial has been cached."

    invoke-direct {p0, v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->access$300(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;)Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->fyberSetAdAvailable()V

    .line 216
    return-void
.end method

.method public didCacheRewardedVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 288
    const-string v0, "RV has been cached"

    invoke-direct {p0, v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 289
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCacheRewardedVideo(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 248
    const-string v0, "Interstitial has been clicked."

    invoke-direct {p0, v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 249
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didClickInterstitial(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->access$300(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;)Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->fyberFireClickEvent()V

    .line 251
    return-void
.end method

.method public didClickRewardedVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 316
    const-string v0, "RV has been clicked"

    invoke-direct {p0, v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 317
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didClickRewardedVideo(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public didCloseInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 241
    const-string v0, "Interstitial has been closed."

    invoke-direct {p0, v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 242
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCloseInterstitial(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->access$300(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;)Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->fyberFireCloseEvent()V

    .line 244
    return-void
.end method

.method public didCloseRewardedVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 309
    const-string v0, "RV has been closed"

    invoke-direct {p0, v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->access$400(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;)Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;->fyberNotifyCloseEngagement()V

    .line 311
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCloseRewardedVideo(Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public didCompleteRewardedVideo(Ljava/lang/String;I)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "reward"    # I

    .prologue
    .line 322
    const-string v0, "RV has been completed"

    invoke-direct {p0, v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 323
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didCompleteRewardedVideo(Ljava/lang/String;I)V

    .line 324
    iget-object v0, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->access$400(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;)Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;->fyberSetVideoPlayed()V

    .line 325
    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 235
    const-string v0, "Interstitial has been dismissed."

    invoke-direct {p0, v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 236
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDismissInterstitial(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public didDismissRewardedVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 303
    const-string v0, "RV has been dismissed - let\'s DO NOT notify as closed"

    invoke-direct {p0, v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 304
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDismissRewardedVideo(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public didDisplayInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 255
    const-string v0, "Interstitial has been displayed."

    invoke-direct {p0, v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 256
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDisplayInterstitial(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->access$300(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;)Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->fyberFireImpressionEvent()V

    .line 258
    return-void
.end method

.method public didDisplayRewardedVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 329
    const-string v0, "RV has just been shown"

    invoke-direct {p0, v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 330
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDisplayRewardedVideo(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->access$400(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;)Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;->fyberNotifyVideoStarted()V

    .line 332
    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 3
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 220
    const-string v0, "Interstitial load failed."

    invoke-direct {p0, v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 221
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 222
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    :cond_0
    const-string v0, "FyberChartboostDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "FyberChartboostDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_0
    return-void

    .line 227
    :cond_1
    const-string v0, "FyberChartboostDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v0, "FyberChartboostDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->access$300(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;)Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->fyberFireValidationErrorEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 3
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 294
    const-string v0, "RV failed to be loaded."

    invoke-direct {p0, v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 295
    const-string v0, "FyberChartboostDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v0, "FyberChartboostDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 299
    return-void
.end method

.method public didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBClickError;

    .prologue
    .line 262
    const-string v0, "Click failed to be recorded."

    invoke-direct {p0, v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 263
    const-string v0, "FyberChartboostDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v0, "FyberChartboostDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V

    .line 267
    return-void
.end method

.method public didPauseClickForConfirmation()V
    .locals 1

    .prologue
    .line 271
    const-string v0, "didPauseClickForConfirmation() has been invoked"

    invoke-direct {p0, v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 272
    invoke-super {p0}, Lcom/chartboost/sdk/ChartboostDelegate;->didPauseClickForConfirmation()V

    .line 273
    return-void
.end method

.method public shouldDisplayInterstitial(Ljava/lang/String;)Z
    .locals 3
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->shouldRequestInterstitial(Ljava/lang/String;)Z

    move-result v0

    .line 207
    .local v0, "isShouldDisplay":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Should we display an interstitial? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 208
    return v0
.end method

.method public shouldDisplayRewardedVideo(Ljava/lang/String;)Z
    .locals 3
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->shouldRequestInterstitial(Ljava/lang/String;)Z

    move-result v0

    .line 282
    .local v0, "isShouldDisplay":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Should we display RV? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 283
    return v0
.end method

.method public shouldRequestInterstitial(Ljava/lang/String;)Z
    .locals 3
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->shouldRequestInterstitial(Ljava/lang/String;)Z

    move-result v0

    .line 200
    .local v0, "isShouldRequest":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Should we request for an interstitial? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 201
    return v0
.end method

.method public willDisplayVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 336
    const-string v0, "RV is about to be displayed"

    invoke-direct {p0, v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 337
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->willDisplayVideo(Ljava/lang/String;)V

    .line 338
    return-void
.end method
