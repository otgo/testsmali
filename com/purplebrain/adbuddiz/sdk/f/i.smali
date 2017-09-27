.class public final Lcom/purplebrain/adbuddiz/sdk/f/i;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

.field public d:Ljava/lang/String;

.field public e:Lcom/purplebrain/adbuddiz/sdk/a/l;

.field public f:Z

.field g:Ljava/lang/Object;

.field h:Lcom/purplebrain/adbuddiz/sdk/f/k;

.field public i:J

.field public j:J

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/a/l;Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/i;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/i;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/i;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/i;->h:Lcom/purplebrain/adbuddiz/sdk/f/k;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/i;->k:Landroid/os/Handler;

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/f/i;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/f/i;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/f/i;->e:Lcom/purplebrain/adbuddiz/sdk/a/l;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    iget-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->v:J

    iput-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/f/i;->i:J

    iget-wide v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->w:J

    iput-wide v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/i;->j:J

    if-eqz p4, :cond_0

    const-string v0, "MRAID_shouldSendImpression"

    invoke-virtual {p4, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/i;->f:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/purplebrain/adbuddiz/sdk/f/i;->f:Z

    goto :goto_0
.end method


# virtual methods
.method public final a(ZJ)V
    .locals 2

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/i;->f:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/i;->k:Landroid/os/Handler;

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/f/j;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/purplebrain/adbuddiz/sdk/f/j;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/i;ZJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
