.class public final Lcom/purplebrain/adbuddiz/sdk/g/e;
.super Lcom/purplebrain/adbuddiz/sdk/g/a;


# instance fields
.field public c:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

.field public d:Lcom/purplebrain/adbuddiz/sdk/g/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/g/a;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/e;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/e;->d:Lcom/purplebrain/adbuddiz/sdk/g/f;

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/e;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;->c()Ljava/net/URL;

    move-result-object v0

    const-string v2, "GET"

    invoke-static {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/g/a;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_4

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/g/e;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/g/e;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/h/q;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    const/16 v5, 0x400

    new-array v5, v5, [B

    :goto_0
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v4, "writeAdResource() IOException"

    invoke-static {v4, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/h/q;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/h/q;->b(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    throw v0

    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/h/q;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/h/q;->b(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/e;->d:Lcom/purplebrain/adbuddiz/sdk/g/f;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/e;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    invoke-interface {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/g/f;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return-void

    :cond_4
    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_2

    :try_start_5
    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/g/l;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Server Error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/g/l;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method protected final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    const-string v0, "DownloadAdResource"

    return-object v0
.end method
