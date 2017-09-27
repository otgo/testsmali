.class public final Lcom/purplebrain/adbuddiz/sdk/g/e;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/g/e$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public c:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

.field public d:Ljava/lang/String;

.field public e:Lcom/purplebrain/adbuddiz/sdk/a/c$d;

.field public f:Z

.field g:Ljava/lang/Object;

.field h:Lcom/purplebrain/adbuddiz/sdk/g/e$a;

.field public i:J

.field public j:J

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/a/c$d;Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/e;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/e;->h:Lcom/purplebrain/adbuddiz/sdk/g/e$a;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/e;->k:Landroid/os/Handler;

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/g/e;->c:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/g/e;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/g/e;->e:Lcom/purplebrain/adbuddiz/sdk/a/c$d;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    iget-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->y:J

    iput-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/e;->i:J

    iget-wide v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->z:J

    iput-wide v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/e;->j:J

    if-eqz p4, :cond_0

    const-string v0, "MRAID_shouldSendImpression"

    invoke-virtual {p4, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/e;->f:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/purplebrain/adbuddiz/sdk/g/e;->f:Z

    goto :goto_0
.end method


# virtual methods
.method public final a(ZJ)V
    .locals 2

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/e;->f:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/e;->k:Landroid/os/Handler;

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/g/e$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/purplebrain/adbuddiz/sdk/g/e$1;-><init>(Lcom/purplebrain/adbuddiz/sdk/g/e;ZJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
