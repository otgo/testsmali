.class public Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;
.super Ljava/lang/Object;
.source "SPCurrencyServerSuccessfulResponse.java"

# interfaces
.implements Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;


# instance fields
.field private a:D

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->a:D

    .line 19
    iput-object p3, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->b:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->c:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->d:Ljava/lang/String;

    .line 22
    iput-boolean p6, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->e:Z

    .line 23
    return-void
.end method


# virtual methods
.method public getCurrencyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDeltaOfCoins()D
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->a:D

    return-wide v0
.end method

.method public getLatestTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->e:Z

    return v0
.end method
