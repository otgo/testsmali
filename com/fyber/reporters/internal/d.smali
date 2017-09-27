.class public abstract Lcom/fyber/reporters/internal/d;
.super Ljava/lang/Object;
.source "ReporterResult.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Report was unsuccessful. Response code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1025
    invoke-static {}, Lcom/fyber/utils/FyberLogger;->isLogging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1026
    invoke-virtual {p0}, Lcom/fyber/reporters/internal/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1028
    :cond_0
    invoke-virtual {p0}, Lcom/fyber/reporters/internal/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected abstract b()Ljava/lang/String;
.end method
