.class public final Lcom/fyber/operations/c;
.super Lcom/fyber/operations/f;
.source "InterstitialEventNetworkOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/operations/f",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/fyber/ads/interstitials/a;


# direct methods
.method private constructor <init>(Lcom/fyber/utils/s;Lcom/fyber/ads/interstitials/a;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/fyber/operations/f;-><init>(Lcom/fyber/utils/s;)V

    .line 64
    iput-object p2, p0, Lcom/fyber/operations/c;->b:Lcom/fyber/ads/interstitials/a;

    .line 65
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/fyber/ads/interstitials/a;Lcom/fyber/ads/interstitials/f;)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/fyber/ads/interstitials/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    invoke-static {p0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 39
    :cond_0
    const-string v0, "InterstitialEventNetworkOperation"

    const-string v1, "The event cannot be sent, a required field is missing."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    if-eqz p1, :cond_2

    .line 42
    const-string v0, "InterstitialEventNetworkOperation"

    const-string v1, "Notifying tracker of event=%s with request_id=%s for ad_id=%s and provider_type=%s "

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p0, v2, v4

    .line 44
    invoke-virtual {p1}, Lcom/fyber/ads/interstitials/a;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/fyber/ads/interstitials/a;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 42
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_1
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/credentials/a;

    move-result-object v0

    .line 50
    const-string v1, "tracker"

    invoke-static {v1}, Lcom/fyber/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/fyber/utils/s;->a(Ljava/lang/String;Lcom/fyber/credentials/a;)Lcom/fyber/utils/s;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p0}, Lcom/fyber/utils/s;->b(Ljava/lang/String;)Lcom/fyber/utils/s;

    move-result-object v0

    const-string v1, "event"

    .line 52
    invoke-virtual {p2}, Lcom/fyber/ads/interstitials/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fyber/utils/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/s;

    move-result-object v0

    const-string v1, "ad_format"

    const-string v2, "interstitial"

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/fyber/utils/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/s;

    move-result-object v0

    const-string v1, "rewarded"

    const-string v2, "0"

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/fyber/utils/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/s;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/fyber/utils/s;->a()Lcom/fyber/utils/s;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    new-instance v2, Lcom/fyber/operations/c;

    invoke-direct {v2, v0, p1}, Lcom/fyber/operations/c;-><init>(Lcom/fyber/utils/s;Lcom/fyber/ads/interstitials/a;)V

    invoke-virtual {v1, v2}, Lcom/fyber/Fyber$a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 46
    :cond_2
    const-string v0, "InterstitialEventNetworkOperation"

    const-string v1, "Notifying tracker of event=%s with request_id=%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 58
    :cond_3
    const-string v0, "InterstitialEventNetworkOperation"

    const-string v1, "It appears that Fyber SDK has not been started yet."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected final synthetic a(Lcom/fyber/utils/j;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1113
    const-string v1, "InterstitialEventNetworkOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Event communication successful - "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fyber/utils/j;->b()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    const/4 v0, 0x0

    .line 27
    return-object v0

    .line 1113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final synthetic a(Ljava/io/IOException;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 2070
    const-string v0, "InterstitialEventNetworkOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An exception occurred when trying to send advertiser callback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    const/4 v0, 0x0

    .line 27
    return-object v0
.end method

.method protected final a()Z
    .locals 5

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fyber/operations/c;->b:Lcom/fyber/ads/interstitials/a;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/fyber/operations/c;->a:Lcom/fyber/utils/s;

    const-string v1, "ad_id"

    iget-object v2, p0, Lcom/fyber/operations/c;->b:Lcom/fyber/ads/interstitials/a;

    invoke-virtual {v2}, Lcom/fyber/ads/interstitials/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fyber/utils/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/s;

    move-result-object v0

    const-string v1, "provider_type"

    iget-object v2, p0, Lcom/fyber/operations/c;->b:Lcom/fyber/ads/interstitials/a;

    invoke-virtual {v2}, Lcom/fyber/ads/interstitials/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fyber/utils/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/s;

    .line 81
    iget-object v0, p0, Lcom/fyber/operations/c;->b:Lcom/fyber/ads/interstitials/a;

    invoke-virtual {v0}, Lcom/fyber/ads/interstitials/a;->d()Lorg/json/JSONObject;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_1

    .line 83
    iget-object v2, p0, Lcom/fyber/operations/c;->a:Lcom/fyber/utils/s;

    .line 1091
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1092
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1093
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1096
    :try_start_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1097
    if-eqz v4, :cond_0

    .line 1098
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/fyber/utils/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/s;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1100
    :catch_0
    move-exception v0

    .line 1101
    const-string v4, "InterstitialEventNetworkOperation"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "InterstitialEventNetworkOperation"

    return-object v0
.end method
