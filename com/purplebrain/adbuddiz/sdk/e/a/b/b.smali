.class public final Lcom/purplebrain/adbuddiz/sdk/e/a/b/b;
.super Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;-><init>(B)V

    return-void
.end method

.method private b(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/b;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/b;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;

    invoke-interface {v0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/b;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;

    invoke-interface {v1, p1, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private e(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v0, p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    move-object v7, v0

    check-cast v7, Lcom/purplebrain/adbuddiz/sdk/f/a/c;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/f;

    iget-object v1, p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/purplebrain/adbuddiz/sdk/f/e;->c:Lcom/purplebrain/adbuddiz/sdk/f/e;

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->d()Ljava/net/URL;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/f;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;Ljava/lang/String;ZLcom/purplebrain/adbuddiz/sdk/f/e;Ljava/net/URL;)V

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->c(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v3

    :try_start_1
    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/i/s;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v4, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    :try_start_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v2, v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Landroid/content/Context;Ljava/io/InputStream;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    :try_start_5
    invoke-virtual {v7, p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V

    invoke-virtual {v7, v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/b;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;

    invoke-interface {v0, v7}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    :goto_3
    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_5
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    move-object v8, v3

    :goto_6
    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    :goto_7
    throw v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_4
.end method

.method private f(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v3, v2

    :goto_0
    if-nez v1, :cond_2

    const/4 v0, 0x2

    if-ge v3, v0, :cond_2

    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x12

    invoke-virtual {v0, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x13

    invoke-virtual {v0, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    if-nez v4, :cond_1

    :cond_0
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->p:Ljava/lang/Long;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->q:Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->r:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->p:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/purplebrain/adbuddiz/sdk/i/c/d;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;J)V

    iget-object v4, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->q:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p1, v4}, Lcom/purplebrain/adbuddiz/sdk/i/c/d;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;I)V

    iget-object v4, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->r:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p1, v4}, Lcom/purplebrain/adbuddiz/sdk/i/c/d;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;I)V

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/b;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;

    invoke-interface {v4, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    :cond_2
    if-nez v1, :cond_3

    move v0, v2

    :goto_3
    return v0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V
    .locals 1

    iget-object v0, p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-direct {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/b;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/b;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/util/Collection;)V
    .locals 1

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/i/b;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/i/b;-><init>()V

    invoke-static {p2}, Lcom/purplebrain/adbuddiz/sdk/i/b;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/e;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/b;->c(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const-string v3, "isVideo"

    invoke-virtual {v0, v3}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/d;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "isVideo"

    invoke-virtual {p1, v1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/c/d;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/b;->f(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/b/f;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Cannot extract metadata information from the video."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->c:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    if-eq v1, v2, :cond_3

    :goto_1
    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/b;->e(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    invoke-super {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z

    move-result v0

    goto :goto_0
.end method
