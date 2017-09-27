.class final enum Lcom/purplebrain/adbuddiz/sdk/f/a/d$4;
.super Lcom/purplebrain/adbuddiz/sdk/f/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/f/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;)V
    .locals 8

    const/4 v2, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/purplebrain/adbuddiz/sdk/f/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;ZB)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/e;)Landroid/graphics/RectF;
    .locals 3

    const v2, 0x3eb33333    # 0.35f

    invoke-super {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->a(Lcom/purplebrain/adbuddiz/sdk/f/e;)Landroid/graphics/RectF;

    move-result-object v0

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/e;

    if-ne p1, v1, :cond_0

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iput v2, v0, Landroid/graphics/RectF;->right:F

    :cond_0
    return-object v0
.end method

.method public final a()Lcom/purplebrain/adbuddiz/sdk/a/c;
    .locals 1

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/a/e;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/a/e;-><init>()V

    return-object v0
.end method
