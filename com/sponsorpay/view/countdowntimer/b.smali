.class public final Lcom/sponsorpay/view/countdowntimer/b;
.super Lcom/sponsorpay/view/SPDrawableLayout;
.source "CountDownTimerLayout.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Ljava/lang/Long;

.field private c:Lcom/sponsorpay/view/countdowntimer/a;

.field private d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Long;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v2, -0x2

    const/high16 v4, 0x43b40000    # 360.0f

    .line 34
    invoke-direct {p0, p1}, Lcom/sponsorpay/view/SPDrawableLayout;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lcom/sponsorpay/view/countdowntimer/b;->b:Ljava/lang/Long;

    .line 38
    iget-object v0, p0, Lcom/sponsorpay/view/countdowntimer/b;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    div-float v0, v4, v0

    iput v0, p0, Lcom/sponsorpay/view/countdowntimer/b;->d:F

    .line 40
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sponsorpay/view/countdowntimer/b;->a:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/sponsorpay/view/countdowntimer/b;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sponsorpay/view/countdowntimer/b;->a:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/sponsorpay/view/countdowntimer/b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sponsorpay/view/countdowntimer/b;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sponsorpay/view/countdowntimer/b;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sponsorpay/view/countdowntimer/b;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sponsorpay/view/countdowntimer/b;->a:Landroid/widget/TextView;

    const-string v1, "countdownTextView"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/sponsorpay/view/countdowntimer/b;->getPixelsFromDip(I)I

    move-result v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    invoke-virtual {v1, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    new-instance v0, Lcom/sponsorpay/view/countdowntimer/a;

    invoke-direct {v0}, Lcom/sponsorpay/view/countdowntimer/a;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/view/countdowntimer/b;->c:Lcom/sponsorpay/view/countdowntimer/a;

    iget-object v0, p0, Lcom/sponsorpay/view/countdowntimer/b;->c:Lcom/sponsorpay/view/countdowntimer/a;

    invoke-virtual {v0, v4}, Lcom/sponsorpay/view/countdowntimer/a;->a(F)V

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sponsorpay/view/countdowntimer/b;->c:Lcom/sponsorpay/view/countdowntimer/a;

    aput-object v3, v2, v6

    aput-object v1, v2, v7

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/sponsorpay/view/countdowntimer/b;->setDrawableToImageView(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sponsorpay/view/countdowntimer/b;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sponsorpay/view/countdowntimer/b;->addView(Landroid/view/View;)V

    const-string v0, "countdownView"

    invoke-virtual {p0, v0}, Lcom/sponsorpay/view/countdowntimer/b;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method

.method private static b(J)Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    .line 90
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 91
    const-wide/16 v2, 0x3b

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 92
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v8

    rem-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v10, v11}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    rem-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(J)V
    .locals 5

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sponsorpay/view/countdowntimer/b;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 63
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/sponsorpay/view/countdowntimer/b;->a:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/sponsorpay/view/countdowntimer/b;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    long-to-float v0, v0

    iget v1, p0, Lcom/sponsorpay/view/countdowntimer/b;->d:F

    mul-float/2addr v0, v1

    .line 67
    iget-object v1, p0, Lcom/sponsorpay/view/countdowntimer/b;->c:Lcom/sponsorpay/view/countdowntimer/a;

    invoke-virtual {v1, v0}, Lcom/sponsorpay/view/countdowntimer/a;->a(F)V

    .line 69
    :cond_0
    return-void
.end method
