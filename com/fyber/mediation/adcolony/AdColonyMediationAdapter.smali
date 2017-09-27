.class public Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;
.super Lcom/fyber/mediation/MediationAdapter;
.source "AdColonyMediationAdapter.java"

# interfaces
.implements Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;


# annotations
.annotation runtime Lcom/fyber/mediation/annotations/AdapterDefinition;
    apiVersion = 0x3
    name = "AdColony"
    version = "2.3.0-r3"
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "app.id"

.field public static final CLIENT_OPTIONS:Ljava/lang/String; = "client.options"

.field public static final CONFIRMATION_DIALOG:Ljava/lang/String; = "with.confirmation.dialog"

.field private static final CUSTOM_ID:Ljava/lang/String; = "custom.id"

.field private static final DEVICE_ID:Ljava/lang/String; = "device.id"

.field public static final TAG:Ljava/lang/String;

.field public static final ZONE_IDS_INTERSTITIAL:Ljava/lang/String; = "zone.ids.interstitial"

.field public static final ZONE_IDS_REWARDED_VIDEO:Ljava/lang/String; = "zone.ids.rewarded.video"


# instance fields
.field private configs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mInterstitialMediationAdapter:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

.field private mVideoMediationAdapter:Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

.field private mZoneIdInterstitialList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneIdRewardedVideoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/fyber/mediation/MediationAdapter;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->setDeviceId()V

    return-void
.end method

.method static synthetic access$200(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mZoneIdInterstitialList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;
    .param p1, "x1"    # Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mInterstitialMediationAdapter:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mZoneIdRewardedVideoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;)Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;
    .param p1, "x1"    # Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mVideoMediationAdapter:Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->shouldShowConfirmationDialog()Z

    move-result v0

    return v0
.end method

.method private getZoneIds(Ljava/lang/String;)Ljava/util/List;
    .locals 10
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
    .line 177
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 179
    .local v5, "zoneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->configs:Ljava/util/Map;

    const-class v8, [Ljava/lang/String;

    invoke-static {v7, p1, v8}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 180
    .local v6, "zoneIdsFromAnnotation":[Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 182
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 183
    .local v2, "id":Ljava/lang/String;
    invoke-static {v2}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 184
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "len$":I
    :cond_1
    iget-object v7, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->configs:Ljava/util/Map;

    const-class v8, Ljava/lang/String;

    invoke-static {v7, p1, v8}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 191
    .local v4, "zoneIdString":Ljava/lang/String;
    invoke-static {v4}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 192
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 195
    .end local v4    # "zoneIdString":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "selected zone id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-object v5
.end method

.method private setDeviceId()V
    .locals 4

    .prologue
    .line 205
    iget-object v1, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->configs:Ljava/util/Map;

    const-string v2, "device.id"

    const-class v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 206
    .local v0, "deviceId":Ljava/lang/String;
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-static {v0}, Lcom/jirbo/adcolony/AdColony;->setDeviceID(Ljava/lang/String;)V

    .line 209
    :cond_0
    return-void
.end method

.method private shouldShowConfirmationDialog()Z
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->configs:Ljava/util/Map;

    const-string v1, "with.confirmation.dialog"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic getInterstitialMediationAdapter()Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getInterstitialMediationAdapter()Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getInterstitialMediationAdapter()Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mInterstitialMediationAdapter:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

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
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "AdColony"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "2.3.0-r3"

    return-object v0
.end method

.method public bridge synthetic getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getVideoMediationAdapter()Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getVideoMediationAdapter()Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mVideoMediationAdapter:Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    return-object v0
.end method

.method public onAdColonyAdAvailabilityChange(ZLjava/lang/String;)V
    .locals 3
    .param p1, "available"    # Z
    .param p2, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getName()Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {p2}, Lcom/jirbo/adcolony/AdColony;->isZoneV4VC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZoneID \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is rewarded video."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mZoneIdInterstitialList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZoneID \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is rewarded video, but passed as interstitial, please check your configuration."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mVideoMediationAdapter:Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->maintainAvailability(ZLjava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZoneID \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is interstitial."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mZoneIdRewardedVideoList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZoneID \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is interstitial, but passed as rewarded video, please check your configuration."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mInterstitialMediationAdapter:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->maintainAvailability(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
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
    .local p2, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 53
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 54
    sget-object v1, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "AdColony requires Android Version 2.3.3\nThe mediation adapter will not be started"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    return v0

    .line 59
    :cond_0
    iput-object p2, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->configs:Ljava/util/Map;

    .line 60
    sget-object v1, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Starting AdColony adapter"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->configs:Ljava/util/Map;

    const-string v2, "app.id"

    const-class v6, Ljava/lang/String;

    invoke-static {v1, v2, v6}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 64
    .local v4, "appId":Ljava/lang/String;
    const-string v1, "zone.ids.interstitial"

    invoke-direct {p0, v1}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getZoneIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mZoneIdInterstitialList:Ljava/util/List;

    .line 65
    const-string v1, "zone.ids.rewarded.video"

    invoke-direct {p0, v1}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getZoneIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mZoneIdRewardedVideoList:Ljava/util/List;

    .line 67
    iget-object v1, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->configs:Ljava/util/Map;

    const-string v2, "client.options"

    const-class v6, Ljava/lang/String;

    invoke-static {v1, v2, v6}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 70
    .local v3, "clientOptions":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v5, "tUsedZones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mZoneIdRewardedVideoList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    iget-object v1, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mZoneIdInterstitialList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    sget-object v1, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "At least one Zone ID must be provided! Adapter won\'t start."

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {v4}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    sget-object v1, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "App Id is not provided! Adapter won\'t start"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_2
    iget-object v6, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;-><init>(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    const/4 v0, 0x1

    goto :goto_0
.end method
