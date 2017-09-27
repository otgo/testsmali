.class public final Lcom/purplebrain/adbuddiz/sdk/e/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/e/c$a;,
        Lcom/purplebrain/adbuddiz/sdk/e/c$b;
    }
.end annotation


# instance fields
.field a:Lcom/purplebrain/adbuddiz/sdk/e/c$b;

.field b:Lcom/purplebrain/adbuddiz/sdk/e/c$a;

.field private c:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/c;->a:Lcom/purplebrain/adbuddiz/sdk/e/c$b;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/c;->b:Lcom/purplebrain/adbuddiz/sdk/e/c$a;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/c$3;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/e/c$3;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/c;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/c;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/io/InputStream;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->c(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/c;->b:Lcom/purplebrain/adbuddiz/sdk/e/c$a;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Cannot cache an ad without config."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/purplebrain/adbuddiz/sdk/e/c$a;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/c;->b:Lcom/purplebrain/adbuddiz/sdk/e/c$a;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Cannot cache an ad without resource."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/purplebrain/adbuddiz/sdk/e/c$a;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->f()Lcom/purplebrain/adbuddiz/sdk/f/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->e:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/c;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;)V

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/e/c$1;

    invoke-direct {v1, p0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/c$1;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/c;Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/util/Collection;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/e/c$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/purplebrain/adbuddiz/sdk/e/c$2;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/c;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
