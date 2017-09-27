.class final Lcom/purplebrain/adbuddiz/sdk/d/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

.field final synthetic b:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

.field final synthetic c:Lcom/purplebrain/adbuddiz/sdk/d/k;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/d/k;Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/d/m;->c:Lcom/purplebrain/adbuddiz/sdk/d/k;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/d/m;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/d/m;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/m;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->f()Lcom/purplebrain/adbuddiz/sdk/e/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/d;->d:Lcom/purplebrain/adbuddiz/sdk/d/a/b;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/m;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/d/m;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    invoke-virtual {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/d/a/b;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABResourceManager.clean"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/p;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/Throwable;)V

    const-string v1, "ABResourceManager.clean()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
