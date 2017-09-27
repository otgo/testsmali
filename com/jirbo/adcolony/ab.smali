.class Lcom/jirbo/adcolony/ab;
.super Lcom/jirbo/adcolony/h;
.source "SourceFile"


# instance fields
.field H:Z

.field I:Z

.field J:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyV4VCAd;)V
    .locals 4

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/jirbo/adcolony/h;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ab;->J:Z

    .line 26
    iput-object p1, p0, Lcom/jirbo/adcolony/ab;->F:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/jirbo/adcolony/ab;->G:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 29
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ab;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    const/4 v0, -0x1

    .line 32
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, p0, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ab;->n:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jirbo/adcolony/ab;->D:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/jirbo/adcolony/ab;->D:I

    goto :goto_0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 40
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ab;->J:Z

    if-eqz v1, :cond_1

    .line 42
    const/4 v1, 0x0

    sput-object v1, Lcom/jirbo/adcolony/a;->S:Lcom/jirbo/adcolony/h;

    .line 43
    iput-boolean v0, p0, Lcom/jirbo/adcolony/ab;->J:Z

    .line 44
    iget-object v1, p0, Lcom/jirbo/adcolony/ab;->G:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->c(Z)V

    .line 45
    const/4 v1, 0x1

    sput-boolean v1, Lcom/jirbo/adcolony/a;->E:Z

    move v1, v0

    .line 46
    :goto_0
    sget-object v0, Lcom/jirbo/adcolony/a;->an:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/a;->an:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/a;->an:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 49
    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x1

    const/16 v1, 0x80

    const/4 v6, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ab;->d()V

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 58
    iget-wide v4, p0, Lcom/jirbo/adcolony/ab;->w:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 59
    mul-int/lit16 v0, v0, 0xff

    div-int/lit16 v0, v0, 0x3e8

    .line 60
    if-le v0, v1, :cond_0

    move v0, v1

    .line 61
    :cond_0
    invoke-virtual {p1, v0, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 63
    iget-object v2, p0, Lcom/jirbo/adcolony/ab;->a:Lcom/jirbo/adcolony/ADCImage;

    iget v3, p0, Lcom/jirbo/adcolony/ab;->x:I

    iget v4, p0, Lcom/jirbo/adcolony/ab;->y:I

    invoke-virtual {v2, p1, v3, v4}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    .line 65
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ab;->b()I

    move-result v2

    .line 66
    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v3, v2, 0x2

    .line 68
    iget-object v2, p0, Lcom/jirbo/adcolony/ab;->G:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->getRemainingViewsUntilReward()I

    move-result v4

    .line 71
    iget-object v2, p0, Lcom/jirbo/adcolony/ab;->G:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->getViewsPerReward()I

    move-result v2

    if-eq v2, v7, :cond_1

    iget-object v2, p0, Lcom/jirbo/adcolony/ab;->G:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->getViewsPerReward()I

    move-result v2

    if-nez v2, :cond_4

    .line 73
    :cond_1
    iget-object v2, p0, Lcom/jirbo/adcolony/ab;->F:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {p0, v2, v4}, Lcom/jirbo/adcolony/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-boolean v2, Lcom/jirbo/adcolony/ab;->s:Z

    if-nez v2, :cond_3

    .line 76
    const-string v2, "Watch a video to earn"

    iget v4, p0, Lcom/jirbo/adcolony/ab;->z:I

    iget v5, p0, Lcom/jirbo/adcolony/ab;->A:I

    int-to-double v6, v5

    int-to-double v8, v3

    iget-wide v10, p0, Lcom/jirbo/adcolony/ab;->i:D

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-int v5, v6

    invoke-virtual {p0, v2, v4, v5, p1}, Lcom/jirbo/adcolony/ab;->a(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 77
    sget-object v2, Lcom/jirbo/adcolony/ab;->q:Ljava/lang/String;

    iget v4, p0, Lcom/jirbo/adcolony/ab;->z:I

    iget v5, p0, Lcom/jirbo/adcolony/ab;->A:I

    int-to-double v6, v5

    int-to-double v8, v3

    iget-wide v10, p0, Lcom/jirbo/adcolony/ab;->j:D

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-int v5, v6

    invoke-virtual {p0, v2, v4, v5, p1}, Lcom/jirbo/adcolony/ab;->a(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/jirbo/adcolony/ab;->r:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/jirbo/adcolony/ab;->z:I

    iget v5, p0, Lcom/jirbo/adcolony/ab;->A:I

    int-to-double v6, v5

    int-to-double v8, v3

    iget-wide v10, p0, Lcom/jirbo/adcolony/ab;->k:D

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-int v3, v6

    invoke-virtual {p0, v2, v4, v3, p1}, Lcom/jirbo/adcolony/ab;->a(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 107
    :goto_0
    iget-object v2, p0, Lcom/jirbo/adcolony/ab;->b:Lcom/jirbo/adcolony/ADCImage;

    iget v3, p0, Lcom/jirbo/adcolony/ab;->z:I

    iget-object v4, p0, Lcom/jirbo/adcolony/ab;->b:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->f:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/jirbo/adcolony/ab;->A:I

    iget-object v5, p0, Lcom/jirbo/adcolony/ab;->b:Lcom/jirbo/adcolony/ADCImage;

    iget v5, v5, Lcom/jirbo/adcolony/ADCImage;->g:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v2, p1, v3, v4}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    .line 109
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ab;->I:Z

    if-nez v2, :cond_7

    .line 111
    iget-object v2, p0, Lcom/jirbo/adcolony/ab;->c:Lcom/jirbo/adcolony/ADCImage;

    iget v3, p0, Lcom/jirbo/adcolony/ab;->B:I

    iget v4, p0, Lcom/jirbo/adcolony/ab;->D:I

    invoke-virtual {v2, p1, v3, v4}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    .line 118
    :goto_1
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ab;->H:Z

    if-nez v2, :cond_8

    .line 120
    iget-object v2, p0, Lcom/jirbo/adcolony/ab;->e:Lcom/jirbo/adcolony/ADCImage;

    iget v3, p0, Lcom/jirbo/adcolony/ab;->C:I

    iget v4, p0, Lcom/jirbo/adcolony/ab;->D:I

    invoke-virtual {v2, p1, v3, v4}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    .line 127
    :goto_2
    const-string v2, "Yes"

    iget v3, p0, Lcom/jirbo/adcolony/ab;->B:I

    iget v4, p0, Lcom/jirbo/adcolony/ab;->D:I

    invoke-virtual {p0, v2, v3, v4, p1}, Lcom/jirbo/adcolony/ab;->c(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 128
    const-string v2, "No"

    iget v3, p0, Lcom/jirbo/adcolony/ab;->C:I

    iget v4, p0, Lcom/jirbo/adcolony/ab;->D:I

    invoke-virtual {p0, v2, v3, v4, p1}, Lcom/jirbo/adcolony/ab;->c(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 130
    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ab;->invalidate()V

    .line 131
    :cond_2
    return-void

    .line 83
    :cond_3
    const-string v2, "Watch a video to earn"

    iget v4, p0, Lcom/jirbo/adcolony/ab;->z:I

    iget v5, p0, Lcom/jirbo/adcolony/ab;->A:I

    int-to-double v6, v5

    int-to-double v8, v3

    iget-wide v10, p0, Lcom/jirbo/adcolony/ab;->l:D

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-int v5, v6

    invoke-virtual {p0, v2, v4, v5, p1}, Lcom/jirbo/adcolony/ab;->a(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/jirbo/adcolony/ab;->q:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/jirbo/adcolony/ab;->z:I

    iget v5, p0, Lcom/jirbo/adcolony/ab;->A:I

    int-to-double v6, v5

    int-to-double v8, v3

    iget-wide v10, p0, Lcom/jirbo/adcolony/ab;->m:D

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-int v3, v6

    invoke-virtual {p0, v2, v4, v3, p1}, Lcom/jirbo/adcolony/ab;->a(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    goto :goto_0

    .line 90
    :cond_4
    if-ne v4, v7, :cond_5

    const-string v2, "video"

    .line 91
    :goto_3
    iget-object v5, p0, Lcom/jirbo/adcolony/ab;->F:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " more "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to earn )?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/jirbo/adcolony/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-boolean v5, Lcom/jirbo/adcolony/ab;->s:Z

    if-nez v5, :cond_6

    .line 94
    const-string v5, "Watch a sponsored video now (Only"

    iget v6, p0, Lcom/jirbo/adcolony/ab;->z:I

    iget v7, p0, Lcom/jirbo/adcolony/ab;->A:I

    int-to-double v8, v7

    int-to-double v10, v3

    iget-wide v12, p0, Lcom/jirbo/adcolony/ab;->i:D

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-int v7, v8

    invoke-virtual {p0, v5, v6, v7, p1}, Lcom/jirbo/adcolony/ab;->a(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " more "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to earn "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/jirbo/adcolony/ab;->q:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/jirbo/adcolony/ab;->z:I

    iget v5, p0, Lcom/jirbo/adcolony/ab;->A:I

    int-to-double v6, v5

    int-to-double v8, v3

    iget-wide v10, p0, Lcom/jirbo/adcolony/ab;->j:D

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-int v5, v6

    invoke-virtual {p0, v2, v4, v5, p1}, Lcom/jirbo/adcolony/ab;->a(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/jirbo/adcolony/ab;->r:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/jirbo/adcolony/ab;->z:I

    iget v5, p0, Lcom/jirbo/adcolony/ab;->A:I

    int-to-double v6, v5

    int-to-double v8, v3

    iget-wide v10, p0, Lcom/jirbo/adcolony/ab;->k:D

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-int v3, v6

    invoke-virtual {p0, v2, v4, v3, p1}, Lcom/jirbo/adcolony/ab;->a(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 90
    :cond_5
    const-string v2, "videos"

    goto/16 :goto_3

    .line 101
    :cond_6
    const-string v5, "Watch a sponsored video now (Only"

    iget v6, p0, Lcom/jirbo/adcolony/ab;->z:I

    iget v7, p0, Lcom/jirbo/adcolony/ab;->A:I

    int-to-double v8, v7

    int-to-double v10, v3

    iget-wide v12, p0, Lcom/jirbo/adcolony/ab;->l:D

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-int v7, v8

    invoke-virtual {p0, v5, v6, v7, p1}, Lcom/jirbo/adcolony/ab;->a(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " more "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to earn "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/jirbo/adcolony/ab;->q:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/jirbo/adcolony/ab;->z:I

    iget v5, p0, Lcom/jirbo/adcolony/ab;->A:I

    int-to-double v6, v5

    int-to-double v8, v3

    iget-wide v10, p0, Lcom/jirbo/adcolony/ab;->m:D

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-int v3, v6

    invoke-virtual {p0, v2, v4, v3, p1}, Lcom/jirbo/adcolony/ab;->a(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 115
    :cond_7
    iget-object v2, p0, Lcom/jirbo/adcolony/ab;->d:Lcom/jirbo/adcolony/ADCImage;

    iget v3, p0, Lcom/jirbo/adcolony/ab;->B:I

    iget v4, p0, Lcom/jirbo/adcolony/ab;->D:I

    invoke-virtual {v2, p1, v3, v4}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    goto/16 :goto_1

    .line 124
    :cond_8
    iget-object v2, p0, Lcom/jirbo/adcolony/ab;->f:Lcom/jirbo/adcolony/ADCImage;

    iget v3, p0, Lcom/jirbo/adcolony/ab;->C:I

    iget v4, p0, Lcom/jirbo/adcolony/ab;->D:I

    invoke-virtual {v2, p1, v3, v4}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v3, v0

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v4, v0

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 140
    iget v0, p0, Lcom/jirbo/adcolony/ab;->B:I

    iget v1, p0, Lcom/jirbo/adcolony/ab;->D:I

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/jirbo/adcolony/ab;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ab;->I:Z

    if-eqz v0, :cond_3

    .line 142
    sput-object v6, Lcom/jirbo/adcolony/a;->S:Lcom/jirbo/adcolony/h;

    .line 143
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ab;->J:Z

    .line 144
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ab;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lcom/jirbo/adcolony/ab;->G:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->c(Z)V

    .line 158
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ab;->H:Z

    .line 159
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ab;->I:Z

    .line 160
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ab;->invalidate()V

    .line 162
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 166
    iget v0, p0, Lcom/jirbo/adcolony/ab;->B:I

    iget v1, p0, Lcom/jirbo/adcolony/ab;->D:I

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/jirbo/adcolony/ab;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 168
    iput-boolean v5, p0, Lcom/jirbo/adcolony/ab;->I:Z

    .line 169
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ab;->invalidate()V

    .line 177
    :cond_2
    :goto_1
    return v5

    .line 147
    :cond_3
    iget v0, p0, Lcom/jirbo/adcolony/ab;->C:I

    iget v1, p0, Lcom/jirbo/adcolony/ab;->D:I

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/jirbo/adcolony/ab;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ab;->H:Z

    if-eqz v0, :cond_0

    .line 149
    sput-object v6, Lcom/jirbo/adcolony/a;->S:Lcom/jirbo/adcolony/h;

    .line 150
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ab;->J:Z

    .line 151
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ab;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 152
    iget-object v0, p0, Lcom/jirbo/adcolony/ab;->G:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->c(Z)V

    .line 153
    sput-boolean v5, Lcom/jirbo/adcolony/a;->E:Z

    move v1, v2

    .line 154
    :goto_2
    sget-object v0, Lcom/jirbo/adcolony/a;->an:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    sget-object v0, Lcom/jirbo/adcolony/a;->an:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 155
    :cond_4
    sget-object v0, Lcom/jirbo/adcolony/a;->an:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 171
    :cond_5
    iget v0, p0, Lcom/jirbo/adcolony/ab;->C:I

    iget v1, p0, Lcom/jirbo/adcolony/ab;->D:I

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/jirbo/adcolony/ab;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    iput-boolean v5, p0, Lcom/jirbo/adcolony/ab;->H:Z

    .line 174
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ab;->invalidate()V

    goto :goto_1
.end method
