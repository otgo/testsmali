.class final Lcom/fyber/reporters/internal/c;
.super Lcom/fyber/reporters/internal/d;
.source "AppStartReporter.java"


# instance fields
.field final synthetic a:Lcom/fyber/reporters/internal/b;


# direct methods
.method constructor <init>(Lcom/fyber/reporters/internal/b;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/fyber/reporters/internal/c;->a:Lcom/fyber/reporters/internal/b;

    invoke-direct {p0}, Lcom/fyber/reporters/internal/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "InstallReporter"

    return-object v0
.end method
