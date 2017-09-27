.class public final Lcom/purplebrain/adbuddiz/sdk/h/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/h/b/d;


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/h/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/h/b/e;->a:Lcom/purplebrain/adbuddiz/sdk/h/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/b/e;->a:Lcom/purplebrain/adbuddiz/sdk/h/b/d;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/h/b/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/h/b/e;->a:Lcom/purplebrain/adbuddiz/sdk/h/b/d;

    iget v6, v1, Lcom/purplebrain/adbuddiz/sdk/h/b/d;->b:I

    const-string v1, "ABZ-impr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-static {v7}, Lcom/purplebrain/adbuddiz/sdk/h/b/c;->b(Landroid/content/SharedPreferences;)Ljava/util/Map;

    move-result-object v8

    const/4 v1, 0x0

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    if-le v1, v6, :cond_5

    move v5, v1

    :goto_1
    if-le v5, v6, :cond_5

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    cmp-long v1, v10, v2

    if-gez v1, :cond_6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v2

    move-wide v12, v2

    move-object v2, v0

    move-wide v0, v12

    :goto_3
    move-object v4, v2

    move-wide v2, v0

    goto :goto_2

    :cond_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    :goto_4
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v3}, Lcom/purplebrain/adbuddiz/sdk/h/b/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/b/e;->a:Lcom/purplebrain/adbuddiz/sdk/h/b/d;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/h/b/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/h/b/e;->a:Lcom/purplebrain/adbuddiz/sdk/h/b/d;

    iget v1, v1, Lcom/purplebrain/adbuddiz/sdk/h/b/d;->c:I

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/b/c;->a(Landroid/content/Context;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_6
    return-void

    :catch_1
    move-exception v0

    const-string v1, "ABImpressionCounterHelper#AsyncCleanTask.execute"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/p;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/Throwable;)V

    const-string v1, "ABImpressionCounterHelper#AsyncCleanTask.execute()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_6
    move-wide v0, v2

    move-object v2, v4

    goto :goto_3
.end method
