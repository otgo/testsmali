.class final Lcom/purplebrain/adbuddiz/sdk/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/a/b;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/a/b;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/a/a;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/a;->h:Lcom/purplebrain/adbuddiz/sdk/c/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
