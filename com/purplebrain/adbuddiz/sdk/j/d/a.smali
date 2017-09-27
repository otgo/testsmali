.class public final Lcom/purplebrain/adbuddiz/sdk/j/d/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;)Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    const-string v0, "t"

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;->a(Lorg/json/JSONObject;)Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;

    move-result-object v3

    iget-object v4, v3, Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;->a:Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;

    if-ne v4, p1, :cond_0

    iget-object v3, v3, Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;->b:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    return-object v1
.end method

.method public static a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;)V
    .locals 4

    iget-object v0, p1, Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;->a:Lcom/purplebrain/adbuddiz/sdk/j/b/b/b;

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/j/b/b/e;

    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/j/b/b/b;->a:Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;

    const-string v2, "u"

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/e;->c()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/i/c/d;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;J)V

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/e;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "so"

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/e;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v2}, Lcom/purplebrain/adbuddiz/sdk/i/c/d;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;I)V

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;->d()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v2}, Lcom/purplebrain/adbuddiz/sdk/i/c/d;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;I)V

    const-string v2, "e"

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;->b()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a(Ljava/lang/String;Ljava/util/List;)V

    const-string v2, "i"

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a(Ljava/lang/String;Ljava/util/List;)V

    const-string v1, "c"

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ct"

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/e;->e()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a(Ljava/lang/String;Ljava/util/List;)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/e;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;

    :try_start_0
    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const-string v0, "t"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;)Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    const-string v0, "t"

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;->a(Lorg/json/JSONObject;)Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;

    move-result-object v3

    iget-object v4, v3, Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;->a:Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;

    if-ne v4, p1, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    return-object v1
.end method
