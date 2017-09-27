.class public final Lcom/fyber/operations/h;
.super Ljava/lang/Object;
.source "ReporterOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/fyber/utils/s;

.field private b:Lcom/fyber/reporters/internal/d;


# direct methods
.method public constructor <init>(Lcom/fyber/utils/s;Lcom/fyber/reporters/internal/d;)V
    .locals 0
    .param p1    # Lcom/fyber/utils/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/fyber/operations/h;->a:Lcom/fyber/utils/s;

    .line 33
    iput-object p2, p0, Lcom/fyber/operations/h;->b:Lcom/fyber/reporters/internal/d;

    .line 34
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/fyber/operations/h;->a:Lcom/fyber/utils/s;

    invoke-virtual {v0}, Lcom/fyber/utils/s;->e()Ljava/lang/String;

    move-result-object v0

    .line 40
    const-string v1, "ReporterOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "event will be sent to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {v0}, Lcom/fyber/utils/j;->b(Ljava/lang/String;)Lcom/fyber/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/utils/j;->a()Lcom/fyber/utils/a;

    move-result-object v0

    check-cast v0, Lcom/fyber/utils/j;

    invoke-virtual {v0}, Lcom/fyber/utils/j;->b()I

    move-result v0

    .line 42
    const-string v1, "ReporterOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Server returned status code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/fyber/operations/h;->b:Lcom/fyber/reporters/internal/d;

    invoke-virtual {v0}, Lcom/fyber/reporters/internal/d;->a()V

    .line 51
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/fyber/operations/h;->b:Lcom/fyber/reporters/internal/d;

    invoke-virtual {v1, v0}, Lcom/fyber/reporters/internal/d;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string v1, "ReporterOperation"

    const-string v2, "An error occurred"

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
