.class final Lcom/purplebrain/adbuddiz/sdk/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/a/p;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/a/p;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/r;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/r;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/a/p;->a(Lcom/purplebrain/adbuddiz/sdk/a/p;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/r;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/a/p;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABVASTAdDisplayer#OnPreparedListener.onPrepared()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
