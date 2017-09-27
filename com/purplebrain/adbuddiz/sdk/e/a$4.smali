.class final Lcom/purplebrain/adbuddiz/sdk/e/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/purplebrain/adbuddiz/sdk/e/b$a;


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

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$4;->a:Lcom/purplebrain/adbuddiz/sdk/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a(Lcom/purplebrain/adbuddiz/sdk/e/b$a;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$4;->a:Lcom/purplebrain/adbuddiz/sdk/e/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/e/a;->c(Lcom/purplebrain/adbuddiz/sdk/e/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iget-boolean v3, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->g:Z

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$4;->a:Lcom/purplebrain/adbuddiz/sdk/e/a;

    invoke-static {v3, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Lcom/purplebrain/adbuddiz/sdk/e/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;)V

    :cond_0
    iget-boolean v3, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->h:Z

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$4;->a:Lcom/purplebrain/adbuddiz/sdk/e/a;

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/e/a;->b(Lcom/purplebrain/adbuddiz/sdk/e/a;)Lcom/purplebrain/adbuddiz/sdk/e/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/purplebrain/adbuddiz/sdk/e/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    :cond_1
    iput-boolean v4, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->g:Z

    iput-boolean v4, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->h:Z

    goto :goto_0

    :cond_2
    return-void
.end method
