.class public abstract Lcom/sponsorpay/utils/AbstractHttpConnection;
.super Ljava/lang/Object;
.source "AbstractHttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sponsorpay/utils/AbstractHttpConnection$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static a:Ljava/net/CookieStore;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sponsorpay/utils/AbstractHttpConnection",
            "<TV;>.a;>;"
        }
    .end annotation
.end field

.field protected mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mOpen:Z

.field protected mResponseCode:I

.field protected mReturnObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field protected mShouldAddCookies:Z

.field protected mShouldAddSegments:Z

.field protected mShouldCloseConnection:Z

.field protected mUrl:Ljava/net/URL;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mOpen:Z

    .line 52
    iput-boolean v1, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mShouldAddCookies:Z

    .line 53
    iput-boolean v1, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mShouldAddSegments:Z

    .line 54
    iput-boolean v1, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mShouldCloseConnection:Z

    .line 57
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/net/Uri;->isRelative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 61
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mUrl:Ljava/net/URL;

    .line 62
    return-void
.end method

.method private declared-synchronized a()V
    .locals 2

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sponsorpay/utils/AbstractHttpConnection;->a:Ljava/net/CookieStore;

    if-eqz v0, :cond_0

    .line 186
    sget-object v1, Lcom/sponsorpay/utils/AbstractHttpConnection;->a:Ljava/net/CookieStore;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 187
    :try_start_1
    const-string v0, "Set-Cookie"

    invoke-direct {p0, v0}, Lcom/sponsorpay/utils/AbstractHttpConnection;->a(Ljava/lang/String;)V

    .line 188
    const-string v0, "Set-Cookie2"

    invoke-direct {p0, v0}, Lcom/sponsorpay/utils/AbstractHttpConnection;->a(Ljava/lang/String;)V

    .line 189
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :cond_0
    monitor-exit p0

    return-void

    .line 189
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 185
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 195
    if-eqz v0, :cond_2

    .line 196
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    :try_start_0
    invoke-static {v0}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 199
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 200
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    iget-object v3, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mUrl:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    .line 203
    :cond_1
    sget-object v3, Lcom/sponsorpay/utils/AbstractHttpConnection;->a:Ljava/net/CookieStore;

    iget-object v4, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mUrl:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    const-string v2, "SPHttpConnectionAbstract"

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_2
    return-void
.end method

.method public static createUserSegmentationMapForHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 159
    invoke-static {}, Lcom/sponsorpay/user/SPUser;->mapToString()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    const-string v0, ""

    .line 163
    :cond_0
    const-string v2, "X-User-Data"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-object v1
.end method

.method public static setCookieStore(Ljava/net/CookieStore;)V
    .locals 0

    .prologue
    .line 40
    sput-object p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->a:Ljava/net/CookieStore;

    .line 41
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/utils/AbstractHttpConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sponsorpay/utils/AbstractHttpConnection",
            "<TV;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->b:Ljava/util/List;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->b:Ljava/util/List;

    new-instance v1, Lcom/sponsorpay/utils/AbstractHttpConnection$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/sponsorpay/utils/AbstractHttpConnection$a;-><init>(Lcom/sponsorpay/utils/AbstractHttpConnection;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-object p0
.end method

.method protected closeConnection(Ljava/net/HttpURLConnection;)V
    .locals 0

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 117
    :cond_0
    return-void
.end method

.method public getHeader(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mOpen:Z

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The connection has not been opened yet."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mOpen:Z

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The connection has not been opened yet."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method protected getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    .line 124
    :catch_0
    move-exception v0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getResponseCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mOpen:Z

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The connection has not been opened yet."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    iget v0, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mResponseCode:I

    return v0
.end method

.method public getReturnObject()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mOpen:Z

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The connection has not been opened yet."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mReturnObject:Ljava/lang/Object;

    return-object v0
.end method

.method public open()Lcom/sponsorpay/utils/AbstractHttpConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sponsorpay/utils/AbstractHttpConnection",
            "<TV;>;>()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 75
    iget-object v1, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sponsorpay/utils/AbstractHttpConnection$a;

    .line 77
    iget-object v3, v1, Lcom/sponsorpay/utils/AbstractHttpConnection$a;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/sponsorpay/utils/AbstractHttpConnection$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-boolean v1, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mShouldAddSegments:Z

    if-eqz v1, :cond_1

    .line 84
    invoke-static {}, Lcom/sponsorpay/user/SPUser;->mapToString()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    const-string v2, "X-User-Data"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_1
    iget-boolean v1, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mShouldAddCookies:Z

    if-eqz v1, :cond_3

    .line 91
    sget-object v1, Lcom/sponsorpay/utils/AbstractHttpConnection;->a:Ljava/net/CookieStore;

    if-eqz v1, :cond_3

    sget-object v2, Lcom/sponsorpay/utils/AbstractHttpConnection;->a:Ljava/net/CookieStore;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/sponsorpay/utils/AbstractHttpConnection;->a:Ljava/net/CookieStore;

    iget-object v3, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mUrl:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "Cookie"

    const-string v4, ";"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mResponseCode:I

    .line 95
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mHeaders:Ljava/util/Map;

    .line 97
    invoke-virtual {p0, v0}, Lcom/sponsorpay/utils/AbstractHttpConnection;->processConnection(Ljava/net/HttpURLConnection;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mReturnObject:Ljava/lang/Object;

    .line 99
    iget-boolean v1, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mShouldAddCookies:Z

    if-eqz v1, :cond_4

    .line 100
    invoke-direct {p0}, Lcom/sponsorpay/utils/AbstractHttpConnection;->a()V

    .line 103
    :cond_4
    iget-boolean v1, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mShouldCloseConnection:Z

    if-eqz v1, :cond_5

    .line 104
    invoke-virtual {p0, v0}, Lcom/sponsorpay/utils/AbstractHttpConnection;->closeConnection(Ljava/net/HttpURLConnection;)V

    .line 107
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/utils/AbstractHttpConnection;->mOpen:Z

    .line 108
    return-object p0

    .line 91
    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "SPHttpConnectionAbstract"

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected abstract processConnection(Ljava/net/HttpURLConnection;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
