.class final Lcom/purplebrain/adbuddiz/sdk/f/k;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/f/i;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/f/i;ZJ)V
    .locals 3

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/f/k;->a:Lcom/purplebrain/adbuddiz/sdk/f/i;

    const-wide/16 v0, 0xfa

    invoke-direct {p0, p3, p4, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    iput-boolean p2, p0, Lcom/purplebrain/adbuddiz/sdk/f/k;->b:Z

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/k;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/k;->a:Lcom/purplebrain/adbuddiz/sdk/f/i;

    iput-boolean v2, v0, Lcom/purplebrain/adbuddiz/sdk/f/i;->f:Z

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/k;->a:Lcom/purplebrain/adbuddiz/sdk/f/i;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/i;->e:Lcom/purplebrain/adbuddiz/sdk/a/l;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/k;->a:Lcom/purplebrain/adbuddiz/sdk/f/i;

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/f/i;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/f/k;->a:Lcom/purplebrain/adbuddiz/sdk/f/i;

    iget-object v2, v2, Lcom/purplebrain/adbuddiz/sdk/f/i;->d:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/purplebrain/adbuddiz/sdk/f/k;->b:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/a/l;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/String;Z)V

    return-void
.end method

.method public final onTick(J)V
    .locals 0

    return-void
.end method
