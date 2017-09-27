.class final Lcom/purplebrain/adbuddiz/sdk/i/c/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/purplebrain/adbuddiz/sdk/i/c/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/i/c/e;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/i/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/e$1;->a:Lcom/purplebrain/adbuddiz/sdk/i/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/e$1;->a:Lcom/purplebrain/adbuddiz/sdk/i/c/e;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->a(Lcom/purplebrain/adbuddiz/sdk/i/c/e;)Lcom/purplebrain/adbuddiz/sdk/d/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Z)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/e$1;->a:Lcom/purplebrain/adbuddiz/sdk/i/c/e;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->a(Lcom/purplebrain/adbuddiz/sdk/i/c/e;)Lcom/purplebrain/adbuddiz/sdk/d/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/e$1;->a:Lcom/purplebrain/adbuddiz/sdk/i/c/e;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->b(Lcom/purplebrain/adbuddiz/sdk/i/c/e;)Lcom/purplebrain/adbuddiz/sdk/i/c/e$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/e$1;->a:Lcom/purplebrain/adbuddiz/sdk/i/c/e;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->b(Lcom/purplebrain/adbuddiz/sdk/i/c/e;)Lcom/purplebrain/adbuddiz/sdk/i/c/e$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/e$a;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABVideoSkipTimer.onSkipEnabled"

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    const-string v0, "ABVideoSkipTimer.onSkipEnabled()"

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
