.class final Lcom/purplebrain/adbuddiz/sdk/a/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$2;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$2;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->b_()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$2;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/a/f;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABVASTAdDisplayer#OnPreparedListener.onPrepared()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
