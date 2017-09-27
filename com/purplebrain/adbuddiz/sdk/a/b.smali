.class final Lcom/purplebrain/adbuddiz/sdk/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/a/a;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/a/a;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/a;->n:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/a/a;->n:Ljava/lang/Long;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/a;->g:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/a;->h:Lcom/purplebrain/adbuddiz/sdk/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Z)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/a/a;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/a;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;->g:Ljava/lang/String;

    const-string v2, "{publisherId}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "{publisherId}"

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v3

    iget-wide v4, v3, Lcom/purplebrain/adbuddiz/sdk/e/b;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/h/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v2, "{androidId}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "{androidId}"

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/a/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/h/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v2, "{androidIdMD5}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "{androidIdMD5}"

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/a/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MD5"

    invoke-static {v4, v3}, Lcom/purplebrain/adbuddiz/sdk/h/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/h/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v2, "{androidIdSHA1}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "{androidIdSHA1}"

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/a/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SHA-1"

    invoke-static {v4, v3}, Lcom/purplebrain/adbuddiz/sdk/h/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/h/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    const-string v2, "{googleAid}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "{googleAid}"

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/h/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    const-string v2, "{googleAidMD5}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "{googleAidMD5}"

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MD5"

    invoke-static {v4, v3}, Lcom/purplebrain/adbuddiz/sdk/h/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/h/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    const-string v2, "{googleAidSHA1}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "{googleAidSHA1}"

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "SHA-1"

    invoke-static {v3, v1}, Lcom/purplebrain/adbuddiz/sdk/h/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/purplebrain/adbuddiz/sdk/h/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/h/y;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    iget-object v3, v3, Lcom/purplebrain/adbuddiz/sdk/a/a;->b:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/purplebrain/adbuddiz/sdk/h/y;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/purplebrain/adbuddiz/sdk/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/h/y;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/h/y;

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/a/c;

    invoke-direct {v2, p0}, Lcom/purplebrain/adbuddiz/sdk/a/c;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/b;)V

    iput-object v2, v1, Lcom/purplebrain/adbuddiz/sdk/h/y;->b:Lcom/purplebrain/adbuddiz/sdk/h/ac;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/h/y;

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/h/z;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/purplebrain/adbuddiz/sdk/h/z;-><init>(Lcom/purplebrain/adbuddiz/sdk/h/y;B)V

    iput-object v2, v1, Lcom/purplebrain/adbuddiz/sdk/h/y;->c:Lcom/purplebrain/adbuddiz/sdk/h/z;

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/h/y;->c:Lcom/purplebrain/adbuddiz/sdk/h/z;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/h/aa;

    invoke-direct {v3, v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/aa;-><init>(Lcom/purplebrain/adbuddiz/sdk/h/z;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, v1, Lcom/purplebrain/adbuddiz/sdk/h/z;->a:Ljava/lang/Thread;

    iget-object v0, v1, Lcom/purplebrain/adbuddiz/sdk/h/z;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/a/d;

    invoke-direct {v2, p0}, Lcom/purplebrain/adbuddiz/sdk/a/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/b;)V

    iget-wide v4, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->s:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/purplebrain/adbuddiz/sdk/a/a;->n:Ljava/lang/Long;

    const-string v1, "ABAdBuddizAdDisplayer.createAdView.onClick"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    iget-object v2, v2, Lcom/purplebrain/adbuddiz/sdk/a/a;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/p;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/Throwable;)V

    const-string v1, "ABAdDisplayer.createAdView().onClick() Ad Exception : "

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
