.class public abstract Lcom/purplebrain/adbuddiz/sdk/f/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/f/a/a$1;
    }
.end annotation


# instance fields
.field public a:Lcom/purplebrain/adbuddiz/sdk/f/e;

.field public b:Z

.field protected c:J

.field protected d:I

.field protected e:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/f/e;

    const/4 v0, 0x0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->d:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->e:Ljava/util/Set;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/purplebrain/adbuddiz/sdk/f/a/a;
    .locals 8

    const/4 v1, 0x0

    const-string v0, "at"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->a(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    move-result-object v0

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/a/a$1;->a:[I

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const-string v0, "fo"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fo"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/f/e;->a(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v0

    iput-object v0, v1, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/f/e;

    :cond_0
    const-string v0, "in"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "in"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b:Z

    :cond_1
    const-string v0, "ct"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ct"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->c:J

    :goto_1
    const-string v0, "ce"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->d:I

    const-string v0, "r"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "r"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v0, 0x0

    move v6, v0

    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_3

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v0, "t"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->a(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    move-result-object v2

    const-string v0, "p"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v0, "o"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/f/e;->a(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v4

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c$a;

    invoke-direct/range {v0 .. v5}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c$a;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;ZLcom/purplebrain/adbuddiz/sdk/f/e;Lorg/json/JSONObject;)V

    iget-object v2, v1, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->e:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :pswitch_0
    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/f/a/b;

    invoke-direct {v1}, Lcom/purplebrain/adbuddiz/sdk/f/a/b;-><init>()V

    goto/16 :goto_0

    :pswitch_1
    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/f/a/c;

    invoke-direct {v1}, Lcom/purplebrain/adbuddiz/sdk/f/a/c;-><init>()V

    goto/16 :goto_0

    :pswitch_2
    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    invoke-direct {v1}, Lcom/purplebrain/adbuddiz/sdk/f/a/f;-><init>()V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/h;->a()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->c:J

    goto :goto_1

    :cond_3
    invoke-virtual {v1, p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b(Lorg/json/JSONObject;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "at"

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->e()Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    move-result-object v2

    iget-object v2, v2, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "in"

    iget-boolean v2, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/f/e;

    if-eqz v0, :cond_0

    const-string v0, "fo"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/f/e;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v0, "ct"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->c:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "ce"

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->d:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->g()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "r"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->c(Lorg/json/JSONObject;)V

    return-object v1
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "at"

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->e()Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    move-result-object v1

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->d:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "in"

    iget-boolean v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b:Z

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

.method public a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public final b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected abstract b(Lorg/json/JSONObject;)V
.end method

.method public abstract c()Lcom/purplebrain/adbuddiz/sdk/f/e;
.end method

.method protected abstract c(Lorg/json/JSONObject;)V
.end method

.method public abstract d()Ljava/util/Collection;
.end method

.method public abstract e()Lcom/purplebrain/adbuddiz/sdk/f/a/e;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public abstract f()Lcom/purplebrain/adbuddiz/sdk/f/a/d;
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/f/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/f/e;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/e;->c:Lcom/purplebrain/adbuddiz/sdk/f/e;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()J
    .locals 2

    iget-wide v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->c:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->d:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method
