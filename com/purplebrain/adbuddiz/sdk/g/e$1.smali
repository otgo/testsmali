.class final Lcom/purplebrain/adbuddiz/sdk/g/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/purplebrain/adbuddiz/sdk/g/e;->a(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:J

.field final synthetic c:Lcom/purplebrain/adbuddiz/sdk/g/e;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/g/e;ZJ)V
    .locals 1

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/g/e$1;->c:Lcom/purplebrain/adbuddiz/sdk/g/e;

    iput-boolean p2, p0, Lcom/purplebrain/adbuddiz/sdk/g/e$1;->a:Z

    iput-wide p3, p0, Lcom/purplebrain/adbuddiz/sdk/g/e$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/e$1;->c:Lcom/purplebrain/adbuddiz/sdk/g/e;

    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/g/e;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/e$1;->c:Lcom/purplebrain/adbuddiz/sdk/g/e;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/g/e;->h:Lcom/purplebrain/adbuddiz/sdk/g/e$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/e$1;->c:Lcom/purplebrain/adbuddiz/sdk/g/e;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/g/e;->h:Lcom/purplebrain/adbuddiz/sdk/g/e$a;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/g/e$a;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/e$1;->c:Lcom/purplebrain/adbuddiz/sdk/g/e;

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/g/e$a;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/g/e$1;->c:Lcom/purplebrain/adbuddiz/sdk/g/e;

    iget-boolean v4, p0, Lcom/purplebrain/adbuddiz/sdk/g/e$1;->a:Z

    iget-wide v6, p0, Lcom/purplebrain/adbuddiz/sdk/g/e$1;->b:J

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/purplebrain/adbuddiz/sdk/g/e$a;-><init>(Lcom/purplebrain/adbuddiz/sdk/g/e;ZJ)V

    iput-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/g/e;->h:Lcom/purplebrain/adbuddiz/sdk/g/e$a;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/e$1;->c:Lcom/purplebrain/adbuddiz/sdk/g/e;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/g/e;->h:Lcom/purplebrain/adbuddiz/sdk/g/e$a;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/g/e$a;->start()Landroid/os/CountDownTimer;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
