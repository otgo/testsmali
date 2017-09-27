.class public Lcom/unity3d/ads/android/webapp/UnityAdsWebData;
.super Ljava/lang/Object;
.source "UnityAdsWebData.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static g:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

.field private static m:Z

.field private static n:Z


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Ljava/util/ArrayList;

.field private c:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

.field private d:Ljava/util/ArrayList;

.field private e:Lcom/unity3d/ads/android/webapp/j;

.field private f:Ljava/lang/Object;

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->g:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    .line 67
    sput-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->m:Z

    .line 68
    sput-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->n:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->a:Lorg/json/JSONObject;

    .line 54
    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b:Ljava/util/ArrayList;

    .line 55
    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->c:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    .line 56
    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->d:Ljava/util/ArrayList;

    .line 57
    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->e:Lcom/unity3d/ads/android/webapp/j;

    .line 58
    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->f:Ljava/lang/Object;

    .line 60
    iput v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->h:I

    .line 61
    iput v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->i:I

    .line 62
    iput v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->j:I

    .line 64
    iput-boolean v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->k:Z

    .line 65
    iput-boolean v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->l:Z

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->f:Ljava/lang/Object;

    .line 123
    return-void
.end method

.method private static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/16 v9, 0x26

    const/4 v3, 0x0

    .line 718
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object p0, v1

    .line 786
    :cond_1
    :goto_0
    return-object p0

    .line 720
    :cond_2
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 722
    if-eqz v0, :cond_1

    .line 724
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 726
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 729
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 730
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getStoreId()Ljava/lang/String;

    move-result-object v2

    .line 733
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 734
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 737
    :cond_3
    if-eqz v2, :cond_9

    .line 742
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5, v2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 743
    if-eqz v7, :cond_c

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_c

    .line 744
    const/4 v2, 0x1

    .line 751
    :goto_2
    if-eqz v2, :cond_5

    .line 752
    if-nez v1, :cond_4

    .line 753
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 756
    :cond_4
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getGameId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    :cond_5
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getFilterMode()Ljava/lang/String;

    move-result-object v7

    .line 761
    if-eqz v7, :cond_7

    const-string v8, "whitelist"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 763
    if-eqz v2, :cond_6

    .line 764
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 746
    :catch_0
    move-exception v2

    move v2, v3

    .line 747
    goto :goto_2

    .line 766
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Filtered game id "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from ad plan (not installed)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 770
    :cond_7
    if-eqz v2, :cond_8

    .line 771
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Filtered game id "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from ad plan (already installed)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 773
    :cond_8
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 778
    :cond_9
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 782
    :cond_a
    if-eqz v1, :cond_b

    .line 783
    const-string v0, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPFILTER_LIST:Ljava/lang/String;

    :cond_b
    move-object p0, v4

    .line 786
    goto/16 :goto_0

    :cond_c
    move v2, v3

    goto :goto_2
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 692
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 694
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 696
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 698
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 699
    new-instance v3, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-direct {v3, v2}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;-><init>(Lorg/json/JSONObject;)V

    .line 701
    invoke-virtual {v3}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->hasValidData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 702
    const-string v2, "Adding campaign to cache"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 703
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 707
    :catch_0
    move-exception v2

    const-string v2, "Problem with the campaign, skipping."

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 714
    :goto_2
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private a()V
    .locals 3

    .prologue
    .line 399
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->k:Z

    if-nez v0, :cond_0

    .line 401
    const-string v0, "Starting next URL loader"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->k:Z

    .line 403
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/webapp/j;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/unity3d/ads/android/webapp/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/webapp/j;

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->e:Lcom/unity3d/ads/android/webapp/j;

    .line 405
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->c()V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Lcom/unity3d/ads/android/webapp/j;)V
    .locals 2

    .prologue
    .line 51
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->d:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 562
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 564
    iput-boolean v7, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->l:Z

    .line 567
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad plan: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 569
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->a:Lorg/json/JSONObject;

    .line 572
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->a:Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_10

    .line 574
    :try_start_1
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->a:Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    move-object v10, v1

    .line 580
    :goto_0
    :try_start_2
    const-string v1, "webViewUrl"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 581
    :cond_0
    const-string v1, "analyticsUrl"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 582
    :cond_1
    const-string v1, "impactUrl"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 583
    :cond_2
    const-string v1, "gamerId"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 584
    :cond_3
    const-string v1, "campaigns"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 585
    :cond_4
    const-string v1, "zones"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v9, v0

    .line 588
    :goto_1
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 591
    const-string v0, "campaigns"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 592
    if-eqz v0, :cond_5

    .line 593
    invoke-static {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v8

    .line 596
    :cond_5
    const-string v0, "appFiltering"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 597
    const-string v0, "appFiltering"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 599
    if-eqz v0, :cond_8

    const-string v1, "simple"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "advanced"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 600
    :cond_6
    const-string v1, "advanced"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 601
    const-string v0, "installedAppsUrl"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "appWhitelist"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 602
    const-string v0, "installedAppsUrl"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->INSTALLED_APPS_URL:Ljava/lang/String;

    .line 603
    const-string v0, "appWhitelist"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 605
    sget-boolean v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->m:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->m:Z

    new-instance v0, Lcom/unity3d/ads/android/webapp/k;

    const/4 v3, 0x0

    const-string v4, "GET"

    sget-object v5, Lcom/unity3d/ads/android/webapp/i;->AppWhitelist:Lcom/unity3d/ads/android/webapp/i;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/android/webapp/k;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/i;I)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 609
    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 610
    invoke-static {v8}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 612
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_9

    .line 613
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->initCampaigns()Z

    .line 682
    :goto_2
    return-void

    .line 577
    :catch_0
    move-exception v1

    const-string v1, "Malformed data JSON"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    move-object v10, v8

    goto/16 :goto_0

    :cond_8
    move-object v0, v8

    .line 622
    :cond_9
    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b:Ljava/util/ArrayList;

    .line 626
    :cond_a
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 627
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b:Ljava/util/ArrayList;

    .line 629
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parsed total of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " campaigns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 632
    const-string v0, "webViewUrl"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->WEBVIEW_BASE_URL:Ljava/lang/String;

    .line 633
    const-string v0, "analyticsUrl"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->ANALYTICS_BASE_URL:Ljava/lang/String;

    .line 634
    const-string v0, "impactUrl"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_BASE_URL:Ljava/lang/String;

    .line 635
    const-string v0, "gamerId"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAMER_ID:Ljava/lang/String;

    .line 638
    const-string v0, "refreshCampaignsAfterViewed"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 639
    const/4 v0, 0x0

    sput v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    .line 640
    const-string v0, "refreshCampaignsAfterViewed"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_MAX:I

    .line 644
    :cond_c
    const-string v0, "refreshCampaignsAfterSeconds"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 645
    const-string v0, "refreshCampaignsAfterSeconds"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_SECONDS:I

    .line 649
    :cond_d
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 650
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->g:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    if-eqz v0, :cond_e

    .line 651
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->g:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->clear()V

    .line 652
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->g:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    .line 654
    :cond_e
    new-instance v0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    const-string v1, "zones"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;-><init>(Lorg/json/JSONArray;)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->g:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 675
    :cond_f
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->c:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    if-eqz v0, :cond_13

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unity Ads initialized with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " campaigns and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->g:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->g:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->zoneCount()I

    move-result v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " zones"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->c:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    invoke-interface {v0}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;->onWebDataCompleted()V

    goto/16 :goto_2

    .line 658
    :cond_10
    :try_start_3
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->c()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 662
    :catch_1
    move-exception v0

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed JSON: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 666
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    :goto_4
    if-ge v7, v1, :cond_11

    aget-object v2, v0, v7

    .line 667
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Malformed JSON: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 666
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 671
    :cond_11
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->c()V

    goto/16 :goto_2

    :cond_12
    move v0, v7

    .line 676
    goto :goto_3

    .line 681
    :cond_13
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->c()V

    goto/16 :goto_2

    :cond_14
    move-object v9, v0

    goto/16 :goto_1
.end method

.method private b()V
    .locals 9

    .prologue
    .line 469
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/pendingrequests.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 475
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v0, v2}, Lcom/unity3d/ads/android/UnityAdsUtils;->readFile(Ljava/io/File;Z)Ljava/lang/String;

    move-result-object v2

    .line 476
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->removeFile(Ljava/lang/String;)V

    .line 477
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 485
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 487
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 488
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 489
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 491
    new-instance v0, Lcom/unity3d/ads/android/webapp/k;

    const-string v2, "url"

    .line 492
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "body"

    .line 493
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "methodType"

    .line 494
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "requestType"

    .line 495
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/ads/android/webapp/i;->getValueOf(Ljava/lang/String;)Lcom/unity3d/ads/android/webapp/i;

    move-result-object v5

    const-string v6, "retries"

    .line 496
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v6, v1, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/android/webapp/k;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/i;I)V

    .line 498
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 488
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 503
    :catch_0
    move-exception v0

    const-string v0, "Problems while sending some of the failed urls."

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 507
    :cond_0
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->a()V

    .line 508
    return-void
.end method

.method static synthetic b(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->a()V

    return-void
.end method

.method static synthetic b(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Lcom/unity3d/ads/android/webapp/j;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 51
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/unity3d/ads/android/webapp/j;->getRequestType()Lcom/unity3d/ads/android/webapp/i;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/unity3d/ads/android/webapp/g;->b:[I

    invoke-virtual {p1}, Lcom/unity3d/ads/android/webapp/j;->getRequestType()Lcom/unity3d/ads/android/webapp/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/webapp/i;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/unity3d/ads/android/webapp/j;->clear()V

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->k:Z

    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->a()V

    return-void

    :pswitch_0
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->f:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/pendingrequests.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    invoke-static {v4, v1}, Lcom/unity3d/ads/android/UnityAdsUtils;->readFile(Ljava/io/File;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "JNIDEBUG read json: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "JNIDEBUG read array: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    :goto_2
    if-nez v1, :cond_1

    :try_start_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "url"

    invoke-virtual {p1}, Lcom/unity3d/ads/android/webapp/j;->getBaseUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "requestType"

    invoke-virtual {p1}, Lcom/unity3d/ads/android/webapp/j;->getRequestType()Lcom/unity3d/ads/android/webapp/i;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "methodType"

    invoke-virtual {p1}, Lcom/unity3d/ads/android/webapp/j;->getHTTPMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "body"

    invoke-virtual {p1}, Lcom/unity3d/ads/android/webapp/j;->getQueryParams()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "retries"

    invoke-virtual {p1}, Lcom/unity3d/ads/android/webapp/j;->getRetries()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->canUseExternalStorage()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->writeFile(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception when writing failed url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :pswitch_1
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->c()V

    goto/16 :goto_0

    :cond_4
    const-string v0, "Got broken urlLoader!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    move-object v1, v0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)I
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->i:I

    return v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->c:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->c:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    invoke-interface {v0}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;->onWebDataFailed()V

    .line 689
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Lcom/unity3d/ads/android/webapp/j;)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 51
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/unity3d/ads/android/webapp/j;->getRequestType()Lcom/unity3d/ads/android/webapp/i;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/unity3d/ads/android/webapp/g;->b:[I

    invoke-virtual {p1}, Lcom/unity3d/ads/android/webapp/j;->getRequestType()Lcom/unity3d/ads/android/webapp/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/webapp/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Lcom/unity3d/ads/android/webapp/j;->clear()V

    :goto_1
    iget v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->h:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Total urls sent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    iput-boolean v7, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->k:Z

    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->a()V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Lcom/unity3d/ads/android/webapp/j;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/unity3d/ads/android/webapp/j;->getData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received whitelist"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "whitelist"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move v0, v7

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ge v0, v2, :cond_2

    :try_start_1
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "game"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "game"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    :try_start_2
    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->INSTALLED_APPS_URL:Ljava/lang/String;

    sget-boolean v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->n:Z

    invoke-static {v3}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getPackageDataJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    new-instance v0, Lcom/unity3d/ads/android/webapp/k;

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCampaignQueryArguments()Ljava/lang/String;

    move-result-object v3

    const-string v4, "POST"

    sget-object v5, Lcom/unity3d/ads/android/webapp/i;->InstalledApps:Lcom/unity3d/ads/android/webapp/i;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/android/webapp/k;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/i;I)V

    invoke-virtual {v0, v8}, Lcom/unity3d/ads/android/webapp/k;->setPostBody(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse app whitelist "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    :try_start_3
    const-string v0, "Nothing to send for installed applications"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_4
    const-string v0, "Got broken urlLoader!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    move-exception v2

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic d(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->i:I

    return v0
.end method

.method static synthetic e(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)I
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->j:I

    return v0
.end method

.method static synthetic f(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->j:I

    return v0
.end method

.method public static getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->g:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    return-object v0
.end method


# virtual methods
.method public clearData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 345
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 347
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b:Ljava/util/ArrayList;

    .line 350
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->g:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    if-eqz v0, :cond_1

    .line 351
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->g:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->clear()V

    .line 352
    sput-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->g:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    .line 355
    :cond_1
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->a:Lorg/json/JSONObject;

    .line 356
    return-void
.end method

.method public getCampaignById(Ljava/lang/String;)Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .locals 2

    .prologue
    .line 134
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 135
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 141
    :goto_1
    return-object v0

    .line 135
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 141
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getVideoPlan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoPlanCampaigns()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getViewableVideoPlanCampaigns()Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 148
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 149
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 150
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 152
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignStatus()Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    move-result-object v3

    sget-object v4, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    invoke-virtual {v3, v4}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 157
    :cond_2
    return-object v0
.end method

.method public initCampaigns()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 166
    iget-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->l:Z

    if-eqz v0, :cond_0

    .line 244
    :goto_0
    return v7

    .line 170
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getBaseActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getBaseActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_DATA:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 171
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_DATA:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_1
    iput-boolean v7, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->l:Z

    .line 178
    :try_start_0
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 179
    if-nez v0, :cond_2

    .line 180
    const-string v0, "initCampaigns failed due to currentActivity null"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 181
    new-instance v0, Lcom/unity3d/ads/android/webapp/c;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/webapp/c;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    const-string v0, "initCampaigns failed due to DNS error, unable to resolve ad server address"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 224
    new-instance v0, Lcom/unity3d/ads/android/webapp/f;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/webapp/f;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 191
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 193
    if-eqz v0, :cond_6

    .line 194
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v7

    .line 198
    :goto_1
    if-nez v0, :cond_5

    .line 199
    const-string v0, "Device offline, can\'t init campaigns"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 200
    new-instance v0, Lcom/unity3d/ads/android/webapp/d;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/webapp/d;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 231
    :catch_1
    move-exception v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown exception during DNS test: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 235
    :cond_3
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCampaignQueryUrl()Ljava/lang/String;

    move-result-object v0

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requesting Unity Ads ad plan from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 237
    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 239
    new-instance v0, Lcom/unity3d/ads/android/webapp/k;

    aget-object v2, v1, v6

    aget-object v3, v1, v7

    const-string v4, "GET"

    sget-object v5, Lcom/unity3d/ads/android/webapp/i;->VideoPlan:Lcom/unity3d/ads/android/webapp/i;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/android/webapp/k;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/i;I)V

    .line 240
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 242
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b()V

    goto/16 :goto_0

    :cond_4
    move v0, v6

    .line 195
    goto :goto_1

    .line 209
    :cond_5
    :try_start_2
    const-string v0, "impact.applifier.com"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad server resolves to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    const-string v0, "initCampaigns failed, ad server resolves to loopback address (due to ad blocker?)"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 214
    new-instance v0, Lcom/unity3d/ads/android/webapp/e;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/webapp/e;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_6
    move v0, v6

    goto/16 :goto_1
.end method

.method public initInProgress()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->l:Z

    return v0
.end method

.method public sendAnalyticsRequest(Ljava/lang/String;Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 321
    if-eqz p2, :cond_0

    .line 322
    const-string v0, "%s"

    new-array v1, v7, [Ljava/lang/Object;

    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->ANALYTICS_BASE_URL:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 323
    const-string v0, "%s=%s"

    new-array v1, v8, [Ljava/lang/Object;

    const-string v3, "gameId"

    aput-object v3, v1, v6

    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAME_ID:Ljava/lang/String;

    aput-object v3, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 324
    const-string v1, "%s&%s=%s"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v6

    const-string v0, "type"

    aput-object v0, v3, v7

    aput-object p1, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 325
    const-string v1, "%s&%s=%s"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v6

    const-string v0, "trackingId"

    aput-object v0, v3, v7

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAMER_ID:Ljava/lang/String;

    aput-object v0, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 326
    const-string v1, "%s&%s=%s"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v6

    const-string v0, "providerId"

    aput-object v0, v3, v7

    invoke-virtual {p2}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v1

    .line 329
    const-string v3, "%s&%s=%s"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v6

    const-string v0, "zone"

    aput-object v0, v4, v7

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 331
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 332
    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 333
    const-string v4, "%s&%s=%s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v3, v5, v6

    const-string v3, "rewardItem"

    aput-object v3, v5, v7

    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getCurrentItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 336
    :goto_0
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getGamerSid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 337
    const-string v3, "%s&%s=%s"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v6

    const-string v0, "sid"

    aput-object v0, v4, v7

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getGamerSid()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 339
    :goto_1
    new-instance v0, Lcom/unity3d/ads/android/webapp/k;

    const-string v4, "GET"

    sget-object v5, Lcom/unity3d/ads/android/webapp/i;->Analytics:Lcom/unity3d/ads/android/webapp/i;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/android/webapp/k;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/i;I)V

    .line 340
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 342
    :cond_0
    return-void

    :cond_1
    move-object v3, v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method public sendCampaignViewProgress(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)Z
    .locals 10

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 249
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 317
    :cond_0
    :goto_0
    return v0

    .line 251
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unity Ads video position: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gamer id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAMER_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 253
    if-eqz p2, :cond_0

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAMER_ID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 254
    const-string v0, "%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_BASE_URL:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "gamers/"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 255
    const-string v1, "%s%s/video/%s/%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAMER_ID:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 256
    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAME_ID:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v1

    .line 259
    const-string v0, "%s=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "zone"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 262
    :try_start_0
    const-string v0, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "platform"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "android"

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 264
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAdvertisingTrackingId()Ljava/lang/String;

    move-result-object v4

    .line 265
    if-eqz v4, :cond_8

    .line 266
    const-string v5, "%s&%s=%d"

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v3, v6, v0

    const/4 v0, 0x1

    const-string v7, "trackingEnabled"

    aput-object v7, v6, v0

    const/4 v7, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsUtils;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 269
    const-string v5, "%s&%s=%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    const-string v8, "advertisingTrackingId"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "UTF-8"

    invoke-static {v0, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 270
    const-string v0, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const-string v7, "rawAdvertisingTrackingId"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "UTF-8"

    invoke-static {v4, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 278
    :cond_2
    :goto_2
    const-string v0, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "gameId"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAME_ID:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 279
    const-string v0, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "sdkVersion"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "1407"

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 280
    const-string v0, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "softwareVersion"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 281
    const-string v0, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "hardwareVersion"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getHardwareVersion()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 282
    const-string v0, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "deviceType"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getDeviceType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 283
    const-string v0, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "connectionType"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getConnectionType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 285
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->isUsingWifi()Z

    move-result v0

    if-nez v0, :cond_3

    .line 286
    const-string v0, "%s&%s=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "androidNetworkType"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getNetworkType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 289
    :cond_3
    sget-wide v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CACHING_SPEED:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    .line 290
    const-string v0, "%s&%s=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "cachingSpeed"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-wide v6, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CACHING_SPEED:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 293
    :cond_4
    const-string v0, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "screenSize"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getScreenSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 294
    const-string v0, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "screenDensity"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getScreenDensity()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 296
    const-string v4, "%s&%s=%s"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v3, v5, v0

    const/4 v0, 0x1

    const-string v6, "cachedPlayback"

    aput-object v6, v5, v0

    const/4 v6, 0x2

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN_CACHED:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "true"

    :goto_3
    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 302
    :goto_4
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 303
    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 304
    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    const-string v6, "rewardItem"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getCurrentItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 307
    :cond_5
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getGamerSid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 308
    const-string v0, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    const-string v5, "sid"

    aput-object v5, v4, v3

    const/4 v3, 0x2

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getGamerSid()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 311
    :cond_6
    new-instance v0, Lcom/unity3d/ads/android/webapp/k;

    const-string v4, "POST"

    sget-object v5, Lcom/unity3d/ads/android/webapp/i;->VideoViewed:Lcom/unity3d/ads/android/webapp/i;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/android/webapp/k;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/i;I)V

    .line 312
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 314
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 266
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 272
    :cond_8
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v0

    const-string v4, "unknown"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 273
    const-string v0, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "androidId"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 274
    const-string v0, "%s&%s=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string v6, "rawAndroidId"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 296
    :cond_9
    const-string v0, "false"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 298
    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v3

    move-object v3, v9

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Problems creating campaigns query: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    move-object v3, v0

    goto/16 :goto_4
.end method

.method public setWebDataListener(Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->c:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    .line 127
    return-void
.end method

.method public stopAllRequests()V
    .locals 3

    .prologue
    .line 359
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->d:Ljava/util/ArrayList;

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->e:Lcom/unity3d/ads/android/webapp/j;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->e:Lcom/unity3d/ads/android/webapp/j;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/unity3d/ads/android/webapp/j;->cancel(Z)Z

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->e:Lcom/unity3d/ads/android/webapp/j;

    .line 369
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
