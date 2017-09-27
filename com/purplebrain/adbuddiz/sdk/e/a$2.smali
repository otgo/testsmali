.class final Lcom/purplebrain/adbuddiz/sdk/e/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/purplebrain/adbuddiz/sdk/h/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/e/a;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$2;->a:Lcom/purplebrain/adbuddiz/sdk/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/h/b;)V
    .locals 3

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$2;->a:Lcom/purplebrain/adbuddiz/sdk/e/a;

    move-object v0, p1

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/h/i;

    iget-boolean v0, v0, Lcom/purplebrain/adbuddiz/sdk/h/i;->e:Z

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Lcom/purplebrain/adbuddiz/sdk/e/a;Z)Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;

    move-result-object v0

    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/i;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/i;

    if-ne v2, p1, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/i;

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
