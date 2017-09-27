.class public abstract Lcom/fyber/operations/f;
.super Ljava/lang/Object;
.source "NetworkOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field protected a:Lcom/fyber/utils/s;


# direct methods
.method protected constructor <init>(Lcom/fyber/utils/s;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/fyber/operations/f;->a:Lcom/fyber/utils/s;

    .line 21
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/fyber/utils/j;)Ljava/lang/Object;
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
.end method

.method protected abstract a(Ljava/io/IOException;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/IOException;",
            ")TV;"
        }
    .end annotation
.end method

.method protected abstract a()Z
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected final c()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/fyber/operations/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/fyber/operations/f;->a:Lcom/fyber/utils/s;

    invoke-virtual {v0}, Lcom/fyber/utils/s;->e()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcom/fyber/operations/f;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sending request to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {v0}, Lcom/fyber/utils/j;->b(Ljava/lang/String;)Lcom/fyber/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/utils/j;->a()Lcom/fyber/utils/a;

    move-result-object v0

    check-cast v0, Lcom/fyber/utils/j;

    .line 34
    invoke-virtual {p0, v0}, Lcom/fyber/operations/f;->a(Lcom/fyber/utils/j;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {p0}, Lcom/fyber/operations/f;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "An error occurred"

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/fyber/operations/f;->a(Ljava/io/IOException;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/fyber/operations/f;->c()Ljava/lang/Object;

    .line 26
    return-void
.end method
