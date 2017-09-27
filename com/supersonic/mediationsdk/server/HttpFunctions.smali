.class public Lcom/supersonic/mediationsdk/server/HttpFunctions;
.super Ljava/lang/Object;
.source "HttpFunctions.java"


# static fields
.field private static final SERVER_REQUEST_TIMEOUT:I = 0x3a98


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStringFromPost(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 56
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 57
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 58
    .local v3, "httpost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    const-string v7, "UTF-8"

    invoke-direct {v5, p1, v7}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .local v5, "se":Lorg/apache/http/entity/StringEntity;
    invoke-virtual {v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 61
    const-string v7, "Accept"

    const-string v8, "application/json"

    invoke-virtual {v3, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v7, "Content-type"

    const-string v8, "application/json"

    invoke-virtual {v3, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 66
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 67
    .local v1, "code":I
    const/16 v7, 0xc8

    if-ne v1, v7, :cond_0

    .line 68
    const/4 v6, 0x1

    .line 73
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v1    # "code":I
    .end local v3    # "httpost":Lorg/apache/http/client/methods/HttpPost;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "se":Lorg/apache/http/entity/StringEntity;
    :cond_0
    :goto_0
    return v6

    .line 71
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getStringFromPostWithAutho(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 79
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 80
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 82
    .local v4, "httpost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v6, Lorg/apache/http/entity/StringEntity;

    const-string v8, "UTF-8"

    invoke-direct {v6, p1, v8}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .local v6, "se":Lorg/apache/http/entity/StringEntity;
    invoke-virtual {v4, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 85
    invoke-static {p2, p3}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getBase64Auth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "authorizationString":Ljava/lang/String;
    const-string v8, "Authorization"

    invoke-virtual {v4, v8, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 92
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 93
    .local v2, "code":I
    const/16 v8, 0xc8

    if-ne v2, v8, :cond_0

    .line 94
    const/4 v7, 0x1

    .line 99
    .end local v0    # "authorizationString":Ljava/lang/String;
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "code":I
    .end local v4    # "httpost":Lorg/apache/http/client/methods/HttpPost;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "se":Lorg/apache/http/entity/StringEntity;
    :cond_0
    :goto_0
    return v7

    .line 97
    :catch_0
    move-exception v3

    .line 99
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getStringFromURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "link"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    const/4 v4, 0x0

    .line 33
    .local v4, "retVal":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 34
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 35
    .local v2, "request":Lorg/apache/http/client/methods/HttpGet;
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 37
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 39
    .local v1, "p":Lorg/apache/http/params/HttpParams;
    const-string v5, "http.socket.timeout"

    const/16 v6, 0x3a98

    invoke-interface {v1, v5, v6}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 41
    const/4 v3, 0x0

    .line 42
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 43
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 47
    const/4 v4, 0x0

    .line 50
    .end local v4    # "retVal":Ljava/lang/String;
    :cond_0
    return-object v4
.end method
