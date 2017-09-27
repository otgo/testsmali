.class public final Lcom/purplebrain/adbuddiz/sdk/i/c;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/i/b;


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/i/b;J)V
    .locals 2

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/i/c;->a:Lcom/purplebrain/adbuddiz/sdk/i/b;

    const-wide/16 v0, 0xfa

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c;->a:Lcom/purplebrain/adbuddiz/sdk/i/b;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/b;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABVASTImpressionHelper#ABVASTImpressionTimer.onFinish"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/p;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/Throwable;)V

    const-string v1, "ABVASTImpressionHelper#ABVASTImpressionTimer.onFinish()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onTick(J)V
    .locals 0

    return-void
.end method
