.class public abstract Lcom/purplebrain/adbuddiz/sdk/a/e;
.super Ljava/lang/Object;


# instance fields
.field protected b:Landroid/app/Activity;

.field protected c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

.field protected d:Ljava/lang/String;

.field protected e:Z

.field protected f:Landroid/view/View;

.field protected g:Landroid/widget/RelativeLayout;

.field protected h:Lcom/purplebrain/adbuddiz/sdk/c/a;

.field protected i:Lcom/purplebrain/adbuddiz/sdk/a/l;

.field protected j:Lcom/purplebrain/adbuddiz/sdk/a/i;

.field protected k:Lcom/purplebrain/adbuddiz/sdk/a/k;

.field protected l:Lcom/purplebrain/adbuddiz/sdk/a/j;

.field protected m:Ljava/lang/Long;

.field protected n:Ljava/lang/Long;

.field protected o:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/a/e;-><init>(Z)V

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->i:Lcom/purplebrain/adbuddiz/sdk/a/l;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->j:Lcom/purplebrain/adbuddiz/sdk/a/i;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->k:Lcom/purplebrain/adbuddiz/sdk/a/k;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->l:Lcom/purplebrain/adbuddiz/sdk/a/j;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->m:Ljava/lang/Long;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->n:Ljava/lang/Long;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->o:Ljava/lang/Long;

    iput-boolean p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->e:Z

    return-void
.end method

.method private n()Landroid/view/View;
    .locals 5

    const/4 v4, 0x5

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    :try_start_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/b;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/d; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Landroid/app/Activity;

    const/16 v3, 0x46

    invoke-static {v2, v3}, Lcom/purplebrain/adbuddiz/sdk/h/a/o;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Landroid/app/Activity;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/purplebrain/adbuddiz/sdk/h/a/o;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Landroid/app/Activity;

    invoke-static {v2, v4}, Lcom/purplebrain/adbuddiz/sdk/h/a/o;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Landroid/app/Activity;

    invoke-static {v2, v4}, Lcom/purplebrain/adbuddiz/sdk/h/a/o;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/a/h;

    invoke-direct {v1, p0}, Lcom/purplebrain/adbuddiz/sdk/a/h;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/a/p;->b(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    div-int/lit16 v1, v1, 0xa0

    int-to-float v1, v1

    div-float/2addr v0, v1

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v1, v4, v4, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object v1
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/String;)Landroid/view/View;
    .locals 11

    const/16 v10, 0xc

    const/4 v9, 0x1

    const/4 v8, -0x2

    const/4 v7, -0x1

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    iput-object p4, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->d:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/purplebrain/adbuddiz/sdk/a/e;->b(Landroid/os/Bundle;)V

    :cond_0
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/c/c;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/c/c;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/a/l;->b(Landroid/content/Context;)I

    move-result v1

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/c/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->f()Lcom/purplebrain/adbuddiz/sdk/e/a/d;

    move-result-object v1

    iget-boolean v1, v1, Lcom/purplebrain/adbuddiz/sdk/e/a/d;->f:Z

    iput-boolean v1, v0, Lcom/purplebrain/adbuddiz/sdk/c/c;->e:Z

    invoke-virtual {v0, v9}, Lcom/purplebrain/adbuddiz/sdk/c/c;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/e;->m()Lcom/purplebrain/adbuddiz/sdk/c/a;

    move-result-object v1

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->h:Lcom/purplebrain/adbuddiz/sdk/c/a;

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/e;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/a/e;->a(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->g:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->g:Landroid/widget/RelativeLayout;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Landroid/app/Activity;

    const/4 v5, 0x0

    const v6, 0x1010078

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {v3, v9}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Landroid/app/Activity;

    invoke-static {v4, v10}, Lcom/purplebrain/adbuddiz/sdk/h/a/o;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->n:Ljava/lang/Long;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->g:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->g:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->h:Lcom/purplebrain/adbuddiz/sdk/c/a;

    invoke-virtual {v4, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/c/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->h:Lcom/purplebrain/adbuddiz/sdk/c/a;

    invoke-virtual {v1, v3}, Lcom/purplebrain/adbuddiz/sdk/c/a;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->h:Lcom/purplebrain/adbuddiz/sdk/c/a;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/c/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/a/e;->n()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/c/c;->addView(Landroid/view/View;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->f:Landroid/view/View;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->f:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->e:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->f:Landroid/view/View;

    return-object v0
.end method

.method protected a(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->k:Lcom/purplebrain/adbuddiz/sdk/a/k;

    invoke-interface {v0}, Lcom/purplebrain/adbuddiz/sdk/a/k;->a()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->j:Lcom/purplebrain/adbuddiz/sdk/a/i;

    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->l:Lcom/purplebrain/adbuddiz/sdk/a/j;

    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->k:Lcom/purplebrain/adbuddiz/sdk/a/k;

    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/a/l;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->i:Lcom/purplebrain/adbuddiz/sdk/a/l;

    return-void
.end method

.method protected final a(Z)V
    .locals 4

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->e:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/a/f;

    invoke-direct {v1, p0}, Lcom/purplebrain/adbuddiz/sdk/a/f;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/e;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/e;->a()V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/e;->j()V

    goto :goto_0
.end method

.method protected abstract b()Landroid/view/View;
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->m:Ljava/lang/Long;

    return-void
.end method

.method protected final d()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/a/e;->a(Z)V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method protected final f()Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->m:Ljava/lang/Long;

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->m:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v6

    invoke-virtual {v6}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v6

    iget-wide v6, v6, Lcom/purplebrain/adbuddiz/sdk/e/b;->r:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v4

    iget-wide v4, v4, Lcom/purplebrain/adbuddiz/sdk/e/b;->r:J

    iget-object v6, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->m:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v2, v6

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0
.end method

.method protected final g()V
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->n:Ljava/lang/Long;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->n:Ljava/lang/Long;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->j:Lcom/purplebrain/adbuddiz/sdk/a/i;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    invoke-interface {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/a/i;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/a/e;->a(Z)V

    :cond_0
    return-void
.end method

.method public final h()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->h:Lcom/purplebrain/adbuddiz/sdk/c/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->h:Lcom/purplebrain/adbuddiz/sdk/c/a;

    iget-boolean v1, v1, Lcom/purplebrain/adbuddiz/sdk/c/a;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/e;->i()V

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/a/e;->a(Z)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected i()V
    .locals 0

    return-void
.end method

.method protected j()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method protected m()Lcom/purplebrain/adbuddiz/sdk/c/a;
    .locals 5

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/c/a;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/c/a;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/c;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/a/e;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/c/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/c;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/a/e;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/c/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/c;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/a/e;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/c/a;->c:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/d; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Z)V

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/a/g;

    invoke-direct {v1, p0}, Lcom/purplebrain/adbuddiz/sdk/a/g;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/e;)V

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/c/a;->e:Lcom/purplebrain/adbuddiz/sdk/c/b;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/e/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->f()Lcom/purplebrain/adbuddiz/sdk/e/a/d;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/e/a/d;->a(Lcom/purplebrain/adbuddiz/sdk/e/f;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/purplebrain/adbuddiz/sdk/h/a/a;->a(Landroid/content/Context;Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
