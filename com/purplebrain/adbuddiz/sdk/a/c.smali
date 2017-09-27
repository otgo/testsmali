.class public abstract Lcom/purplebrain/adbuddiz/sdk/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/a/c$b;,
        Lcom/purplebrain/adbuddiz/sdk/a/c$c;,
        Lcom/purplebrain/adbuddiz/sdk/a/c$a;,
        Lcom/purplebrain/adbuddiz/sdk/a/c$d;
    }
.end annotation


# instance fields
.field protected d:Landroid/app/Activity;

.field protected e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

.field protected f:Ljava/lang/String;

.field protected g:Z

.field protected h:Landroid/view/View;

.field protected i:Landroid/widget/RelativeLayout;

.field protected j:Lcom/purplebrain/adbuddiz/sdk/d/a;

.field protected k:Lcom/purplebrain/adbuddiz/sdk/a/c$d;

.field protected l:Lcom/purplebrain/adbuddiz/sdk/a/c$a;

.field protected m:Lcom/purplebrain/adbuddiz/sdk/a/c$c;

.field protected n:Lcom/purplebrain/adbuddiz/sdk/a/c$b;

.field protected o:Ljava/lang/Long;

.field protected p:Ljava/lang/Long;

.field protected q:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->k:Lcom/purplebrain/adbuddiz/sdk/a/c$d;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->l:Lcom/purplebrain/adbuddiz/sdk/a/c$a;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->m:Lcom/purplebrain/adbuddiz/sdk/a/c$c;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->n:Lcom/purplebrain/adbuddiz/sdk/a/c$b;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->o:Ljava/lang/Long;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->p:Ljava/lang/Long;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->q:Ljava/lang/Long;

    return-void
.end method

.method private b(Z)V
    .locals 4

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->g:Z

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

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/a/c$1;

    invoke-direct {v1, p0}, Lcom/purplebrain/adbuddiz/sdk/a/c$1;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/c;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/c;->a()V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/c;->v()V

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

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/a/l;->b(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    div-int/lit16 v1, v1, 0xa0

    int-to-float v1, v1

    div-float v1, v0, v1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->d:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v4, v4, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/String;)Landroid/view/View;
    .locals 7

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->d:Landroid/app/Activity;

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iput-object p4, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->f:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/purplebrain/adbuddiz/sdk/a/c;->b(Landroid/os/Bundle;)V

    :cond_0
    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/d/b;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->d:Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/d/b;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/a/h;->b(Landroid/content/Context;)I

    move-result v0

    iget-object v2, v1, Lcom/purplebrain/adbuddiz/sdk/d/b;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->f()Lcom/purplebrain/adbuddiz/sdk/f/a/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->g:Z

    iput-boolean v0, v1, Lcom/purplebrain/adbuddiz/sdk/d/b;->f:Z

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/d/b;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/c;->y()Lcom/purplebrain/adbuddiz/sdk/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/c;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/a/c;->b(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->d:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->i:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->i:Landroid/widget/RelativeLayout;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->d:Landroid/app/Activity;

    const/4 v5, 0x0

    const v6, 0x1010078

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->d:Landroid/app/Activity;

    const/16 v5, 0xc

    invoke-static {v4, v5}, Lcom/purplebrain/adbuddiz/sdk/i/a/k;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->p:Ljava/lang/Long;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->i:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->i:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-virtual {v4, v0, v2}, Lcom/purplebrain/adbuddiz/sdk/d/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-virtual {v0, v3}, Lcom/purplebrain/adbuddiz/sdk/d/a;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/purplebrain/adbuddiz/sdk/d/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/d;->b(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/d/b;->addView(Landroid/view/View;)V

    :cond_2
    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->h:Landroid/view/View;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->h:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->g:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->h:Landroid/view/View;

    return-object v0

    :cond_4
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/widget/Button;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->d:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->d:Landroid/app/Activity;

    const/16 v4, 0x46

    invoke-static {v3, v4}, Lcom/purplebrain/adbuddiz/sdk/i/a/k;->a(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->d:Landroid/app/Activity;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/purplebrain/adbuddiz/sdk/i/a/k;->a(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->d:Landroid/app/Activity;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/purplebrain/adbuddiz/sdk/i/a/k;->a(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->d:Landroid/app/Activity;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/purplebrain/adbuddiz/sdk/i/a/k;->a(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/a/c$3;

    invoke-direct {v2, p0}, Lcom/purplebrain/adbuddiz/sdk/a/c$3;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/c;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->m:Lcom/purplebrain/adbuddiz/sdk/a/c$c;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-interface {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/a/c$c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/a/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->l:Lcom/purplebrain/adbuddiz/sdk/a/c$a;

    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/a/c$b;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->n:Lcom/purplebrain/adbuddiz/sdk/a/c$b;

    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/a/c$c;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->m:Lcom/purplebrain/adbuddiz/sdk/a/c$c;

    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/a/c$d;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->k:Lcom/purplebrain/adbuddiz/sdk/a/c$d;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->g:Z

    return-void
.end method

.method protected abstract b()Landroid/view/View;
.end method

.method protected b(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected final l()Lcom/purplebrain/adbuddiz/sdk/f/e;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/f/e;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v0

    goto :goto_0
.end method

.method public final m()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->o:Ljava/lang/Long;

    return-void
.end method

.method protected final n()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/a/c;->b(Z)V

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method protected final p()Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->o:Ljava/lang/Long;

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->o:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v6

    iget-wide v6, v6, Lcom/purplebrain/adbuddiz/sdk/f/b;->u:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v4

    iget-wide v4, v4, Lcom/purplebrain/adbuddiz/sdk/f/b;->u:J

    iget-object v6, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->o:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v2, v6

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0
.end method

.method protected final q()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->p:Ljava/lang/Long;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->p:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->p:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected final r()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->p:Ljava/lang/Long;

    return-void
.end method

.method protected final s()V
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->l:Lcom/purplebrain/adbuddiz/sdk/a/c$a;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-interface {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/a/c$a;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/a/c;->b(Z)V

    :cond_0
    return-void
.end method

.method public final t()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    iget-boolean v1, v1, Lcom/purplebrain/adbuddiz/sdk/d/a;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/c;->u()V

    invoke-direct {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/a/c;->b(Z)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected u()V
    .locals 0

    return-void
.end method

.method protected v()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public w()V
    .locals 0

    return-void
.end method

.method public x()V
    .locals 0

    return-void
.end method

.method protected y()Lcom/purplebrain/adbuddiz/sdk/d/a;
    .locals 5

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/d/a;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/a;-><init>(Landroid/content/Context;)V

    :try_start_0
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->d:Landroid/app/Activity;

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/e;->b(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/a/c;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/e;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/a/c;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->b:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/h; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Z)V

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/a/c$2;

    invoke-direct {v1, p0}, Lcom/purplebrain/adbuddiz/sdk/a/c$2;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/c;)V

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->g:Lcom/purplebrain/adbuddiz/sdk/d/a$a;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/c;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v2

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->f()Lcom/purplebrain/adbuddiz/sdk/f/a/d;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->a(Lcom/purplebrain/adbuddiz/sdk/f/e;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/purplebrain/adbuddiz/sdk/i/a/a;->a(Landroid/content/Context;Landroid/graphics/RectF;)Landroid/graphics/Rect;

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
