.class final Lcom/purplebrain/adbuddiz/sdk/e/a$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/purplebrain/adbuddiz/sdk/e/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/e/a;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$6;->a:Lcom/purplebrain/adbuddiz/sdk/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    .locals 1

    iget-boolean v0, p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/i/i$2;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/i/i$2;-><init>()V

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/i;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/i/r$2;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/i/r$2;-><init>()V

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/r;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Exception;)V
    .locals 3

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->A:Ljava/util/List;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->INVALID_AD:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/d;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/d$a;->a:Lcom/purplebrain/adbuddiz/sdk/f/d$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/f/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/d$a;Ljava/lang/String;)V

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/h/g;

    invoke-direct {v1}, Lcom/purplebrain/adbuddiz/sdk/h/g;-><init>()V

    iput-object p1, v1, Lcom/purplebrain/adbuddiz/sdk/h/g;->g:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->INVALID_AD:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    invoke-virtual {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/h/g;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;)V

    iput-object v0, v1, Lcom/purplebrain/adbuddiz/sdk/h/g;->i:Lcom/purplebrain/adbuddiz/sdk/f/d;

    invoke-virtual {v1, p2}, Lcom/purplebrain/adbuddiz/sdk/h/g;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/h/g;->f()V

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$6;->a:Lcom/purplebrain/adbuddiz/sdk/e/a;

    iget-boolean v1, p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b:Z

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/e/a;->b(Z)V

    return-void
.end method
