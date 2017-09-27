.class public final Lcom/purplebrain/adbuddiz/sdk/e/a/i;
.super Lcom/purplebrain/adbuddiz/sdk/e/a/a;


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Integer;

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/String;

.field public j:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->j:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    const-string v0, "ir"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->c:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ri"

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/h/b/c;->b(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "i"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->c:Ljava/lang/String;

    const-string v0, "c"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->d:Ljava/lang/String;

    const-string v0, "afs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "afs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->f:Ljava/lang/String;

    :cond_0
    const-string v0, "ow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "oh"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "oh"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->g:Ljava/lang/Integer;

    const-string v0, "ow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->h:Ljava/lang/Integer;

    :cond_1
    const-string v0, "w"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->i:Ljava/lang/String;

    const-string v0, "ts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->e:Ljava/lang/String;

    :cond_2
    const-string v0, "r"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "r"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_3

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v0, "t"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;->a(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;

    move-result-object v2

    const-string v0, "p"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v0, "o"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/e/f;->a(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/e/f;

    move-result-object v4

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;ZLcom/purplebrain/adbuddiz/sdk/e/f;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->j:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final c()Lcom/purplebrain/adbuddiz/sdk/e/f;
    .locals 1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/f;->c:Lcom/purplebrain/adbuddiz/sdk/e/f;

    return-object v0
.end method

.method public final c(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "i"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "c"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "w"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "afs"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const-string v0, "ow"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->h:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "oh"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->g:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "ts"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;->f()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "r"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final d()Ljava/util/Collection;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/e/a/a/e;

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->f()Lcom/purplebrain/adbuddiz/sdk/e/a/d;

    move-result-object v2

    iget-object v2, v2, Lcom/purplebrain/adbuddiz/sdk/e/a/d;->e:Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;

    sget-object v3, Lcom/purplebrain/adbuddiz/sdk/e/f;->c:Lcom/purplebrain/adbuddiz/sdk/e/f;

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->d:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/e;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;Lcom/purplebrain/adbuddiz/sdk/e/f;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->j:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final e()Lcom/purplebrain/adbuddiz/sdk/e/a/h;
    .locals 1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a/h;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    return-object v0
.end method

.method public final f()Lcom/purplebrain/adbuddiz/sdk/e/a/d;
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->d:Ljava/lang/String;

    const-string v1, "<VAST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a/d;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/d;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/d;

    goto :goto_0
.end method
