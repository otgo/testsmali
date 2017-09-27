.class public Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;
.super Lcom/sponsorpay/mediation/SPMediationAdapter;
.source "AdColonyMediationAdapter.java"

# interfaces
.implements Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;


# static fields
.field private static final ADAPTER_NAME:Ljava/lang/String; = "AdColony"

.field private static final ADAPTER_VERSION:Ljava/lang/String; = "2.2.2-r3"

.field private static final APP_ID:Ljava/lang/String; = "app.id"

.field private static final CLIENT_OPTIONS:Ljava/lang/String; = "client.options"

.field private static final CUSTOM_ID:Ljava/lang/String; = "custom.id"

.field private static final DEVICE_ID:Ljava/lang/String; = "device.id"

.field private static final TAG:Ljava/lang/String; = "AdColonyAdapter"

.field private static final ZONE_IDS_INTERSTITIAL:Ljava/lang/String; = "zone.ids.interstitial"

.field private static final ZONE_IDS_REWARDED_VIDEO:Ljava/lang/String; = "zone.ids.rewarded.video"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mInterstitialMediationAdapter:Lcom/sponsorpay/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

.field private mVideoMediationAdapter:Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sponsorpay/mediation/SPMediationAdapter;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;->setCustomId()V

    return-void
.end method

.method static synthetic access$100(Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;->setDeviceId()V

    return-void
.end method

.method static synthetic access$202(Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;Lcom/sponsorpay/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)Lcom/sponsorpay/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;
    .param p1, "x1"    # Lcom/sponsorpay/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;->mInterstitialMediationAdapter:Lcom/sponsorpay/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;)Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;
    .param p1, "x1"    # Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;->mVideoMediationAdapter:Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;

    return-object p1
.end method

.method private getZoneIds(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "selectedZoneId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 165
    .local v5, "zoneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "AdColony"

    const-class v7, Lorg/json/JSONArray;

    invoke-static {v6, p1, v7}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->getConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 167
    .local v3, "zoneIdJsonArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_1

    .line 169
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 171
    :try_start_0
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "id":Ljava/lang/String;
    invoke-static {v2}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 173
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v2    # "id":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "exception":Lorg/json/JSONException;
    const-string v6, "AdColonyAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error on parsing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 182
    .end local v0    # "exception":Lorg/json/JSONException;
    .end local v1    # "i":I
    :cond_1
    const-string v6, "AdColony"

    const-class v7, Ljava/lang/String;

    invoke-static {v6, p1, v7}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->getConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 184
    .local v4, "zoneIdString":Ljava/lang/String;
    invoke-static {v4}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 185
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 188
    .end local v4    # "zoneIdString":Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method private setCustomId()V
    .locals 4

    .prologue
    .line 201
    :try_start_0
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sponsorpay/credentials/SPCredentials;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "userId":Ljava/lang/String;
    invoke-static {v1}, Lcom/jirbo/adcolony/AdColony;->setCustomID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v1    # "userId":Ljava/lang/String;
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 205
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v2, "AdColonyAdapter"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v2, "AdColonyAdapter"

    const-string v3, "Default AdColony UserID will be used"

    invoke-static {v2, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private setDeviceId()V
    .locals 4

    .prologue
    .line 192
    const-string v1, "AdColony"

    const-string v2, "device.id"

    const-class v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->getConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    .local v0, "deviceId":Ljava/lang/String;
    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    invoke-static {v0}, Lcom/jirbo/adcolony/AdColony;->setDeviceID(Ljava/lang/String;)V

    .line 196
    :cond_0
    return-void
.end method


# virtual methods
.method public getInterstitialMediationAdapter()Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter",
            "<+",
            "Lcom/sponsorpay/mediation/SPMediationAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;->mInterstitialMediationAdapter:Lcom/sponsorpay/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    return-object v0
.end method

.method protected getListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "AdColony"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string v0, "2.2.2-r3"

    return-object v0
.end method

.method public getVideoMediationAdapter()Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;->mVideoMediationAdapter:Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;

    return-object v0
.end method

.method public bridge synthetic getVideoMediationAdapter()Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;->getVideoMediationAdapter()Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onAdColonyAdAvailabilityChange(ZLjava/lang/String;)V
    .locals 3
    .param p1, "available"    # Z
    .param p2, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Availability change for zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  with value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {p2}, Lcom/jirbo/adcolony/AdColony;->isZoneV4VC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZoneID \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'is rewarded video."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;->mVideoMediationAdapter:Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->maintainAvailability(ZLjava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZoneID \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'is interstitial."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;->mInterstitialMediationAdapter:Lcom/sponsorpay/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/sponsorpay/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->maintainAvailability(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public startAdapter(Landroid/app/Activity;)Z
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 57
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 58
    const-string v1, "AdColonyAdapter"

    const-string v2, "AdColony requires Android Version 2.3.3\nThe mediation adapter will not be started"

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_0
    return v0

    .line 63
    :cond_0
    const-string v1, "AdColonyAdapter"

    const-string v2, "Starting AdColony adapter"

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "AdColony"

    const-string v2, "app.id"

    const-class v8, Ljava/lang/String;

    invoke-static {v1, v2, v8}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->getConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 67
    .local v4, "appId":Ljava/lang/String;
    const-string v1, "zone.ids.interstitial"

    invoke-direct {p0, v1}, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;->getZoneIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 68
    .local v6, "zoneIdInterstitialList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "zone.ids.rewarded.video"

    invoke-direct {p0, v1}, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;->getZoneIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 70
    .local v7, "zoneIdRewardedVideoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "AdColony"

    const-string v2, "client.options"

    const-class v8, Ljava/lang/String;

    invoke-static {v1, v2, v8}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->getConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 74
    .local v3, "clientOptions":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v5, "tUsedZones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    const-string v1, "AdColonyAdapter"

    const-string v2, "At least one Zone ID must be provided! Adapter won\'t start."

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-static {v4}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    const-string v1, "AdColonyAdapter"

    const-string v2, "App Id is not provided! Adapter won\'t start"

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v8, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;-><init>(Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    const/4 v0, 0x1

    goto :goto_0
.end method
