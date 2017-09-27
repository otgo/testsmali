.class final Lcom/purplebrain/adbuddiz/sdk/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/purplebrain/adbuddiz/sdk/g/b;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/d/a;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/d/c;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/g/a;)V
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/c;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->b(Lcom/purplebrain/adbuddiz/sdk/d/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/c;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->c(Lcom/purplebrain/adbuddiz/sdk/d/a;)Lcom/purplebrain/adbuddiz/sdk/g/h;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/c;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->d(Lcom/purplebrain/adbuddiz/sdk/d/a;)Lcom/purplebrain/adbuddiz/sdk/g/h;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
