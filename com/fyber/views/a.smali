.class public Lcom/fyber/views/a;
.super Landroid/widget/RelativeLayout;
.source "DrawableLayout.java"


# instance fields
.field protected final a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/fyber/views/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/fyber/views/a;->a:I

    .line 27
    return-void
.end method


# virtual methods
.method protected final a(I)I
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/fyber/views/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected final a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;
    .locals 5

    .prologue
    .line 30
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/fyber/views/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 33
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 34
    iget v1, p0, Lcom/fyber/views/a;->a:I

    iget v2, p0, Lcom/fyber/views/a;->a:I

    iget v3, p0, Lcom/fyber/views/a;->a:I

    iget v4, p0, Lcom/fyber/views/a;->a:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/fyber/views/a;->addView(Landroid/view/View;)V

    .line 36
    return-object v0
.end method
