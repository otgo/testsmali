.class public final Lcom/purplebrain/adbuddiz/sdk/f/b;
.super Ljava/lang/Object;


# instance fields
.field public A:Ljava/util/List;

.field public B:Ljava/util/List;

.field public C:Z

.field public D:D

.field public E:Lcom/purplebrain/adbuddiz/sdk/f/f;

.field public a:J

.field public b:J

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Z

.field public f:J

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/util/List;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:J

.field public p:I

.field public q:Z

.field public r:J

.field public s:J

.field public t:J

.field public u:J

.field public v:J

.field public w:Ljava/lang/Long;

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->j:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->p:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->A:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->B:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/purplebrain/adbuddiz/sdk/f/b;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ABZ_31_cfg.abz"

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/f/c;->a(Lorg/json/JSONObject;)Lcom/purplebrain/adbuddiz/sdk/f/b;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/purplebrain/adbuddiz/sdk/b/h; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->a:J

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "uf"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->b:J

    const-string v0, "ce"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->d:J

    const-string v0, "a"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->c:Ljava/lang/String;

    const-string v0, "t"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->e:Z

    const-string v0, "pi"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->f:J

    const-string v0, "bu"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->g:Ljava/lang/String;

    const-string v0, "vbu"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->h:Ljava/lang/String;

    const-string v0, "ba"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "ip"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->j:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "aac"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->k:I

    const-string v0, "rac"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->l:I

    const-string v0, "naits"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->m:I

    const-string v0, "nrits"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->n:I

    const-string v0, "mkri"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->o:J

    const-string v0, "ai"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->p:I

    const-string v0, "ah"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->q:Z

    const-string v0, "msa"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->r:J

    const-string v0, "mir"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->s:J

    const-string v0, "mna"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->t:J

    const-string v0, "mc"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->u:J

    const-string v0, "mcfl"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->v:J

    const-string v0, "mcm"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "mcm"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->w:Ljava/lang/Long;

    const-string v0, "mcms"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->x:J

    const-string v0, "tbs"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->y:J

    const-string v0, "tbsf"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->z:J

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "sae"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v0, v1

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->A:Ljava/util/List;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->valueOf(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "ire"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    :try_start_1
    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->B:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->valueOf(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    const-string v0, "mpm"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->C:Z

    const-string v0, "pbnr"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->D:D

    const-string v0, "mfsp"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/f/f;->a(Lorg/json/JSONObject;)Lcom/purplebrain/adbuddiz/sdk/f/f;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->E:Lcom/purplebrain/adbuddiz/sdk/f/f;

    return-void

    :catch_0
    move-exception v3

    goto :goto_5

    :catch_1
    move-exception v4

    goto :goto_3
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a;)Z
    .locals 2

    iget v0, p1, Lcom/purplebrain/adbuddiz/sdk/f/a;->f:I

    iget v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->p:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    iget-wide v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->a:J

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->d:J

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/b;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
