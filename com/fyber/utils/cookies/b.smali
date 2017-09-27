.class public final Lcom/fyber/utils/cookies/b;
.super Ljava/lang/Object;
.source "PersistentHttpCookieStore.java"

# interfaces
.implements Ljava/net/CookieStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/utils/cookies/b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v1, "FyberCookiePrefsFile"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/fyber/utils/cookies/b;->b:Landroid/content/SharedPreferences;

    .line 55
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/fyber/utils/cookies/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    iget-object v1, p0, Lcom/fyber/utils/cookies/b;->b:Landroid/content/SharedPreferences;

    const-string v2, "names"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    const-string v2, ","

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 61
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 62
    iget-object v4, p0, Lcom/fyber/utils/cookies/b;->b:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cookie_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-static {v4}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 64
    invoke-direct {p0, v4}, Lcom/fyber/utils/cookies/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 65
    iget-object v5, p0, Lcom/fyber/utils/cookies/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_1
    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 103
    new-instance v3, Lcom/fyber/utils/cookies/ParcelableHttpCookie;

    invoke-direct {v3, v0}, Lcom/fyber/utils/cookies/ParcelableHttpCookie;-><init>(Ljava/net/HttpCookie;)V

    .line 2020
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2021
    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2022
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 1224
    invoke-static {v0}, Lcom/fyber/utils/cookies/b;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 108
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 264
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-byte v3, p0, v0

    .line 265
    and-int/lit16 v3, v3, 0xff

    .line 266
    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .line 267
    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/net/URI;)Ljava/net/URI;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 294
    if-nez p0, :cond_0

    move-object p0, v0

    .line 301
    :goto_0
    return-object p0

    .line 299
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 93
    const-string v0, ","

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 94
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 95
    invoke-direct {p0, v4}, Lcom/fyber/utils/cookies/b;->b(Ljava/lang/String;)Ljava/net/HttpCookie;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-object v1
.end method

.method private b(Ljava/lang/String;)Ljava/net/HttpCookie;
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v1, 0x0

    .line 234
    .line 2281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2284
    div-int/lit8 v0, v2, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [B

    move v0, v1

    .line 2286
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2287
    div-int/lit8 v4, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v0, 0x1

    .line 2288
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 2286
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 236
    :cond_0
    sget-object v0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3027
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3028
    array-length v4, v3

    invoke-virtual {v2, v3, v1, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 3029
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3030
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .line 236
    check-cast v0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;

    invoke-virtual {v0}, Lcom/fyber/utils/cookies/ParcelableHttpCookie;->a()Ljava/net/HttpCookie;

    move-result-object v1

    .line 239
    if-nez v1, :cond_1

    .line 241
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 243
    :try_start_0
    new-instance v2, Lcom/fyber/utils/cookies/b$a;

    invoke-direct {v2, p0, v0}, Lcom/fyber/utils/cookies/b$a;-><init>(Lcom/fyber/utils/cookies/b;Ljava/io/InputStream;)V

    .line 244
    invoke-virtual {v2}, Lcom/fyber/utils/cookies/b$a;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/utils/cookies/c;

    .line 245
    invoke-virtual {v0}, Lcom/fyber/utils/cookies/c;->a()Ljava/net/HttpCookie;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 251
    :goto_1
    return-object v0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    :goto_2
    const-string v2, "PersistentHttpCookieStore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception in decodeCookie - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 246
    :catch_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public final add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    .locals 6

    .prologue
    .line 73
    invoke-static {p1}, Lcom/fyber/utils/cookies/b;->a(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    .line 75
    iget-object v0, p0, Lcom/fyber/utils/cookies/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 76
    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    iget-object v2, p0, Lcom/fyber/utils/cookies/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v2, p0, Lcom/fyber/utils/cookies/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "names"

    const-string v4, ","

    iget-object v5, p0, Lcom/fyber/utils/cookies/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cookie_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v0}, Lcom/fyber/utils/cookies/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    return-void

    .line 80
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final get(Ljava/net/URI;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 115
    iget-object v0, p0, Lcom/fyber/utils/cookies/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 117
    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/fyber/utils/cookies/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/fyber/utils/cookies/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/fyber/utils/cookies/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 133
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 137
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/HttpCookie;

    .line 138
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Ljava/net/HttpCookie;->domainMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 141
    invoke-virtual {v1}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 143
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 144
    :cond_5
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 145
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    :cond_6
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCookies()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    iget-object v0, p0, Lcom/fyber/utils/cookies/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 157
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/HttpCookie;

    .line 158
    invoke-virtual {v1}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 159
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 161
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getURIs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fyber/utils/cookies/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 171
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 172
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .locals 6

    .prologue
    .line 177
    invoke-static {p1}, Lcom/fyber/utils/cookies/b;->a(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    .line 179
    iget-object v0, p0, Lcom/fyber/utils/cookies/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 180
    if-eqz v0, :cond_2

    .line 181
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 182
    if-eqz v1, :cond_0

    .line 183
    iget-object v3, p0, Lcom/fyber/utils/cookies/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 184
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "cookie_"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    :goto_0
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    move v0, v1

    .line 193
    :goto_1
    return v0

    .line 187
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cookie_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/fyber/utils/cookies/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 193
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final removeAll()Z
    .locals 5

    .prologue
    .line 200
    iget-object v0, p0, Lcom/fyber/utils/cookies/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 201
    iget-object v0, p0, Lcom/fyber/utils/cookies/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cookie_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 204
    :cond_0
    const-string v0, "names"

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 205
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    iget-object v0, p0, Lcom/fyber/utils/cookies/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 209
    :goto_1
    iget-object v1, p0, Lcom/fyber/utils/cookies/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 210
    return v0

    .line 208
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
