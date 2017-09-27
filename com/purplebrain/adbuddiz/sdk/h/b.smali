.class public abstract Lcom/purplebrain/adbuddiz/sdk/h/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/h/b$a;
    }
.end annotation


# static fields
.field private static g:Ljava/util/concurrent/ExecutorService;

.field private static h:Ljava/util/concurrent/ExecutorService;


# instance fields
.field protected a:I

.field b:I

.field public c:Z

.field protected d:Lcom/purplebrain/adbuddiz/sdk/h/b$a;

.field private e:Z

.field private f:Lcom/purplebrain/adbuddiz/sdk/h/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->a:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->b:I

    iput-boolean v1, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->e:Z

    iput-boolean v1, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/h;

    return-void
.end method

.method public static a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4

    const/16 v2, 0x3a98

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object v0
.end method

.method public static h()V
    .locals 2

    const-class v1, Lcom/purplebrain/adbuddiz/sdk/h/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/b;->g:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/b;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/h/b;->g:Ljava/util/concurrent/ExecutorService;

    :cond_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/b;->h:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/b;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/h/b;->h:Ljava/util/concurrent/ExecutorService;

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static i()Ljava/util/concurrent/ExecutorService;
    .locals 2

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/b;->g:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/b;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const-class v1, Lcom/purplebrain/adbuddiz/sdk/h/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/b;->g:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/b;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/h/b;->g:Ljava/util/concurrent/ExecutorService;

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/b;->g:Ljava/util/concurrent/ExecutorService;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static j()Ljava/util/concurrent/ExecutorService;
    .locals 2

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/b;->h:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/b;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const-class v1, Lcom/purplebrain/adbuddiz/sdk/h/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/b;->h:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/b;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/h/b;->h:Ljava/util/concurrent/ExecutorService;

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/b;->h:Ljava/util/concurrent/ExecutorService;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->a:I

    return v0
.end method

.method protected final a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 4

    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/h;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/purplebrain/adbuddiz/sdk/h/h;->e:J

    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    const-string v1, "Content-Encoding"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gzip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/h/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->d:Lcom/purplebrain/adbuddiz/sdk/h/b$a;

    return-void
.end method

.method final a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/h;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/h/h;->d:J

    const-string v0, "Content-Type"

    const-string v1, "application/json; charset=utf-8"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method protected a(Z)V
    .locals 6

    const/16 v0, 0x7530

    const v3, 0x36ee80

    const v2, 0xdbba0

    const v1, 0xea60

    :try_start_0
    iget v4, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->a:I

    iget v5, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->b:I

    if-ge v4, v5, :cond_2

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0x36ee80

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v3

    :goto_0
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request sleeps "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms before #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->a:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " try : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;)V

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/h/b;->f()V

    :cond_0
    :goto_1
    return-void

    :pswitch_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x7530

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v2, 0xea60

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0xdbba0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->a:I

    packed-switch v4, :pswitch_data_1

    move v0, v3

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x3e8

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xbb8

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x1b58

    goto/16 :goto_0

    :pswitch_8
    move v0, v1

    goto/16 :goto_0

    :pswitch_9
    move v0, v2

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->d:Lcom/purplebrain/adbuddiz/sdk/h/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->d:Lcom/purplebrain/adbuddiz/sdk/h/b$a;

    invoke-interface {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/h/b$a;->a(Lcom/purplebrain/adbuddiz/sdk/h/b;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected final b(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/h/b;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/s;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1

    const-string v0, "POST"

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/b;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/purplebrain/adbuddiz/sdk/h/b;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->e:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract c()V
.end method

.method public abstract d()Z
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public final f()V
    .locals 1

    iget v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->a:I

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/h/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/b;->j()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/b;->i()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_1
.end method

.method public final g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->e:Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/h/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request Canceled : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/h/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "LaunchRequest : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/h/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/h/h;

    invoke-direct {v3}, Lcom/purplebrain/adbuddiz/sdk/h/h;-><init>()V

    iput-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/h;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/h;

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/h/b;->e()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/purplebrain/adbuddiz/sdk/h/h;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/purplebrain/adbuddiz/sdk/h/h;->b:J

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/h;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/a/i;->b(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/purplebrain/adbuddiz/sdk/h/h;->f:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/h;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/a/i;->c(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/purplebrain/adbuddiz/sdk/h/h;->g:Ljava/lang/Integer;

    :cond_2
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/h/b;->c()V

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/h;

    iget-wide v6, v6, Lcom/purplebrain/adbuddiz/sdk/h/h;->b:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/purplebrain/adbuddiz/sdk/h/h;->c:J

    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->c:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/h;
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/h/k; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/b/e;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/h/h;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "r"

    invoke-static {v0, v3, v4}, Lcom/purplebrain/adbuddiz/sdk/i/b/d;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/purplebrain/adbuddiz/sdk/h/k; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/h/b;->b()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Request Ok : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/h/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/purplebrain/adbuddiz/sdk/h/k; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    move v0, v1

    move v1, v2

    :goto_3
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/h/b;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request canceled before #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " try : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Request Canceled : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/h/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/purplebrain/adbuddiz/sdk/h/k; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AdBuddizServerException : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/h/k;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    move v0, v2

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No network available (UnknownHostException) : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/h/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_3

    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No network available (ConnectException) : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/h/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_3

    :catch_3
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No network available (SocketTimeoutException) : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/h/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_3

    :catch_4
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error with HTTPS, fallback to HTTP: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/h/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_3

    :catch_5
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in Request : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/h/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_3

    :catch_6
    move-exception v0

    const-string v2, "ABGenericRequest.run"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Throwable thrown in Request : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/h/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/h/b;->a(Z)V

    goto/16 :goto_0

    :catch_7
    move-exception v0

    goto/16 :goto_1
.end method
