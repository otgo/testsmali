.class public final Lcom/purplebrain/adbuddiz/sdk/f/a/c;
.super Lcom/purplebrain/adbuddiz/sdk/f/a/b;


# instance fields
.field public l:Ljava/lang/String;

.field public m:Ljava/util/Map;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/Long;

.field public q:Ljava/lang/Integer;

.field public r:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/b;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;Z)V
    .locals 9

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/net/URL;

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/f;

    sget-object v5, Lcom/purplebrain/adbuddiz/sdk/f/e;->c:Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-object v1, p0

    move-object v2, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/f;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;Ljava/lang/String;ZLcom/purplebrain/adbuddiz/sdk/f/e;Ljava/net/URL;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Lorg/json/JSONObject;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->b(Lorg/json/JSONObject;)V

    const-string v0, "h"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->l:Ljava/lang/String;

    const-string v0, "w"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->o:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->m:Ljava/util/Map;

    const-string v0, "tk"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->m:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "ts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->n:Ljava/lang/String;

    :cond_1
    const-string v0, "d"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "vw"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "vh"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "d"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->p:Ljava/lang/Long;

    const-string v0, "vw"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->q:Ljava/lang/Integer;

    const-string v0, "vh"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->r:Ljava/lang/Integer;

    :cond_2
    const-string v0, "cr"

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;Z)V

    const-string v0, "a"

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->c:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;Z)V

    return-void
.end method

.method public final c(Lorg/json/JSONObject;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->c(Lorg/json/JSONObject;)V

    const-string v0, "h"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "w"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v0, "tk"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->n:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "ts"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->p:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->q:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->r:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const-string v0, "d"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->p:Ljava/lang/Long;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "vw"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->q:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "vh"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->r:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-void
.end method

.method public final d()Ljava/util/Collection;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->e:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :try_start_0
    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/f/a/a/b;

    invoke-direct {v1, p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/a/c;)V

    const-string v2, "isVideo"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->p:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->q:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->r:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->p:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/i/c/d;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;J)V

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->q:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/c/d;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;I)V

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->r:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/c/d;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;I)V

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final e()Lcom/purplebrain/adbuddiz/sdk/f/a/e;
    .locals 1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    return-object v0
.end method

.method public final f()Lcom/purplebrain/adbuddiz/sdk/f/a/d;
    .locals 1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/d;

    return-object v0
.end method
