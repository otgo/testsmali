.class public Lcom/unity3d/ads/android/UnityAds;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field public static final UNITY_ADS_OPTION_GAMERSID_KEY:Ljava/lang/String; = "sid"

.field public static final UNITY_ADS_OPTION_MUTE_VIDEO_SOUNDS:Ljava/lang/String; = "muteVideoSounds"

.field public static final UNITY_ADS_OPTION_NOOFFERSCREEN_KEY:Ljava/lang/String; = "noOfferScreen"

.field public static final UNITY_ADS_OPTION_OPENANIMATED_KEY:Ljava/lang/String; = "openAnimated"

.field public static final UNITY_ADS_OPTION_VIDEO_USES_DEVICE_ORIENTATION:Ljava/lang/String; = "useDeviceOrientationForVideo"

.field public static final UNITY_ADS_REWARDITEM_NAME_KEY:Ljava/lang/String; = "name"

.field public static final UNITY_ADS_REWARDITEM_PICTURE_KEY:Ljava/lang/String; = "picture"

.field private static a:Z

.field private static b:Lcom/unity3d/ads/android/IUnityAdsListener;

.field private static c:Lcom/unity3d/ads/android/UnityAds;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/ads/android/UnityAds;->a:Z

    .line 52
    sput-object v1, Lcom/unity3d/ads/android/UnityAds;->b:Lcom/unity3d/ads/android/IUnityAdsListener;

    .line 54
    sput-object v1, Lcom/unity3d/ads/android/UnityAds;->c:Lcom/unity3d/ads/android/UnityAds;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/ads/android/UnityAds;->a:Z

    return v0
.end method

.method public static canShow()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 241
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->isAdsReadySent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->WEBAPP_NOT_INITIALIZED:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->logShowStatus(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;)V

    move v0, v1

    .line 278
    :goto_0
    return v0

    .line 246
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->isShowingAds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->SHOWING_ADS:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->logShowStatus(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;)V

    move v0, v1

    .line 248
    goto :goto_0

    .line 251
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->isActiveNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 252
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->NO_INTERNET:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->logShowStatus(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;)V

    move v0, v1

    .line 253
    goto :goto_0

    .line 256
    :cond_2
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->initInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    .line 258
    :cond_3
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    .line 260
    if-nez v0, :cond_4

    .line 261
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->NO_ADS:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->logShowStatus(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;)V

    move v0, v1

    .line 262
    goto :goto_0

    .line 265
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 266
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->ZERO_ADS:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->logShowStatus(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;)V

    move v0, v1

    .line 267
    goto :goto_0

    .line 271
    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 272
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->allowStreamingVideo()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v0}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->isCampaignCached(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 273
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->VIDEO_NOT_CACHED:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->logShowStatus(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;)V

    move v0, v1

    .line 274
    goto :goto_0

    .line 277
    :cond_6
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->READY:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->logShowStatus(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;)V

    .line 278
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static canShowAds()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v0

    return v0
.end method

.method public static changeActivity(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 111
    if-nez p0, :cond_1

    .line 112
    const-string v0, "changeActivity: null, ignoring"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "changeActivity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 117
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 118
    instance-of v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public static enableUnityDeveloperInternalTestMode()V
    .locals 1

    .prologue
    .line 96
    const-string v0, "https://impact.staging.applifier.com/mobile/campaigns"

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_DATA_URL:Ljava/lang/String;

    .line 97
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_DEVELOPER_INTERNAL_TEST:Ljava/lang/Boolean;

    .line 98
    return-void
.end method

.method public static getCurrentRewardItemKey()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 337
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getCurrentItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 342
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultRewardItemKey()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 323
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getDefaultItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getListener()Lcom/unity3d/ads/android/IUnityAdsListener;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->b:Lcom/unity3d/ads/android/IUnityAdsListener;

    return-object v0
.end method

.method public static getRewardItemDetailsWithKey(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 382
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 385
    invoke-virtual {v0, p0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getItem(Ljava/lang/String;)Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getDetails()Ljava/util/Map;

    move-result-object v0

    .line 392
    :goto_0
    return-object v0

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not fetch reward item: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 392
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRewardItemKeys()Ljava/util/ArrayList;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 303
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->allItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 307
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 308
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    .line 309
    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 314
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "1502"

    return-object v0
.end method

.method public static getZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneId()Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasMultipleRewardItems()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 289
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->itemCount()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    .line 294
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 292
    goto :goto_0

    :cond_1
    move v0, v2

    .line 294
    goto :goto_0
.end method

.method public static hide()Z
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 126
    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/android/IUnityAdsListener;)V
    .locals 5

    .prologue
    .line 452
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->c:Lcom/unity3d/ads/android/UnityAds;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->a:Z

    if-eqz v0, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 455
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "gameId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 459
    if-gtz v0, :cond_4

    .line 460
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "gameId is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "gameId does not parse as an integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_4
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initializing Unity Ads version 1502 (Unity + "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") with gameId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 474
    :goto_1
    :try_start_1
    const-string v0, "com.unity3d.ads.android.webapp.UnityAdsWebBridge"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 476
    const-string v1, "handleWebEvent"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 477
    const-string v0, "UnityAds ProGuard check OK"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 488
    :goto_2
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->c:Lcom/unity3d/ads/android/UnityAds;

    if-nez v0, :cond_5

    .line 489
    new-instance v0, Lcom/unity3d/ads/android/UnityAds;

    invoke-direct {v0}, Lcom/unity3d/ads/android/UnityAds;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/UnityAds;->c:Lcom/unity3d/ads/android/UnityAds;

    .line 492
    :cond_5
    invoke-static {p2}, Lcom/unity3d/ads/android/UnityAds;->setListener(Lcom/unity3d/ads/android/IUnityAdsListener;)V

    .line 494
    sput-object p1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAME_ID:Ljava/lang/String;

    .line 495
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->BASE_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 496
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    .line 497
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CURRENT_ACTIVITY:Ljava/lang/ref/WeakReference;

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Is debuggable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->isDebuggable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 501
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->c:Lcom/unity3d/ads/android/UnityAds;

    invoke-static {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->setWebDataListener(Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;)V

    .line 503
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/unity3d/ads/android/b;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/android/b;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 510
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 470
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initializing Unity Ads version 1502 with gameId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 479
    :catch_1
    move-exception v0

    const-string v0, "UnityAds ProGuard check fail: com.unity3d.ads.android.webapp.UnityAdsWebBridge class not found, check ProGuard settings"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 482
    :catch_2
    move-exception v0

    const-string v0, "UnityAds ProGuard check fail: com.unity3d.ads.android.webapp.handleWebEvent method not found, check ProGuard settings"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 484
    :catch_3
    move-exception v0

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UnityAds ProGuard check: Unknown exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public static isSupported()Z
    .locals 2

    .prologue
    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCampaignDataURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    sput-object p0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_DATA_URL:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 1

    .prologue
    .line 67
    if-eqz p0, :cond_0

    .line 68
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->setLogLevel(I)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->setLogLevel(I)V

    goto :goto_0
.end method

.method public static setDefaultRewardItemAsRewardItem()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 367
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getDefaultItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->setCurrentItem(Ljava/lang/String;)Z

    .line 374
    :cond_0
    return-void
.end method

.method public static setListener(Lcom/unity3d/ads/android/IUnityAdsListener;)V
    .locals 0

    .prologue
    .line 103
    sput-object p0, Lcom/unity3d/ads/android/UnityAds;->b:Lcom/unity3d/ads/android/IUnityAdsListener;

    .line 104
    return-void
.end method

.method public static setRewardItemKey(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 351
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 355
    invoke-virtual {v0, p0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->setCurrentItem(Ljava/lang/String;)Z

    move-result v0

    .line 358
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setTestDeveloperId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    sput-object p0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_DEVELOPER_ID:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public static setTestMode(Z)V
    .locals 1

    .prologue
    .line 75
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TESTMODE_ENABLED:Ljava/lang/Boolean;

    .line 76
    return-void
.end method

.method public static setTestOptionsId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    sput-object p0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_OPTIONS_ID:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public static setZone(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->isShowingAds()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to set zone before campaigns are available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->setCurrentZone(Ljava/lang/String;)Z

    move-result v0

    .line 140
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setZone(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 144
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->isShowingAds()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAds;->setZone(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 148
    invoke-virtual {v0, p1}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->setCurrentItem(Ljava/lang/String;)Z

    move-result v0

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static show()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->show(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static show(Ljava/util/Map;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v2

    .line 173
    if-eqz v2, :cond_3

    .line 174
    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->stopAllDownloads()V

    .line 176
    invoke-virtual {v2, p0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->mergeOptions(Ljava/util/Map;)V

    .line 178
    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->noOfferScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 182
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Launching ad from \""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\", options: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneOptions()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 187
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN_CACHED:Ljava/lang/Boolean;

    .line 188
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10010000

    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->openAnimated()Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v0, 0x10000000

    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getBaseActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 189
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 197
    :goto_1
    return v0

    .line 188
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find UnityAdsFullScreenActivity (failed Android manifest merging?): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Weird error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_3
    const-string v0, "Unity Ads current zone is null"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    :goto_2
    move v0, v1

    .line 197
    goto :goto_1

    .line 194
    :cond_4
    const-string v0, "Unity Ads not ready to show ads"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public onWebDataCompleted()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 401
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 402
    const/4 v2, 0x0

    .line 403
    const/4 v1, 0x0

    .line 406
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getData()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getData()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 408
    :try_start_0
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getData()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 413
    :goto_0
    if-nez v1, :cond_0

    .line 414
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->setupCampaignRefreshTimer()V

    .line 416
    const-string v3, "sdkIsCurrent"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 418
    :try_start_1
    const-string v3, "sdkIsCurrent"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 426
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 428
    const-string v1, "Unity Ads"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 429
    const-string v1, "You are not running the latest version of Unity Ads android. Please update your version (this dialog won\'t appear in release builds)."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 430
    const-string v1, "OK"

    new-instance v2, Lcom/unity3d/ads/android/a;

    invoke-direct {v2, p0, v0}, Lcom/unity3d/ads/android/a;-><init>(Lcom/unity3d/ads/android/UnityAds;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 437
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 440
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    sget-boolean v0, Lcom/unity3d/ads/android/UnityAds;->a:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->initialize(Ljava/util/ArrayList;)V

    :cond_2
    new-instance v0, Lcom/unity3d/ads/android/c;

    invoke-direct {v0}, Lcom/unity3d/ads/android/c;-><init>()V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 441
    return-void

    .line 410
    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_0

    .line 420
    :catch_1
    move-exception v1

    move v1, v0

    goto :goto_1
.end method

.method public onWebDataFailed()V
    .locals 1

    .prologue
    .line 445
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_READY_SENT:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/ads/android/IUnityAdsListener;->onFetchFailed()V

    .line 447
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_READY_SENT:Ljava/lang/Boolean;

    .line 449
    :cond_0
    return-void
.end method
