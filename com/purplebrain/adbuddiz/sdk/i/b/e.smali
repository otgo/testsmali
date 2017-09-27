.class public final Lcom/purplebrain/adbuddiz/sdk/i/b/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 10

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v1

    const-string v0, "r"

    invoke-static {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/i/b/d;->b(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/h/h;

    invoke-direct {v5}, Lcom/purplebrain/adbuddiz/sdk/h/h;-><init>()V

    const-string v6, "r"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/purplebrain/adbuddiz/sdk/h/h;->a:Ljava/lang/String;

    const-string v6, "t"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/purplebrain/adbuddiz/sdk/h/h;->b:J

    const-string v6, "d"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/purplebrain/adbuddiz/sdk/h/h;->c:J

    const-string v6, "rs"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/purplebrain/adbuddiz/sdk/h/h;->d:J

    const-string v6, "s"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/purplebrain/adbuddiz/sdk/h/h;->e:J

    const-string v6, "nt"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "nt"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcom/purplebrain/adbuddiz/sdk/h/h;->f:Ljava/lang/Integer;

    :cond_0
    const-string v6, "nst"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "nst"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v5, Lcom/purplebrain/adbuddiz/sdk/h/h;->g:Ljava/lang/Integer;

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v5, Lcom/purplebrain/adbuddiz/sdk/h/h;->b:J

    sub-long/2addr v6, v8

    if-eqz v1, :cond_2

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-ltz v4, :cond_3

    iget-wide v8, v1, Lcom/purplebrain/adbuddiz/sdk/f/b;->o:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_3

    :cond_2
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/h/h;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/h/h;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_5
    return-object v1
.end method
