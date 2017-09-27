.class public final Lcom/purplebrain/adbuddiz/sdk/h/e;
.super Lcom/purplebrain/adbuddiz/sdk/h/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/h/e$a;
    }
.end annotation


# instance fields
.field public e:Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

.field public f:Lcom/purplebrain/adbuddiz/sdk/h/e$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/h/b;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/e;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/e;->f:Lcom/purplebrain/adbuddiz/sdk/h/e$a;

    return-void
.end method


# virtual methods
.method protected final c()V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/e;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->d()Ljava/net/URL;

    move-result-object v0

    const-string v2, "GET"

    invoke-static {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/h/b;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/e;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/h/e;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    invoke-static {v0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Landroid/content/Context;Ljava/io/InputStream;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/e;->f:Lcom/purplebrain/adbuddiz/sdk/h/e$a;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h/e;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    invoke-interface {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/h/e$a;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-void

    :cond_2
    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_0

    :try_start_1
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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0
.end method

.method protected final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    const-string v0, "DownloadAdResource"

    return-object v0
.end method
