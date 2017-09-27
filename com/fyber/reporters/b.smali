.class final Lcom/fyber/reporters/b;
.super Lcom/fyber/reporters/internal/d;
.source "RewardedActionReporter.java"


# instance fields
.field final synthetic a:Lcom/fyber/reporters/RewardedActionReporter;


# direct methods
.method constructor <init>(Lcom/fyber/reporters/RewardedActionReporter;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/fyber/reporters/b;->a:Lcom/fyber/reporters/RewardedActionReporter;

    invoke-direct {p0}, Lcom/fyber/reporters/internal/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fyber/reporters/b;->a:Lcom/fyber/reporters/RewardedActionReporter;

    iget-object v0, v0, Lcom/fyber/reporters/RewardedActionReporter;->a:Lcom/fyber/reporters/internal/a;

    iget-object v1, p0, Lcom/fyber/reporters/b;->a:Lcom/fyber/reporters/RewardedActionReporter;

    invoke-static {v1}, Lcom/fyber/reporters/RewardedActionReporter;->a(Lcom/fyber/reporters/RewardedActionReporter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/reporters/internal/a;->a(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "RewardedActionReporter"

    return-object v0
.end method
