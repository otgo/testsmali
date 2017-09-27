.class public final Lcom/purplebrain/adbuddiz/sdk/f/a/f;
.super Lcom/purplebrain/adbuddiz/sdk/f/a/a;


# instance fields
.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/Integer;

.field public k:Ljava/lang/Integer;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    const-string v0, "ir"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->f:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ri"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Landroid/content/Context;Z)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "rii"

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Landroid/content/Context;Z)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 8

    const/4 v0, 0x0

    const-string v1, "i"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->f:Ljava/lang/String;

    const-string v1, "c"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->g:Ljava/lang/String;

    const-string v1, "afs"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "afs"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->i:Ljava/lang/String;

    :cond_0
    const-string v1, "ow"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "oh"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "oh"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->j:Ljava/lang/Integer;

    const-string v1, "ow"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->k:Ljava/lang/Integer;

    :cond_1
    const-string v1, "w"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->l:Ljava/lang/String;

    const-string v1, "ts"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ts"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->h:Ljava/lang/String;

    :cond_2
    const-string v1, "cr"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "cr"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move v6, v0

    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_3

    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/e;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    const/4 v3, 0x0

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/f/e;->c:Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/e;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;ZLcom/purplebrain/adbuddiz/sdk/f/e;Ljava/net/URL;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final c()Lcom/purplebrain/adbuddiz/sdk/f/e;
    .locals 1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/f/e;->c:Lcom/purplebrain/adbuddiz/sdk/f/e;

    return-object v0
.end method

.method public final c(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "i"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "c"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "w"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "afs"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->k:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const-string v0, "ow"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->k:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "oh"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->j:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "ts"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-void
.end method

.method public final d()Ljava/util/Collection;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/f/a/a/g;

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->f()Lcom/purplebrain/adbuddiz/sdk/f/a/d;

    move-result-object v2

    iget-object v2, v2, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->f:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    sget-object v3, Lcom/purplebrain/adbuddiz/sdk/f/e;->c:Lcom/purplebrain/adbuddiz/sdk/f/e;

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->g:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/g;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;Lcom/purplebrain/adbuddiz/sdk/f/e;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->e:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final e()Lcom/purplebrain/adbuddiz/sdk/f/a/e;
    .locals 1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->c:Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    return-object v0
.end method

.method public final f()Lcom/purplebrain/adbuddiz/sdk/f/a/d;
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->g:Ljava/lang/String;

    const-string v1, "<VAST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->d:Lcom/purplebrain/adbuddiz/sdk/f/a/d;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->c:Lcom/purplebrain/adbuddiz/sdk/f/a/d;

    goto :goto_0
.end method
