.class public Lcom/purplebrain/adbuddiz/sdk/f/a/b;
.super Lcom/purplebrain/adbuddiz/sdk/f/a/a;


# instance fields
.field public f:J

.field public g:J

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Lcom/purplebrain/adbuddiz/sdk/f/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    const-string v0, "ia"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->f:J

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "ai"

    const/4 v1, 0x0

    invoke-static {p1, p0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Z)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "aii"

    const/4 v1, 0x1

    invoke-static {p1, p0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Z)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->f:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "i"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->f:J

    const-string v0, "c"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->g:J

    const-string v0, "t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->h:Z

    const-string v0, "p"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->i:Ljava/lang/String;

    const-string v0, "l"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->j:Ljava/lang/String;

    const-string v0, "o"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/f/e;->a(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->k:Lcom/purplebrain/adbuddiz/sdk/f/e;

    return-void
.end method

.method public final c()Lcom/purplebrain/adbuddiz/sdk/f/e;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->k:Lcom/purplebrain/adbuddiz/sdk/f/e;

    return-object v0
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "i"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->f:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "c"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->g:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "t"

    iget-boolean v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->h:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "p"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "l"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "o"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->k:Lcom/purplebrain/adbuddiz/sdk/f/e;

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/f/e;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public d()Ljava/util/Collection;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->k:Lcom/purplebrain/adbuddiz/sdk/f/e;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/e;->c:Lcom/purplebrain/adbuddiz/sdk/f/e;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/purplebrain/adbuddiz/sdk/f/a/a/a;

    const/4 v1, 0x0

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/f/a/a/a;

    sget-object v3, Lcom/purplebrain/adbuddiz/sdk/f/e;->b:Lcom/purplebrain/adbuddiz/sdk/f/e;

    invoke-direct {v2, p0, v3}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/a;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/a/b;Lcom/purplebrain/adbuddiz/sdk/f/e;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/f/a/a/a;

    sget-object v3, Lcom/purplebrain/adbuddiz/sdk/f/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/e;

    invoke-direct {v2, p0, v3}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/a;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/a/b;Lcom/purplebrain/adbuddiz/sdk/f/e;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/purplebrain/adbuddiz/sdk/f/a/a/a;

    const/4 v1, 0x0

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/f/a/a/a;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->k:Lcom/purplebrain/adbuddiz/sdk/f/e;

    invoke-direct {v2, p0, v3}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/a;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/a/b;Lcom/purplebrain/adbuddiz/sdk/f/e;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Lcom/purplebrain/adbuddiz/sdk/f/a/e;
    .locals 1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    return-object v0
.end method

.method public f()Lcom/purplebrain/adbuddiz/sdk/f/a/d;
    .locals 1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/d;

    return-object v0
.end method
