.class final Lcom/purplebrain/adbuddiz/sdk/d/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/purplebrain/adbuddiz/sdk/d/o;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/d/a;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/d/g;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/h/i;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/h/i;-><init>()V

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/g;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 3

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->x:Ljava/util/List;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->INVALID_AD:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/d;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/e/e;->c:Lcom/purplebrain/adbuddiz/sdk/e/e;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/e/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/e;Ljava/lang/String;)V

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/g/g;

    invoke-direct {v1}, Lcom/purplebrain/adbuddiz/sdk/g/g;-><init>()V

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/d/g;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/d/a;->g(Lcom/purplebrain/adbuddiz/sdk/d/a;)Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    move-result-object v2

    iput-object v2, v1, Lcom/purplebrain/adbuddiz/sdk/g/g;->d:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->INVALID_AD:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    iput-object v2, v1, Lcom/purplebrain/adbuddiz/sdk/g/g;->c:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    iput-object v0, v1, Lcom/purplebrain/adbuddiz/sdk/g/g;->f:Lcom/purplebrain/adbuddiz/sdk/e/d;

    invoke-virtual {v1, p1}, Lcom/purplebrain/adbuddiz/sdk/g/g;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/g/g;->e()V

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/g;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->c()V

    return-void
.end method
