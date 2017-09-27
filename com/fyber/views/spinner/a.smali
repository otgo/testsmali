.class public final Lcom/fyber/views/spinner/a;
.super Landroid/graphics/drawable/Drawable;
.source "SpinnerDrawable.java"


# instance fields
.field private a:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fyber/views/spinner/a;->a:Landroid/graphics/Paint;

    .line 25
    iget-object v0, p0, Lcom/fyber/views/spinner/a;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    iget-object v0, p0, Lcom/fyber/views/spinner/a;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    iget-object v0, p0, Lcom/fyber/views/spinner/a;->a:Landroid/graphics/Paint;

    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 28
    iget-object v0, p0, Lcom/fyber/views/spinner/a;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 29
    iget-object v0, p0, Lcom/fyber/views/spinner/a;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 34
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/fyber/views/spinner/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 35
    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v3, -0x3c600000    # -320.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fyber/views/spinner/a;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 36
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method
