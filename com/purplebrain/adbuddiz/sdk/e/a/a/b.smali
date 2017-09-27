.class public abstract Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

.field public b:Z

.field public c:Lcom/purplebrain/adbuddiz/sdk/h/i$a;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Object;

.field public f:Lcom/purplebrain/adbuddiz/sdk/h/i;

.field public g:Z

.field public h:Z

.field private i:Lcom/purplebrain/adbuddiz/sdk/e/c;


# direct methods
.method protected constructor <init>(Lcom/purplebrain/adbuddiz/sdk/e/c;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->i:Lcom/purplebrain/adbuddiz/sdk/e/c;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iput-boolean v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->b:Z

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->c:Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->e:Ljava/lang/Object;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/i;

    iput-boolean v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->g:Z

    iput-boolean v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->h:Z

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->i:Lcom/purplebrain/adbuddiz/sdk/e/c;

    return-void
.end method

.method private b(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/f/a/a;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->a(Lorg/json/JSONObject;)Lcom/purplebrain/adbuddiz/sdk/f/a/a;
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/h; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/f/a/a;
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->b(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/f/a/a;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public final a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    .locals 2

    invoke-virtual {p2}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    .locals 3

    :try_start_0
    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->d(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/m;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "ABAdManager.setNextAdToShowAndSaveOnDisk() Exception :"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/purplebrain/adbuddiz/sdk/h/i;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->b:Z

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->c:Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/i;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/i;

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

.method public a(Lcom/purplebrain/adbuddiz/sdk/h/i;Lcom/purplebrain/adbuddiz/sdk/h/i$a;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->b:Z

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->c:Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/i;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/i;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/h/i;->g()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/i;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;

    if-eq v0, p0, :cond_0

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->i:Lcom/purplebrain/adbuddiz/sdk/e/c;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-virtual {v0, v2, v1}, Lcom/purplebrain/adbuddiz/sdk/e/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/util/Collection;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    return-void
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method

.method public abstract d()Z
.end method

.method public abstract e()Lcom/purplebrain/adbuddiz/sdk/i/p;
.end method

.method public abstract f()Lcom/purplebrain/adbuddiz/sdk/h/i;
.end method

.method public g()V
    .locals 0

    return-void
.end method
