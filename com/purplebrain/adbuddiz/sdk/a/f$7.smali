.class final Lcom/purplebrain/adbuddiz/sdk/a/f$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$7;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$7;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/purplebrain/adbuddiz/sdk/a/f;->y:Z

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Error while playing the media. What: %d. Extra: %d."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$7;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->a(Lcom/purplebrain/adbuddiz/sdk/a/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$7;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    iget-object v2, v2, Lcom/purplebrain/adbuddiz/sdk/a/f;->C:Lcom/purplebrain/adbuddiz/sdk/i/c/b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$7;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    iget-object v2, v2, Lcom/purplebrain/adbuddiz/sdk/a/f;->C:Lcom/purplebrain/adbuddiz/sdk/i/c/b;

    iget-object v2, v2, Lcom/purplebrain/adbuddiz/sdk/i/c/b;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$7;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/f;->C:Lcom/purplebrain/adbuddiz/sdk/i/c/b;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/i/c/b;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$7;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/a/f;->c()Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    move-result-object v2

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/i/c/d;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Position: %d / %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$7;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/a/f;->n:Lcom/purplebrain/adbuddiz/sdk/a/c$b;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/a/c$b;->a(Ljava/lang/Throwable;)V

    :cond_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f$7;->a:Lcom/purplebrain/adbuddiz/sdk/a/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/purplebrain/adbuddiz/sdk/a/f;->a(Landroid/media/MediaPlayer;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v7

    :catch_0
    move-exception v0

    const-string v1, "ABVASTAdDisplayer#OnErrorListener.onError()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
