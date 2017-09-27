.class public final Lcom/purplebrain/adbuddiz/sdk/d/k;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/purplebrain/adbuddiz/sdk/d/p;

.field b:Lcom/purplebrain/adbuddiz/sdk/d/o;

.field private c:Lcom/purplebrain/adbuddiz/sdk/d/a/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/k;->a:Lcom/purplebrain/adbuddiz/sdk/d/p;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/k;->b:Lcom/purplebrain/adbuddiz/sdk/d/o;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/d/n;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/d/n;-><init>(Lcom/purplebrain/adbuddiz/sdk/d/k;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/k;->c:Lcom/purplebrain/adbuddiz/sdk/d/a/e;

    return-void
.end method

.method public static a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)Ljava/io/InputStream;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/q;->b(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;->e()Ljava/lang/String;

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

.method public static a()V
    .locals 6

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/a/h;->a()[Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lcom/purplebrain/adbuddiz/sdk/h/q;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/e/a/h;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V
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
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/k;->b:Lcom/purplebrain/adbuddiz/sdk/d/o;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Cannot cache an ad without config."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/o;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/k;->b:Lcom/purplebrain/adbuddiz/sdk/d/o;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Cannot cache an ad without resource."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/o;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->f()Lcom/purplebrain/adbuddiz/sdk/e/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/d;->d:Lcom/purplebrain/adbuddiz/sdk/d/a/b;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/k;->c:Lcom/purplebrain/adbuddiz/sdk/d/a/e;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/a/b;->a(Lcom/purplebrain/adbuddiz/sdk/d/a/e;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/d/l;

    invoke-direct {v1, p0, p1}, Lcom/purplebrain/adbuddiz/sdk/d/l;-><init>(Lcom/purplebrain/adbuddiz/sdk/d/k;Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
