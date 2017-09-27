.class public final Lcom/purplebrain/adbuddiz/sdk/i/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/i/b$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/purplebrain/adbuddiz/sdk/f/a/e;)Ljava/util/Map;
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/e;Z)Ljava/util/List;

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
    invoke-static {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Ljava/io/File;Lcom/purplebrain/adbuddiz/sdk/f/a/e;)Ljava/lang/String;

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

.method public static a(Ljava/util/Collection;)V
    .locals 5

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    invoke-static {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/b;->a(Ljava/util/Map;Lcom/purplebrain/adbuddiz/sdk/f/a/e;)V

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    invoke-static {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/b;->a(Ljava/util/Map;Lcom/purplebrain/adbuddiz/sdk/f/a/e;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x1

    iget v4, v1, Lcom/purplebrain/adbuddiz/sdk/f/b;->k:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    iget v3, v1, Lcom/purplebrain/adbuddiz/sdk/f/b;->k:I

    if-le v0, v3, :cond_0

    invoke-static {p0, v2}, Lcom/purplebrain/adbuddiz/sdk/i/b;->a(Ljava/util/Collection;Ljava/util/Map;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private static a(Ljava/util/Collection;Ljava/util/Map;)V
    .locals 14

    const/4 v6, 0x0

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    if-nez v3, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    if-eqz v2, :cond_0

    sget-object v9, Lcom/purplebrain/adbuddiz/sdk/i/b$1;->a:[I

    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->e()Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    move-result-object v10

    invoke-virtual {v10}, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    :cond_0
    move v2, v3

    :goto_2
    move v3, v2

    goto :goto_1

    :pswitch_0
    check-cast v2, Lcom/purplebrain/adbuddiz/sdk/f/a/b;

    iget-wide v2, v2, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->g:J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v2, v2, v10

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    if-nez v3, :cond_6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gez v1, :cond_6

    move-wide v12, v2

    move-object v2, v0

    move-wide v0, v12

    :goto_3
    move-wide v4, v0

    move-object v6, v2

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    invoke-static {v0, v4}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Ljava/io/File;Lcom/purplebrain/adbuddiz/sdk/f/a/e;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_4

    :cond_4
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void

    :cond_6
    move-wide v0, v4

    move-object v2, v6

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/util/Map;Lcom/purplebrain/adbuddiz/sdk/f/a/e;)V
    .locals 3

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/b;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/e;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
