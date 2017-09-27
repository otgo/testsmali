.class final Lcom/purplebrain/adbuddiz/sdk/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/purplebrain/adbuddiz/sdk/a/b;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/purplebrain/adbuddiz/sdk/a/b;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/a/b;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/b$1;->b:Lcom/purplebrain/adbuddiz/sdk/a/b;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/a/b$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b$1;->b:Lcom/purplebrain/adbuddiz/sdk/a/b;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/b;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/b$1;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->removeViewInLayout(Landroid/view/View;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b$1;->b:Lcom/purplebrain/adbuddiz/sdk/a/b;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/b$1;->b:Lcom/purplebrain/adbuddiz/sdk/a/b;

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/a/b;->i()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/a/b;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b$1;->b:Lcom/purplebrain/adbuddiz/sdk/a/b;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/b;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/b$1;->b:Lcom/purplebrain/adbuddiz/sdk/a/b;

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/a/b;->a:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/d/a;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABAdBuddizVideoAdDisplayer.onMediaPlayerComplete#AnimatorListener.onAnimationEnd"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "ABAdBuddizVideoAdDisplayer.onMediaPlayerComplete#AnimatorListener.onAnimationEnd"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b$1;->b:Lcom/purplebrain/adbuddiz/sdk/a/b;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/b;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/b$1;->b:Lcom/purplebrain/adbuddiz/sdk/a/b;

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/a/b;->s:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABAdBuddizVideoAdDisplayer.onMediaPlayerComplete#AnimatorListener.onAnimationStart"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "ABAdBuddizVideoAdDisplayer.onMediaPlayerComplete#AnimatorListener.onAnimationStart"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
