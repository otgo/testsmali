.class public final Lcom/purplebrain/adbuddiz/sdk/h/h;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/h;->d:J

    iput-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/h;->e:J

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/h;->f:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/h;->g:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "r"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "t"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/h;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "d"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/h;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "rs"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/h;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "s"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/h;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/h/h;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const-string v1, "nt"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/h;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/h/h;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v1, "nst"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/h;->g:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object v0
.end method
