.class final Lcom/purplebrain/adbuddiz/sdk/a/f$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/a/f;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$6;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$6;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->j()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$6;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/f;->C:Lcom/purplebrain/adbuddiz/sdk/i/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$6;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/f;->C:Lcom/purplebrain/adbuddiz/sdk/i/c/b;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/b;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$6;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    iget-boolean v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/f;->x:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$6;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    iget-boolean v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/f;->y:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$6;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/purplebrain/adbuddiz/sdk/a/f;->x:Z

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$6;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/f;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Z)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$6;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/f;->A:Lcom/purplebrain/adbuddiz/sdk/i/c/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$6;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/f;->A:Lcom/purplebrain/adbuddiz/sdk/i/c/e;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->cancel()V

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->a()V

    :cond_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$6;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->a_()V

    :cond_2
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$6;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->z()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$6;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/f;->t:Landroid/view/SurfaceHolder;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABVideoAdDisplayer#OnCompletionListener.onCompletion()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
