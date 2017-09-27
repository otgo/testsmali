.class final Lcom/purplebrain/adbuddiz/sdk/e/a$a;
.super Landroid/view/OrientationEventListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/e/a;

.field private b:Lcom/purplebrain/adbuddiz/sdk/f/e;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/e/a;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$a;->a:Lcom/purplebrain/adbuddiz/sdk/e/a;

    const/4 v0, 0x3

    invoke-direct {p0, p2, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$a;->b:Lcom/purplebrain/adbuddiz/sdk/f/e;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$a;->b:Lcom/purplebrain/adbuddiz/sdk/f/e;

    const/4 v0, 0x0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$a;->c:I

    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 4

    iget v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$a;->c:I

    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$a;->b:Lcom/purplebrain/adbuddiz/sdk/f/e;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$a;->a:Lcom/purplebrain/adbuddiz/sdk/e/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/e/a;->c(Lcom/purplebrain/adbuddiz/sdk/e/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->c()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/purplebrain/adbuddiz/sdk/f/e;->a(Lcom/purplebrain/adbuddiz/sdk/f/e;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$a;->a:Lcom/purplebrain/adbuddiz/sdk/e/a;

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/e/a;->c(Lcom/purplebrain/adbuddiz/sdk/e/a;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$a;->a:Lcom/purplebrain/adbuddiz/sdk/e/a;

    invoke-static {v3, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Lcom/purplebrain/adbuddiz/sdk/e/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;)V

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$a;->b:Lcom/purplebrain/adbuddiz/sdk/f/e;

    :cond_2
    return-void
.end method
