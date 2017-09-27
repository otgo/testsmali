.class public final Lcom/purplebrain/adbuddiz/sdk/i/m;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/m;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/purplebrain/adbuddiz/sdk/f/a/e;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ABZ_31_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;Lcom/purplebrain/adbuddiz/sdk/f/a/e;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ABZ_31_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".abz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/e;Z)Ljava/util/List;
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez p2, :cond_0

    if-nez p2, :cond_1

    const-string v6, "_tmp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    invoke-virtual {p0, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/io/InputStream;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V
    .locals 2

    :try_start_0
    invoke-static {p2}, Lcom/purplebrain/adbuddiz/sdk/i/m;->c(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/s;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-static {p2}, Lcom/purplebrain/adbuddiz/sdk/i/m;->c(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p2}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "writeAdResource() IOException"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2}, Lcom/purplebrain/adbuddiz/sdk/i/m;->c(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-static {p2}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ABZ_31_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".abz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/purplebrain/adbuddiz/sdk/i/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    iget-boolean v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "ABZ_31_"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->e()Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    move-result-object v1

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V
    .locals 4

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    :cond_0
    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v1, Lcom/purplebrain/adbuddiz/sdk/i/m;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "writeConfig() IOException"

    invoke-static {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/io/InputStream;
    .locals 1

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ABZ_31_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".abz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/i/m;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/m;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ABZ_31_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".abz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public static declared-synchronized e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const-class v2, Lcom/purplebrain/adbuddiz/sdk/i/m;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/i/s;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
