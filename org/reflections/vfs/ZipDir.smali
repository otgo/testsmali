.class public Lorg/reflections/vfs/ZipDir;
.super Ljava/lang/Object;
.source "ZipDir.java"

# interfaces
.implements Lorg/reflections/vfs/Vfs$Dir;


# instance fields
.field final jarFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/util/jar/JarFile;)V
    .locals 0
    .param p1, "jarFile"    # Ljava/util/jar/JarFile;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/reflections/vfs/ZipDir;->jarFile:Ljava/util/zip/ZipFile;

    .line 17
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 45
    :try_start_0
    iget-object v1, p0, Lorg/reflections/vfs/ZipDir;->jarFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v1, :cond_0

    .line 47
    sget-object v1, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    const-string v2, "Could not close JarFile"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getFiles()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/reflections/vfs/Vfs$File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lorg/reflections/vfs/ZipDir$1;

    invoke-direct {v0, p0}, Lorg/reflections/vfs/ZipDir$1;-><init>(Lorg/reflections/vfs/ZipDir;)V

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/reflections/vfs/ZipDir;->jarFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/reflections/vfs/ZipDir;->jarFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
