.class final Lcom/purplebrain/adbuddiz/sdk/h/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/purplebrain/adbuddiz/sdk/h/aa;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/h/aa;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/h/ab;->b:Lcom/purplebrain/adbuddiz/sdk/h/aa;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/h/ab;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/ab;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/ab;->b:Lcom/purplebrain/adbuddiz/sdk/h/aa;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/h/aa;->b:Lcom/purplebrain/adbuddiz/sdk/h/z;

    iget-boolean v0, v0, Lcom/purplebrain/adbuddiz/sdk/h/z;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/ab;->b:Lcom/purplebrain/adbuddiz/sdk/h/aa;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/h/aa;->b:Lcom/purplebrain/adbuddiz/sdk/h/z;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/h/z;->c:Lcom/purplebrain/adbuddiz/sdk/h/y;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/h/y;->b:Lcom/purplebrain/adbuddiz/sdk/h/ac;

    invoke-interface {v0}, Lcom/purplebrain/adbuddiz/sdk/h/ac;->a()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/ab;->b:Lcom/purplebrain/adbuddiz/sdk/h/aa;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/h/aa;->b:Lcom/purplebrain/adbuddiz/sdk/h/z;

    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/h/z;->c:Lcom/purplebrain/adbuddiz/sdk/h/y;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/ab;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v2, v1, Lcom/purplebrain/adbuddiz/sdk/h/y;->a:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    :try_start_2
    const-string v2, "market"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "market://details?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "market://details?"

    const-string v3, "https://play.google.com/store/apps/details?"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    :cond_1
    :goto_1
    :try_start_3
    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/h/y;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_4
    const-string v2, "market://search?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "market://search?"

    const-string v3, "https://play.google.com/store/search?"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "ABAdClickManager.launchActivityForUrl"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/p;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/Throwable;)V

    const-string v1, "ABAdClickManager.launchActivityForUrl() Exception : "

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "ABTrackingLinkHelper#FollowTrackingLinkAsyncTask.execute"

    invoke-static {v1, v6, v0}, Lcom/purplebrain/adbuddiz/sdk/h/p;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
