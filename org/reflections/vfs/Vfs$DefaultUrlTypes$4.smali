.class final enum Lorg/reflections/vfs/Vfs$DefaultUrlTypes$4;
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
    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;-><init>(Ljava/lang/String;ILorg/reflections/vfs/Vfs$1;)V

    return-void
.end method


# virtual methods
.method public createDir(Ljava/net/URL;)Lorg/reflections/vfs/Vfs$Dir;
    .locals 8
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 253
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    .line 254
    .local v0, "content":Ljava/lang/Object;
    invoke-static {}, Lorg/reflections/util/ClasspathHelper;->contextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v6, "org.jboss.vfs.VirtualFile"

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 255
    .local v4, "virtualFile":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getPhysicalFile"

    new-array v6, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 256
    .local v3, "physicalFile":Ljava/io/File;
    const-string v5, "getName"

    new-array v6, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 257
    .local v2, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v1, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 258
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object v1, v3

    .line 259
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lorg/reflections/vfs/SystemDir;

    invoke-direct {v5, v1}, Lorg/reflections/vfs/SystemDir;-><init>(Ljava/io/File;)V

    :goto_0
    return-object v5

    :cond_2
    new-instance v5, Lorg/reflections/vfs/ZipDir;

    new-instance v6, Ljava/util/jar/JarFile;

    invoke-direct {v6, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Lorg/reflections/vfs/ZipDir;-><init>(Ljava/util/jar/JarFile;)V

    goto :goto_0
.end method

.method public matches(Ljava/net/URL;)Z
    .locals 2
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 249
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vfs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
