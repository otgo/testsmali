.class public abstract Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/f/a/a/c$a;
    }
.end annotation


# instance fields
.field public a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

.field public b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

.field public c:Lcom/purplebrain/adbuddiz/sdk/f/e;

.field public d:Z

.field private e:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;ZLcom/purplebrain/adbuddiz/sdk/f/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->c:Lcom/purplebrain/adbuddiz/sdk/f/e;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->e:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->d:Z

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    iput-boolean p3, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->d:Z

    iput-object p4, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->c:Lcom/purplebrain/adbuddiz/sdk/f/e;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->e:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-object v1
.end method

.method public abstract c()Z
.end method

.method public abstract d()Ljava/net/URL;
.end method

.method public abstract e()Z
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, p0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public final g()Lorg/json/JSONObject;
    .locals 5

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "t"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "p"

    iget-boolean v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->d:Z

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "o"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->c:Lcom/purplebrain/adbuddiz/sdk/f/e;

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/f/e;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ai"

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "n"

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "u"

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->d()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "c"

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->e:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    const-string v0, "ps"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
