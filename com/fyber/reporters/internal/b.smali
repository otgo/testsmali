.class public final Lcom/fyber/reporters/internal/b;
.super Lcom/fyber/reporters/Reporter;
.source "AppStartReporter.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/fyber/reporters/Reporter;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/fyber/reporters/internal/b;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/exceptions/IdException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {p0}, Lcom/fyber/credentials/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lcom/fyber/exceptions/IdException;

    const-string v1, "Advertiser AppID cannot be used to report an appstart"

    invoke-direct {v0, v1}, Lcom/fyber/exceptions/IdException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    new-instance v0, Lcom/fyber/reporters/internal/b;

    invoke-direct {v0, p0}, Lcom/fyber/reporters/internal/b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/fyber/utils/s;)Lcom/fyber/utils/s;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/fyber/utils/s;->a(Z)Lcom/fyber/utils/s;

    move-result-object v0

    return-object v0
.end method

.method protected final b()Lcom/fyber/credentials/a;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/credentials/a;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "installs"

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "InstallReporter"

    return-object v0
.end method

.method protected final e()Lcom/fyber/reporters/internal/d;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/fyber/reporters/internal/c;

    invoke-direct {v0, p0}, Lcom/fyber/reporters/internal/c;-><init>(Lcom/fyber/reporters/internal/b;)V

    return-object v0
.end method
