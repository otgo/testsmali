.class public final Lcom/sponsorpay/publisher/interstitial/a;
.super Ljava/lang/Object;
.source "SPInterstitialAd.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lorg/json/JSONObject;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/a;->a:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/sponsorpay/publisher/interstitial/a;->b:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/sponsorpay/publisher/interstitial/a;->c:Lorg/json/JSONObject;

    .line 49
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/a;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/a;->d:Ljava/util/Map;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/a;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/a;->d:Ljava/util/Map;

    goto :goto_0
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/a;->c:Lorg/json/JSONObject;

    return-object v0
.end method
