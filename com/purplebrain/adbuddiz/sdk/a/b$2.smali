.class final Lcom/purplebrain/adbuddiz/sdk/a/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/purplebrain/adbuddiz/sdk/a/b;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/a/b;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/b$2;->a:Lcom/purplebrain/adbuddiz/sdk/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/b$2;->a:Lcom/purplebrain/adbuddiz/sdk/a/b;

    iget-object v2, v2, Lcom/purplebrain/adbuddiz/sdk/a/b;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABAdBuddizVideoAdDisplayer.onMediaPlayerComplete#AnimatorUpdateListener.onAnimationUpdate"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "ABAdBuddizVideoAdDisplayer.onMediaPlayerComplete#AnimatorUpdateListener.onAnimationUpdate"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
