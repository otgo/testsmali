.class final Lcom/purplebrain/adbuddiz/sdk/d/h;
.super Landroid/view/OrientationEventListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/d/a;

.field private b:Lcom/purplebrain/adbuddiz/sdk/e/f;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/d/a;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/d/h;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    const/4 v0, 0x3

    invoke-direct {p0, p2, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/e/f;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/h;->b:Lcom/purplebrain/adbuddiz/sdk/e/f;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/e/f;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/h;->b:Lcom/purplebrain/adbuddiz/sdk/e/f;

    const/4 v0, 0x0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/h;->c:I

    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 2

    iget v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/h;->c:I

    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_1

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/h;->b:Lcom/purplebrain/adbuddiz/sdk/e/f;

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/h;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->g(Lcom/purplebrain/adbuddiz/sdk/d/a;)Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/h;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->g(Lcom/purplebrain/adbuddiz/sdk/d/a;)Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->c()Lcom/purplebrain/adbuddiz/sdk/e/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/e/f;->a(Lcom/purplebrain/adbuddiz/sdk/e/f;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/h;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->e(Lcom/purplebrain/adbuddiz/sdk/d/a;)V

    :cond_0
    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/h;->b:Lcom/purplebrain/adbuddiz/sdk/e/f;

    :cond_1
    return-void
.end method
