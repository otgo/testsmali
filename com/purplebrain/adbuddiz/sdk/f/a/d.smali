.class public enum Lcom/purplebrain/adbuddiz/sdk/f/a/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/purplebrain/adbuddiz/sdk/f/a/d;

.field public static final enum b:Lcom/purplebrain/adbuddiz/sdk/f/a/d;

.field public static final enum c:Lcom/purplebrain/adbuddiz/sdk/f/a/d;

.field public static final enum d:Lcom/purplebrain/adbuddiz/sdk/f/a/d;

.field private static final synthetic i:[Lcom/purplebrain/adbuddiz/sdk/f/a/d;


# instance fields
.field public e:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;

.field f:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

.field public g:Z

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/a/d$1;

    const-string v1, "ADBUDDIZ"

    const-string v2, "ADBUDDIZ"

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/e/a/b/a;

    invoke-direct {v3}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/a;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/f/a/d$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/d;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/a/d$2;

    const-string v1, "ADBUDDIZ_VIDEO"

    const-string v2, "ADBUDDIZ_VIDEO"

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/e/a/b/b;

    invoke-direct {v3}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/b;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/f/a/d$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/d;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/a/d$3;

    const-string v1, "MRAID"

    const-string v2, "MRAID"

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/e/a/b/d;

    invoke-direct {v3}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/d;-><init>()V

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/purplebrain/adbuddiz/sdk/f/a/d$3;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->c:Lcom/purplebrain/adbuddiz/sdk/f/a/d;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/a/d$4;

    const-string v1, "VAST"

    const-string v2, "VAST"

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/e/a/b/e;

    invoke-direct {v3}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/e;-><init>()V

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/purplebrain/adbuddiz/sdk/f/a/d$4;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->d:Lcom/purplebrain/adbuddiz/sdk/f/a/d;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/purplebrain/adbuddiz/sdk/f/a/d;

    const/4 v1, 0x0

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/d;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/d;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->c:Lcom/purplebrain/adbuddiz/sdk/f/a/d;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->d:Lcom/purplebrain/adbuddiz/sdk/f/a/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->i:[Lcom/purplebrain/adbuddiz/sdk/f/a/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->e:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;

    iput-object p5, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->f:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    iput-boolean p6, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->g:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;ZB)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/purplebrain/adbuddiz/sdk/f/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/purplebrain/adbuddiz/sdk/f/e;)Landroid/graphics/RectF;
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    return-object v0
.end method

.method public a()Lcom/purplebrain/adbuddiz/sdk/a/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
