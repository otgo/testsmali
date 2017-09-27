.class public final Lcom/purplebrain/adbuddiz/sdk/d/a/a;
.super Lcom/purplebrain/adbuddiz/sdk/d/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a/b;-><init>()V

    return-void
.end method

.method private static a()Ljava/util/Map;
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/e/a/h;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/h/q;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/e/a/h;Z)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    :try_start_0
    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/e/a/h;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/q;->a(Ljava/io/File;Lcom/purplebrain/adbuddiz/sdk/e/a/h;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x5f

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Could not determine ad id from file name: \'"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'. May not be a cached resource."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private b(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->c()Lcom/purplebrain/adbuddiz/sdk/e/f;

    move-result-object v0

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/e/f;->c:Lcom/purplebrain/adbuddiz/sdk/e/f;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/e/f;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/d/a/a;->b(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/f;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/e/f;->b(Lcom/purplebrain/adbuddiz/sdk/e/f;)Lcom/purplebrain/adbuddiz/sdk/e/f;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/d/a/a;->b(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/f;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/d/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/d/a/e;

    invoke-interface {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a/e;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/purplebrain/adbuddiz/sdk/d/a/a;->c(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/f;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->c()Lcom/purplebrain/adbuddiz/sdk/e/f;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/d/a/a;->b(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/f;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/d/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/d/a/e;

    invoke-interface {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a/e;->a()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/purplebrain/adbuddiz/sdk/d/a/a;->c(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/f;)Z

    goto :goto_0
.end method

.method private static b(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/f;)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/h/a;->b(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/f;)Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a/a;->b(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/q;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/f;)Z
    .locals 1

    invoke-static {p1, p2}, Lcom/purplebrain/adbuddiz/sdk/h/a;->b(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/f;)Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/d/a/a;->c(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)V
    .locals 1

    iget-object v0, p1, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    invoke-direct {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/d/a/a;->b(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V

    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/d/a/a;->b(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V

    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V
    .locals 16

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v10

    if-nez v10, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/a/a;->a()Ljava/util/Map;

    move-result-object v11

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, v10, Lcom/purplebrain/adbuddiz/sdk/e/b;->j:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v2

    move v4, v2

    :goto_0
    iget v2, v10, Lcom/purplebrain/adbuddiz/sdk/e/b;->j:I

    if-le v4, v2, :cond_0

    const/4 v5, 0x0

    const-wide v8, 0x7fffffffffffffffL

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v3, p2

    check-cast v3, Lcom/purplebrain/adbuddiz/sdk/e/a/c;

    iget-wide v14, v3, Lcom/purplebrain/adbuddiz/sdk/e/a/c;->c:J

    cmp-long v3, v6, v14

    if-eqz v3, :cond_2

    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v3, v6, v8

    if-gez v3, :cond_7

    move-object v5, v2

    move-wide v2, v6

    :goto_2
    move-wide v8, v2

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/purplebrain/adbuddiz/sdk/e/a/h;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    invoke-static {v2, v8}, Lcom/purplebrain/adbuddiz/sdk/h/q;->a(Ljava/io/File;Lcom/purplebrain/adbuddiz/sdk/e/a/h;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_3

    :cond_5
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto/16 :goto_0

    :cond_7
    move-wide v2, v8

    goto :goto_2
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/f;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1, p2}, Lcom/purplebrain/adbuddiz/sdk/h/a;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/f;)Ljava/util/List;

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

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a/a;->b(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    return v1
.end method
