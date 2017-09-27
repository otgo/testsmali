.class public final Lcom/purplebrain/adbuddiz/sdk/h/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;Lcom/purplebrain/adbuddiz/sdk/e/f;)Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/purplebrain/adbuddiz/sdk/h/a;->b(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;Lcom/purplebrain/adbuddiz/sdk/e/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/f;)Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iget-boolean v3, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;->d:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;->c:Lcom/purplebrain/adbuddiz/sdk/e/f;

    invoke-virtual {v3, p1}, Lcom/purplebrain/adbuddiz/sdk/e/f;->a(Lcom/purplebrain/adbuddiz/sdk/e/f;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static b(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/f;)Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;
    .locals 2

    invoke-static {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/h/a;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;Lcom/purplebrain/adbuddiz/sdk/e/f;)Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;

    if-ne v3, p1, :cond_0

    iget-boolean v3, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;->d:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;->c:Lcom/purplebrain/adbuddiz/sdk/e/f;

    invoke-virtual {v3, p2}, Lcom/purplebrain/adbuddiz/sdk/e/f;->a(Lcom/purplebrain/adbuddiz/sdk/e/f;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method
