.class public final Lcom/purplebrain/adbuddiz/sdk/c/c;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/Paint;

.field b:I

.field c:I

.field d:Landroid/graphics/Bitmap;

.field public e:Z

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->a:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->d:Landroid/graphics/Bitmap;

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->e:Z

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/c/c;->setClickable(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/purplebrain/adbuddiz/sdk/c/c;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/c/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/a/o;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->f:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->a:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/purplebrain/adbuddiz/sdk/c/c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/c/a;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    const/16 v2, 0x8

    new-array v2, v2, [F

    iget v3, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->f:I

    int-to-float v3, v3

    aput v3, v2, v4

    const/4 v3, 0x1

    iget v4, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->f:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->f:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->f:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->f:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->f:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->f:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x7

    iget v4, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->f:I

    int-to-float v4, v4

    aput v4, v2, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method


# virtual methods
.method protected final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->e:Z

    if-nez v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/c/c;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/c/c;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_1
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/c/c;->a(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ABInterstitialParentLayout.dispatchDraw"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/p;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/Throwable;)V

    const-string v1, "ABInterstitialParentLayout.dispatchDraw()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/c/c;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/c/c;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->d:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->b:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->c:I

    if-eq v1, v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->d:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->b:I

    iput v1, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->c:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->d:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->d:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/c/c;->a(Landroid/graphics/Canvas;)V

    :cond_4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/c/c;->d:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
