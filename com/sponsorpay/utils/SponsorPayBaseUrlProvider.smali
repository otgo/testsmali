.class public Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;
.super Ljava/lang/Object;
.source "SponsorPayBaseUrlProvider.java"


# static fields
.field private static a:Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;


# instance fields
.field private b:Lcom/sponsorpay/utils/SPUrlProvider;

.field private c:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;

    invoke-direct {v0}, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;-><init>()V

    sput-object v0, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->a:Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/sponsorpay/utils/k;

    invoke-direct {v0, p0}, Lcom/sponsorpay/utils/k;-><init>(Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;)V

    iput-object v0, p0, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->c:Ljava/util/Map;

    .line 32
    return-void
.end method

.method public static getBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    sget-object v1, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->a:Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;

    const/4 v0, 0x0

    iget-object v2, v1, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->b:Lcom/sponsorpay/utils/SPUrlProvider;

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->b:Lcom/sponsorpay/utils/SPUrlProvider;

    invoke-interface {v0, p0}, Lcom/sponsorpay/utils/SPUrlProvider;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v1, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public static setProviderOverride(Lcom/sponsorpay/utils/SPUrlProvider;)V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->a:Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;

    iput-object p0, v0, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->b:Lcom/sponsorpay/utils/SPUrlProvider;

    .line 51
    return-void
.end method
