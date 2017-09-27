.class public final Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;
.super Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;ZLcom/purplebrain/adbuddiz/sdk/e/f;Lorg/json/JSONObject;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;ZLcom/purplebrain/adbuddiz/sdk/e/f;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->e:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->f:Z

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->g:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->h:Z

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->i:Ljava/lang/String;

    const-string v0, "n"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->e:Ljava/lang/String;

    const-string v0, "u"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->f:Z

    const-string v0, "u"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->g:Ljava/lang/String;

    :cond_0
    const-string v0, "c"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->h:Z

    const-string v0, "c"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->i:Ljava/lang/String;

    :cond_1
    const-string v0, "ps"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->f:Z

    return v0
.end method

.method public final c()Ljava/net/URL;
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->h:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->i:Ljava/lang/String;

    return-object v0
.end method
