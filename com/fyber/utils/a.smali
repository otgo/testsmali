.class public abstract Lcom/fyber/utils/a;
.super Ljava/lang/Object;
.source "AbstractHttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/utils/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fyber/utils/a",
        "<TT;TV;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static i:Ljava/net/CookieStore;


# instance fields
.field protected a:Ljava/net/URL;

.field protected b:Z

.field protected c:I

.field protected d:Ljava/util/Map;
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

.field protected e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field protected f:Z

.field protected g:Z

.field protected h:Z

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fyber/utils/a",
            "<TT;TV;>.a;>;"
        }
    .end annotation
.end field


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

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/utils/a;->b:Z

    .line 55
    iput-boolean v1, p0, Lcom/fyber/utils/a;->f:Z

    .line 56
    iput-boolean v1, p0, Lcom/fyber/utils/a;->g:Z

    .line 57
    iput-boolean v1, p0, Lcom/fyber/utils/a;->h:Z

    .line 60
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/net/Uri;->isRelative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 64
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/fyber/utils/a;->a:Ljava/net/URL;

    .line 65
    return-void
.end method

.method public static a(Ljava/net/CookieStore;)V
    .locals 0

    .prologue
    .line 43
    sput-object p0, Lcom/fyber/utils/a;->i:Ljava/net/CookieStore;

    .line 44
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 202
    iget-object v0, p0, Lcom/fyber/utils/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 203
    if-eqz v0, :cond_2

    .line 204
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

    .line 206
    :try_start_0
    invoke-static {v0}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 207
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 208
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    iget-object v3, p0, Lcom/fyber/utils/a;->a:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    .line 211
    :cond_1
    sget-object v3, Lcom/fyber/utils/a;->i:Ljava/net/CookieStore;

    iget-object v4, p0, Lcom/fyber/utils/a;->a:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    const-string v2, "AbstractHttpConnection"

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_2
    return-void
.end method

.method protected static b(Ljava/net/HttpURLConnection;)V
    .locals 0

    .prologue
    .line 122
    if-eqz p0, :cond_0

    .line 123
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 125
    :cond_0
    return-void
.end method

.method public static d()Ljava/util/Map;
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
    .line 166
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 167
    invoke-static {}, Lcom/fyber/user/User;->mapToString()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    const-string v0, ""

    .line 171
    :cond_0
    const-string v2, "X-User-Data"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-object v1
.end method

.method private declared-synchronized e()V
    .locals 2

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/fyber/utils/a;->i:Ljava/net/CookieStore;

    if-eqz v0, :cond_0

    .line 194
    sget-object v1, Lcom/fyber/utils/a;->i:Ljava/net/CookieStore;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 195
    :try_start_1
    const-string v0, "Set-Cookie"

    invoke-direct {p0, v0}, Lcom/fyber/utils/a;->b(Ljava/lang/String;)V

    .line 196
    const-string v0, "Set-Cookie2"

    invoke-direct {p0, v0}, Lcom/fyber/utils/a;->b(Ljava/lang/String;)V

    .line 197
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :cond_0
    monitor-exit p0

    return-void

    .line 197
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

    .line 193
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Lcom/fyber/utils/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fyber/utils/a;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 78
    iget-object v1, p0, Lcom/fyber/utils/a;->j:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/fyber/utils/a;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/utils/a$a;

    .line 80
    iget-object v3, v1, Lcom/fyber/utils/a$a;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/fyber/utils/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-boolean v1, p0, Lcom/fyber/utils/a;->g:Z

    if-eqz v1, :cond_1

    .line 87
    invoke-static {}, Lcom/fyber/user/User;->mapToString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    const-string v2, "X-User-Data"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_1
    iget-boolean v1, p0, Lcom/fyber/utils/a;->f:Z

    if-eqz v1, :cond_3

    .line 1177
    sget-object v1, Lcom/fyber/utils/a;->i:Ljava/net/CookieStore;

    if-eqz v1, :cond_3

    .line 1178
    sget-object v2, Lcom/fyber/utils/a;->i:Ljava/net/CookieStore;

    monitor-enter v2

    .line 1180
    :try_start_0
    sget-object v1, Lcom/fyber/utils/a;->i:Ljava/net/CookieStore;

    iget-object v3, p0, Lcom/fyber/utils/a;->a:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v1

    .line 1181
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1182
    const-string v3, "Cookie"

    const-string v4, ";"

    .line 1183
    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 1182
    invoke-virtual {v0, v3, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1188
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Lcom/fyber/utils/a;->c:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 103
    :goto_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/fyber/utils/a;->d:Ljava/util/Map;

    .line 105
    invoke-virtual {p0, v0}, Lcom/fyber/utils/a;->a(Ljava/net/HttpURLConnection;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/fyber/utils/a;->e:Ljava/lang/Object;

    .line 107
    iget-boolean v1, p0, Lcom/fyber/utils/a;->f:Z

    if-eqz v1, :cond_4

    .line 108
    invoke-direct {p0}, Lcom/fyber/utils/a;->e()V

    .line 111
    :cond_4
    iget-boolean v1, p0, Lcom/fyber/utils/a;->h:Z

    if-eqz v1, :cond_5

    .line 112
    invoke-static {v0}, Lcom/fyber/utils/a;->b(Ljava/net/HttpURLConnection;)V

    .line 115
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/utils/a;->b:Z

    .line 116
    return-object p0

    .line 1185
    :catch_0
    move-exception v1

    .line 1186
    :try_start_3
    const-string v3, "AbstractHttpConnection"

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1188
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 99
    :catch_1
    move-exception v1

    .line 100
    const-string v2, "AbstractHttpConnection"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Lcom/fyber/utils/a;->c:I

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fyber/utils/a;->j:Ljava/util/List;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fyber/utils/a;->j:Ljava/util/List;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/fyber/utils/a;->j:Ljava/util/List;

    new-instance v1, Lcom/fyber/utils/a$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/fyber/utils/a$a;-><init>(Lcom/fyber/utils/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    return-object p0
.end method

.method protected abstract a(Ljava/net/HttpURLConnection;)Ljava/lang/Object;
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

.method public final a(Ljava/lang/String;)Ljava/util/List;
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
    .line 145
    iget-boolean v0, p0, Lcom/fyber/utils/a;->b:Z

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The connection has not been opened yet."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/fyber/utils/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final b()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/fyber/utils/a;->b:Z

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The connection has not been opened yet."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    iget v0, p0, Lcom/fyber/utils/a;->c:I

    return v0
.end method

.method protected c(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    .line 132
    :catch_0
    move-exception v0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()Ljava/lang/Object;
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
    .line 159
    iget-boolean v0, p0, Lcom/fyber/utils/a;->b:Z

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The connection has not been opened yet."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/fyber/utils/a;->e:Ljava/lang/Object;

    return-object v0
.end method
