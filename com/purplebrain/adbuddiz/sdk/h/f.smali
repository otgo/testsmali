.class public final Lcom/purplebrain/adbuddiz/sdk/h/f;
.super Lcom/purplebrain/adbuddiz/sdk/h/a;


# instance fields
.field public e:Ljava/net/URL;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/h/a;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->b:I

    return-void
.end method


# virtual methods
.method protected final c()V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/f;->e:Ljava/net/URL;

    const-string v2, "GET"

    invoke-static {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/h/b;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_3

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/f;->f:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/f;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ABZ_31_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_tmp.abz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/purplebrain/adbuddiz/sdk/i/s;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "writeAsset() IOException"

    invoke-static {v3, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    invoke-virtual {v2, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v0

    :cond_3
    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_0

    :try_start_3
    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/h/k;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Server Error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/k;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    const-string v0, "DownloadAsset"

    return-object v0
.end method
