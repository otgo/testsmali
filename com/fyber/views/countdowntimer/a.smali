.class public final Lcom/fyber/views/countdowntimer/a;
.super Landroid/graphics/drawable/Drawable;
.source "CountDownDrawable.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 30
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/fyber/views/countdowntimer/a;->a:Landroid/graphics/Paint;

    .line 33
    iget-object v0, p0, Lcom/fyber/views/countdowntimer/a;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object v0, p0, Lcom/fyber/views/countdowntimer/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 35
    iget-object v0, p0, Lcom/fyber/views/countdowntimer/a;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    iget-object v0, p0, Lcom/fyber/views/countdowntimer/a;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lcom/fyber/views/countdowntimer/a;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 51
    iput p1, p0, Lcom/fyber/views/countdowntimer/a;->b:F

    .line 52
    invoke-virtual {p0}, Lcom/fyber/views/countdowntimer/a;->invalidateSelf()V

    .line 55
    :cond_0
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 45
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/fyber/views/countdowntimer/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 46
    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v0, p0, Lcom/fyber/views/countdowntimer/a;->b:F

    neg-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fyber/views/countdowntimer/a;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 47
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
