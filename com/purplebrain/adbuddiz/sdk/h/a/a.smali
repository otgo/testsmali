.class public final Lcom/purplebrain/adbuddiz/sdk/h/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 8

    const-wide/high16 v6, 0x403a000000000000L    # 26.0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/a/r;->a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/h/a/r;

    move-result-object v1

    iget-wide v2, v1, Lcom/purplebrain/adbuddiz/sdk/h/a/r;->e:D

    mul-double/2addr v2, v6

    iget v4, p1, Landroid/graphics/RectF;->left:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {p0, v2}, Lcom/purplebrain/adbuddiz/sdk/h/a/o;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget-wide v2, v1, Lcom/purplebrain/adbuddiz/sdk/h/a/r;->f:D

    mul-double/2addr v2, v6

    iget v4, p1, Landroid/graphics/RectF;->top:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget v3, v1, Lcom/purplebrain/adbuddiz/sdk/h/a/r;->g:I

    add-int/2addr v2, v3

    invoke-static {p0, v2}, Lcom/purplebrain/adbuddiz/sdk/h/a/o;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-wide v2, v1, Lcom/purplebrain/adbuddiz/sdk/h/a/r;->e:D

    mul-double/2addr v2, v6

    iget v4, p1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {p0, v2}, Lcom/purplebrain/adbuddiz/sdk/h/a/o;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget-wide v2, v1, Lcom/purplebrain/adbuddiz/sdk/h/a/r;->e:D

    mul-double/2addr v2, v6

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/a/o;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method
