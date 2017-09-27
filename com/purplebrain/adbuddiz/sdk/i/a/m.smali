.class public final enum Lcom/purplebrain/adbuddiz/sdk/i/a/m;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/purplebrain/adbuddiz/sdk/i/a/m;

.field public static final enum b:Lcom/purplebrain/adbuddiz/sdk/i/a/m;

.field public static final enum c:Lcom/purplebrain/adbuddiz/sdk/i/a/m;

.field public static final enum d:Lcom/purplebrain/adbuddiz/sdk/i/a/m;

.field private static final synthetic h:[Lcom/purplebrain/adbuddiz/sdk/i/a/m;


# instance fields
.field e:D

.field f:D

.field g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/i/a/m;

    const-string v2, "SMALL"

    const/4 v3, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide v6, 0x3fd3333333333333L    # 0.3

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/purplebrain/adbuddiz/sdk/i/a/m;-><init>(Ljava/lang/String;IDDI)V

    sput-object v1, Lcom/purplebrain/adbuddiz/sdk/i/a/m;->a:Lcom/purplebrain/adbuddiz/sdk/i/a/m;

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/i/a/m;

    const-string v2, "PHONE"

    const/4 v3, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/16 v8, -0xa

    invoke-direct/range {v1 .. v8}, Lcom/purplebrain/adbuddiz/sdk/i/a/m;-><init>(Ljava/lang/String;IDDI)V

    sput-object v1, Lcom/purplebrain/adbuddiz/sdk/i/a/m;->b:Lcom/purplebrain/adbuddiz/sdk/i/a/m;

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/i/a/m;

    const-string v2, "SMALL_TABLET"

    const/4 v3, 0x2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/16 v8, -0xa

    invoke-direct/range {v1 .. v8}, Lcom/purplebrain/adbuddiz/sdk/i/a/m;-><init>(Ljava/lang/String;IDDI)V

    sput-object v1, Lcom/purplebrain/adbuddiz/sdk/i/a/m;->c:Lcom/purplebrain/adbuddiz/sdk/i/a/m;

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/i/a/m;

    const-string v2, "BIG_TABLET"

    const/4 v3, 0x3

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    const/16 v8, -0xa

    invoke-direct/range {v1 .. v8}, Lcom/purplebrain/adbuddiz/sdk/i/a/m;-><init>(Ljava/lang/String;IDDI)V

    sput-object v1, Lcom/purplebrain/adbuddiz/sdk/i/a/m;->d:Lcom/purplebrain/adbuddiz/sdk/i/a/m;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/purplebrain/adbuddiz/sdk/i/a/m;

    const/4 v1, 0x0

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/i/a/m;->a:Lcom/purplebrain/adbuddiz/sdk/i/a/m;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/i/a/m;->b:Lcom/purplebrain/adbuddiz/sdk/i/a/m;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/i/a/m;->c:Lcom/purplebrain/adbuddiz/sdk/i/a/m;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/i/a/m;->d:Lcom/purplebrain/adbuddiz/sdk/i/a/m;

    aput-object v2, v0, v1

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/i/a/m;->h:[Lcom/purplebrain/adbuddiz/sdk/i/a/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IDDI)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lcom/purplebrain/adbuddiz/sdk/i/a/m;->e:D

    iput-wide p5, p0, Lcom/purplebrain/adbuddiz/sdk/i/a/m;->f:D

    iput p7, p0, Lcom/purplebrain/adbuddiz/sdk/i/a/m;->g:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/i/a/m;
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v8, 0x407d600000000000L    # 470.0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v3

    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v6, v3

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v2, v2

    div-double v2, v6, v2

    mul-double/2addr v4, v4

    mul-double/2addr v2, v2

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v2, v2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v4

    sget-object v5, Lcom/purplebrain/adbuddiz/sdk/f/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/e;

    if-ne v4, v5, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v5, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v6, v5

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v4

    div-double v4, v6, v4

    cmpg-double v4, v4, v8

    if-gez v4, :cond_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/i/a/m;->a:Lcom/purplebrain/adbuddiz/sdk/i/a/m;

    :goto_1
    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v6, v5

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v4

    div-double v4, v6, v4

    cmpg-double v4, v4, v8

    if-ltz v4, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    const-wide/high16 v0, 0x4022000000000000L    # 9.0

    cmpl-double v0, v2, v0

    if-ltz v0, :cond_4

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/i/a/m;->d:Lcom/purplebrain/adbuddiz/sdk/i/a/m;

    goto :goto_1

    :cond_4
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    cmpl-double v0, v2, v0

    if-ltz v0, :cond_5

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/i/a/m;->c:Lcom/purplebrain/adbuddiz/sdk/i/a/m;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/i/a/m;->b:Lcom/purplebrain/adbuddiz/sdk/i/a/m;

    goto :goto_1
.end method
