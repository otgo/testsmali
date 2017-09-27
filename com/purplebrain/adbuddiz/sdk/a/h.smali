.class final Lcom/purplebrain/adbuddiz/sdk/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/a/e;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/h;->a:Lcom/purplebrain/adbuddiz/sdk/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/h;->a:Lcom/purplebrain/adbuddiz/sdk/a/e;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/e;->j:Lcom/purplebrain/adbuddiz/sdk/a/i;

    invoke-interface {v0}, Lcom/purplebrain/adbuddiz/sdk/a/i;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABAdDisplayer.createByAdBuddizLayout.onClick"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/h;->a:Lcom/purplebrain/adbuddiz/sdk/a/e;

    iget-object v2, v2, Lcom/purplebrain/adbuddiz/sdk/a/e;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/p;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/Throwable;)V

    const-string v1, "ABAdDisplayer#OnClickListener.onClick()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
