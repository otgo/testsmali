.class final Lcom/purplebrain/adbuddiz/sdk/a/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/a/p;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/a/p;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/u;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/u;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/p;->w:Lcom/purplebrain/adbuddiz/sdk/i/i;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/i;->cancel()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/u;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    iget-boolean v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/p;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/u;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    iget-boolean v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/p;->r:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/u;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/purplebrain/adbuddiz/sdk/a/p;->q:Z

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/u;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/p;->h:Lcom/purplebrain/adbuddiz/sdk/c/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Z)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/u;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/p;->u:Lcom/purplebrain/adbuddiz/sdk/i/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/u;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/p;->u:Lcom/purplebrain/adbuddiz/sdk/i/h;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/h;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/u;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/p;->t:Lcom/purplebrain/adbuddiz/sdk/i/j;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/j;->cancel()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/u;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/p;->t:Lcom/purplebrain/adbuddiz/sdk/i/j;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/i/j;->onTick(J)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/u;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/a/p;->b(Lcom/purplebrain/adbuddiz/sdk/a/p;)Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/u;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;->f:Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Landroid/media/MediaPlayer;Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/u;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/p;->v:Lcom/purplebrain/adbuddiz/sdk/i/b;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;->f:Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/b;->a(Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;)V

    :cond_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/u;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/p;->a:Landroid/view/SurfaceHolder;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/u;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/a/p;->b(Lcom/purplebrain/adbuddiz/sdk/a/p;)Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    move-result-object v0

    const-string v1, "c"

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/u;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/a/p;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABVASTAdDisplayer#OnCompletionListener.onCompletion()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
