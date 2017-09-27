.class public final Lcom/purplebrain/adbuddiz/sdk/g/a/c;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:I

.field i:Ljava/lang/String;

.field j:I

.field k:I

.field l:I

.field m:F

.field n:Ljava/lang/Integer;

.field o:Ljava/lang/Integer;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Ljava/lang/String;

.field w:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "a"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "ai"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lat"

    iget-boolean v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->c:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "s"

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->h:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "v"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "im"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "mm"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ms"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v1, "sw"

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->j:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sh"

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->k:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sd"

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->l:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sdf"

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->m:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "nt"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->n:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "nst"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->o:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "no"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "non"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "c"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "l"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ma"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mo"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "p"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cp"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
