.class final Lcom/purplebrain/adbuddiz/sdk/f/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:J

.field final synthetic c:Lcom/purplebrain/adbuddiz/sdk/f/i;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/f/i;ZJ)V
    .locals 1

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/f/j;->c:Lcom/purplebrain/adbuddiz/sdk/f/i;

    iput-boolean p2, p0, Lcom/purplebrain/adbuddiz/sdk/f/j;->a:Z

    iput-wide p3, p0, Lcom/purplebrain/adbuddiz/sdk/f/j;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/j;->c:Lcom/purplebrain/adbuddiz/sdk/f/i;

    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/f/i;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/j;->c:Lcom/purplebrain/adbuddiz/sdk/f/i;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/i;->h:Lcom/purplebrain/adbuddiz/sdk/f/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/j;->c:Lcom/purplebrain/adbuddiz/sdk/f/i;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/i;->h:Lcom/purplebrain/adbuddiz/sdk/f/k;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/f/k;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/j;->c:Lcom/purplebrain/adbuddiz/sdk/f/i;

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/f/k;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/f/j;->c:Lcom/purplebrain/adbuddiz/sdk/f/i;

    iget-boolean v4, p0, Lcom/purplebrain/adbuddiz/sdk/f/j;->a:Z

    iget-wide v6, p0, Lcom/purplebrain/adbuddiz/sdk/f/j;->b:J

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/purplebrain/adbuddiz/sdk/f/k;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/i;ZJ)V

    iput-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/f/i;->h:Lcom/purplebrain/adbuddiz/sdk/f/k;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/j;->c:Lcom/purplebrain/adbuddiz/sdk/f/i;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/i;->h:Lcom/purplebrain/adbuddiz/sdk/f/k;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/f/k;->start()Landroid/os/CountDownTimer;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
