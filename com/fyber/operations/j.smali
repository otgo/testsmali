.class public final Lcom/fyber/operations/j;
.super Lcom/fyber/operations/i;
.source "VirtualCurrencyNetworkOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/operations/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/operations/i",
        "<",
        "Lcom/fyber/operations/j$a;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lcom/fyber/currency/internal/a;


# instance fields
.field private final d:Lcom/fyber/requesters/VirtualCurrencyCallback;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/content/Context;

.field private j:Landroid/os/Handler;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/fyber/currency/internal/a;

    invoke-direct {v0}, Lcom/fyber/currency/internal/a;-><init>()V

    sput-object v0, Lcom/fyber/operations/j;->c:Lcom/fyber/currency/internal/a;

    .line 44
    return-void
.end method

.method private constructor <init>(Lcom/fyber/operations/j;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p1, Lcom/fyber/operations/j;->a:Lcom/fyber/utils/s;

    iget-object v1, p1, Lcom/fyber/operations/j;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/fyber/operations/i;-><init>(Lcom/fyber/utils/s;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/operations/j;->k:Z

    .line 73
    iget-object v0, p1, Lcom/fyber/operations/j;->d:Lcom/fyber/requesters/VirtualCurrencyCallback;

    iput-object v0, p0, Lcom/fyber/operations/j;->d:Lcom/fyber/requesters/VirtualCurrencyCallback;

    .line 74
    iget-object v0, p1, Lcom/fyber/operations/j;->i:Landroid/content/Context;

    iput-object v0, p0, Lcom/fyber/operations/j;->i:Landroid/content/Context;

    .line 75
    iget-boolean v0, p1, Lcom/fyber/operations/j;->e:Z

    iput-boolean v0, p0, Lcom/fyber/operations/j;->e:Z

    .line 76
    iget-object v0, p1, Lcom/fyber/operations/j;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/operations/j;->f:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/fyber/operations/j;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/operations/j;->g:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/fyber/operations/j;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/operations/j;->h:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lcom/fyber/operations/j;->j:Landroid/os/Handler;

    iput-object v0, p0, Lcom/fyber/operations/j;->j:Landroid/os/Handler;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/operations/j;->k:Z

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/fyber/utils/s;Lcom/fyber/requesters/VirtualCurrencyCallback;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0, p1, p3}, Lcom/fyber/operations/i;-><init>(Lcom/fyber/utils/s;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/operations/j;->k:Z

    .line 85
    iput-object p2, p0, Lcom/fyber/operations/j;->d:Lcom/fyber/requesters/VirtualCurrencyCallback;

    .line 86
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/operations/j;->i:Landroid/content/Context;

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/fyber/operations/j;)Lcom/fyber/requesters/VirtualCurrencyCallback;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fyber/operations/j;->d:Lcom/fyber/requesters/VirtualCurrencyCallback;

    return-object v0
.end method

.method private a(Lcom/fyber/currency/VirtualCurrencyErrorResponse;)V
    .locals 1

    .prologue
    .line 326
    new-instance v0, Lcom/fyber/operations/m;

    invoke-direct {v0, p0, p1}, Lcom/fyber/operations/m;-><init>(Lcom/fyber/operations/j;Lcom/fyber/currency/VirtualCurrencyErrorResponse;)V

    invoke-direct {p0, v0}, Lcom/fyber/operations/j;->a(Lcom/fyber/utils/b;)V

    .line 332
    return-void
.end method

.method private a(Lcom/fyber/currency/VirtualCurrencyResponse;)V
    .locals 1

    .prologue
    .line 335
    new-instance v0, Lcom/fyber/operations/n;

    invoke-direct {v0, p0, p1}, Lcom/fyber/operations/n;-><init>(Lcom/fyber/operations/j;Lcom/fyber/currency/VirtualCurrencyResponse;)V

    invoke-direct {p0, v0}, Lcom/fyber/operations/j;->a(Lcom/fyber/utils/b;)V

    .line 341
    return-void
.end method

.method private a(Lcom/fyber/utils/b;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/fyber/operations/j;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/fyber/operations/j;->j:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    invoke-static {p1}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/utils/b;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/fyber/operations/j;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fyber/operations/j;->i:Landroid/content/Context;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Lcom/fyber/operations/j$a;
    .locals 8

    .prologue
    .line 190
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 191
    const-string v1, "delta_of_coins"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 192
    const-string v1, "latest_transaction_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 193
    const-string v1, "currency_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 194
    const-string v1, "currency_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 195
    const-string v1, "is_default"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 197
    new-instance v1, Lcom/fyber/currency/VirtualCurrencyResponse;

    invoke-direct/range {v1 .. v7}, Lcom/fyber/currency/VirtualCurrencyResponse;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-object v1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    sget-object v2, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;->ERROR_INVALID_RESPONSE:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    .line 200
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v1, Lcom/fyber/currency/VirtualCurrencyErrorResponse;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/fyber/currency/VirtualCurrencyErrorResponse;-><init>(Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;)Lcom/fyber/currency/VirtualCurrencyErrorResponse;
    .locals 4

    .prologue
    .line 210
    const/4 v1, 0x0

    .line 212
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 213
    const-string v0, "code"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 214
    :try_start_1
    const-string v1, "message"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 215
    sget-object v1, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;->SERVER_RETURNED_ERROR:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    :goto_0
    new-instance v3, Lcom/fyber/currency/VirtualCurrencyErrorResponse;

    invoke-direct {v3, v1, v0, v2}, Lcom/fyber/currency/VirtualCurrencyErrorResponse;-><init>(Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 216
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    .line 217
    :goto_1
    const-string v1, "VirtualCurrencyNetworkOperation"

    const-string v3, "An exception was triggered while parsing error response"

    invoke-static {v1, v3, v2}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 219
    sget-object v1, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;->ERROR_OTHER:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    .line 220
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 216
    :catch_1
    move-exception v1

    move-object v2, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/os/Handler;)Lcom/fyber/operations/j;
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/fyber/operations/j;->j:Landroid/os/Handler;

    .line 121
    return-object p0
.end method

.method public final a(Ljava/util/Map;)Lcom/fyber/operations/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fyber/operations/j;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fyber/operations/j;->a:Lcom/fyber/utils/s;

    invoke-virtual {v0, p1}, Lcom/fyber/utils/s;->a(Ljava/util/Map;)Lcom/fyber/utils/s;

    .line 96
    return-object p0
.end method

.method public final a(Z)Lcom/fyber/operations/j;
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/fyber/operations/j;->e:Z

    .line 91
    return-object p0
.end method

.method protected final synthetic a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 33
    .line 1175
    invoke-static {p1}, Lcom/fyber/operations/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    invoke-static {p2}, Lcom/fyber/operations/j;->f(Ljava/lang/String;)Lcom/fyber/currency/VirtualCurrencyErrorResponse;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    .line 1178
    :cond_0
    new-instance v0, Lcom/fyber/currency/VirtualCurrencyErrorResponse;

    sget-object v1, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;->ERROR_INVALID_RESPONSE_SIGNATURE:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    const/4 v2, 0x0

    const-string v3, "The signature received in the request did not match the expected one"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/currency/VirtualCurrencyErrorResponse;-><init>(Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final synthetic a(Ljava/io/IOException;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    .line 4126
    new-instance v0, Lcom/fyber/operations/k;

    invoke-direct {v0, p0}, Lcom/fyber/operations/k;-><init>(Lcom/fyber/operations/j;)V

    invoke-direct {p0, v0}, Lcom/fyber/operations/j;->a(Lcom/fyber/utils/b;)V

    .line 4132
    const/4 v0, 0x0

    .line 33
    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 33
    check-cast p1, Lcom/fyber/operations/j$a;

    .line 2146
    instance-of v0, p1, Lcom/fyber/currency/VirtualCurrencyResponse;

    if-eqz v0, :cond_5

    .line 2148
    check-cast p1, Lcom/fyber/currency/VirtualCurrencyResponse;

    .line 2277
    iget-object v0, p0, Lcom/fyber/operations/j;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/fyber/currency/internal/b;->a(Landroid/content/Context;)Lcom/fyber/currency/internal/b;

    move-result-object v1

    .line 2278
    invoke-virtual {v1}, Lcom/fyber/currency/internal/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 2279
    invoke-virtual {p1}, Lcom/fyber/currency/VirtualCurrencyResponse;->getCurrencyId()Ljava/lang/String;

    move-result-object v4

    .line 2302
    iget-object v5, p0, Lcom/fyber/operations/j;->f:Ljava/lang/String;

    invoke-static {v5}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2304
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2306
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v9

    .line 2282
    :goto_0
    if-eqz v0, :cond_3

    .line 2284
    invoke-virtual {v1, v4}, Lcom/fyber/currency/internal/b;->a(Ljava/lang/String;)V

    .line 2286
    invoke-virtual {v1, v4}, Lcom/fyber/currency/internal/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2289
    new-instance v1, Lcom/fyber/operations/j;

    invoke-direct {v1, p0}, Lcom/fyber/operations/j;-><init>(Lcom/fyber/operations/j;)V

    .line 2290
    invoke-virtual {v1, v0}, Lcom/fyber/operations/j;->d(Ljava/lang/String;)Lcom/fyber/operations/j;

    .line 2291
    iget-object v0, v1, Lcom/fyber/operations/j;->a:Lcom/fyber/utils/s;

    const-string v4, "currency_id"

    iget-object v5, p0, Lcom/fyber/operations/j;->f:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/fyber/utils/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/s;

    .line 2293
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber$a;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move v0, v8

    .line 2149
    :goto_1
    if-eqz v0, :cond_1

    .line 2316
    iget-object v0, p0, Lcom/fyber/operations/j;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/fyber/currency/internal/b;->a(Landroid/content/Context;)Lcom/fyber/currency/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/currency/internal/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 2317
    invoke-virtual {p1}, Lcom/fyber/currency/VirtualCurrencyResponse;->getCurrencyId()Ljava/lang/String;

    move-result-object v5

    .line 2318
    new-instance v1, Lcom/fyber/currency/VirtualCurrencyResponse;

    .line 2319
    invoke-virtual {p1}, Lcom/fyber/currency/VirtualCurrencyResponse;->getLatestTransactionId()Ljava/lang/String;

    move-result-object v4

    .line 2320
    invoke-virtual {p1}, Lcom/fyber/currency/VirtualCurrencyResponse;->getCurrencyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/fyber/currency/VirtualCurrencyResponse;->isDefault()Z

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/fyber/currency/VirtualCurrencyResponse;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2322
    sget-object v4, Lcom/fyber/operations/j;->c:Lcom/fyber/currency/internal/a;

    invoke-virtual {v4, v1, v5, v0}, Lcom/fyber/currency/internal/a;->a(Lcom/fyber/operations/j$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    iget-object v0, p0, Lcom/fyber/operations/j;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/fyber/currency/internal/b;->a(Landroid/content/Context;)Lcom/fyber/currency/internal/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fyber/currency/internal/b;->a(Lcom/fyber/currency/VirtualCurrencyResponse;)V

    .line 2155
    invoke-virtual {p1}, Lcom/fyber/currency/VirtualCurrencyResponse;->getDeltaOfCoins()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/fyber/operations/j;->e:Z

    if-eqz v0, :cond_0

    .line 3262
    invoke-virtual {p1}, Lcom/fyber/currency/VirtualCurrencyResponse;->getCurrencyName()Ljava/lang/String;

    move-result-object v0

    .line 3263
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3266
    :goto_2
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v2, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->VCS_COINS_NOTIFICATION:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v2}, Lcom/fyber/utils/r;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 3267
    invoke-virtual {p1}, Lcom/fyber/currency/VirtualCurrencyResponse;->getDeltaOfCoins()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object v0, v3, v9

    .line 3266
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3268
    new-instance v1, Lcom/fyber/operations/l;

    invoke-direct {v1, p0, v0}, Lcom/fyber/operations/l;-><init>(Lcom/fyber/operations/j;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/fyber/operations/j;->a(Lcom/fyber/utils/b;)V

    .line 2159
    :cond_0
    invoke-direct {p0, p1}, Lcom/fyber/operations/j;->a(Lcom/fyber/currency/VirtualCurrencyResponse;)V

    .line 2169
    :cond_1
    :goto_3
    const/4 v0, 0x0

    .line 33
    return-object v0

    :cond_2
    move v0, v8

    .line 2306
    goto/16 :goto_0

    :cond_3
    move v0, v9

    .line 2296
    goto :goto_1

    .line 3263
    :cond_4
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->VCS_DEFAULT_CURRENCY:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    .line 3264
    invoke-static {v0}, Lcom/fyber/utils/r;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2165
    :cond_5
    check-cast p1, Lcom/fyber/currency/VirtualCurrencyErrorResponse;

    .line 3310
    iget-object v0, p0, Lcom/fyber/operations/j;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/fyber/currency/internal/b;->a(Landroid/content/Context;)Lcom/fyber/currency/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/currency/internal/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 3311
    iget-object v0, p0, Lcom/fyber/operations/j;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    .line 3312
    :goto_4
    sget-object v2, Lcom/fyber/operations/j;->c:Lcom/fyber/currency/internal/a;

    invoke-virtual {v2, p1, v0, v1}, Lcom/fyber/currency/internal/a;->a(Lcom/fyber/operations/j$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    invoke-direct {p0, p1}, Lcom/fyber/operations/j;->a(Lcom/fyber/currency/VirtualCurrencyErrorResponse;)V

    goto :goto_3

    .line 3311
    :cond_6
    iget-object v0, p0, Lcom/fyber/operations/j;->f:Ljava/lang/String;

    goto :goto_4
.end method

.method protected final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-static {p1}, Lcom/fyber/operations/j;->e(Ljava/lang/String;)Lcom/fyber/operations/j$a;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Z
    .locals 4

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/fyber/operations/j;->k:Z

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/fyber/operations/j;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/fyber/currency/internal/b;->a(Landroid/content/Context;)Lcom/fyber/currency/internal/b;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Lcom/fyber/currency/internal/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 231
    sget-object v2, Lcom/fyber/operations/j;->c:Lcom/fyber/currency/internal/a;

    iget-object v3, p0, Lcom/fyber/operations/j;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/fyber/currency/internal/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/operations/j$a;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_1

    sget-object v2, Lcom/fyber/currency/internal/a;->a:Lcom/fyber/currency/VirtualCurrencyErrorResponse;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 233
    instance-of v1, v0, Lcom/fyber/currency/VirtualCurrencyResponse;

    if-eqz v1, :cond_0

    .line 234
    check-cast v0, Lcom/fyber/currency/VirtualCurrencyResponse;

    invoke-direct {p0, v0}, Lcom/fyber/operations/j;->a(Lcom/fyber/currency/VirtualCurrencyResponse;)V

    .line 238
    :goto_0
    const/4 v0, 0x0

    .line 248
    :goto_1
    return v0

    .line 236
    :cond_0
    check-cast v0, Lcom/fyber/currency/VirtualCurrencyErrorResponse;

    invoke-direct {p0, v0}, Lcom/fyber/operations/j;->a(Lcom/fyber/currency/VirtualCurrencyErrorResponse;)V

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/fyber/operations/j;->h:Ljava/lang/String;

    .line 242
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    iget-object v0, p0, Lcom/fyber/operations/j;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/fyber/currency/internal/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    :cond_2
    iget-object v1, p0, Lcom/fyber/operations/j;->a:Lcom/fyber/utils/s;

    const-string v2, "ltid"

    invoke-virtual {v1, v2, v0}, Lcom/fyber/utils/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/s;

    .line 248
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)Lcom/fyber/operations/j;
    .locals 2

    .prologue
    .line 100
    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iput-object p1, p0, Lcom/fyber/operations/j;->f:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/fyber/operations/j;->a:Lcom/fyber/utils/s;

    const-string v1, "currency_id"

    invoke-virtual {v0, v1, p1}, Lcom/fyber/utils/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/s;

    .line 104
    :cond_0
    return-object p0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    const-string v0, "VirtualCurrencyNetworkOperation"

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/fyber/operations/j;
    .locals 1

    .prologue
    .line 108
    iput-object p1, p0, Lcom/fyber/operations/j;->g:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/fyber/operations/j;->a:Lcom/fyber/utils/s;

    invoke-virtual {v0, p1}, Lcom/fyber/utils/s;->a(Ljava/lang/String;)Lcom/fyber/utils/s;

    .line 110
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/fyber/operations/j;
    .locals 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/fyber/operations/j;->h:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/fyber/operations/j;->a:Lcom/fyber/utils/s;

    const-string v1, "ltid"

    invoke-virtual {v0, v1, p1}, Lcom/fyber/utils/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/s;

    .line 116
    return-object p0
.end method
