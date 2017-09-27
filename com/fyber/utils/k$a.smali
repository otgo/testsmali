.class public final Lcom/fyber/utils/k$a;
.super Ljava/lang/Object;
.source "HttpConnectionFiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/utils/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/utils/k$a$b;,
        Lcom/fyber/utils/k$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/utils/k;

.field private b:Z

.field private c:Ljava/io/InputStream;

.field private final d:Ljava/net/HttpURLConnection;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/fyber/utils/k;Ljava/net/HttpURLConnection;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 72
    iput-object p1, p0, Lcom/fyber/utils/k$a;->a:Lcom/fyber/utils/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/utils/k$a;->b:Z

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/utils/k$a;->c:Ljava/io/InputStream;

    .line 70
    iput-boolean v1, p0, Lcom/fyber/utils/k$a;->e:Z

    .line 73
    iput-object p2, p0, Lcom/fyber/utils/k$a;->d:Ljava/net/HttpURLConnection;

    .line 75
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/fyber/utils/k;->c(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/utils/k$a;->c:Ljava/io/InputStream;

    .line 76
    iget-object v0, p0, Lcom/fyber/utils/k$a;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/utils/k$a;->b:Z

    .line 86
    :goto_0
    return-void

    .line 79
    :cond_0
    const-string v0, "HttpConnectionFiles"

    const-string v1, "There was an error, the file will not be saved locally"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {p2}, Lcom/fyber/utils/k;->b(Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    const-string v0, "HttpConnectionFiles"

    const-string v1, "An error occurred. Aborting file save operation"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/utils/k$a$a;,
            Lcom/fyber/utils/k$a$b;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 89
    .line 90
    iget-boolean v0, p0, Lcom/fyber/utils/k$a;->b:Z

    if-eqz v0, :cond_5

    .line 91
    iget-object v0, p0, Lcom/fyber/utils/k$a;->a:Lcom/fyber/utils/k;

    invoke-static {v0}, Lcom/fyber/utils/k;->a(Lcom/fyber/utils/k;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/fyber/utils/k$a;->a:Lcom/fyber/utils/k;

    const-string v3, "Content-Length"

    invoke-virtual {v0, v3}, Lcom/fyber/utils/k;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 96
    iget-object v0, p0, Lcom/fyber/utils/k$a;->a:Lcom/fyber/utils/k;

    invoke-static {v0}, Lcom/fyber/utils/k;->a(Lcom/fyber/utils/k;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-gez v0, :cond_0

    .line 97
    new-instance v0, Lcom/fyber/utils/k$a$a;

    invoke-direct {v0, p0}, Lcom/fyber/utils/k$a$a;-><init>(Lcom/fyber/utils/k$a;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :catch_0
    move-exception v0

    .line 121
    :try_start_1
    const-string v2, "HttpConnectionFiles"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "File downloading from URL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fyber/utils/k$a;->a:Lcom/fyber/utils/k;

    iget-object v4, v4, Lcom/fyber/utils/k;->a:Ljava/net/URL;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has been interrupted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v2, "HttpConnectionFiles"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An error occurred while downloading: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    iget-object v0, p0, Lcom/fyber/utils/k$a;->d:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/fyber/utils/k;->b(Ljava/net/HttpURLConnection;)V

    move v0, v1

    .line 128
    :goto_0
    return v0

    .line 100
    :cond_0
    :try_start_2
    const-string v0, "HttpConnectionFiles"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Download: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fyber/utils/k$a;->a:Lcom/fyber/utils/k;

    iget-object v4, v4, Lcom/fyber/utils/k;->a:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to local file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fyber/utils/k$a;->a:Lcom/fyber/utils/k;

    invoke-static {v4}, Lcom/fyber/utils/k;->a(Lcom/fyber/utils/k;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v0, p0, Lcom/fyber/utils/k$a;->c:Ljava/io/InputStream;

    const/16 v4, 0x400

    invoke-direct {v3, v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 102
    iget-object v0, p0, Lcom/fyber/utils/k$a;->a:Lcom/fyber/utils/k;

    invoke-static {v0}, Lcom/fyber/utils/k;->b(Lcom/fyber/utils/k;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1143
    iget-object v0, p0, Lcom/fyber/utils/k$a;->a:Lcom/fyber/utils/k;

    iget v0, v0, Lcom/fyber/utils/k;->c:I

    const/16 v4, 0xce

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/fyber/utils/k$a;->a:Lcom/fyber/utils/k;

    iget-object v0, v0, Lcom/fyber/utils/k;->d:Ljava/util/Map;

    const-string v4, "Content-Range"

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    .line 102
    :goto_1
    if-eqz v0, :cond_3

    move v0, v2

    .line 103
    :goto_2
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/fyber/utils/k$a;->a:Lcom/fyber/utils/k;

    invoke-static {v4}, Lcom/fyber/utils/k;->a(Lcom/fyber/utils/k;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 105
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 107
    :goto_3
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_4

    iget-boolean v5, p0, Lcom/fyber/utils/k$a;->e:Z

    if-eqz v5, :cond_4

    .line 108
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 125
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/fyber/utils/k$a;->d:Ljava/net/HttpURLConnection;

    invoke-static {v1}, Lcom/fyber/utils/k;->b(Ljava/net/HttpURLConnection;)V

    throw v0

    :cond_2
    move v0, v1

    .line 1143
    goto :goto_1

    :cond_3
    move v0, v1

    .line 102
    goto :goto_2

    .line 113
    :cond_4
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 114
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 116
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 117
    iget-boolean v0, p0, Lcom/fyber/utils/k$a;->e:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    iget-object v1, p0, Lcom/fyber/utils/k$a;->d:Ljava/net/HttpURLConnection;

    invoke-static {v1}, Lcom/fyber/utils/k;->b(Ljava/net/HttpURLConnection;)V

    goto/16 :goto_0

    .line 133
    :cond_5
    new-instance v0, Lcom/fyber/utils/k$a$b;

    invoke-direct {v0, p0}, Lcom/fyber/utils/k$a$b;-><init>(Lcom/fyber/utils/k$a;)V

    throw v0

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/utils/k$a;->e:Z

    .line 140
    return-void
.end method
