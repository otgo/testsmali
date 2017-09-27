.class final Lcom/purplebrain/adbuddiz/sdk/a/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/a/c;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/c$3;->a:Lcom/purplebrain/adbuddiz/sdk/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/c$3;->a:Lcom/purplebrain/adbuddiz/sdk/a/c;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/c;->l:Lcom/purplebrain/adbuddiz/sdk/a/c$a;

    invoke-interface {v0}, Lcom/purplebrain/adbuddiz/sdk/a/c$a;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABAdDisplayer.createByAdBuddizLayout.onClick"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/c$3;->a:Lcom/purplebrain/adbuddiz/sdk/a/c;

    iget-object v2, v2, Lcom/purplebrain/adbuddiz/sdk/a/c;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    const-string v1, "ABAdDisplayer#OnClickListener.onClick()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
