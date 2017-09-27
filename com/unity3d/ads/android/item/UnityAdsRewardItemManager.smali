.class public Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
.super Ljava/lang/Object;
.source "UnityAdsRewardItemManager.java"


# instance fields
.field private a:Ljava/util/Map;

.field private b:Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

.field private c:Lcom/unity3d/ads/android/item/UnityAdsRewardItem;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->a:Ljava/util/Map;

    .line 15
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->b:Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    .line 16
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->c:Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->a:Ljava/util/Map;

    .line 21
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 23
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 24
    new-instance v2, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    invoke-direct {v2, v1}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;-><init>(Lorg/json/JSONObject;)V

    .line 26
    invoke-virtual {v2}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->hasValidData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {v2}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    iput-object v2, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->b:Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    .line 29
    iput-object v2, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->c:Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :catch_0
    move-exception v1

    .line 35
    const-string v1, "Failed to parse reward item"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 38
    :cond_2
    return-void
.end method


# virtual methods
.method public allItems()Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    .line 66
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_0
    return-object v1
.end method

.method public getCurrentItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->b:Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    return-object v0
.end method

.method public getDefaultItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->c:Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    return-object v0
.end method

.method public getItem(Ljava/lang/String;)Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public itemCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public setCurrentItem(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->b:Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    .line 58
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
