.class public final Lcom/purplebrain/adbuddiz/sdk/h/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/h/a/b$a;
    }
.end annotation


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

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "a"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "ai"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lat"

    iget-boolean v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->c:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "s"

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->h:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "v"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "im"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "mm"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ms"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v1, "sw"

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->j:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sh"

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->k:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sd"

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->l:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sdf"

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->m:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "nt"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->n:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "nst"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->o:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "no"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "non"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "c"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "l"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ma"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mo"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "p"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cp"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
