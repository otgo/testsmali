.class public final Lcom/purplebrain/adbuddiz/sdk/j/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/j/a$a;
    }
.end annotation


# instance fields
.field public a:Lcom/purplebrain/adbuddiz/sdk/f/f;

.field private b:D


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/f/f;IIF)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/j/a;->a:Lcom/purplebrain/adbuddiz/sdk/f/f;

    int-to-double v0, p2

    int-to-double v2, p3

    add-double/2addr v0, v2

    float-to-double v2, p4

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/purplebrain/adbuddiz/sdk/j/a;->b:D

    return-void
.end method

.method private static a(DDD)I
    .locals 4

    div-double v0, p2, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    div-double/2addr v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/purplebrain/adbuddiz/sdk/j/a$a;

    iget-object v0, v6, Lcom/purplebrain/adbuddiz/sdk/j/a$a;->a:Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v6, Lcom/purplebrain/adbuddiz/sdk/j/a$a;->a:Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v2, v0

    iget-wide v0, p0, Lcom/purplebrain/adbuddiz/sdk/j/a;->b:D

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/j/a;->a:Lcom/purplebrain/adbuddiz/sdk/f/f;

    iget-wide v4, v4, Lcom/purplebrain/adbuddiz/sdk/f/f;->b:D

    invoke-static/range {v0 .. v5}, Lcom/purplebrain/adbuddiz/sdk/j/a;->a(DDD)I

    move-result v0

    if-ltz v0, :cond_0

    iget-wide v2, v6, Lcom/purplebrain/adbuddiz/sdk/j/a$a;->b:D

    int-to-double v0, v0

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/j/a;->a:Lcom/purplebrain/adbuddiz/sdk/f/f;

    iget-wide v4, v4, Lcom/purplebrain/adbuddiz/sdk/f/f;->c:D

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, v6, Lcom/purplebrain/adbuddiz/sdk/j/a$a;->b:D

    goto :goto_0

    :cond_0
    iget-wide v2, v6, Lcom/purplebrain/adbuddiz/sdk/j/a$a;->b:D

    neg-int v0, v0

    int-to-double v0, v0

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/j/a;->a:Lcom/purplebrain/adbuddiz/sdk/f/f;

    iget-wide v4, v4, Lcom/purplebrain/adbuddiz/sdk/f/f;->d:D

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, v6, Lcom/purplebrain/adbuddiz/sdk/j/a$a;->b:D

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/j/a$a;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/j/a;->a:Lcom/purplebrain/adbuddiz/sdk/f/f;

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/f/f;->e:Ljava/util/Map;

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/j/a$a;->a:Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;

    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    if-eqz v1, :cond_0

    iget-wide v4, v0, Lcom/purplebrain/adbuddiz/sdk/j/a$a;->b:D

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    iput-wide v4, v0, Lcom/purplebrain/adbuddiz/sdk/j/a$a;->b:D

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/purplebrain/adbuddiz/sdk/j/a$a;

    iget-object v0, v6, Lcom/purplebrain/adbuddiz/sdk/j/a$a;->a:Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;->e()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/j/a;->a:Lcom/purplebrain/adbuddiz/sdk/f/f;

    iget v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/f;->f:I

    int-to-double v0, v0

    iget-object v2, v6, Lcom/purplebrain/adbuddiz/sdk/j/a$a;->a:Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;

    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;->e()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/j/a;->a:Lcom/purplebrain/adbuddiz/sdk/f/f;

    iget-wide v4, v4, Lcom/purplebrain/adbuddiz/sdk/f/f;->g:D

    invoke-static/range {v0 .. v5}, Lcom/purplebrain/adbuddiz/sdk/j/a;->a(DDD)I

    move-result v0

    iget-wide v2, v6, Lcom/purplebrain/adbuddiz/sdk/j/a$a;->b:D

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/j/a;->a:Lcom/purplebrain/adbuddiz/sdk/f/f;

    iget-wide v4, v4, Lcom/purplebrain/adbuddiz/sdk/f/f;->h:D

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, v6, Lcom/purplebrain/adbuddiz/sdk/j/a$a;->b:D

    goto :goto_0

    :cond_1
    return-void
.end method
