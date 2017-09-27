.class final Lcom/purplebrain/adbuddiz/sdk/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/purplebrain/adbuddiz/sdk/d/j;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/d/a;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/d/e;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a(Lcom/purplebrain/adbuddiz/sdk/d/j;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/e;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->g(Lcom/purplebrain/adbuddiz/sdk/d/a;)Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/e;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->e(Lcom/purplebrain/adbuddiz/sdk/d/a;)V

    :cond_0
    return-void
.end method
