.class public final Lcom/sponsorpay/publisher/mbe/player/caching/e;
.super Ljava/lang/Object;
.source "SPCacheStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sponsorpay/publisher/mbe/player/caching/e$a;
    }
.end annotation


# static fields
.field static final a:Lcom/sponsorpay/publisher/mbe/player/caching/e;


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
            "Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/caching/e;

    invoke-direct {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/e;-><init>()V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a:Lcom/sponsorpay/publisher/mbe/player/caching/e;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->d:Z

    .line 45
    iput-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->b:Ljava/io/File;

    .line 46
    iput-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->c:Ljava/io/File;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->e:Ljava/util/Map;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    :goto_1
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SPVideoCache"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "SPVideoCache"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :goto_2
    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->b:Ljava/io/File;

    .line 52
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPCacheStorage"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->c:Ljava/io/File;

    .line 53
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->d:Z

    .line 54
    return-void

    .line 51
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 195
    .line 197
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 198
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 199
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 200
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    const/4 v0, 0x1

    .line 199
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :catch_0
    move-exception v1

    .line 207
    const-string v2, "SPCacheStore"

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_1
    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->getLocalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 115
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->f()V

    .line 116
    const/4 v0, 0x1

    .line 118
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

    .line 58
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->c:Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->e:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->e()V

    .line 60
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 64
    :goto_1
    return v0

    .line 58
    :catch_0
    move-exception v0

    :goto_2
    const-string v0, "SPCacheStore"

    const-string v2, "Cache storage file was not found, purging the local files..."

    invoke-static {v0, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->e:Ljava/util/Map;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->g()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 62
    :catch_1
    move-exception v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->e:Ljava/util/Map;

    move v0, v1

    .line 64
    goto :goto_1

    :cond_0
    move v0, v1

    .line 60
    goto :goto_1

    .line 58
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 68
    .line 69
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->e:Ljava/util/Map;

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

    check-cast v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;

    .line 70
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->getLocalFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 71
    const-string v1, "SPCacheStore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Local file for cache entry "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->getRemoteUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was removed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, v2}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->setDownloadState(I)V

    .line 73
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    if-eqz v1, :cond_1

    .line 77
    const-string v0, "SPCacheStore"

    const-string v1, "Saving Cache file."

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->f()V

    .line 80
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private f()V
    .locals 3

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->d:Z

    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->c:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 125
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 126
    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->e:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 127
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 128
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    const-string v1, "SPCacheStore"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_0

    .line 152
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 153
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method private h()Ljava/io/File;
    .locals 4

    .prologue
    .line 159
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->b:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    const-string v1, "SPCacheStore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Save in file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_0
    return-object v0

    .line 167
    :cond_0
    const-string v1, "SPCacheStore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video already exists in cache: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/sponsorpay/publisher/mbe/player/caching/h;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->d:Z

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;

    .line 102
    :goto_0
    invoke-virtual {v0, p1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->addVideoEntry(Lcom/sponsorpay/publisher/mbe/player/caching/h;)Z

    .line 103
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->f()V

    .line 104
    return-object v0

    .line 96
    :cond_0
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->h()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    .line 97
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 100
    :cond_1
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->h()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;

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
            "Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->e:Ljava/util/Map;

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 173
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 174
    const-string v0, "SPCacheStore"

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

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->b(I)V

    .line 177
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->f()V

    .line 109
    return-void
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 180
    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    const-string v0, "SPCacheStore"

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

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v1, Ljava/util/TreeSet;

    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/caching/e$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/sponsorpay/publisher/mbe/player/caching/e$a;-><init>(B)V

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 183
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 185
    :goto_0
    invoke-virtual {v1}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->getRemoteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->b(Ljava/lang/String;)Z

    .line 187
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 189
    :cond_0
    const-string v0, "SPCacheStore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current cache size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slots"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->d:Z

    return v0
.end method
