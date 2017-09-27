.class public abstract Lcom/fyber/reporters/Reporter;
.super Ljava/lang/Object;
.source "Reporter.java"


# instance fields
.field protected final b:Ljava/lang/String;

.field protected c:Ljava/util/Map;
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
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appId cannot be null nor empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/fyber/reporters/Reporter;->b:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/fyber/utils/s;)Lcom/fyber/utils/s;
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/reporters/Reporter;
    .locals 1

    .prologue
    .line 62
    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/fyber/reporters/Reporter;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/reporters/Reporter;->c:Ljava/util/Map;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/fyber/reporters/Reporter;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_1
    return-object p0
.end method

.method public addParameters(Ljava/util/Map;)Lcom/fyber/reporters/Reporter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fyber/reporters/Reporter;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p1}, Lcom/fyber/utils/m;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/fyber/reporters/Reporter;->c:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/fyber/reporters/Reporter;->c:Ljava/util/Map;

    .line 51
    :cond_0
    :goto_0
    return-object p0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/fyber/reporters/Reporter;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected abstract b()Lcom/fyber/credentials/a;
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method protected abstract e()Lcom/fyber/reporters/internal/d;
.end method

.method public report(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 79
    invoke-static {}, Lcom/fyber/utils/h;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    const-string v0, "Only devices running Android API level 10 and above are supported"

    .line 1120
    invoke-static {}, Lcom/fyber/utils/FyberLogger;->isLogging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1121
    invoke-virtual {p0}, Lcom/fyber/reporters/Reporter;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_0
    const/4 v0, 0x0

    .line 99
    :goto_1
    return v0

    .line 1123
    :cond_0
    invoke-virtual {p0}, Lcom/fyber/reporters/Reporter;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {p1}, Lcom/fyber/utils/h;->a(Landroid/content/Context;)Lcom/fyber/utils/h;

    .line 87
    invoke-virtual {p0}, Lcom/fyber/reporters/Reporter;->b()Lcom/fyber/credentials/a;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lcom/fyber/reporters/Reporter;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fyber/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/fyber/utils/s;->a(Ljava/lang/String;Lcom/fyber/credentials/a;)Lcom/fyber/utils/s;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/reporters/Reporter;->c:Ljava/util/Map;

    .line 90
    invoke-virtual {v0, v1}, Lcom/fyber/utils/s;->a(Ljava/util/Map;)Lcom/fyber/utils/s;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/fyber/utils/s;->a()Lcom/fyber/utils/s;

    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Lcom/fyber/reporters/Reporter;->a(Lcom/fyber/utils/s;)Lcom/fyber/utils/s;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/fyber/operations/h;

    invoke-virtual {p0}, Lcom/fyber/reporters/Reporter;->e()Lcom/fyber/reporters/internal/d;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/fyber/operations/h;-><init>(Lcom/fyber/utils/s;Lcom/fyber/reporters/internal/d;)V

    .line 97
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 99
    const/4 v0, 0x1

    goto :goto_1
.end method
