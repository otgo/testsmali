.class final Lcom/purplebrain/adbuddiz/sdk/a/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/a/p;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/a/p;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/t;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/t;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/t;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    iget-boolean v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/p;->s:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0, v2, v1}, Lcom/purplebrain/adbuddiz/sdk/a/p;->a(ZZZ)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method
