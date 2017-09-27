.class final Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;
.super Ljava/lang/Object;
.source "SPVirtualCurrencyConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;

.field private b:Ljava/util/Calendar;

.field private c:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;


# direct methods
.method private constructor <init>(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;->a:Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;B)V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;-><init>(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;)V

    return-void
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;->c:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;

    return-object p1
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;->b:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;->b:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic b(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;->c:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;

    return-object v0
.end method
