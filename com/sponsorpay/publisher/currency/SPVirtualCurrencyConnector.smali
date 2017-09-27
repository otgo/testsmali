.class public Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;
.super Ljava/lang/Object;
.source "SPVirtualCurrencyConnector.java"

# interfaces
.implements Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z


# instance fields
.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

.field protected mCurrencyServerListener:Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

.field protected mCustomParameters:Ljava/util/Map;
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
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a:Ljava/util/HashMap;

    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;)V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {p2}, Lcom/sponsorpay/SponsorPay;->getCredentials(Ljava/lang/String;)Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    .line 106
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getSecurityToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Security token has not been set on the credentials"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    if-nez p3, :cond_1

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "currencyServerListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    iput-object p1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mContext:Landroid/content/Context;

    .line 114
    iput-object p3, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCurrencyServerListener:Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    .line 115
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    :goto_0
    return-object v0

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-direct {p0, v1}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a(Lcom/sponsorpay/credentials/SPCredentials;)Ljava/lang/String;

    move-result-object v1

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/sponsorpay/credentials/SPCredentials;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mContext:Landroid/content/Context;

    const-string v1, "SponsorPayPublisherState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEFAULT_CURRENCY_ID_KEY_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sponsorpay/credentials/SPCredentials;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 343
    invoke-static {p1}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    const-string p1, ""

    .line 347
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "STATE_LATEST_CURRENCY_TRANSACTION_ID_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sponsorpay/credentials/SPCredentials;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sponsorpay/credentials/SPCredentials;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_STATE_LATEST_TRANSACTION_CURRENCY_ID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;)V
    .locals 3

    .prologue
    .line 381
    sget-object v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;

    .line 382
    if-nez v0, :cond_0

    .line 383
    new-instance v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;-><init>(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;B)V

    .line 384
    sget-object v1, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_0
    invoke-static {v0, p1}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;->a(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;

    .line 387
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/sponsorpay/credentials/SPCredentials;)V
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mContext:Landroid/content/Context;

    const-string v1, "SponsorPayPublisherState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 360
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEFAULT_CURRENCY_ID_KEY_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sponsorpay/credentials/SPCredentials;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 362
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 363
    return-void
.end method

.method public static shouldShowToastNotification(Z)V
    .locals 0

    .prologue
    .line 292
    sput-boolean p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->b:Z

    .line 293
    return-void
.end method


# virtual methods
.method public fetchDeltaOfCoins()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, v0, v0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->fetchDeltaOfCoinsForCurrentUserSinceTransactionId(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public fetchDeltaOfCoinsForCurrentUserSinceTransactionId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 162
    invoke-static {}, Lcom/sponsorpay/utils/HostInfo;->isDeviceSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;

    sget-object v1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->ERROR_OTHER:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    const-string v2, ""

    const-string v3, "Only devices running Android API level 10 and above are supported"

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;-><init>(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCurrencyServerListener:Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    invoke-interface {v1, v0}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;->onSPCurrencyServerError(Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;)V

    .line 195
    :goto_0
    return-void

    .line 169
    :cond_0
    iput-object p2, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->e:Ljava/lang/String;

    .line 171
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 172
    sget-object v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;

    invoke-direct {v0, p0, v4}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;-><init>(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;B)V

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;->a(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;Ljava/util/Calendar;)Ljava/util/Calendar;

    sget-object v2, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;->a(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    const-string v0, "SPVirtualCurrencyConnector"

    const-string v1, "The VCS was queried less than 15s ago.Replying with cached response"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;

    invoke-direct {v0, p0, v4}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;-><init>(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;B)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;->a(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;Ljava/util/Calendar;)Ljava/util/Calendar;

    sget-object v1, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;->b(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_3

    .line 176
    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->onSPCurrencyServerResponseReceived(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;)V

    goto :goto_0

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCurrencyServerListener:Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    new-instance v1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;

    sget-object v2, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->ERROR_OTHER:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    const-string v3, ""

    const-string v4, "Unknown error"

    invoke-direct {v1, v2, v3, v4}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;-><init>(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;->onSPCurrencyServerError(Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;)V

    goto :goto_0

    .line 186
    :cond_4
    const/16 v0, 0xd

    const/16 v2, 0xf

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->add(II)V

    .line 187
    sget-object v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;

    if-nez v0, :cond_5

    new-instance v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;

    invoke-direct {v0, p0, v4}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;-><init>(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;B)V

    sget-object v2, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;->a(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$a;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 188
    sget-boolean v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->b:Z

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->c:Z

    .line 191
    invoke-static {p1}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 192
    iget-object v1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/sponsorpay/SponsorPay;->getCredentials(Ljava/lang/String;)Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v2

    const-string v3, "SponsorPayPublisherState"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v2}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a(Lcom/sponsorpay/credentials/SPCredentials;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v0, "NO_TRANSACTION"

    .line 194
    :goto_1
    iget-object v1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    iget-object v2, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCustomParameters:Ljava/util/Map;

    invoke-static {p0, v1, v0, v2, v3}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->requestCurrency(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 192
    :cond_7
    invoke-static {v2, v0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a(Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "NO_TRANSACTION"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, p1

    goto :goto_1
.end method

.method public onSPCurrencyServerResponseReceived(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    .line 297
    instance-of v0, p1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;

    if-eqz v0, :cond_6

    .line 298
    check-cast p1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;

    .line 299
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a(Lcom/sponsorpay/credentials/SPCredentials;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getCurrencyId()Ljava/lang/String;

    move-result-object v5

    .line 302
    iget-object v1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-direct {p0, v5, v0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a(Ljava/lang/String;Lcom/sponsorpay/credentials/SPCredentials;)V

    .line 308
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mContext:Landroid/content/Context;

    const-string v1, "SponsorPayPublisherState"

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-static {v1, v5}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a(Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getLatestTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCustomParameters:Ljava/util/Map;

    invoke-static {p0, v1, v0, v2, v3}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester;->requestCurrency(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPVCSResultListener;Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 327
    :goto_0
    return-void

    .line 315
    :cond_0
    new-instance v1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getLatestTransactionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getCurrencyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->isDefault()Z

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 319
    invoke-direct {p0, v1}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;)V

    .line 320
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mContext:Landroid/content/Context;

    const-string v1, "SponsorPayPublisherState"

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getLatestTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "NO_TRANSACTION"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getCurrencyId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a(Lcom/sponsorpay/credentials/SPCredentials;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getCurrencyId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-direct {p0, v0, v1}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a(Ljava/lang/String;Lcom/sponsorpay/credentials/SPCredentials;)V

    :cond_2
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->d:Ljava/lang/String;

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getDeltaOfCoins()D

    move-result-wide v4

    cmpl-double v1, v4, v2

    if-lez v1, :cond_4

    iget-boolean v1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->c:Z

    if-eqz v1, :cond_4

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v2, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->VCS_COINS_NOTIFICATION:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v2}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getDeltaOfCoins()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object v0, v3, v9

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 321
    :cond_4
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCurrencyServerListener:Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    invoke-interface {v0, p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;->onSPCurrencyDeltaReceived(Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;)V

    goto/16 :goto_0

    .line 320
    :cond_5
    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getCurrencyName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->VCS_DEFAULT_CURRENCY:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v0}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 324
    :cond_6
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->a(Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerResponse;)V

    .line 325
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCurrencyServerListener:Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    check-cast p1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;

    invoke-interface {v0, p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;->onSPCurrencyServerError(Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;)V

    goto/16 :goto_0
.end method

.method public setCurrency(Ljava/lang/String;)Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->d:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public setCustomParameters(Ljava/util/Map;)Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;"
        }
    .end annotation

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->mCustomParameters:Ljava/util/Map;

    .line 123
    return-object p0
.end method
