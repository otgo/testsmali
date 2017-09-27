.class public Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;
.super Ljava/lang/Object;
.source "SPInterstitialClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient$1;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;


# instance fields
.field private a:Ljava/util/Map;
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

.field private b:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

.field private c:Lcom/sponsorpay/publisher/interstitial/a;

.field private d:Landroid/app/Activity;

.field private e:Ljava/lang/String;

.field private f:Lcom/sponsorpay/credentials/SPCredentials;

.field private g:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;

.field private h:Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    invoke-direct {v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;-><init>()V

    sput-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->READY_TO_CHECK_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->b:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    .line 63
    return-void
.end method

.method private a(Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;)V
    .locals 2

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->b:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    .line 139
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient$1;->a:[I

    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->b:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 141
    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->d:Landroid/app/Activity;

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public availableAd(Lcom/sponsorpay/publisher/interstitial/a;)V
    .locals 4

    .prologue
    .line 165
    if-eqz p1, :cond_1

    .line 166
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->c:Lcom/sponsorpay/publisher/interstitial/a;

    .line 167
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->h:Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->h:Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->d:Landroid/app/Activity;

    const-class v3, Lcom/sponsorpay/publisher/interstitial/SPInterstitialActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;->onSPInterstitialAdAvailable(Landroid/content/Intent;)V

    .line 170
    :cond_0
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->READY_TO_SHOW_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->a(Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;)V

    .line 179
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->h:Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->h:Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;

    invoke-interface {v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;->onSPInterstitialAdNotAvailable()V

    .line 176
    :cond_2
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->READY_TO_CHECK_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->a(Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;)V

    goto :goto_0
.end method

.method public canRequestAds()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->b:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->c()Z

    move-result v0

    return v0
.end method

.method public fireEvent(Lcom/sponsorpay/publisher/interstitial/a;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;)V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->fireEvent(Lcom/sponsorpay/publisher/interstitial/a;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public fireEvent(Lcom/sponsorpay/publisher/interstitial/a;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->f:Lcom/sponsorpay/credentials/SPCredentials;

    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->e:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/sponsorpay/publisher/interstitial/c;->a(Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;Lcom/sponsorpay/publisher/interstitial/a;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;)V

    .line 241
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient$1;->b:[I

    invoke-virtual {p2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 243
    :pswitch_0
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->READY_TO_CHECK_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->a(Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;)V

    .line 244
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->g:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->g:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;->ReasonUserClickedOnAd:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    invoke-interface {v0, v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;->onSPInterstitialAdClosed(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;)V

    goto :goto_0

    .line 249
    :pswitch_1
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->READY_TO_CHECK_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->a(Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;)V

    .line 250
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->g:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->g:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;->ReasonUserClosedAd:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    invoke-interface {v0, v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;->onSPInterstitialAdClosed(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;)V

    goto :goto_0

    .line 255
    :pswitch_2
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->READY_TO_CHECK_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->a(Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;)V

    .line 257
    :pswitch_3
    const-string v0, "SPInterstitialClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An error occurred. Message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->g:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->g:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;

    invoke-interface {v0, p3}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;->onSPInterstitialAdError(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public processAds([Lcom/sponsorpay/publisher/interstitial/a;)V
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->VALIDATING_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->a(Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;)V

    .line 154
    invoke-static {p1}, Lcom/sponsorpay/publisher/interstitial/b;->a([Lcom/sponsorpay/publisher/interstitial/a;)V

    .line 155
    return-void
.end method

.method public requestAds(Lcom/sponsorpay/credentials/SPCredentials;Landroid/app/Activity;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 82
    invoke-static {}, Lcom/sponsorpay/utils/HostInfo;->isDeviceSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    invoke-virtual {p0, v2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->availableAd(Lcom/sponsorpay/publisher/interstitial/a;)V

    .line 92
    :goto_0
    return v0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->canRequestAds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iput-object v2, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->c:Lcom/sponsorpay/publisher/interstitial/a;

    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->f:Lcom/sponsorpay/credentials/SPCredentials;

    iput-object p2, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->d:Landroid/app/Activity;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->a:Ljava/util/Map;

    invoke-static {p1, v0, v1}, Lcom/sponsorpay/publisher/interstitial/d;->a(Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->REQUESTING_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->a(Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;)V

    .line 87
    const/4 v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    const-string v1, "SPInterstitialClient"

    const-string v2, "SPInterstitialClient cannot request offers at this point. It might be requesting offers right now or an offer might be currently being presented to the user."

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAdStateListener(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->g:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;

    .line 282
    return-void
.end method

.method public setCustomParameters(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->b:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->a:Ljava/util/Map;

    .line 128
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->READY_TO_CHECK_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->a(Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;)V

    .line 129
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    .line 131
    :cond_0
    const-string v0, "SPInterstitialClient"

    const-string v1, "Cannot change custom parameters while a request to the server is going on or an offer is being presented to the user."

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRequestListener(Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->h:Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;

    .line 274
    return-void
.end method

.method public showInterstitial(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->b:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    sget-object v0, Lcom/sponsorpay/mediation/SPMediationCoordinator;->INSTANCE:Lcom/sponsorpay/mediation/SPMediationCoordinator;

    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->c:Lcom/sponsorpay/publisher/interstitial/a;

    invoke-virtual {v0, p1, v1}, Lcom/sponsorpay/mediation/SPMediationCoordinator;->showInterstitial(Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/a;)Z

    move-result v0

    .line 205
    if-eqz v0, :cond_1

    .line 206
    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->g:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->g:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;

    invoke-interface {v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;->onSPInterstitialAdShown()V

    .line 209
    :cond_0
    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->SHOWING_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-direct {p0, v1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->a(Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;)V

    .line 213
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public validateAd(Lcom/sponsorpay/publisher/interstitial/a;)Z
    .locals 2

    .prologue
    .line 190
    sget-object v0, Lcom/sponsorpay/mediation/SPMediationCoordinator;->INSTANCE:Lcom/sponsorpay/mediation/SPMediationCoordinator;

    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/sponsorpay/mediation/SPMediationCoordinator;->validateInterstitialNetwork(Landroid/content/Context;Lcom/sponsorpay/publisher/interstitial/a;)Z

    move-result v0

    return v0
.end method
