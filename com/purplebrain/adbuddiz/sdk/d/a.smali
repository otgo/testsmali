.class public final Lcom/purplebrain/adbuddiz/sdk/d/a;
.super Landroid/view/ViewGroup;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/d/a$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Landroid/graphics/Rect;

.field private C:Landroid/graphics/RectF;

.field private D:I

.field private E:I

.field private F:I

.field private G:Z

.field private H:Landroid/graphics/Rect;

.field private I:Z

.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:Z

.field public d:I

.field public e:Landroid/graphics/Paint;

.field public f:Ljava/lang/Double;

.field public g:Lcom/purplebrain/adbuddiz/sdk/d/a$a;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Landroid/text/TextPaint;

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, -0x1

    const/high16 v5, 0x41000000    # 8.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->n:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->o:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->a:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->p:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->b:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->s:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->B:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->C:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->H:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->g:Lcom/purplebrain/adbuddiz/sdk/d/a$a;

    iput-boolean v3, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->I:Z

    invoke-virtual {p0, v3}, Lcom/purplebrain/adbuddiz/sdk/d/a;->setClipToPadding(Z)V

    invoke-virtual {p0, v4}, Lcom/purplebrain/adbuddiz/sdk/d/a;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0, v4}, Lcom/purplebrain/adbuddiz/sdk/d/a;->setClickable(Z)V

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->f:Ljava/lang/Double;

    iput-boolean v3, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->G:Z

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/a/k;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->i:I

    iput v6, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->h:I

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/a/k;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->k:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->j:I

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/a/k;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->l:I

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/a/k;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->m:I

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->b()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iget v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->k:I

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->i:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->n:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->b()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iget v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->i:I

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/a/k;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->A:I

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, -0x12

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/a/k;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->t:I

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/a/k;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->u:I

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x40aaaaab

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/a/k;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->w:I

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x40955555

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/a/k;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->x:I

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/purplebrain/adbuddiz/sdk/i/a/k;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->v:I

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/purplebrain/adbuddiz/sdk/i/a/k;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->y:I

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->s:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->q:I

    iput-boolean v4, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->c:Z

    iput v3, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->d:I

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->e:Landroid/graphics/Paint;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->w:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->v:I

    sub-int v4, v0, v1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->x:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->y:I

    sub-int v5, v0, v1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->s:Landroid/text/TextPaint;

    iget v3, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->q:I

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Ljava/lang/String;Landroid/text/TextPaint;III)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->s:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->s:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->s:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->s:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p2, v2, v3, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->w:I

    div-int/lit8 v2, v4, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->x:I

    div-int/lit8 v3, v5, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->s:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, v7, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/text/TextPaint;III)V
    .locals 4

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->r:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "9"

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->r:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->r:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :cond_3
    int-to-float v1, p3

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->r:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->r:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gt v1, p4, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gt v1, p5, :cond_3

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 10

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v0, :cond_0

    if-nez v2, :cond_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->i()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->j()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    float-to-double v6, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    if-nez v2, :cond_4

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->A:I

    int-to-double v2, v2

    cmpg-double v2, v4, v2

    if-gez v2, :cond_2

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->I:Z

    :cond_1
    :goto_0
    return v0

    :cond_2
    iput-boolean v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->I:Z

    :cond_3
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    if-ne v2, v0, :cond_3

    iget-boolean v2, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->I:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->A:I

    int-to-double v2, v2

    cmpg-double v2, v4, v2

    if-gez v2, :cond_5

    iget-boolean v2, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->c:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->playSoundEffect(I)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->g:Lcom/purplebrain/adbuddiz/sdk/d/a$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->g:Lcom/purplebrain/adbuddiz/sdk/d/a$a;

    invoke-interface {v1}, Lcom/purplebrain/adbuddiz/sdk/d/a$a;->a()V

    goto :goto_0

    :cond_5
    iput-boolean v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->I:Z

    goto :goto_1
.end method

.method private b()Landroid/graphics/drawable/GradientDrawable;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v1, 0x8

    new-array v1, v1, [F

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->l:I

    int-to-float v2, v2

    aput v2, v1, v3

    const/4 v2, 0x1

    iget v3, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->l:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->l:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->l:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->l:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->l:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->l:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->l:I

    int-to-float v3, v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-object v0
.end method

.method private c()Landroid/graphics/Path;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->f()I

    move-result v3

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->d()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->e()I

    move-result v3

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->h()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v3

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v3, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->m:I

    int-to-float v3, v3

    aput v3, v0, v5

    const/4 v3, 0x1

    iget v4, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->m:I

    int-to-float v4, v4

    aput v4, v0, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->m:I

    int-to-float v4, v4

    aput v4, v0, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->m:I

    int-to-float v4, v4

    aput v4, v0, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->m:I

    int-to-float v4, v4

    aput v4, v0, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->m:I

    int-to-float v4, v4

    aput v4, v0, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->m:I

    int-to-float v4, v4

    aput v4, v0, v3

    const/4 v3, 0x7

    iget v4, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->m:I

    int-to-float v4, v4

    aput v4, v0, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    return-object v1
.end method

.method private d()I
    .locals 2

    iget v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->k:I

    iget v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->i:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private e()I
    .locals 2

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->D:I

    add-int/2addr v0, v1

    return v0
.end method

.method private f()I
    .locals 2

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->F:I

    add-int/2addr v0, v1

    return v0
.end method

.method private g()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->u:I

    add-int/2addr v1, v2

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private h()I
    .locals 2

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->d()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->g()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private i()I
    .locals 2

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->f()I

    move-result v0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->d()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->t:I

    add-int/2addr v0, v1

    return v0
.end method

.method private j()I
    .locals 2

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->e()I

    move-result v0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->h()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->u:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a()Landroid/graphics/Paint;
    .locals 2

    iget v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Rect;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->f()I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->e()I

    move-result v1

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->g()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->d()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->d()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public final a(Landroid/graphics/RectF;IILandroid/graphics/Rect;Z)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v0, p2, v0

    int-to-double v2, v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v0, p3, v0

    int-to-double v0, v0

    if-nez p5, :cond_1

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->f:Ljava/lang/Double;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->f:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    div-double v4, v2, v4

    cmpg-double v4, v4, v0

    if-gez v4, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->f:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    div-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    :cond_0
    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->f:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, v0

    cmpg-double v4, v4, v2

    if-gez v4, :cond_1

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->f:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    :cond_1
    iput v6, p1, Landroid/graphics/RectF;->left:F

    iput v6, p1, Landroid/graphics/RectF;->top:F

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/RectF;->right:F

    double-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public final a(Ljava/lang/Double;)V
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->f:Ljava/lang/Double;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->f:Ljava/lang/Double;

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->requestLayout()V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->invalidate()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 1

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->z:Ljava/lang/Integer;

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->invalidate()V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->c:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->c:Z

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->invalidate()V

    :cond_0
    return-void
.end method

.method public final b(Landroid/graphics/Rect;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->d()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->d()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v4, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->t:I

    add-int/2addr v0, v4

    if-gez v0, :cond_0

    move v0, v1

    :cond_0
    :goto_0
    add-int/2addr v0, v3

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->h()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->d()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->c()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->e:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->c()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->H:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->H:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->H:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->n:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->H:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->H:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->o:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->H:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->H:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->i:I

    int-to-float v0, v0

    iget v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->i:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->i()I

    move-result v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->j()I

    move-result v1

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->c:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->G:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->i()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->j()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->A:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string v0, "X"

    invoke-direct {p0, p1, v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Landroid/graphics/Canvas;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ABInterstitialAdLayout.dispatchDraw"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    const-string v1, "ABInterstitialLayout.dispatchDraw()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->z:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->z:Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_7
    const-string v0, "\u2026"

    invoke-direct {p0, p1, v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Landroid/graphics/Canvas;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->z:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Landroid/graphics/Canvas;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "ABIntersitialAdLayout.onInterceptTouchEvent"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    const-string v1, "ABInterstitialLayout.onInterceptTouchEvent()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final onLayout(ZIIII)V
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->f()I

    move-result v0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->d()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int v1, p2, v0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->e()I

    move-result v0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->h()I

    move-result v2

    add-int/2addr v0, v2

    add-int v2, p3, v0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v1, v2, v0, v4}, Landroid/view/View;->layout(IIII)V

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ABInterstitialLayout.onLayout()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 18

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->B:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/d/a;->b(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->C:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->B:Landroid/graphics/Rect;

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Landroid/graphics/RectF;IILandroid/graphics/Rect;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->B:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->B:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->C:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-double v10, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->C:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-double v12, v2

    invoke-virtual/range {p0 .. p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    double-to-int v2, v10

    const/high16 v14, -0x80000000

    invoke-static {v2, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    double-to-int v14, v12

    const/high16 v15, -0x80000000

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v7, v2, v14}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-double v14, v2

    div-double v14, v10, v14

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-double v0, v2

    move-wide/from16 v16, v0

    div-double v16, v12, v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-double v10, v2

    mul-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v2, v10

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_0
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-double v10, v2

    mul-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v2, v10

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_1
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Landroid/view/View;->measure(II)V

    const/4 v2, 0x1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getChildCount()I

    move-result v10

    if-ge v2, v10, :cond_2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Landroid/view/View;->measure(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    mul-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v2, v10

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    :cond_1
    mul-double v10, v12, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v2, v10

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1

    :cond_2
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v9, v2, :cond_4

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v5, v2

    sub-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->D:I

    :goto_3
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v8, v2, :cond_5

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v4, v2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->E:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->E:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->F:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_4
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    :cond_4
    :try_start_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    add-int/2addr v2, v6

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->D:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    const-string v3, "ABInterstitialAdLayout.onMeasure"

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    const-string v3, "ABInterstitialLayout.onMeasure()"

    invoke-static {v3, v2}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    :try_start_2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    add-int/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->E:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->F:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "ABInterstitialAdLayout.onTouchEvent"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    const-string v1, "ABIntersitialAdLayout.onTouchEvent()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
