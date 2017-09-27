.class public Lcom/fyber/reporters/RewardedActionReporter;
.super Lcom/fyber/reporters/AdvertiserReporter;
.source "RewardedActionReporter.java"


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/fyber/reporters/AdvertiserReporter;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p2, p0, Lcom/fyber/reporters/RewardedActionReporter;->d:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/fyber/reporters/RewardedActionReporter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fyber/reporters/RewardedActionReporter;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/reporters/RewardedActionReporter;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/exceptions/IdException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {p1}, Lcom/fyber/utils/l;->a(Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/fyber/reporters/RewardedActionReporter;

    invoke-direct {v0, p0, p1}, Lcom/fyber/reporters/RewardedActionReporter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/fyber/utils/s;)Lcom/fyber/utils/s;
    .locals 2

    .prologue
    .line 64
    const-string v0, "action_id"

    iget-object v1, p0, Lcom/fyber/reporters/RewardedActionReporter;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fyber/utils/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/s;

    move-result-object v0

    .line 65
    invoke-super {p0, v0}, Lcom/fyber/reporters/AdvertiserReporter;->a(Lcom/fyber/utils/s;)Lcom/fyber/utils/s;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fyber/reporters/RewardedActionReporter;->a:Lcom/fyber/reporters/internal/a;

    iget-object v1, p0, Lcom/fyber/reporters/RewardedActionReporter;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fyber/reporters/internal/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "actions"

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "RewardedActionReporter"

    return-object v0
.end method

.method protected final e()Lcom/fyber/reporters/internal/d;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/fyber/reporters/b;

    invoke-direct {v0, p0}, Lcom/fyber/reporters/b;-><init>(Lcom/fyber/reporters/RewardedActionReporter;)V

    return-object v0
.end method
