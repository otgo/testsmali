.class public final Lcom/purplebrain/adbuddiz/sdk/i/b/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;
    }
.end annotation


# direct methods
.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 11

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v6

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/json/JSONArray;

    const/4 v0, 0x0

    move v10, v0

    move-object v0, v3

    move v3, v10

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_1

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    cmp-long v8, v8, v4

    if-lez v8, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v0

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    :goto_2
    return-object v6

    :cond_3
    move-object v6, v3

    goto :goto_2
.end method

.method private static a(Z)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "I-"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "A-"

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Z)Lorg/json/JSONArray;
    .locals 3

    const-string v0, "ABZ-impr"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Lorg/json/JSONArray;
    .locals 2

    const-string v0, "ABZ-impr"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->b(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/SharedPreferences;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 2

    const-string v0, "[]"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ZLcom/purplebrain/adbuddiz/sdk/f/a/a;)Lorg/json/JSONObject;
    .locals 6

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "ABZ-impr"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->e()Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->f:Z

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p2}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p2}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    const-string v0, "ABZ-impr"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "A-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "I-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "MRAID"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "RI"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->e()Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    move-result-object v0

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->e()Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    move-result-object v0

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "ABZ-impr"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-boolean v2, p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b:Z

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Z)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b:Z

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Z)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Lorg/json/JSONArray;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "ABZ-impr"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-boolean v2, p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b:Z

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->b(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    iget-boolean v0, p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b:Z

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->b(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 16

    const-string v2, "ABZ-impr"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-static {v8, v0}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    const/4 v2, 0x0

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/2addr v2, v3

    move v3, v2

    goto :goto_0

    :cond_0
    move/from16 v0, p2

    if-le v3, v0, :cond_5

    move v7, v3

    :goto_1
    move/from16 v0, p2

    if-le v7, v0, :cond_5

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x0

    :try_start_0
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v12

    cmp-long v3, v12, v4

    if-gez v3, :cond_6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    move-wide v14, v4

    move-object v4, v2

    move-wide v2, v14

    :goto_3
    move-object v6, v4

    move-wide v4, v2

    goto :goto_2

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    :goto_4
    add-int/lit8 v3, v7, -0x1

    move v7, v3

    goto :goto_1

    :cond_3
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x1

    move v4, v3

    :goto_5
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_5

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "A-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2, v5}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_4

    :cond_5
    return-void

    :cond_6
    move-wide v2, v4

    move-object v4, v6

    goto :goto_3
.end method

.method private static a(Landroid/content/SharedPreferences;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static b(Z)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "RI"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "MRAID"

    goto :goto_0
.end method

.method private static b(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Map;
    .locals 5

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/json/JSONArray;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    const-string v0, "ABZ-impr"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    :try_start_0
    invoke-static {v1, p1}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, p2, :cond_1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    sub-int/2addr v0, p2

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "MRAID"

    invoke-static {v1, v0, v3}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v0, "MRAID"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_1
.end method
