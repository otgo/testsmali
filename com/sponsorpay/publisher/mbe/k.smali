.class final Lcom/sponsorpay/publisher/mbe/k;
.super Lcom/sponsorpay/utils/SPWebClient;
.source "SPBrandEngageClient.java"


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 721
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/k;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-direct {p0, p2}, Lcom/sponsorpay/utils/SPWebClient;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected final getHostActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/k;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->g(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected final onPlayStoreNotFound()V
    .locals 2

    .prologue
    .line 832
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/k;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_PLAY_STORE_UNAVAILABLE:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v1}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Ljava/lang/String;)V

    .line 833
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 804
    const-string v0, "SPBrandEngageClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceivedError url - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const-string v0, "market://"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    const-string v0, "SPBrandEngageClient"

    const-string v1, "discarding error - market:// url"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :goto_0
    return-void

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/k;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    move-result-object v0

    sget-object v1, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->QUERYING_SERVER_FOR_OFFERS:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    if-ne v0, v1, :cond_1

    .line 812
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/k;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    sget-object v1, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->ERROR:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;)V

    .line 813
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/k;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->l(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)V

    .line 821
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sponsorpay/utils/SPWebClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 815
    :cond_1
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/k;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->p(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 816
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/k;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->p(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v3}, Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_1

    .line 818
    :cond_2
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/k;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_ERROR_DIALOG_MESSAGE_DEFAULT:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v1}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected final onSponsorPayExitScheme(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 837
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/k;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    .line 839
    if-nez v0, :cond_0

    .line 845
    :goto_0
    return-void

    .line 843
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 844
    invoke-virtual {p0, p2}, Lcom/sponsorpay/publisher/mbe/k;->launchActivityWithUrl(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected final onTargetActivityStart(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 826
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/k;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    const-string v1, "USER_ENGAGED"

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->b(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Ljava/lang/String;)V

    .line 827
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/k;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    sget-object v1, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->PENDING_CLOSE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;)V

    .line 828
    return-void
.end method

.method protected final processSponsorPayScheme(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 725
    const-string v0, "requestOffers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/k;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    const-string v1, "n"

    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;I)V

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    const-string v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 729
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/k;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    const-string v1, "status"

    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->b(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Ljava/lang/String;)V

    goto :goto_0

    .line 730
    :cond_2
    const-string v0, "validate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 731
    const-string v0, "tpn"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 732
    const-string v1, "SPBrandEngageClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MBE client asks to validate a third party network: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 734
    const-string v2, "id"

    const-string v3, "id"

    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    sget-object v2, Lcom/sponsorpay/mediation/SPMediationCoordinator;->INSTANCE:Lcom/sponsorpay/mediation/SPMediationCoordinator;

    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/k;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v3}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->j(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/sponsorpay/publisher/mbe/l;

    invoke-direct {v4, p0}, Lcom/sponsorpay/publisher/mbe/l;-><init>(Lcom/sponsorpay/publisher/mbe/k;)V

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/sponsorpay/mediation/SPMediationCoordinator;->validateVideoNetwork(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;)V

    goto :goto_0

    .line 745
    :cond_3
    const-string v0, "play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 746
    const-string v0, "tpn"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 748
    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 750
    new-instance v0, Lcom/sponsorpay/publisher/mbe/m;

    invoke-direct {v0, p0}, Lcom/sponsorpay/publisher/mbe/m;-><init>(Lcom/sponsorpay/publisher/mbe/k;)V

    .line 758
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/k;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    new-instance v2, Lcom/sponsorpay/publisher/mbe/player/b;

    invoke-direct {v2}, Lcom/sponsorpay/publisher/mbe/player/b;-><init>()V

    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/k;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v3}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->g(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sponsorpay/publisher/mbe/player/b;->a(Landroid/app/Activity;)Lcom/sponsorpay/publisher/mbe/player/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sponsorpay/publisher/mbe/player/b;->a(Lcom/sponsorpay/publisher/mbe/player/SPNativeVideoPlayerListener;)Lcom/sponsorpay/publisher/mbe/player/b;

    move-result-object v0

    const-string v2, "id"

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sponsorpay/publisher/mbe/player/b;->a(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/b;

    move-result-object v0

    const-string v2, "clickThroughUrl"

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sponsorpay/publisher/mbe/player/b;->b(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/b;

    move-result-object v0

    const-string v2, "alertMessage"

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sponsorpay/publisher/mbe/player/b;->c(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/b;

    move-result-object v0

    const-string v2, "showAlert"

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sponsorpay/publisher/mbe/player/b;->d(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/b;

    move-result-object v0

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/k;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-virtual {v0, v2}, Lcom/sponsorpay/publisher/mbe/player/b;->a(Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView$SPBrandEngageVideoPlayerListener;)Lcom/sponsorpay/publisher/mbe/player/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/b;->a()Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;)Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;

    .line 767
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/k;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->g(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/k;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->p(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 771
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 772
    const-string v2, "id"

    const-string v3, "id"

    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    const-string v2, "SPBrandEngageClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MBE client asks to play an offer from a third party network:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    sget-object v2, Lcom/sponsorpay/mediation/SPMediationCoordinator;->INSTANCE:Lcom/sponsorpay/mediation/SPMediationCoordinator;

    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/k;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v3}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->g(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/sponsorpay/publisher/mbe/n;

    invoke-direct {v4, p0}, Lcom/sponsorpay/publisher/mbe/n;-><init>(Lcom/sponsorpay/publisher/mbe/k;)V

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/sponsorpay/mediation/SPMediationCoordinator;->startVideoEngagement(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;)V

    goto/16 :goto_0

    .line 789
    :cond_5
    const-string v0, "jud"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    invoke-static {}, Lcom/sponsorpay/user/SPUser;->mapToString()Ljava/lang/String;

    move-result-object v0

    .line 792
    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 793
    const-string v0, ""

    .line 795
    :cond_6
    const-string v1, "javascript:Sponsorpay.MBE.SDKInterface.trigger(\'jud\', \'%s\')"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 796
    const-string v1, "SPBrandEngageClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JUD tracking event will be called:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/k;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v1, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->c(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
