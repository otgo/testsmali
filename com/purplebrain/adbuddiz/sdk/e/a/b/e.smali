.class public final Lcom/purplebrain/adbuddiz/sdk/e/a/b/e;
.super Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;-><init>()V

    return-void
.end method

.method private a(Lcom/purplebrain/adbuddiz/sdk/f/a/f;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/e;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;

    invoke-interface {v0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V
    .locals 17

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    sget-object v3, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/e;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-interface {v2, v3}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    check-cast v2, Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v3

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    const/4 v5, 0x1

    invoke-static {v2, v4, v5, v3}, Lcom/purplebrain/adbuddiz/sdk/i/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;ZLcom/purplebrain/adbuddiz/sdk/f/e;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->e()Z

    move-result v5

    if-eqz v5, :cond_2

    check-cast v3, Lcom/purplebrain/adbuddiz/sdk/f/a/a/g;

    :goto_1
    if-nez v3, :cond_4

    const/4 v3, 0x0

    move-object v8, v3

    :goto_2
    const/4 v3, 0x1

    iget-object v4, v8, Lcom/purplebrain/adbuddiz/sdk/j/b;->b:Lcom/purplebrain/adbuddiz/sdk/j/b/a;

    sget v5, Lcom/purplebrain/adbuddiz/sdk/j/b/a/b;->b:I

    invoke-virtual {v4, v5}, Lcom/purplebrain/adbuddiz/sdk/j/b/a;->a(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, v8, Lcom/purplebrain/adbuddiz/sdk/j/b;->c:Ljava/util/List;
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/j/a/b; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v3

    :goto_3
    :try_start_1
    iget-object v3, v8, Lcom/purplebrain/adbuddiz/sdk/j/b;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x5

    if-gt v7, v3, :cond_8

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v8, Lcom/purplebrain/adbuddiz/sdk/j/b;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v3, v8, Lcom/purplebrain/adbuddiz/sdk/j/b;->c:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;

    invoke-virtual {v8, v3}, Lcom/purplebrain/adbuddiz/sdk/j/b;->a(Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;)Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    move-result-object v3

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/e;->c(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/purplebrain/adbuddiz/sdk/j/a/b; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_1b

    add-int/lit8 v3, v4, 0x1

    :goto_5
    move v4, v3

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/j/b;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Lcom/purplebrain/adbuddiz/sdk/j/b/a;

    move-result-object v4

    if-nez v4, :cond_5

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/j/a/b;

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/j/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/j/a/a;

    invoke-direct {v3, v4}, Lcom/purplebrain/adbuddiz/sdk/j/a/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/j/a/a;)V

    throw v3
    :try_end_2
    .catch Lcom/purplebrain/adbuddiz/sdk/j/a/b; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v3

    move-object v4, v3

    iget-object v3, v4, Lcom/purplebrain/adbuddiz/sdk/j/a/b;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;

    iget-object v6, v4, Lcom/purplebrain/adbuddiz/sdk/j/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/j/a/a;

    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;->b()Ljava/util/List;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error-"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v6, Lcom/purplebrain/adbuddiz/sdk/j/a/a;->j:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v3, v7, v8}, Lcom/purplebrain/adbuddiz/sdk/j/e;->a(Ljava/lang/String;Ljava/util/List;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;Ljava/lang/Integer;)V

    goto :goto_6

    :cond_5
    :try_start_3
    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/j/b;

    invoke-direct {v3, v2, v4}, Lcom/purplebrain/adbuddiz/sdk/j/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/j/b/a;)V
    :try_end_3
    .catch Lcom/purplebrain/adbuddiz/sdk/j/a/b; {:try_start_3 .. :try_end_3} :catch_0

    move-object v8, v3

    goto/16 :goto_2

    :cond_6
    if-nez v4, :cond_7

    const/4 v3, 0x1

    :try_start_4
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v3, v8, Lcom/purplebrain/adbuddiz/sdk/j/b;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;

    invoke-virtual {v8, v3}, Lcom/purplebrain/adbuddiz/sdk/j/b;->a(Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;)Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    move-result-object v3

    iget-object v5, v8, Lcom/purplebrain/adbuddiz/sdk/j/b;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/e;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/f;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/e;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/purplebrain/adbuddiz/sdk/j/a/b; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    :catch_1
    move-exception v3

    :try_start_5
    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/j/a/b;

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/j/a/a;->d:Lcom/purplebrain/adbuddiz/sdk/j/a/a;

    invoke-direct {v3, v4}, Lcom/purplebrain/adbuddiz/sdk/j/a/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/j/a/a;)V

    throw v3
    :try_end_5
    .catch Lcom/purplebrain/adbuddiz/sdk/j/a/b; {:try_start_5 .. :try_end_5} :catch_0

    :cond_7
    :try_start_6
    iget-object v3, v8, Lcom/purplebrain/adbuddiz/sdk/j/b;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v4, v3, :cond_9

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x2

    iget-object v5, v8, Lcom/purplebrain/adbuddiz/sdk/j/b;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/purplebrain/adbuddiz/sdk/j/a/b; {:try_start_6 .. :try_end_6} :catch_0

    :cond_8
    :try_start_7
    iget-object v3, v8, Lcom/purplebrain/adbuddiz/sdk/j/b;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x5

    if-lt v7, v3, :cond_e

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/j/a/b;

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/j/a/a;->e:Lcom/purplebrain/adbuddiz/sdk/j/a/a;

    iget-object v5, v8, Lcom/purplebrain/adbuddiz/sdk/j/b;->c:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/purplebrain/adbuddiz/sdk/j/a/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/j/a/a;Ljava/util/List;)V

    throw v3
    :try_end_7
    .catch Lcom/purplebrain/adbuddiz/sdk/j/a/b; {:try_start_7 .. :try_end_7} :catch_0

    :cond_9
    const/4 v3, 0x1

    :try_start_8
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v3, v8, Lcom/purplebrain/adbuddiz/sdk/j/b;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;

    move-object v6, v0

    iget-object v10, v8, Lcom/purplebrain/adbuddiz/sdk/j/b;->b:Lcom/purplebrain/adbuddiz/sdk/j/b/a;

    invoke-virtual {v10}, Lcom/purplebrain/adbuddiz/sdk/j/b/a;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v8, v6}, Lcom/purplebrain/adbuddiz/sdk/j/b;->a(Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;)Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    move-result-object v3

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/j/b;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Lcom/purplebrain/adbuddiz/sdk/j/b/a;

    move-result-object v11

    invoke-virtual {v11}, Lcom/purplebrain/adbuddiz/sdk/j/b/a;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;->b()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v6}, Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;->c()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v6}, Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6}, Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/purplebrain/adbuddiz/sdk/j/b/b/b;

    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/b;->a()I

    move-result v4

    sget v14, Lcom/purplebrain/adbuddiz/sdk/j/b/b/c;->a:I

    if-ne v4, v14, :cond_b

    move-object v0, v3

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/j/b/b/e;

    move-object v4, v0

    sget v3, Lcom/purplebrain/adbuddiz/sdk/j/b/b/c;->a:I

    invoke-virtual {v5, v3}, Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;->a(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/purplebrain/adbuddiz/sdk/j/b/b/b;

    check-cast v3, Lcom/purplebrain/adbuddiz/sdk/j/b/b/e;

    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/e;->b()Ljava/util/List;

    move-result-object v15

    invoke-virtual {v4}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/e;->b()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/e;->e()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/e;->e()Ljava/util/List;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/purplebrain/adbuddiz/sdk/j/a/b; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_9

    :catch_2
    move-exception v3

    :try_start_9
    const-string v4, "Exception thrown while resolving vast wrapper."

    invoke-static {v4, v3}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v4, Lcom/purplebrain/adbuddiz/sdk/j/a/b;

    sget-object v5, Lcom/purplebrain/adbuddiz/sdk/j/a/a;->i:Lcom/purplebrain/adbuddiz/sdk/j/a/a;

    invoke-direct {v4, v5, v3}, Lcom/purplebrain/adbuddiz/sdk/j/a/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/j/a/a;Ljava/lang/Throwable;)V

    throw v4
    :try_end_9
    .catch Lcom/purplebrain/adbuddiz/sdk/j/a/b; {:try_start_9 .. :try_end_9} :catch_0

    :cond_c
    :try_start_a
    invoke-virtual {v10}, Lcom/purplebrain/adbuddiz/sdk/j/b/a;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v11}, Lcom/purplebrain/adbuddiz/sdk/j/b/a;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_8

    :cond_d
    iget-object v3, v8, Lcom/purplebrain/adbuddiz/sdk/j/b;->b:Lcom/purplebrain/adbuddiz/sdk/j/b/a;

    sget v4, Lcom/purplebrain/adbuddiz/sdk/j/b/a/b;->b:I

    invoke-virtual {v3, v4}, Lcom/purplebrain/adbuddiz/sdk/j/b/a;->a(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, v8, Lcom/purplebrain/adbuddiz/sdk/j/b;->c:Ljava/util/List;
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/purplebrain/adbuddiz/sdk/j/a/b; {:try_start_a .. :try_end_a} :catch_0

    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto/16 :goto_3

    :cond_e
    :try_start_b
    iget-object v3, v8, Lcom/purplebrain/adbuddiz/sdk/j/b;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v8, Lcom/purplebrain/adbuddiz/sdk/j/b;->b:Lcom/purplebrain/adbuddiz/sdk/j/b/a;

    sget v4, Lcom/purplebrain/adbuddiz/sdk/j/b/a/b;->a:I

    invoke-virtual {v3, v4}, Lcom/purplebrain/adbuddiz/sdk/j/b/a;->a(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;

    sget v4, Lcom/purplebrain/adbuddiz/sdk/j/b/b/c;->a:I

    invoke-virtual {v3, v4}, Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;->a(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    const/4 v4, 0x1

    :goto_a
    if-eqz v4, :cond_f

    check-cast v3, Lcom/purplebrain/adbuddiz/sdk/j/b/a/c;

    sget v4, Lcom/purplebrain/adbuddiz/sdk/j/b/b/c;->a:I

    invoke-virtual {v3, v4}, Lcom/purplebrain/adbuddiz/sdk/j/b/a/c;->a(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12

    new-instance v4, Lcom/purplebrain/adbuddiz/sdk/j/a/b;

    sget-object v5, Lcom/purplebrain/adbuddiz/sdk/j/a/a;->c:Lcom/purplebrain/adbuddiz/sdk/j/a/a;

    invoke-direct {v4, v5, v3}, Lcom/purplebrain/adbuddiz/sdk/j/a/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/j/a/a;Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;)V

    throw v4

    :cond_10
    const/4 v4, 0x0

    goto :goto_a

    :cond_11
    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/j/a/b;

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/j/a/a;->b:Lcom/purplebrain/adbuddiz/sdk/j/a/a;

    invoke-direct {v3, v4, v5}, Lcom/purplebrain/adbuddiz/sdk/j/a/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/j/a/a;Ljava/util/List;)V

    throw v3

    :cond_12
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/purplebrain/adbuddiz/sdk/j/b/b/e;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v5

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/purplebrain/adbuddiz/sdk/i/j;->h(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v6

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/purplebrain/adbuddiz/sdk/i/a/l;->b(Landroid/content/Context;)F

    move-result v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, v6, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    div-float/2addr v10, v7

    float-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, v6, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    div-float/2addr v10, v7

    float-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    new-instance v8, Lcom/purplebrain/adbuddiz/sdk/j/a;

    iget-object v5, v5, Lcom/purplebrain/adbuddiz/sdk/f/b;->E:Lcom/purplebrain/adbuddiz/sdk/f/f;

    iget v9, v6, Landroid/graphics/Point;->x:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-direct {v8, v5, v9, v6, v7}, Lcom/purplebrain/adbuddiz/sdk/j/a;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/f;IIF)V

    invoke-virtual {v4}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/e;->h()Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    :cond_13
    :goto_b
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;

    invoke-virtual {v4}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;->b()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v8, Lcom/purplebrain/adbuddiz/sdk/j/a;->a:Lcom/purplebrain/adbuddiz/sdk/f/f;

    iget-object v9, v9, Lcom/purplebrain/adbuddiz/sdk/f/f;->a:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    new-instance v7, Lcom/purplebrain/adbuddiz/sdk/j/a$a;

    const/4 v9, 0x0

    invoke-direct {v7, v9}, Lcom/purplebrain/adbuddiz/sdk/j/a$a;-><init>(B)V

    iput-object v4, v7, Lcom/purplebrain/adbuddiz/sdk/j/a$a;->a:Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;

    const-wide/16 v10, 0x0

    iput-wide v10, v7, Lcom/purplebrain/adbuddiz/sdk/j/a$a;->b:D

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_14
    invoke-virtual {v8, v5}, Lcom/purplebrain/adbuddiz/sdk/j/a;->a(Ljava/util/List;)V

    invoke-virtual {v8, v5}, Lcom/purplebrain/adbuddiz/sdk/j/a;->b(Ljava/util/List;)V

    invoke-virtual {v8, v5}, Lcom/purplebrain/adbuddiz/sdk/j/a;->c(Ljava/util/List;)V

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_15

    new-instance v4, Lcom/purplebrain/adbuddiz/sdk/j/a/b;

    sget-object v5, Lcom/purplebrain/adbuddiz/sdk/j/a/a;->g:Lcom/purplebrain/adbuddiz/sdk/j/a/a;

    invoke-direct {v4, v5, v3}, Lcom/purplebrain/adbuddiz/sdk/j/a/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/j/a/a;Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;)V

    throw v4

    :cond_15
    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/j/a$1;

    invoke-direct {v3, v8}, Lcom/purplebrain/adbuddiz/sdk/j/a$1;-><init>(Lcom/purplebrain/adbuddiz/sdk/j/a;)V

    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/purplebrain/adbuddiz/sdk/j/a$a;

    iget-object v3, v3, Lcom/purplebrain/adbuddiz/sdk/j/a$a;->a:Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;->c()Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;->d()Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;->a()Lcom/purplebrain/adbuddiz/sdk/j/b/b/g;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;->e()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;->e()Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    :cond_16
    if-nez v3, :cond_17

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/j/a/b;

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/j/a/a;->g:Lcom/purplebrain/adbuddiz/sdk/j/a/a;

    invoke-direct {v3, v4}, Lcom/purplebrain/adbuddiz/sdk/j/a/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/j/a/a;)V

    throw v3

    :cond_17
    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;->a()Lcom/purplebrain/adbuddiz/sdk/j/b/b/g;

    move-result-object v4

    sget-object v5, Lcom/purplebrain/adbuddiz/sdk/j/b/b/g;->b:Lcom/purplebrain/adbuddiz/sdk/j/b/b/g;
    :try_end_b
    .catch Lcom/purplebrain/adbuddiz/sdk/j/a/b; {:try_start_b .. :try_end_b} :catch_0

    if-ne v4, v5, :cond_18

    :try_start_c
    new-instance v4, Ljava/net/URL;

    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;->f()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/j/d/c;

    invoke-direct {v5, v2, v3, v4}, Lcom/purplebrain/adbuddiz/sdk/j/d/c;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;Ljava/net/URL;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/e;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/f;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/e;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_3
    .catch Lcom/purplebrain/adbuddiz/sdk/j/a/b; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_0

    :catch_3
    move-exception v3

    :try_start_d
    const-string v4, "MediaFile URL is malformed."

    invoke-static {v4, v3}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/j/a/b;

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/j/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/j/a/a;

    invoke-direct {v3, v4}, Lcom/purplebrain/adbuddiz/sdk/j/a/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/j/a/a;)V

    throw v3

    :cond_18
    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;->a()Lcom/purplebrain/adbuddiz/sdk/j/b/b/g;

    move-result-object v4

    sget-object v5, Lcom/purplebrain/adbuddiz/sdk/j/b/b/g;->a:Lcom/purplebrain/adbuddiz/sdk/j/b/b/g;
    :try_end_d
    .catch Lcom/purplebrain/adbuddiz/sdk/j/a/b; {:try_start_d .. :try_end_d} :catch_0

    if-ne v4, v5, :cond_19

    :try_start_e
    new-instance v4, Ljava/net/URL;

    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;->f()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/j/d/b;

    invoke-direct {v5, v2, v3, v4}, Lcom/purplebrain/adbuddiz/sdk/j/d/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;Ljava/net/URL;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/e;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/f;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/e;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/e;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catch Lcom/purplebrain/adbuddiz/sdk/j/a/b; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_0

    :catch_4
    move-exception v3

    :try_start_f
    const-string v4, "MediaFile URL is malformed."

    invoke-static {v4, v3}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/j/a/b;

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/j/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/j/a/a;

    invoke-direct {v3, v4}, Lcom/purplebrain/adbuddiz/sdk/j/a/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/j/a/a;)V

    throw v3

    :catch_5
    move-exception v3

    const-string v4, "Exception thrown while caching progressive media file."

    invoke-static {v4, v3}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v4, Lcom/purplebrain/adbuddiz/sdk/j/a/b;

    sget-object v5, Lcom/purplebrain/adbuddiz/sdk/j/a/a;->i:Lcom/purplebrain/adbuddiz/sdk/j/a/a;

    invoke-direct {v4, v5, v3}, Lcom/purplebrain/adbuddiz/sdk/j/a/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/j/a/a;Ljava/lang/Throwable;)V

    throw v4

    :cond_19
    new-instance v4, Lcom/purplebrain/adbuddiz/sdk/j/a/b;

    sget-object v5, Lcom/purplebrain/adbuddiz/sdk/j/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/j/a/a;

    iget-object v3, v3, Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;->a:Lcom/purplebrain/adbuddiz/sdk/j/b/b/b;

    iget-object v3, v3, Lcom/purplebrain/adbuddiz/sdk/j/b/b/b;->a:Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;

    invoke-direct {v4, v5, v3}, Lcom/purplebrain/adbuddiz/sdk/j/a/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/j/a/a;Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;)V

    throw v4
    :try_end_f
    .catch Lcom/purplebrain/adbuddiz/sdk/j/a/b; {:try_start_f .. :try_end_f} :catch_0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/e;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;

    invoke-interface {v3, v2, v4}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_1b
    move v3, v4

    goto/16 :goto_5
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    .locals 7

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v1

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    iget-object v5, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    if-ne v5, v2, :cond_0

    iget-boolean v5, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->d:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    iget-object v5, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->c:Lcom/purplebrain/adbuddiz/sdk/f/e;

    invoke-virtual {v5, v1}, Lcom/purplebrain/adbuddiz/sdk/f/e;->a(Lcom/purplebrain/adbuddiz/sdk/f/e;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->e()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/e;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/util/Collection;)V
    .locals 3

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/e;->d(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/e;)Z
    .locals 1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    invoke-static {p1, v0, p2}, Lcom/purplebrain/adbuddiz/sdk/i/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;Lcom/purplebrain/adbuddiz/sdk/f/e;)Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/e;->c(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z

    move-result v0

    goto :goto_0
.end method
