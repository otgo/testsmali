.class public abstract Lcom/fyber/requesters/Requester;
.super Ljava/lang/Object;
.source "Requester.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final EXTRA_AD_FORMAT:Ljava/lang/String; = "EXTRA_AD_FORMAT"


# instance fields
.field protected a:Lcom/fyber/requesters/Callback;

.field protected b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Lcom/fyber/requesters/Callback;)V
    .locals 2
    .param p1    # Lcom/fyber/requesters/Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/fyber/requesters/Requester;->a:Lcom/fyber/requesters/Callback;

    .line 61
    return-void
.end method

.method protected constructor <init>(Lcom/fyber/requesters/Requester;)V
    .locals 2
    .param p1    # Lcom/fyber/requesters/Requester;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "requester cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iget-object v0, p1, Lcom/fyber/requesters/Requester;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/fyber/utils/m;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/fyber/requesters/Requester;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/fyber/requesters/Requester;->b:Ljava/util/Map;

    .line 73
    :cond_1
    iget-object v0, p1, Lcom/fyber/requesters/Requester;->a:Lcom/fyber/requesters/Callback;

    iput-object v0, p0, Lcom/fyber/requesters/Requester;->a:Lcom/fyber/requesters/Callback;

    .line 74
    iget-object v0, p1, Lcom/fyber/requesters/Requester;->c:Landroid/os/Handler;

    iput-object v0, p0, Lcom/fyber/requesters/Requester;->c:Landroid/os/Handler;

    .line 75
    return-void
.end method

.method private d()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fyber/requesters/Requester;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/fyber/requesters/Requester;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "CUSTOM_PARAMS_KEY"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fyber/requesters/Requester;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/requesters/Requester;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 79
    :cond_0
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fyber/Fyber$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fyber/requesters/Requester;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(Lcom/fyber/requesters/RequestError;)V
    .locals 1

    .prologue
    .line 229
    new-instance v0, Lcom/fyber/requesters/e;

    invoke-direct {v0, p0, p1}, Lcom/fyber/requesters/e;-><init>(Lcom/fyber/requesters/Requester;Lcom/fyber/requesters/RequestError;)V

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/Requester;->a(Lcom/fyber/utils/b;)V

    .line 235
    return-void
.end method

.method protected final a(Lcom/fyber/utils/b;)V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/fyber/requesters/Requester;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/fyber/requesters/Requester;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    invoke-static {p1}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/utils/b;)V

    goto :goto_0
.end method

.method protected abstract a()Z
.end method

.method protected final a(Landroid/content/Context;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 209
    if-nez p1, :cond_0

    .line 210
    sget-object v1, Lcom/fyber/requesters/RequestError;->NULL_CONTEXT_REFERENCE:Lcom/fyber/requesters/RequestError;

    invoke-virtual {p0, v1}, Lcom/fyber/requesters/Requester;->a(Lcom/fyber/requesters/RequestError;)V

    .line 225
    :goto_0
    return v0

    .line 213
    :cond_0
    invoke-static {}, Lcom/fyber/utils/h;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    sget-object v1, Lcom/fyber/requesters/RequestError;->DEVICE_NOT_SUPPORTED:Lcom/fyber/requesters/RequestError;

    invoke-virtual {p0, v1}, Lcom/fyber/requesters/Requester;->a(Lcom/fyber/requesters/RequestError;)V

    goto :goto_0

    .line 217
    :cond_1
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/Fyber$a;->d()Z

    move-result v1

    if-nez v1, :cond_2

    .line 218
    sget-object v1, Lcom/fyber/requesters/RequestError;->SDK_NOT_STARTED:Lcom/fyber/requesters/RequestError;

    invoke-virtual {p0, v1}, Lcom/fyber/requesters/Requester;->a(Lcom/fyber/requesters/RequestError;)V

    goto :goto_0

    .line 221
    :cond_2
    invoke-virtual {p0}, Lcom/fyber/requesters/Requester;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 222
    sget-object v1, Lcom/fyber/requesters/RequestError;->MISMATCH_CALLBACK_TYPE:Lcom/fyber/requesters/RequestError;

    invoke-virtual {p0, v1}, Lcom/fyber/requesters/Requester;->a(Lcom/fyber/requesters/RequestError;)V

    goto :goto_0

    .line 225
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/fyber/requesters/Requester;->d()Ljava/util/HashMap;

    move-result-object v0

    .line 130
    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 132
    invoke-virtual {p0}, Lcom/fyber/requesters/Requester;->c()Ljava/util/Map;

    move-result-object v1

    const-string v2, "CUSTOM_PARAMS_KEY"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {p0}, Lcom/fyber/requesters/Requester;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public addParameters(Ljava/util/Map;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {p1}, Lcom/fyber/utils/m;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/fyber/requesters/Requester;->d()Ljava/util/HashMap;

    move-result-object v0

    .line 112
    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    invoke-virtual {p0}, Lcom/fyber/requesters/Requester;->c()Ljava/util/Map;

    move-result-object v1

    const-string v2, "CUSTOM_PARAMS_KEY"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/fyber/requesters/Requester;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/fyber/requesters/Requester;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 239
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final c(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lcom/fyber/requesters/Requester;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method protected final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fyber/requesters/Requester;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/requesters/Requester;->b:Ljava/util/Map;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/fyber/requesters/Requester;->b:Ljava/util/Map;

    return-object v0
.end method

.method public clearParameters()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/fyber/requesters/Requester;->d()Ljava/util/HashMap;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/fyber/requesters/Requester;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final d(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/fyber/requesters/Requester;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public invokeCallbackOnHandler(Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 198
    iput-object p1, p0, Lcom/fyber/requesters/Requester;->c:Landroid/os/Handler;

    .line 199
    invoke-virtual {p0}, Lcom/fyber/requesters/Requester;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/fyber/requesters/Requester;->d()Ljava/util/HashMap;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/fyber/requesters/Requester;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract request(Landroid/content/Context;)V
.end method

.method public withCallback(Lcom/fyber/requesters/Callback;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lcom/fyber/requesters/Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/requesters/Callback;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    iput-object p1, p0, Lcom/fyber/requesters/Requester;->a:Lcom/fyber/requesters/Callback;

    .line 189
    invoke-virtual {p0}, Lcom/fyber/requesters/Requester;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public withPlacementId(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/fyber/requesters/Requester;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "PLACEMENT_ID_KEY"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {p0}, Lcom/fyber/requesters/Requester;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
