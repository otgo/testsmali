.class public final Lcom/sponsorpay/publisher/interstitial/c;
.super Landroid/os/AsyncTask;
.source "SPInterstitialEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sponsorpay/utils/UrlBuilder;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static a:[Ljava/lang/String;

.field private static b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ad_format"

    aput-object v1, v0, v2

    const-string v1, "rewarded"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sponsorpay/publisher/interstitial/c;->a:[Ljava/lang/String;

    .line 39
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "interstitial"

    aput-object v1, v0, v2

    const-string v1, "0"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sponsorpay/publisher/interstitial/c;->b:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 103
    return-void
.end method

.method private static varargs a([Lcom/sponsorpay/utils/UrlBuilder;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v2, "SPInterstitialEventDispatcher"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 108
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 110
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/sponsorpay/utils/UrlBuilder;->buildUrl()Ljava/lang/String;

    move-result-object v2

    .line 112
    const-string v3, "SPInterstitialEventDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Sending event to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :try_start_0
    invoke-static {v2}, Lcom/sponsorpay/utils/d;->a(Ljava/lang/String;)Lcom/sponsorpay/utils/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sponsorpay/utils/d;->open()Lcom/sponsorpay/utils/AbstractHttpConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sponsorpay/utils/AbstractHttpConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    const-string v2, "SPInterstitialEventDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An exception occurred when trying to send advertiser callback: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;Lcom/sponsorpay/publisher/interstitial/a;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;)V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 42
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 43
    :cond_0
    const-string v0, "SPInterstitialEventDispatcher"

    const-string v1, "The event cannot be sent, a required field is missing."

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_0
    return-void

    .line 45
    :cond_1
    if-eqz p2, :cond_3

    .line 46
    const-string v0, "SPInterstitialEventDispatcher"

    const-string v1, "Notifying tracker of event=%s with request_id=%s for ad_id=%s and provider_type=%s "

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v6

    aput-object p1, v2, v5

    invoke-virtual {p2}, Lcom/sponsorpay/publisher/interstitial/a;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x3

    invoke-virtual {p2}, Lcom/sponsorpay/publisher/interstitial/a;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :goto_1
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/c;

    invoke-direct {v0}, Lcom/sponsorpay/publisher/interstitial/c;-><init>()V

    new-array v1, v5, [Lcom/sponsorpay/utils/UrlBuilder;

    const-string v2, "tracker"

    invoke-static {v2}, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/sponsorpay/utils/UrlBuilder;->newBuilder(Ljava/lang/String;Lcom/sponsorpay/credentials/SPCredentials;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sponsorpay/utils/UrlBuilder;->setRequestId(Ljava/lang/String;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v3

    const-string v4, "event"

    invoke-virtual {p3}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sponsorpay/utils/UrlBuilder;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v3

    sget-object v4, Lcom/sponsorpay/publisher/interstitial/c;->a:[Ljava/lang/String;

    sget-object v5, Lcom/sponsorpay/publisher/interstitial/c;->b:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/UrlBuilder;->mapKeysToValues([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sponsorpay/utils/UrlBuilder;->addExtraKeysValues(Ljava/util/Map;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sponsorpay/utils/UrlBuilder;->addScreenMetrics()Lcom/sponsorpay/utils/UrlBuilder;

    if-eqz p2, :cond_2

    const-string v3, "ad_id"

    invoke-virtual {p2}, Lcom/sponsorpay/publisher/interstitial/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sponsorpay/utils/UrlBuilder;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v3

    const-string v4, "provider_type"

    invoke-virtual {p2}, Lcom/sponsorpay/publisher/interstitial/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sponsorpay/utils/UrlBuilder;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/utils/UrlBuilder;

    invoke-virtual {p2}, Lcom/sponsorpay/publisher/interstitial/a;->d()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v2, v3}, Lcom/sponsorpay/publisher/interstitial/c;->a(Lcom/sponsorpay/utils/UrlBuilder;Lorg/json/JSONObject;)V

    :cond_2
    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/interstitial/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 50
    :cond_3
    const-string v0, "SPInterstitialEventDispatcher"

    const-string v1, "Notifying tracker of event=%s with request_id=%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v6

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(Lcom/sponsorpay/utils/UrlBuilder;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 84
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 89
    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/sponsorpay/utils/UrlBuilder;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/utils/UrlBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const-string v2, "SPInterstitialEventDispatcher"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p1, [Lcom/sponsorpay/utils/UrlBuilder;

    invoke-static {p1}, Lcom/sponsorpay/publisher/interstitial/c;->a([Lcom/sponsorpay/utils/UrlBuilder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
