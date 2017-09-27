.class public final Lcom/purplebrain/adbuddiz/sdk/e/a/b/a;
.super Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;-><init>(B)V

    return-void
.end method

.method private b(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->c()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v0

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/e;->c:Lcom/purplebrain/adbuddiz/sdk/f/e;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/a;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/e;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/f/e;->b(Lcom/purplebrain/adbuddiz/sdk/f/e;)Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/a;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/e;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/a;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/a;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;

    invoke-interface {v0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/a;->c(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/e;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/a;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;

    invoke-interface {v1, p1, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->c()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/a;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/e;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/a;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/a;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;

    invoke-interface {v0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/a;->c(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/e;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static b(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/e;)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/i/c;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/e;)Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/a;->c(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/m;->b(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/e;)Z
    .locals 1

    invoke-static {p1, p2}, Lcom/purplebrain/adbuddiz/sdk/i/c;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/e;)Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/a;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V
    .locals 1

    iget-object v0, p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-direct {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/a;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/a;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/util/Collection;)V
    .locals 1

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/i/b;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/i/b;-><init>()V

    invoke-static {p2}, Lcom/purplebrain/adbuddiz/sdk/i/b;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/e;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1, p2}, Lcom/purplebrain/adbuddiz/sdk/i/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/a;->c(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    return v1
.end method
