.class public Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;
.super Landroid/app/Activity;
.source "UnityAdsFullscreenActivity.java"

# interfaces
.implements Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;
.implements Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

.field private c:I

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->a:Ljava/lang/Boolean;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    .line 39
    iput v1, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->c:I

    .line 40
    iput-boolean v1, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->d:Z

    .line 41
    iput-boolean v1, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->e:Z

    .line 562
    return-void
.end method

.method private a(Lorg/json/JSONObject;)Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 402
    :try_start_0
    const-string v1, "packageName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "className"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "action"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mimeType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 403
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 404
    const-string v1, "packageName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 406
    if-eqz v0, :cond_0

    const-string v1, "flags"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    const-string v1, "flags"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 471
    :cond_0
    :goto_0
    return-object v0

    .line 413
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 415
    const-string v2, "className"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "packageName"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 416
    const-string v2, "packageName"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "className"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    :cond_2
    const-string v2, "action"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 420
    const-string v2, "action"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    :cond_3
    const-string v2, "uri"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 424
    const-string v2, "uri"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 427
    :cond_4
    const-string v2, "mimeType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 428
    const-string v2, "mimeType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    :cond_5
    const-string v2, "categories"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 432
    const-string v2, "categories"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 434
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_6

    move v2, v0

    .line 435
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 436
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 441
    :cond_6
    const-string v2, "flags"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 442
    const-string v2, "flags"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 445
    :cond_7
    const-string v2, "extras"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 446
    const-string v2, "extras"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v2, v0

    .line 448
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 449
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 451
    const-string v4, "key"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 452
    const-string v5, "value"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 454
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 455
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 456
    :cond_8
    instance-of v5, v0, Ljava/lang/Integer;

    if-eqz v5, :cond_9

    .line 457
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 469
    :catch_0
    move-exception v0

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while parsing intent json: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 471
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 458
    :cond_9
    :try_start_1
    instance-of v5, v0, Ljava/lang/Double;

    if-eqz v5, :cond_a

    .line 459
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v1, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    goto :goto_3

    .line 460
    :cond_a
    instance-of v5, v0, Ljava/lang/Boolean;

    if-eqz v5, :cond_b

    .line 461
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 463
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Unable to parse launch intent extra "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_c
    move-object v0, v1

    .line 468
    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;)Lcom/unity3d/ads/android/view/UnityAdsMainView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 60
    iget-boolean v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->e:Z

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->e:Z

    .line 63
    const-string v0, "Running finish operations on Unity Ads activity"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 65
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->openAnimated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    invoke-virtual {p0, v3, v3}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->overridePendingTransition(II)V

    .line 71
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 74
    :try_start_0
    const-string v1, "action"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    iget-object v1, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    if-eqz v1, :cond_3

    .line 81
    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v2, "none"

    invoke-virtual {v1, v2, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 84
    :cond_3
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-static {v0}, Lcom/unity3d/ads/android/view/UnityAdsViewUtils;->removeViewFromParent(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    if-eqz v0, :cond_5

    .line 87
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    invoke-static {v0}, Lcom/unity3d/ads/android/view/UnityAdsViewUtils;->removeViewFromParent(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v0, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-eqz v0, :cond_4

    .line 90
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v0, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->clearVideoPlayer()V

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v0, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/view/UnityAdsViewUtils;->removeViewFromParent(Landroid/view/View;)V

    .line 93
    sput-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 94
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iput-object v4, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .line 97
    :cond_5
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 98
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/ads/android/IUnityAdsListener;->onHide()V

    .line 101
    :cond_6
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->refreshCampaignsIfNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 104
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 106
    invoke-static {v0}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->isCampaignCached(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->allowCacheVideo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-static {v0}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->cacheCampaign(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    goto/16 :goto_0

    .line 77
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    const-string v0, "Prevent double create of video playback"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 560
    :goto_0
    return-void

    .line 554
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->a:Ljava/lang/Boolean;

    .line 555
    iput-boolean p1, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->d:Z

    .line 556
    const-string v0, "Running threaded"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 557
    new-instance v0, Lcom/unity3d/ads/android/view/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unity3d/ads/android/view/b;-><init>(Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;B)V

    .line 558
    invoke-virtual {v0, p0}, Lcom/unity3d/ads/android/view/b;->setVideoPlayerListener(Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;)V

    .line 559
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x6

    .line 117
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 118
    const-string v0, "Static state lost, finishing activity"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->finish()V

    .line 129
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->useDeviceOrientationForVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    const/4 v0, -0x1

    .line 128
    :cond_1
    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v0, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v0, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v0, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getCurrentPosition()I

    move-result v0

    add-int/lit16 v0, v0, -0x1f4

    iput v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->c:I

    .line 340
    iget v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->c:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->c:I

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v0, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->pauseVideo()V

    .line 343
    :cond_1
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 604
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v0, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v0, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setKeepScreenOn(Z)V

    .line 608
    :cond_0
    iput v1, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->c:I

    .line 609
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->destroyVideoPlayerView()V

    .line 610
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->WebView:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->setViewState(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;)V

    .line 611
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->setRequestedOrientation(I)V

    .line 612
    return-void
.end method

.method private static e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 742
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 743
    const/4 v1, 0x0

    .line 744
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 745
    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getCurrentItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 748
    :goto_0
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onCloseAdsView(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 351
    const-string v0, "WebView requested CloseAdsView"

    .line 352
    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    :cond_0
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 354
    new-instance v0, Lcom/unity3d/ads/android/view/a;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/view/a;-><init>(Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 360
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 664
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 665
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->d()V

    .line 666
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->End:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->onEventPositionReached(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)V

    .line 668
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 671
    :try_start_0
    const-string v1, "campaignId"

    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :goto_0
    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v2, "videoCompleted"

    invoke-virtual {v1, v2, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 679
    sget v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    .line 680
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    const-string v0, "Unity Ads video completed"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 682
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    sget-object v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->setCampaignStatus(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;)V

    .line 683
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/unity3d/ads/android/IUnityAdsListener;->onVideoCompleted(Ljava/lang/String;Z)V

    .line 685
    :cond_0
    return-void

    .line 674
    :catch_0
    move-exception v1

    const-string v1, "Could not create JSON"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 133
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    .line 139
    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAds;->changeActivity(Landroid/app/Activity;)V

    .line 142
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->initWebView()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    if-eqz v0, :cond_1

    const-string v0, "View was not destroyed, trying to destroy it"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    if-nez v0, :cond_2

    new-instance v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;

    invoke-direct {v0, p0, p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;-><init>(Landroid/content/Context;Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->setContentView(Landroid/view/View;)V

    .line 146
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b()V

    .line 147
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    const-string v3, "action"

    const-string v4, "open"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "zone"

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v3

    if-eqz v3, :cond_3

    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    const-string v3, "itemKey"

    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getCurrentItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting up WebView with view:none and data:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v1, "none"

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->WebView:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->setViewState(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;)V

    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->noOfferScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v5}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->a(Z)V

    :cond_4
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/ads/android/IUnityAdsListener;->onShow()V

    .line 148
    :cond_5
    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->a:Ljava/lang/Boolean;

    .line 149
    return-void

    .line 147
    :catch_0
    move-exception v0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v0, "mainview null after open, closing"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->finish()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 242
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->a()V

    .line 243
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 244
    return-void
.end method

.method public onEventPositionReached(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)V
    .locals 2

    .prologue
    .line 656
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignStatus()Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-static {v0, p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->sendCampaignViewProgress(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)Z

    move-result v0

    .line 658
    if-nez v0, :cond_0

    const-string v0, "Sending campaign view progress failed!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 660
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 249
    packed-switch p1, :pswitch_data_0

    .line 275
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 251
    :pswitch_0
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 252
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v0, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Seconds: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v1, v1, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getSecondsUntilBackButtonAllowed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 256
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->finish()V

    .line 272
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->getViewState()Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->VideoPlayer:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    if-eq v0, v1, :cond_2

    .line 260
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->finish()V

    goto :goto_1

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v0, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v0, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getSecondsUntilBackButtonAllowed()I

    move-result v0

    if-nez v0, :cond_3

    .line 263
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->finish()V

    goto :goto_1

    .line 265
    :cond_3
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->disableBackButtonForSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 266
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->finish()V

    goto :goto_1

    .line 269
    :cond_4
    const-string v0, "Prevented back-button"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onLaunchIntent(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 386
    :try_start_0
    invoke-direct {p0, p1}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->a(Lorg/json/JSONObject;)Landroid/content/Intent;

    move-result-object v0

    .line 388
    if-nez v0, :cond_0

    .line 389
    const-string v0, "No suitable intent to launch"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Intent JSON: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 398
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to launch intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOpenPlayStore(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 479
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 481
    if-eqz p1, :cond_2

    .line 482
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 485
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 487
    const-string v0, "iTunesId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 489
    :try_start_0
    const-string v0, "iTunesId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 496
    :goto_0
    const-string v3, "clickUrl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 498
    :try_start_1
    const-string v3, "clickUrl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 505
    :cond_0
    :goto_1
    const-string v3, "bypassAppSheet"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 507
    :try_start_2
    const-string v3, "bypassAppSheet"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 514
    :cond_1
    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Opening playstore activity with storeId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    :try_start_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "market://details?id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 521
    :cond_2
    :goto_3
    return-void

    .line 492
    :catch_0
    move-exception v0

    const-string v0, "Could not fetch playStoreId"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    :cond_3
    move-object v0, v1

    goto :goto_0

    .line 501
    :catch_1
    move-exception v3

    const-string v3, "Could not fetch clickUrl"

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 510
    :catch_2
    move-exception v3

    const-string v3, "Could not fetch bypassAppSheet"

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 515
    :catch_3
    move-exception v0

    const-string v0, "Couldn\'t create PlayStore intent!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 517
    :cond_4
    if-eqz v1, :cond_2

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Opening playStore in browser: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    :try_start_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    const-string v0, "Couldn\'t create browser intent!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onOrientationRequest(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 378
    const-string v0, "orientation"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->setRequestedOrientation(I)V

    .line 379
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 227
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 228
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->c()V

    .line 229
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->a()V

    .line 230
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 231
    return-void
.end method

.method public onPauseVideo(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 330
    const-string v0, "WebView requested PauseVideo"

    .line 331
    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    :cond_0
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 333
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->c()V

    .line 334
    return-void
.end method

.method public onPlayVideo(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 282
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 283
    const-string v0, "campaignId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 284
    const/4 v0, 0x0

    .line 287
    :try_start_0
    const-string v1, "campaignId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 293
    :goto_0
    if-eqz v0, :cond_4

    .line 294
    invoke-static {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getCampaignById(Ljava/lang/String;)Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 295
    invoke-static {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getCampaignById(Ljava/lang/String;)Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    move-result-object v1

    sput-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 298
    :cond_0
    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 299
    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 300
    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 305
    :try_start_1
    const-string v1, "rewatch"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 311
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    iput v3, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->c:I

    .line 315
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Selected campaign="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isViewed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 316
    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 317
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->a:Ljava/lang/Boolean;

    .line 321
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->a(Z)V

    .line 326
    :cond_4
    return-void

    .line 290
    :catch_0
    move-exception v1

    const-string v1, "Could not get campaignId"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 308
    :catch_1
    move-exception v1

    const-string v1, "Couldn\'t get rewatch property"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 201
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 203
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 208
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 209
    iget v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->c:I

    if-lez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v0, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    iget v1, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->c:I

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->c:I

    .line 210
    :cond_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    const-string v0, "Unexpected error while seeking video"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 195
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 197
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 235
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 237
    return-void
.end method

.method public onVideoPlaybackError()V
    .locals 5

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->d()V

    .line 691
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 692
    const-string v0, "videoError"

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->sendAnalyticsRequest(Ljava/lang/String;Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    .line 694
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 695
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 696
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 699
    :try_start_0
    const-string v3, "textKey"

    const-string v4, "videoPlaybackError"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 700
    const-string v3, "textKey"

    const-string v4, "buffering"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 701
    const-string v1, "campaignId"

    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v3}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_0
    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    if-eqz v1, :cond_0

    .line 708
    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v3, "completed"

    invoke-virtual {v1, v3, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 709
    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v3, "showError"

    invoke-virtual {v1, v3, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 710
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v1, "videoCompleted"

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 713
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v0, :cond_1

    .line 714
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    sget-object v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->setCampaignStatus(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;)V

    .line 715
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 717
    :cond_1
    return-void

    .line 704
    :catch_0
    move-exception v1

    const-string v1, "Could not create JSON"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onVideoPlaybackStarted()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 618
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 619
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 622
    :try_start_0
    const-string v0, "campaignId"

    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :goto_0
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->d:Z

    if-nez v0, :cond_0

    .line 628
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/ads/android/IUnityAdsListener;->onVideoStarted()V

    .line 630
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    .line 631
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 632
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 634
    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-static {v2}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->isCampaignCached(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->isCampaignCached(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->allowCacheVideo()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 635
    invoke-static {v0}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->cacheCampaign(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v2, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    iget-object v2, v2, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v0, v2}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->bringChildToFront(Landroid/view/View;)V

    .line 640
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->b()V

    .line 643
    :try_start_1
    const-string v0, "campaignId"

    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 649
    :goto_1
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    if-eqz v0, :cond_2

    .line 650
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v2, "completed"

    invoke-virtual {v0, v2, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 652
    :cond_2
    return-void

    .line 624
    :catch_0
    move-exception v0

    const-string v0, "Could not create JSON"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 646
    :catch_1
    move-exception v0

    const-string v0, "Could not set campaign"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onVideoSkip()V
    .locals 3

    .prologue
    .line 721
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->d()V

    .line 722
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 725
    :try_start_0
    const-string v1, "campaignId"

    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :goto_0
    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v2, "videoCompleted"

    invoke-virtual {v1, v2, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 732
    sget v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    .line 734
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    const-string v0, "Unity Ads video skipped"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 736
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    sget-object v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->setCampaignStatus(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;)V

    .line 737
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/unity3d/ads/android/IUnityAdsListener;->onVideoCompleted(Ljava/lang/String;Z)V

    .line 739
    :cond_0
    return-void

    .line 728
    :catch_0
    move-exception v1

    const-string v1, "Could not create JSON"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWebAppInitComplete(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 372
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 373
    return-void
.end method

.method public onWebAppLoadComplete(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 364
    const-string v0, "WebView reported WebAppLoadComplete"

    .line 365
    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    :cond_0
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 368
    return-void
.end method
