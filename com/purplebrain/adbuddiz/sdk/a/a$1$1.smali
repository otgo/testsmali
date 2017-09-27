.class final Lcom/purplebrain/adbuddiz/sdk/a/a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/purplebrain/adbuddiz/sdk/i/v$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/purplebrain/adbuddiz/sdk/a/a$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/a/a$1;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/a/a$1;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/a$1$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/a$1$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/a$1;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/a$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/a;->i:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/a$1$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/a$1;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/a$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/a;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Z)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/a$1$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/a$1;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/a$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/a/a;->s()V

    return-void
.end method
