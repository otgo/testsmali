.class public final Lcom/fyber/views/close/a;
.super Lcom/fyber/views/a;
.source "CloseButtonLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/high16 v7, 0x3fc00000    # 1.5f

    const/4 v6, 0x1

    .line 26
    invoke-direct {p0, p1}, Lcom/fyber/views/a;-><init>(Landroid/content/Context;)V

    .line 1049
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/fyber/views/close/a;->a(I)I

    move-result v0

    .line 1052
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1053
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1054
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1055
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 1056
    invoke-virtual {v1, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 1058
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/ArcShape;

    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/shapes/ArcShape;-><init>(FF)V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1059
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1060
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1061
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1062
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1063
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 1064
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 1066
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    aput-object v1, v3, v6

    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1034
    invoke-virtual {p0, v0}, Lcom/fyber/views/close/a;->a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    .line 1036
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/fyber/views/close/a;->a(I)I

    move-result v0

    .line 1039
    new-instance v1, Lcom/fyber/views/close/c;

    invoke-direct {v1, p1, v7}, Lcom/fyber/views/close/c;-><init>(Landroid/content/Context;F)V

    .line 1040
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1041
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1042
    invoke-virtual {v1, v2}, Lcom/fyber/views/close/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1044
    invoke-virtual {p0, v1}, Lcom/fyber/views/close/a;->addView(Landroid/view/View;)V

    .line 29
    const-string v0, "closeButton"

    invoke-virtual {p0, v0}, Lcom/fyber/views/close/a;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/fyber/views/close/a;->a(I)I

    move-result v0

    return v0
.end method
