.class public final Lcom/purplebrain/adbuddiz/sdk/h/g;
.super Lcom/purplebrain/adbuddiz/sdk/h/a;


# instance fields
.field public e:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

.field public f:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

.field public g:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

.field public h:Ljava/lang/String;

.field public i:Lcom/purplebrain/adbuddiz/sdk/f/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/h/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;)V
    .locals 1

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/h/g;->e:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/g;->f:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/g;->h:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/h/g;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ABRequestEventReport.setReason()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final c()V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/w;->f()Ljava/net/URL;

    move-result-object v0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "a"

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/h/a/a$a;

    invoke-direct {v5}, Lcom/purplebrain/adbuddiz/sdk/h/a/a$a;-><init>()V

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/h/a/a$a;->a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/h/a/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/h/a/a;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "d"

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/h/a/b$a;

    invoke-direct {v5}, Lcom/purplebrain/adbuddiz/sdk/h/a/b$a;-><init>()V

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/h/a/b$a;->a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/h/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "s"

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/h/a/d$a;

    invoke-direct {v5}, Lcom/purplebrain/adbuddiz/sdk/h/a/d$a;-><init>()V

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/h/a/d$a;->a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/h/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/h/a/d;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/g;->e:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    if-eqz v2, :cond_0

    const-string v2, "e"

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/h/g;->e:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    invoke-virtual {v4}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/g;->f:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    if-eqz v2, :cond_1

    const-string v2, "e"

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/h/g;->f:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    invoke-virtual {v4}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/g;->g:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    if-eqz v2, :cond_2

    const-string v2, "i"

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/h/g;->g:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-virtual {v4}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "in"

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/h/g;->g:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iget-boolean v4, v4, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b:Z

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_2
    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/g;->h:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/g;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "r"

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/h/g;->h:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v2, "erc"

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/h/g;->i:Lcom/purplebrain/adbuddiz/sdk/f/d;

    iget-object v4, v4, Lcom/purplebrain/adbuddiz/sdk/f/d;->b:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "p"

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/h/g;->i:Lcom/purplebrain/adbuddiz/sdk/f/d;

    iget-object v4, v4, Lcom/purplebrain/adbuddiz/sdk/f/d;->a:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "or"

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v4

    iget-object v4, v4, Lcom/purplebrain/adbuddiz/sdk/f/e;->d:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/purplebrain/adbuddiz/sdk/h/g;->b(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_5

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v0

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return-void
.end method

.method protected final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    const-string v0, "EventReport"

    return-object v0
.end method
