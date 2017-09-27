.class public Lcom/fyber/reporters/InstallReporter;
.super Lcom/fyber/reporters/AdvertiserReporter;
.source "InstallReporter.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/fyber/reporters/AdvertiserReporter;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/fyber/reporters/InstallReporter;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    new-instance v0, Lcom/fyber/reporters/InstallReporter;

    invoke-direct {v0, p0}, Lcom/fyber/reporters/InstallReporter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fyber/reporters/InstallReporter;->a:Lcom/fyber/reporters/internal/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fyber/reporters/internal/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "installs"

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "InstallReporter"

    return-object v0
.end method

.method protected final e()Lcom/fyber/reporters/internal/d;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/fyber/reporters/a;

    invoke-direct {v0, p0}, Lcom/fyber/reporters/a;-><init>(Lcom/fyber/reporters/InstallReporter;)V

    return-object v0
.end method
