.class public final Lcom/purplebrain/adbuddiz/sdk/e/a/b/d;
.super Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;-><init>()V

    return-void
.end method

.method private b(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    .locals 3

    :try_start_0
    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/f/e;

    :goto_0
    invoke-static {p1, v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;ZLcom/purplebrain/adbuddiz/sdk/f/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/d;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/d;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;

    invoke-interface {v0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/d;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;

    invoke-interface {v1, p1, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V
    .locals 1

    iget-object v0, p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-direct {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/d;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/d;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/util/Collection;)V
    .locals 3

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    const/4 v1, 0x0

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/e;->c:Lcom/purplebrain/adbuddiz/sdk/f/e;

    invoke-static {p1, v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;ZLcom/purplebrain/adbuddiz/sdk/f/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/d;->d(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/e;)Z
    .locals 4

    const/4 v0, 0x1

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    const/4 v2, 0x0

    sget-object v3, Lcom/purplebrain/adbuddiz/sdk/f/e;->c:Lcom/purplebrain/adbuddiz/sdk/f/e;

    invoke-static {p1, v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/i/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;ZLcom/purplebrain/adbuddiz/sdk/f/e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/d;->c(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method
