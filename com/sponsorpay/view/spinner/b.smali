.class public final Lcom/sponsorpay/view/spinner/b;
.super Lcom/sponsorpay/view/SPDrawableLayout;
.source "SpinnerLayout.java"


# instance fields
.field private a:Landroid/view/animation/Animation;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 31
    invoke-direct {p0, p1}, Lcom/sponsorpay/view/SPDrawableLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sponsorpay/view/spinner/b;->b:Landroid/view/View;

    .line 34
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/sponsorpay/view/spinner/b;->a:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sponsorpay/view/spinner/b;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/sponsorpay/view/spinner/b;->a:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/sponsorpay/view/spinner/b;->a:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/sponsorpay/view/spinner/b;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 35
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/sponsorpay/view/spinner/b;->getPixelsFromDip(I)I

    move-result v0

    const/16 v1, 0x5a

    invoke-virtual {p0, v1}, Lcom/sponsorpay/view/spinner/b;->getPixelsFromDip(I)I

    move-result v1

    iget-object v2, p0, Lcom/sponsorpay/view/spinner/b;->b:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sponsorpay/view/spinner/b;->b:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v3, -0x4dc1c1c2

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sponsorpay/view/spinner/b;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sponsorpay/view/spinner/b;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v1, Lcom/sponsorpay/view/spinner/a;

    invoke-direct {v1}, Lcom/sponsorpay/view/spinner/a;-><init>()V

    invoke-virtual {p0, v1}, Lcom/sponsorpay/view/spinner/b;->setDrawableToImageView(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/sponsorpay/view/spinner/b;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sponsorpay/view/spinner/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    const-string v0, "loadingSpinner"

    invoke-virtual {p0, v0}, Lcom/sponsorpay/view/spinner/b;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sponsorpay/view/spinner/b;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sponsorpay/view/spinner/b;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 77
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sponsorpay/view/spinner/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 81
    return-void
.end method
