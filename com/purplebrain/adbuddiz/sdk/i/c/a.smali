.class public final Lcom/purplebrain/adbuddiz/sdk/i/c/a;
.super Lcom/purplebrain/adbuddiz/sdk/g/a;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;)V
    .locals 0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/g/a;-><init>()V

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/a;->d:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/a;->d:Ljava/net/URL;

    const-string v2, "GET"

    invoke-static {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/g/a;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0x194

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_1

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

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    throw v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-void
.end method

.method protected final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ABVASTTrackingRequest-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ABVASTTrackingRequest"

    goto :goto_0
.end method
