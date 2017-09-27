.class public final Lcom/purplebrain/adbuddiz/sdk/i/v$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/i/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/Thread;

.field b:Z

.field final synthetic c:Lcom/purplebrain/adbuddiz/sdk/i/v;


# direct methods
.method private constructor <init>(Lcom/purplebrain/adbuddiz/sdk/i/v;)V
    .locals 1

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/i/v$a;->c:Lcom/purplebrain/adbuddiz/sdk/i/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/v$a;->a:Ljava/lang/Thread;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/v$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/purplebrain/adbuddiz/sdk/i/v;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/i/v$a;-><init>(Lcom/purplebrain/adbuddiz/sdk/i/v;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v1, v2

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "market"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x1f40

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v3, 0x1f40

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    const-string v3, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v0, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v5, 0x12e

    if-ne v3, v5, :cond_4

    const-string v3, "location"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {p0, v3}, Lcom/purplebrain/adbuddiz/sdk/i/v$a;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x1

    :try_start_2
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    move-object v1, v2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catch_2
    move-exception v2

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/v$a;->b:Z

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/v$a;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/v$a;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
