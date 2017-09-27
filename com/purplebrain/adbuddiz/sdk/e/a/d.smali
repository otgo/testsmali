.class public enum Lcom/purplebrain/adbuddiz/sdk/e/a/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/purplebrain/adbuddiz/sdk/e/a/d;

.field public static final enum b:Lcom/purplebrain/adbuddiz/sdk/e/a/d;

.field public static final enum c:Lcom/purplebrain/adbuddiz/sdk/e/a/d;

.field private static final synthetic h:[Lcom/purplebrain/adbuddiz/sdk/e/a/d;


# instance fields
.field public d:Lcom/purplebrain/adbuddiz/sdk/d/a/b;

.field e:Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;

.field public f:Z

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a/e;

    const-string v1, "ADBUDDIZ"

    const-string v2, "ADBUDDIZ"

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/d/a/a;

    invoke-direct {v3}, Lcom/purplebrain/adbuddiz/sdk/d/a/a;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/e/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/d/a/b;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/d;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a/f;

    const-string v1, "MRAID"

    const-string v2, "MRAID"

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/d/a/f;

    invoke-direct {v3}, Lcom/purplebrain/adbuddiz/sdk/d/a/f;-><init>()V

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/purplebrain/adbuddiz/sdk/e/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/d/a/b;Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/d;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a/g;

    const-string v1, "VAST"

    const-string v2, "VAST"

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/d/a/g;

    invoke-direct {v3}, Lcom/purplebrain/adbuddiz/sdk/d/a/g;-><init>()V

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/purplebrain/adbuddiz/sdk/e/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/d/a/b;Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a/d;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/d;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/purplebrain/adbuddiz/sdk/e/a/d;

    const/4 v1, 0x0

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/e/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/d;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/e/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/d;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/e/a/d;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a/d;->h:[Lcom/purplebrain/adbuddiz/sdk/e/a/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/purplebrain/adbuddiz/sdk/d/a/b;Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/d;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/d;->d:Lcom/purplebrain/adbuddiz/sdk/d/a/b;

    iput-object p5, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/d;->e:Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;

    iput-boolean p6, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/d;->f:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/purplebrain/adbuddiz/sdk/d/a/b;Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;ZB)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/purplebrain/adbuddiz/sdk/e/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/purplebrain/adbuddiz/sdk/d/a/b;Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/purplebrain/adbuddiz/sdk/e/f;)Landroid/graphics/RectF;
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

.method public a()Lcom/purplebrain/adbuddiz/sdk/a/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
