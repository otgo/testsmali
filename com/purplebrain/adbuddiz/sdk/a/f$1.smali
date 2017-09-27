.class final Lcom/purplebrain/adbuddiz/sdk/a/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABVASTAdDisplayer#Callback.surfaceCreated()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABVASTAdDisplayer#Callback.surfaceDestroyed()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
