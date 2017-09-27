.class public Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;
.super Lcom/sponsorpay/utils/SignedResponseRequester;
.source "SPCurrencyServerRequester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;,
        Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sponsorpay/utils/SignedResponseRequester",
        "<",
        "Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private a:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "SPCurrencyServerRequester"

    sput-object v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/sponsorpay/utils/SignedResponseRequester;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->a:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;

    .line 114
    iput-object p2, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->b:Ljava/lang/String;

    .line 115
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;
    .locals 4

    .prologue
    .line 147
    const/4 v1, 0x0

    .line 149
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 150
    const-string v0, "code"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 151
    :try_start_1
    const-string v1, "message"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    sget-object v1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->SERVER_RETURNED_ERROR:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    :goto_0
    new-instance v3, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;

    invoke-direct {v3, v1, v0, v2}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;-><init>(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 153
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    .line 154
    :goto_1
    sget-object v1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->TAG:Ljava/lang/String;

    const-string v3, "An exception was triggered while parsing error response"

    invoke-static {v1, v3, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 156
    sget-object v1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->ERROR_OTHER:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    .line 157
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 153
    :catch_1
    move-exception v1

    move-object v2, v1

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;
    .locals 8

    .prologue
    .line 164
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 165
    const-string v1, "delta_of_coins"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 166
    const-string v1, "latest_transaction_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 167
    const-string v1, "currency_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 168
    const-string v1, "currency_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 169
    const-string v1, "is_default"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 171
    new-instance v1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;

    invoke-direct/range {v1 .. v7}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-object v1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    sget-object v2, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->ERROR_INVALID_RESPONSE:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 175
    new-instance v1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;-><init>(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static requestCurrency(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;",
            "Lcom/sponsorpay/credentials/SPCredentials;",
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
    .line 72
    invoke-static {p2}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "ltid"

    :cond_0
    const-string v0, "vcs"

    invoke-static {v0}, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sponsorpay/utils/UrlBuilder;->newBuilder(Ljava/lang/String;Lcom/sponsorpay/credentials/SPCredentials;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v0

    const-string v1, "ltid"

    invoke-virtual {v0, v1, p2}, Lcom/sponsorpay/utils/UrlBuilder;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/sponsorpay/utils/UrlBuilder;->addExtraKeysValues(Ljava/util/Map;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/utils/UrlBuilder;->addScreenMetrics()Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/utils/UrlBuilder;->addSignature()Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "currency_id"

    invoke-virtual {v0, v1, p3}, Lcom/sponsorpay/utils/UrlBuilder;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/utils/UrlBuilder;

    :cond_1
    new-instance v1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;

    invoke-virtual {p1}, Lcom/sponsorpay/credentials/SPCredentials;->getSecurityToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;-><init>(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sponsorpay/utils/UrlBuilder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected noConnectionResponse(Ljava/lang/Throwable;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;
    .locals 4

    .prologue
    .line 215
    new-instance v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;

    sget-object v1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->ERROR_NO_INTERNET_CONNECTION:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;-><init>(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic noConnectionResponse(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->noConnectionResponse(Ljava/lang/Throwable;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->a:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;

    invoke-interface {v0, p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;->onSPCurrencyServerResponseReceived(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;)V

    .line 188
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->onPostExecute(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;)V

    return-void
.end method

.method protected parseSignedResponse(Lcom/sponsorpay/utils/j;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 198
    .line 200
    if-eqz p1, :cond_3

    .line 201
    invoke-virtual {p1}, Lcom/sponsorpay/utils/j;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/sponsorpay/utils/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sponsorpay/utils/j;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sponsorpay/utils/j;

    invoke-direct {v4, v0, v2, v3}, Lcom/sponsorpay/utils/j;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->hasErrorStatusCode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->a(Ljava/lang/String;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;

    move-result-object v0

    .line 205
    :goto_0
    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;

    sget-object v1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->ERROR_OTHER:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    const-string v2, ""

    const-string v3, "Unknown error"

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;-><init>(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_0
    return-object v0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->b:Ljava/lang/String;

    invoke-virtual {p0, v4, v0}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->verifySignature(Lcom/sponsorpay/utils/j;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;

    sget-object v2, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->ERROR_INVALID_RESPONSE_SIGNATURE:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    const-string v3, "The signature received in the request did not match the expected one"

    invoke-direct {v0, v2, v1, v3}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;-><init>(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->b(Ljava/lang/String;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic parseSignedResponse(Lcom/sponsorpay/utils/j;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->parseSignedResponse(Lcom/sponsorpay/utils/j;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;

    move-result-object v0

    return-object v0
.end method
