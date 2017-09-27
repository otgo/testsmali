.class final Lcom/purplebrain/adbuddiz/sdk/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/a/p;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/a/p;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/s;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/s;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/a/p;->f()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/s;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/a/p;->x:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/s;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    const-string v2, "ct"

    invoke-virtual {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    const-string v3, "Click"

    invoke-static {v3, v2, v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Ljava/lang/String;Ljava/util/List;Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/s;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/a/p;->b(Lcom/purplebrain/adbuddiz/sdk/a/p;)Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    move-result-object v0

    const-string v1, "c"

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/s;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/p;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/s;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/a/p;->g()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ABVASTAdDisplayer#OnClickListener.onClick"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method
