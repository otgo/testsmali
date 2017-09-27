.class public final Lcom/fyber/operations/d;
.super Lcom/fyber/operations/f;
.source "InterstitialRequesterNetworkOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/operations/f",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/fyber/utils/s;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/fyber/operations/f;-><init>(Lcom/fyber/utils/s;)V

    .line 49
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    const-string v0, "interstitial"

    invoke-static {v0}, Lcom/fyber/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/credentials/a;

    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lcom/fyber/utils/s;->a(Ljava/lang/String;Lcom/fyber/credentials/a;)Lcom/fyber/utils/s;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Lcom/fyber/utils/s;->b(Ljava/lang/String;)Lcom/fyber/utils/s;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p0}, Lcom/fyber/utils/s;->a(Ljava/lang/String;)Lcom/fyber/utils/s;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p2}, Lcom/fyber/utils/s;->a(Ljava/util/Map;)Lcom/fyber/utils/s;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/fyber/utils/s;->a()Lcom/fyber/utils/s;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/fyber/utils/s;->b()Lcom/fyber/utils/s;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    new-instance v2, Lcom/fyber/operations/d;

    invoke-direct {v2, v0}, Lcom/fyber/operations/d;-><init>(Lcom/fyber/utils/s;)V

    invoke-virtual {v1, v2}, Lcom/fyber/Fyber$a;->a(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

.method private static b(Lcom/fyber/utils/j;)Ljava/lang/Void;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v1, 0x0

    .line 72
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 73
    invoke-virtual {p0}, Lcom/fyber/utils/j;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fyber/Fyber$a;->a()Lcom/fyber/utils/h;

    move-result-object v4

    .line 78
    invoke-virtual {v4}, Lcom/fyber/utils/h;->a()Ljava/lang/String;

    move-result-object v5

    .line 79
    const-string v2, "InterstitialRequesterNetworkOperation"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Parsing ads response\n"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    const-string v0, "ads"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v2, v1

    .line 83
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 84
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 85
    const-string v0, "provider_type"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string v8, "ad_id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 87
    const-string v9, "tracking_params"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 88
    new-instance v10, Lcom/fyber/ads/interstitials/a;

    invoke-direct {v10, v0, v8, v9}, Lcom/fyber/ads/interstitials/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 90
    invoke-virtual {v7}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v8

    move v0, v1

    .line 91
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v0, v9, :cond_1

    .line 92
    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 93
    const-string v11, "ad_id"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "provider_type"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "tracking_params"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 94
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Lcom/fyber/ads/interstitials/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {v10}, Lcom/fyber/ads/interstitials/a;->c()Ljava/util/Map;

    move-result-object v0

    const-string v7, "orientation"

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    invoke-virtual {v10}, Lcom/fyber/ads/interstitials/a;->c()Ljava/util/Map;

    move-result-object v0

    const-string v7, "orientation"

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_2
    invoke-virtual {v4}, Lcom/fyber/utils/h;->b()I

    move-result v0

    .line 103
    invoke-virtual {v10}, Lcom/fyber/ads/interstitials/a;->c()Ljava/util/Map;

    move-result-object v7

    const-string v8, "rotation"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {v3, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string v1, "InterstitialRequesterNetworkOperation"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 110
    sget-object v0, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    sget-object v1, Lcom/fyber/requesters/RequestError;->ERROR_REQUESTING_ADS:Lcom/fyber/requesters/RequestError;

    invoke-virtual {v0, v1}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/requesters/RequestError;)V

    .line 115
    :goto_2
    return-object v12

    .line 114
    :cond_3
    sget-object v1, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/fyber/ads/interstitials/a;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/ads/interstitials/a;

    invoke-virtual {v1, v0}, Lcom/fyber/ads/interstitials/c;->a([Lcom/fyber/ads/interstitials/a;)V

    goto :goto_2
.end method


# virtual methods
.method protected final synthetic a(Lcom/fyber/utils/j;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {p1}, Lcom/fyber/operations/d;->b(Lcom/fyber/utils/j;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/io/IOException;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1053
    const-string v0, "InterstitialRequesterNetworkOperation"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1055
    sget-object v0, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    sget-object v1, Lcom/fyber/requesters/RequestError;->CONNECTION_ERROR:Lcom/fyber/requesters/RequestError;

    invoke-virtual {v0, v1}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/requesters/RequestError;)V

    .line 1056
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "InterstitialRequesterNetworkOperation"

    return-object v0
.end method
