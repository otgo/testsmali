.class public final Lcom/fyber/cache/internal/f;
.super Ljava/lang/Object;
.source "CacheStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/cache/internal/f$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/fyber/cache/internal/f;


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Z

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/cache/internal/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/fyber/cache/internal/f;

    invoke-direct {v0}, Lcom/fyber/cache/internal/f;-><init>()V

    sput-object v0, Lcom/fyber/cache/internal/f;->a:Lcom/fyber/cache/internal/f;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/cache/internal/f;->d:Z

    .line 42
    iput-object v1, p0, Lcom/fyber/cache/internal/f;->b:Ljava/io/File;

    .line 43
    iput-object v1, p0, Lcom/fyber/cache/internal/f;->c:Ljava/io/File;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1193
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1196
    new-instance v1, Ljava/io/File;

    const-string v2, "FyberVideoCache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1199
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1200
    const-string v0, "CacheStore"

    const-string v2, "The cache directory does not exist, creating..."

    invoke-static {v0, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 48
    :cond_0
    iput-object v1, p0, Lcom/fyber/cache/internal/f;->b:Ljava/io/File;

    .line 49
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FyberCacheStorage"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fyber/cache/internal/f;->c:Ljava/io/File;

    .line 50
    invoke-direct {p0}, Lcom/fyber/cache/internal/f;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fyber/cache/internal/f;->d:Z

    .line 51
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/cache/internal/c;

    .line 110
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/fyber/cache/internal/c;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 112
    invoke-direct {p0}, Lcom/fyber/cache/internal/f;->f()V

    .line 113
    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 55
    .line 2134
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/fyber/cache/internal/f;->c:Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2135
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2136
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    .line 2137
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 2138
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/fyber/cache/internal/f;->e()V

    .line 57
    iget-object v0, p0, Lcom/fyber/cache/internal/f;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/cache/internal/f;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 61
    :goto_1
    return v0

    .line 2140
    :catch_0
    move-exception v0

    :goto_2
    const-string v0, "CacheStore"

    const-string v2, "Cache storage file was not found, purging the local files..."

    invoke-static {v0, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    .line 2142
    invoke-direct {p0}, Lcom/fyber/cache/internal/f;->g()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 59
    :catch_1
    move-exception v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    move v0, v1

    .line 61
    goto :goto_1

    :cond_0
    move v0, v1

    .line 57
    goto :goto_1

    .line 2140
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 65
    .line 66
    iget-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/cache/internal/c;

    .line 67
    invoke-virtual {v0}, Lcom/fyber/cache/internal/c;->a()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 68
    const-string v1, "CacheStore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Local file for cache entry "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fyber/cache/internal/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was removed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, v2}, Lcom/fyber/cache/internal/c;->a(I)V

    .line 70
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    if-eqz v1, :cond_1

    .line 74
    const-string v0, "CacheStore"

    const-string v1, "Saving Cache file."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/fyber/cache/internal/f;->f()V

    .line 77
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private f()V
    .locals 3

    .prologue
    .line 119
    .line 3208
    iget-boolean v0, p0, Lcom/fyber/cache/internal/f;->d:Z

    .line 119
    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/fyber/cache/internal/f;->c:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 122
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 123
    iget-object v2, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 125
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string v1, "CacheStore"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fyber/cache/internal/f;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_0

    .line 151
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 152
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method

.method private h()Ljava/io/File;
    .locals 4

    .prologue
    .line 158
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/fyber/cache/internal/f;->b:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const-string v1, "CacheStore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video already exists in cache: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/fyber/cache/internal/f;->h()Ljava/io/File;

    move-result-object v0

    .line 165
    :cond_0
    const-string v1, "CacheStore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Save in file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/fyber/cache/internal/h;)Lcom/fyber/cache/internal/c;
    .locals 4

    .prologue
    .line 89
    .line 2208
    iget-boolean v0, p0, Lcom/fyber/cache/internal/f;->d:Z

    .line 89
    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/fyber/cache/internal/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/fyber/cache/internal/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/cache/internal/c;

    .line 99
    :goto_0
    invoke-virtual {v0, p1}, Lcom/fyber/cache/internal/c;->a(Lcom/fyber/cache/internal/h;)Z

    .line 100
    invoke-direct {p0}, Lcom/fyber/cache/internal/f;->f()V

    .line 101
    return-object v0

    .line 93
    :cond_0
    new-instance v0, Lcom/fyber/cache/internal/c;

    invoke-direct {p0}, Lcom/fyber/cache/internal/f;->h()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fyber/cache/internal/h;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/cache/internal/c;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    .line 94
    iget-object v1, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/fyber/cache/internal/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 97
    :cond_1
    new-instance v0, Lcom/fyber/cache/internal/c;

    invoke-direct {p0}, Lcom/fyber/cache/internal/f;->h()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fyber/cache/internal/h;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/cache/internal/c;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/fyber/cache/internal/c;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/cache/internal/c;

    return-object v0
.end method

.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/cache/internal/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 171
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 172
    const-string v0, "CacheStore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trimming cache to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slots"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/fyber/cache/internal/f;->b(I)V

    .line 175
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/fyber/cache/internal/f;->f()V

    .line 106
    return-void
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 178
    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    const-string v0, "CacheStore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Freeing up "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cache slots"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v1, Ljava/util/TreeSet;

    new-instance v0, Lcom/fyber/cache/internal/f$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/fyber/cache/internal/f$a;-><init>(B)V

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 181
    iget-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 183
    :goto_0
    invoke-virtual {v1}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/cache/internal/c;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/fyber/cache/internal/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fyber/cache/internal/f;->b(Ljava/lang/String;)Z

    .line 185
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 187
    :cond_0
    const-string v0, "CacheStore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current cache size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slots"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/fyber/cache/internal/f;->d:Z

    return v0
.end method
