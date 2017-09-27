.class public Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;
.super Ljava/lang/Object;
.source "SPCurrencyServerErrorResponse.java"

# interfaces
.implements Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;


# instance fields
.field private final a:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;->a:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    .line 20
    iput-object p2, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;->b:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;->c:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getErrorType()Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;->a:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    return-object v0
.end method
