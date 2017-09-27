.class public final Lcom/sponsorpay/publisher/mbe/player/caching/g;
.super Ljava/lang/Object;
.source "SPConfigurationResponseParser.java"


# instance fields
.field private a:Lcom/sponsorpay/publisher/mbe/player/caching/a;

.field private b:Lorg/json/JSONObject;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sponsorpay/publisher/mbe/player/caching/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->a:Lcom/sponsorpay/publisher/mbe/player/caching/a;

    .line 32
    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->b:Lorg/json/JSONObject;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->c:Ljava/util/ArrayList;

    .line 41
    const-string v0, "SPConfigurationResponseParser"

    invoke-static {v0, p1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    const-string v1, "config"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->b:Lorg/json/JSONObject;

    .line 49
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->b:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/player/caching/g;->a(Lorg/json/JSONObject;)Lcom/sponsorpay/publisher/mbe/player/caching/a;

    move-result-object v1

    iput-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->a:Lcom/sponsorpay/publisher/mbe/player/caching/a;

    .line 50
    const-string v1, "videos"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 52
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 53
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 54
    new-instance v3, Lcom/sponsorpay/publisher/mbe/player/caching/h;

    const-string v4, "ad_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "url"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/sponsorpay/publisher/mbe/player/caching/h;-><init>(ILjava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string v1, "SPConfigurationResponseParser"

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/sponsorpay/publisher/mbe/player/caching/a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 63
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    const/4 v0, 0x0

    .line 65
    const-string v2, "refresh_interval"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    :try_start_0
    const-string v2, "refresh_interval"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 73
    :cond_0
    :goto_0
    const-string v2, "network_policy"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 74
    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 75
    const-string v4, "cellular"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 76
    new-instance v4, Lcom/sponsorpay/publisher/mbe/player/caching/c;

    const-string v5, "max_download_count"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v4, v3}, Lcom/sponsorpay/publisher/mbe/player/caching/c;-><init>(I)V

    .line 77
    new-instance v3, Lcom/sponsorpay/publisher/mbe/player/caching/c;

    const-string v5, "max_download_count"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v3, v2}, Lcom/sponsorpay/publisher/mbe/player/caching/c;-><init>(I)V

    .line 79
    new-instance v2, Lcom/sponsorpay/publisher/mbe/player/caching/a;

    invoke-direct {v2}, Lcom/sponsorpay/publisher/mbe/player/caching/a;-><init>()V

    sget-object v5, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;->WIFI:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;

    invoke-virtual {v2, v5, v4}, Lcom/sponsorpay/publisher/mbe/player/caching/a;->a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;Lcom/sponsorpay/publisher/mbe/player/caching/c;)Lcom/sponsorpay/publisher/mbe/player/caching/a;

    move-result-object v2

    sget-object v4, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;->CELLULAR:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;

    invoke-virtual {v2, v4, v3}, Lcom/sponsorpay/publisher/mbe/player/caching/a;->a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;Lcom/sponsorpay/publisher/mbe/player/caching/c;)Lcom/sponsorpay/publisher/mbe/player/caching/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/a;->a(Ljava/lang/Integer;)Lcom/sponsorpay/publisher/mbe/player/caching/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/player/caching/a;->a(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/caching/a;

    move-result-object v0

    .line 84
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/caching/g;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/caching/g;

    invoke-direct {v0, p0}, Lcom/sponsorpay/publisher/mbe/player/caching/g;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/sponsorpay/publisher/mbe/player/caching/a;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->a:Lcom/sponsorpay/publisher/mbe/player/caching/a;

    return-object v0
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sponsorpay/publisher/mbe/player/caching/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->c:Ljava/util/ArrayList;

    return-object v0
.end method
