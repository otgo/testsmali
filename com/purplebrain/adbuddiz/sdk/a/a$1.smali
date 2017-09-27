.class final Lcom/purplebrain/adbuddiz/sdk/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/purplebrain/adbuddiz/sdk/a/a;->b()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/a/a;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/a$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/a$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/a/a;->p()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/a$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/a/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/a$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/a/a;->r()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/a$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/a;->i:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/a$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/a;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Z)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/a$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/a/a;->d:Landroid/app/Activity;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/a$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/a;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->j:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/a$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/i/v;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/a$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    iget-object v3, v3, Lcom/purplebrain/adbuddiz/sdk/a/a;->d:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/purplebrain/adbuddiz/sdk/i/v;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/purplebrain/adbuddiz/sdk/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/i/v;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/a$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/i/v;

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/a/a$1$1;

    invoke-direct {v2, p0}, Lcom/purplebrain/adbuddiz/sdk/a/a$1$1;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/a$1;)V

    iput-object v2, v1, Lcom/purplebrain/adbuddiz/sdk/i/v;->b:Lcom/purplebrain/adbuddiz/sdk/i/v$b;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/a$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/i/v;

    invoke-virtual {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/v;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/a/a$1$2;

    invoke-direct {v2, p0}, Lcom/purplebrain/adbuddiz/sdk/a/a$1$2;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/a$1;)V

    iget-wide v4, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->v:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/a$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/purplebrain/adbuddiz/sdk/a/a;->p:Ljava/lang/Long;

    const-string v1, "ABAdBuddizAdDisplayer.createAdView.onClick"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/a$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    iget-object v2, v2, Lcom/purplebrain/adbuddiz/sdk/a/a;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    const-string v1, "ABAdDisplayer.createAdView().onClick() Ad Exception : "

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
