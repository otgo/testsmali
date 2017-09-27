.class final enum Lorg/reflections/vfs/Vfs$DefaultUrlTypes$2;
.super Lorg/reflections/vfs/Vfs$DefaultUrlTypes;
.source "Vfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reflections/vfs/Vfs$DefaultUrlTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;-><init>(Ljava/lang/String;ILorg/reflections/vfs/Vfs$1;)V

    return-void
.end method


# virtual methods
.method public createDir(Ljava/net/URL;)Lorg/reflections/vfs/Vfs$Dir;
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 223
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 224
    .local v1, "urlConnection":Ljava/net/URLConnection;
    instance-of v2, v1, Ljava/net/JarURLConnection;

    if-eqz v2, :cond_0

    .line 225
    new-instance v2, Lorg/reflections/vfs/ZipDir;

    check-cast v1, Ljava/net/JarURLConnection;

    .end local v1    # "urlConnection":Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/reflections/vfs/ZipDir;-><init>(Ljava/util/jar/JarFile;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-object v2

    .line 227
    :catch_0
    move-exception v2

    .line 228
    :cond_0
    invoke-static {p1}, Lorg/reflections/vfs/Vfs;->getFile(Ljava/net/URL;)Ljava/io/File;

    move-result-object v0

    .line 229
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 230
    new-instance v2, Lorg/reflections/vfs/ZipDir;

    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Lorg/reflections/vfs/ZipDir;-><init>(Ljava/util/jar/JarFile;)V

    goto :goto_0

    .line 232
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public matches(Ljava/net/URL;)Z
    .locals 2
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 218
    const-string v0, "jar"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "zip"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "wsjar"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
