.class public final Lcom/purplebrain/adbuddiz/sdk/g/g;
.super Lcom/purplebrain/adbuddiz/sdk/g/a;


# instance fields
.field public c:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

.field public d:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

.field public e:Ljava/lang/String;

.field public f:Lcom/purplebrain/adbuddiz/sdk/e/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/g/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/g;->e:Ljava/lang/String;

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

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/g/g;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ABRequestEventReport.setReason()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final b()V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    iget-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->f:J

    new-instance v0, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://sdk.adbuddiz.com/sdk/android/v3/eventReport/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "a"

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/g/a/b;

    invoke-direct {v5}, Lcom/purplebrain/adbuddiz/sdk/g/a/b;-><init>()V

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/g/a/b;->a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/g/a/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/g/a/a;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "d"

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/g/a/d;

    invoke-direct {v5}, Lcom/purplebrain/adbuddiz/sdk/g/a/d;-><init>()V

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/g/a/d;->a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/g/a/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "s"

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/g/a/h;

    invoke-direct {v5}, Lcom/purplebrain/adbuddiz/sdk/g/a/h;-><init>()V

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/g/a/h;->a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/g/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/g/a/g;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "e"

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/g/g;->c:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    invoke-virtual {v4}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/g;->d:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    if-eqz v2, :cond_0

    const-string v2, "i"

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/g/g;->d:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    invoke-virtual {v4}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/g;->e:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/g;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "r"

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/g/g;->e:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v2, "erc"

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/g/g;->f:Lcom/purplebrain/adbuddiz/sdk/e/d;

    iget-object v4, v4, Lcom/purplebrain/adbuddiz/sdk/e/d;->b:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "p"

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/g/g;->f:Lcom/purplebrain/adbuddiz/sdk/e/d;

    iget-object v4, v4, Lcom/purplebrain/adbuddiz/sdk/e/d;->a:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "or"

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/e/f;

    move-result-object v4

    iget-object v4, v4, Lcom/purplebrain/adbuddiz/sdk/e/f;->d:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/g/g;->b(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_3

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-void
.end method

.method protected final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    const-string v0, "EventReport"

    return-object v0
.end method
