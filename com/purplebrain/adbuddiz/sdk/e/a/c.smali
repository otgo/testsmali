.class public final Lcom/purplebrain/adbuddiz/sdk/e/a/c;
.super Lcom/purplebrain/adbuddiz/sdk/e/a/a;


# instance fields
.field public c:J

.field public d:J

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lcom/purplebrain/adbuddiz/sdk/e/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    const-string v0, "ia"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;->c:J

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "ai"

    const-string v1, "ABZ-impr"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "A-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/h/b/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "i"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;->c:J

    const-string v0, "c"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;->d:J

    const-string v0, "t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;->e:Z

    const-string v0, "p"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;->f:Ljava/lang/String;

    const-string v0, "l"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;->g:Ljava/lang/String;

    const-string v0, "o"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/e/f;->a(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/e/f;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;->h:Lcom/purplebrain/adbuddiz/sdk/e/f;

    return-void
.end method

.method public final c()Lcom/purplebrain/adbuddiz/sdk/e/f;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;->h:Lcom/purplebrain/adbuddiz/sdk/e/f;

    return-object v0
.end method

.method public final c(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "i"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;->c:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "c"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;->d:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "t"

    iget-boolean v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;->e:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "p"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "l"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "o"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;->h:Lcom/purplebrain/adbuddiz/sdk/e/f;

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/e/f;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public final d()Ljava/util/Collection;
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;->h:Lcom/purplebrain/adbuddiz/sdk/e/f;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/e/f;->c:Lcom/purplebrain/adbuddiz/sdk/e/f;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    new-array v6, v0, [Lcom/purplebrain/adbuddiz/sdk/e/a/a/d;

    const/4 v7, 0x0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/d;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;

    const/4 v3, 0x1

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/e/f;->a:Lcom/purplebrain/adbuddiz/sdk/e/f;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/e/f;->a:Lcom/purplebrain/adbuddiz/sdk/e/f;

    invoke-static {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/ad;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/c;Lcom/purplebrain/adbuddiz/sdk/e/f;)Ljava/net/URL;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;ZLcom/purplebrain/adbuddiz/sdk/e/f;Ljava/net/URL;)V

    aput-object v0, v6, v7

    const/4 v7, 0x1

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/d;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;

    const/4 v3, 0x1

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/e/f;->b:Lcom/purplebrain/adbuddiz/sdk/e/f;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/e/f;->b:Lcom/purplebrain/adbuddiz/sdk/e/f;

    invoke-static {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/ad;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/c;Lcom/purplebrain/adbuddiz/sdk/e/f;)Ljava/net/URL;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;ZLcom/purplebrain/adbuddiz/sdk/e/f;Ljava/net/URL;)V

    aput-object v0, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v6, v0, [Lcom/purplebrain/adbuddiz/sdk/e/a/a/d;

    const/4 v7, 0x0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/d;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;->h:Lcom/purplebrain/adbuddiz/sdk/e/f;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;->h:Lcom/purplebrain/adbuddiz/sdk/e/f;

    invoke-static {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/ad;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/c;Lcom/purplebrain/adbuddiz/sdk/e/f;)Ljava/net/URL;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;ZLcom/purplebrain/adbuddiz/sdk/e/f;Ljava/net/URL;)V

    aput-object v0, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
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

.method public final e()Lcom/purplebrain/adbuddiz/sdk/e/a/h;
    .locals 1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a/h;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    return-object v0
.end method

.method public final f()Lcom/purplebrain/adbuddiz/sdk/e/a/d;
    .locals 1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/d;

    return-object v0
.end method
