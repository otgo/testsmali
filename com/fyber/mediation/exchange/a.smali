.class public final Lcom/fyber/mediation/exchange/a;
.super Lcom/fyber/mediation/MediationAdapter;
.source "ExchangeAdapter.java"


# instance fields
.field private a:Lcom/fyber/ads/interstitials/exchange/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/fyber/mediation/MediationAdapter;-><init>()V

    .line 26
    new-instance v0, Lcom/fyber/ads/interstitials/exchange/a;

    invoke-direct {v0, p0}, Lcom/fyber/ads/interstitials/exchange/a;-><init>(Lcom/fyber/mediation/exchange/a;)V

    iput-object v0, p0, Lcom/fyber/mediation/exchange/a;->a:Lcom/fyber/ads/interstitials/exchange/a;

    .line 27
    return-void
.end method


# virtual methods
.method public final bridge synthetic getInterstitialMediationAdapter()Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 19
    .line 1051
    iget-object v0, p0, Lcom/fyber/mediation/exchange/a;->a:Lcom/fyber/ads/interstitials/exchange/a;

    .line 19
    return-object v0
.end method

.method protected final getListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "Fyber"

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/fyber/Fyber;->RELEASE_VERSION_STRING:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter",
            "<+",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public final startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method
