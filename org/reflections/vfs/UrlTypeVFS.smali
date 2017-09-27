.class public Lorg/reflections/vfs/UrlTypeVFS;
.super Ljava/lang/Object;
.source "UrlTypeVFS.java"

# interfaces
.implements Lorg/reflections/vfs/Vfs$UrlType;


# static fields
.field public static final REPLACE_EXTENSION:[Ljava/lang/String;


# instance fields
.field final VFSFILE:Ljava/lang/String;

.field final VFSZIP:Ljava/lang/String;

.field realFile:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".ear/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".jar/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".war/"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ".sar/"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ".har/"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ".par/"

    aput-object v2, v0, v1

    sput-object v0, Lorg/reflections/vfs/UrlTypeVFS;->REPLACE_EXTENSION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "vfszip"

    iput-object v0, p0, Lorg/reflections/vfs/UrlTypeVFS;->VFSZIP:Ljava/lang/String;

    .line 30
    const-string v0, "vfsfile"

    iput-object v0, p0, Lorg/reflections/vfs/UrlTypeVFS;->VFSFILE:Ljava/lang/String;

    .line 90
    new-instance v0, Lorg/reflections/vfs/UrlTypeVFS$1;

    invoke-direct {v0, p0}, Lorg/reflections/vfs/UrlTypeVFS$1;-><init>(Lorg/reflections/vfs/UrlTypeVFS;)V

    iput-object v0, p0, Lorg/reflections/vfs/UrlTypeVFS;->realFile:Lcom/google/common/base/Predicate;

    return-void
.end method


# virtual methods
.method public adaptURL(Ljava/net/URL;)Ljava/net/URL;
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 56
    const-string v0, "vfszip"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/reflections/vfs/UrlTypeVFS;->realFile:Lcom/google/common/base/Predicate;

    invoke-virtual {p0, v0, v1}, Lorg/reflections/vfs/UrlTypeVFS;->replaceZipSeparators(Ljava/lang/String;Lcom/google/common/base/Predicate;)Ljava/net/URL;

    move-result-object p1

    .line 61
    .end local p1    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    return-object p1

    .line 58
    .restart local p1    # "url":Ljava/net/URL;
    :cond_1
    const-string v0, "vfsfile"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vfsfile"

    const-string v3, "file"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public createDir(Ljava/net/URL;)Lorg/reflections/vfs/Vfs$Dir;
    .locals 6
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 38
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/reflections/vfs/UrlTypeVFS;->adaptURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v0

    .line 39
    .local v0, "adaptedUrl":Ljava/net/URL;
    new-instance v3, Lorg/reflections/vfs/ZipDir;

    new-instance v4, Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/reflections/vfs/ZipDir;-><init>(Ljava/util/jar/JarFile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0    # "adaptedUrl":Ljava/net/URL;
    :goto_0
    return-object v3

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v3, :cond_0

    .line 42
    sget-object v3, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    const-string v4, "Could not get URL"

    invoke-interface {v3, v4, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    :cond_0
    :try_start_1
    new-instance v3, Lorg/reflections/vfs/ZipDir;

    new-instance v4, Ljava/util/jar/JarFile;

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/reflections/vfs/ZipDir;-><init>(Ljava/util/jar/JarFile;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 46
    :catch_1
    move-exception v2

    .line 47
    .local v2, "e1":Ljava/io/IOException;
    sget-object v3, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v3, :cond_1

    .line 48
    sget-object v3, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    const-string v4, "Could not get URL"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method findFirstMatchOfDeployableExtention(Ljava/lang/String;I)I
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "pos"    # I

    .prologue
    .line 81
    const-string v2, "\\.[ejprw]ar/"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 82
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 83
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 86
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public matches(Ljava/net/URL;)Z
    .locals 2
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 33
    const-string v0, "vfszip"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vfsfile"

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

.method replaceZipSeparatorStartingFrom(Ljava/lang/String;I)Ljava/net/URL;
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 98
    add-int/lit8 v6, p2, -0x1

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "zipFile":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "zipPath":Ljava/lang/String;
    const/4 v2, 0x1

    .line 102
    .local v2, "numSubs":I
    sget-object v8, Lorg/reflections/vfs/UrlTypeVFS;->REPLACE_EXTENSION:[Ljava/lang/String;

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_1

    aget-object v0, v8, v6

    .line 103
    .local v0, "ext":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 104
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x4

    invoke-virtual {v0, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v0, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "ext":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    .line 110
    .local v3, "prefix":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "zip:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 114
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 115
    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 117
    :goto_3
    return-object v6

    :cond_3
    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method replaceZipSeparators(Ljava/lang/String;Lcom/google/common/base/Predicate;)Ljava/net/URL;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "acceptFile":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/io/File;>;"
    const/4 v1, 0x0

    .line 68
    .local v1, "pos":I
    :cond_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 69
    invoke-virtual {p0, p1, v1}, Lorg/reflections/vfs/UrlTypeVFS;->findFirstMatchOfDeployableExtention(Ljava/lang/String;I)I

    move-result v1

    .line 71
    if-lez v1, :cond_0

    .line 72
    new-instance v0, Ljava/io/File;

    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "file":Ljava/io/File;
    invoke-interface {p2, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v1}, Lorg/reflections/vfs/UrlTypeVFS;->replaceZipSeparatorStartingFrom(Ljava/lang/String;I)Ljava/net/URL;

    move-result-object v2

    return-object v2

    .line 77
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    new-instance v2, Lorg/reflections/ReflectionsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to identify the real zip file in path \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
