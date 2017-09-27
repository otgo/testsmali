.class public abstract Lcom/purplebrain/adbuddiz/sdk/e/a/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:J

.field protected b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->b:I

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/purplebrain/adbuddiz/sdk/e/a/a;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "at"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/e/a/h;->a(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    move-result-object v1

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/e/a/b;->a:[I

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/e/a/h;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    const-string v1, "ct"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ct"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->a:J

    :goto_1
    const-string v1, "ce"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->b:I

    invoke-virtual {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->b(Lorg/json/JSONObject;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/c;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/i;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/f;->a()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->a:J

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "at"

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->e()Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    move-result-object v2

    iget-object v2, v2, Lcom/purplebrain/adbuddiz/sdk/e/a/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ct"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "ce"

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->c(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "at"

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->e()Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    move-result-object v1

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/e/a/h;->c:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method protected abstract b(Lorg/json/JSONObject;)V
.end method

.method public abstract c()Lcom/purplebrain/adbuddiz/sdk/e/f;
.end method

.method protected abstract c(Lorg/json/JSONObject;)V
.end method

.method public abstract d()Ljava/util/Collection;
.end method

.method public abstract e()Lcom/purplebrain/adbuddiz/sdk/e/a/h;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->b()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public abstract f()Lcom/purplebrain/adbuddiz/sdk/e/a/d;
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->a:J

    return-wide v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->b:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
