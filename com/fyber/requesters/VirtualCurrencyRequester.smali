.class public Lcom/fyber/requesters/VirtualCurrencyRequester;
.super Lcom/fyber/requesters/Requester;
.source "VirtualCurrencyRequester.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/requesters/Requester",
        "<",
        "Lcom/fyber/requesters/VirtualCurrencyRequester;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/fyber/requesters/Requester;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/fyber/requesters/Requester;-><init>(Lcom/fyber/requesters/Requester;)V

    .line 133
    return-void
.end method

.method private constructor <init>(Lcom/fyber/requesters/VirtualCurrencyCallback;)V
    .locals 0
    .param p1    # Lcom/fyber/requesters/VirtualCurrencyCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/fyber/requesters/Requester;-><init>(Lcom/fyber/requesters/Callback;)V

    .line 137
    return-void
.end method

.method public static create(Lcom/fyber/requesters/VirtualCurrencyCallback;)Lcom/fyber/requesters/VirtualCurrencyRequester;
    .locals 1
    .param p0    # Lcom/fyber/requesters/VirtualCurrencyCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    new-instance v0, Lcom/fyber/requesters/VirtualCurrencyRequester;

    invoke-direct {v0, p0}, Lcom/fyber/requesters/VirtualCurrencyRequester;-><init>(Lcom/fyber/requesters/VirtualCurrencyCallback;)V

    return-object v0
.end method

.method public static from(Lcom/fyber/requesters/Requester;)Lcom/fyber/requesters/VirtualCurrencyRequester;
    .locals 1
    .param p0    # Lcom/fyber/requesters/Requester;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    new-instance v0, Lcom/fyber/requesters/VirtualCurrencyRequester;

    invoke-direct {v0, p0}, Lcom/fyber/requesters/VirtualCurrencyRequester;-><init>(Lcom/fyber/requesters/Requester;)V

    return-object v0
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/fyber/requesters/VirtualCurrencyRequester;->a:Lcom/fyber/requesters/Callback;

    instance-of v0, v0, Lcom/fyber/requesters/VirtualCurrencyCallback;

    return v0
.end method

.method protected final bridge synthetic b()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 25
    return-object p0
.end method

.method public forCurrencyId(Ljava/lang/String;)Lcom/fyber/requesters/VirtualCurrencyRequester;
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/fyber/requesters/VirtualCurrencyRequester;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "CURRENCY_ID"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-object p0
.end method

.method public notifyUserOnReward(Z)Lcom/fyber/requesters/VirtualCurrencyRequester;
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/fyber/requesters/VirtualCurrencyRequester;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "NOTIFY_USER_ON_REWARD"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-object p0
.end method

.method public request(Landroid/content/Context;)V
    .locals 9

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/fyber/requesters/VirtualCurrencyRequester;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/credentials/a;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lcom/fyber/credentials/a;->c()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {v2}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    sget-object v0, Lcom/fyber/requesters/RequestError;->SECURITY_TOKEN_NOT_PROVIDED:Lcom/fyber/requesters/RequestError;

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/VirtualCurrencyRequester;->a(Lcom/fyber/requesters/RequestError;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/fyber/requesters/VirtualCurrencyRequester;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/VirtualCurrencyCallback;

    .line 107
    const-string v3, "CURRENCY_ID"

    invoke-virtual {p0, v3}, Lcom/fyber/requesters/VirtualCurrencyRequester;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    const-string v4, "CUSTOM_PARAMS_KEY"

    invoke-virtual {p0, v4}, Lcom/fyber/requesters/VirtualCurrencyRequester;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 110
    const-string v5, "TRANSACTION_ID"

    invoke-virtual {p0, v5}, Lcom/fyber/requesters/VirtualCurrencyRequester;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 111
    const-string v6, "PLACEMENT_ID_KEY"

    invoke-virtual {p0, v6}, Lcom/fyber/requesters/VirtualCurrencyRequester;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 112
    const-string v7, "NOTIFY_USER_ON_REWARD"

    invoke-virtual {p0, v7}, Lcom/fyber/requesters/VirtualCurrencyRequester;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 115
    const-string v8, "vcs"

    invoke-static {v8}, Lcom/fyber/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/fyber/utils/s;->a(Ljava/lang/String;Lcom/fyber/credentials/a;)Lcom/fyber/utils/s;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Lcom/fyber/utils/s;->a()Lcom/fyber/utils/s;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/fyber/utils/s;->c()Lcom/fyber/utils/s;

    move-result-object v1

    .line 119
    new-instance v8, Lcom/fyber/operations/j;

    invoke-direct {v8, v1, v0, v2, p1}, Lcom/fyber/operations/j;-><init>(Lcom/fyber/utils/s;Lcom/fyber/requesters/VirtualCurrencyCallback;Ljava/lang/String;Landroid/content/Context;)V

    .line 120
    invoke-virtual {v8, v7}, Lcom/fyber/operations/j;->a(Z)Lcom/fyber/operations/j;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v4}, Lcom/fyber/operations/j;->a(Ljava/util/Map;)Lcom/fyber/operations/j;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v5}, Lcom/fyber/operations/j;->d(Ljava/lang/String;)Lcom/fyber/operations/j;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/requesters/VirtualCurrencyRequester;->c:Landroid/os/Handler;

    .line 123
    invoke-virtual {v0, v1}, Lcom/fyber/operations/j;->a(Landroid/os/Handler;)Lcom/fyber/operations/j;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v3}, Lcom/fyber/operations/j;->b(Ljava/lang/String;)Lcom/fyber/operations/j;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v6}, Lcom/fyber/operations/j;->c(Ljava/lang/String;)Lcom/fyber/operations/j;

    move-result-object v0

    .line 127
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fyber/Fyber$a;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public withTransactionId(Ljava/lang/String;)Lcom/fyber/requesters/VirtualCurrencyRequester;
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/fyber/requesters/VirtualCurrencyRequester;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "TRANSACTION_ID"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-object p0
.end method

.method public withVirtualCurrencyCallback(Lcom/fyber/requesters/VirtualCurrencyCallback;)Lcom/fyber/requesters/VirtualCurrencyRequester;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/fyber/requesters/VirtualCurrencyRequester;->withCallback(Lcom/fyber/requesters/Callback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/requesters/VirtualCurrencyRequester;

    return-object v0
.end method
