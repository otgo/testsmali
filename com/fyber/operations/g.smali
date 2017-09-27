.class public final Lcom/fyber/operations/g;
.super Ljava/lang/Object;
.source "RemoteFileOperation.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/fyber/operations/g;->a:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/fyber/operations/g;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/utils/j;->b(Ljava/lang/String;)Lcom/fyber/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/utils/j;->a()Lcom/fyber/utils/a;

    move-result-object v0

    check-cast v0, Lcom/fyber/utils/j;

    invoke-virtual {v0}, Lcom/fyber/utils/j;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-object v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    const-string v1, "RemoteFileOperation"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 42
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    new-instance v1, Lcom/fyber/operations/g;

    invoke-direct {v1, p0}, Lcom/fyber/operations/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber$a;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/fyber/operations/g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
