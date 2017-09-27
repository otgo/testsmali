.class final Lcom/purplebrain/adbuddiz/sdk/e/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/purplebrain/adbuddiz/sdk/e/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

.field final synthetic b:Ljava/util/Collection;

.field final synthetic c:Lcom/purplebrain/adbuddiz/sdk/e/c;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/e/c;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/e/c$2;->c:Lcom/purplebrain/adbuddiz/sdk/e/c;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/e/c$2;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/e/c$2;->b:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/c$2;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->f()Lcom/purplebrain/adbuddiz/sdk/f/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->e:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/c$2;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/c$2;->b:Ljava/util/Collection;

    invoke-virtual {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABResourceManager.clean"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    const-string v1, "ABResourceManager.clean()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
