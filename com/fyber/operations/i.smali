.class public abstract Lcom/fyber/operations/i;
.super Lcom/fyber/operations/f;
.source "SignedResponseNetworkOperation.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fyber/operations/f",
        "<TV;>;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fyber/utils/s;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/fyber/operations/f;-><init>(Lcom/fyber/utils/s;)V

    .line 31
    invoke-static {p2}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Security token must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iput-object p2, p0, Lcom/fyber/operations/i;->b:Ljava/lang/String;

    .line 35
    return-void
.end method

.method protected static a(I)Z
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12b

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected final a(Lcom/fyber/utils/j;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/utils/j;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 44
    invoke-virtual {p1}, Lcom/fyber/utils/j;->b()I

    move-result v2

    .line 45
    invoke-virtual {p1}, Lcom/fyber/utils/j;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    const-string v1, "X-Sponsorpay-Response-Signature"

    invoke-virtual {p1, v1}, Lcom/fyber/utils/j;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 48
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/fyber/operations/i;->b()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "Server Response, status code: %d, response body: %s, signature: %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v7, 0x2

    aput-object v1, v6, v7

    .line 50
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {v2}, Lcom/fyber/operations/i;->a(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/fyber/operations/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    invoke-virtual {p0, v0}, Lcom/fyber/operations/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    :goto_1
    invoke-virtual {p0, v0}, Lcom/fyber/operations/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 48
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0, v2, v0, v1}, Lcom/fyber/operations/i;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method protected abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fyber/operations/i;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/fyber/utils/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/fyber/operations/i;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
