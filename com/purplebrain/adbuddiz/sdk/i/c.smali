.class public final Lcom/purplebrain/adbuddiz/sdk/i/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;Lcom/purplebrain/adbuddiz/sdk/f/e;)Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/purplebrain/adbuddiz/sdk/i/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;ZLcom/purplebrain/adbuddiz/sdk/f/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->d()Ljava/util/Collection;

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

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;ZLcom/purplebrain/adbuddiz/sdk/f/e;)Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->d()Ljava/util/Collection;

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

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    if-ne v3, p1, :cond_0

    iget-boolean v3, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->d:Z

    if-ne v3, p2, :cond_0

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->c:Lcom/purplebrain/adbuddiz/sdk/f/e;

    invoke-virtual {v3, p3}, Lcom/purplebrain/adbuddiz/sdk/f/e;->a(Lcom/purplebrain/adbuddiz/sdk/f/e;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/e;)Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->d()Ljava/util/Collection;

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

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    iget-boolean v3, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->d:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->c:Lcom/purplebrain/adbuddiz/sdk/f/e;

    invoke-virtual {v3, p1}, Lcom/purplebrain/adbuddiz/sdk/f/e;->a(Lcom/purplebrain/adbuddiz/sdk/f/e;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static b(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/e;)Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;
    .locals 2

    invoke-static {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/i/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
