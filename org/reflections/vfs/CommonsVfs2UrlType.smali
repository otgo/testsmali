.class public Lorg/reflections/vfs/CommonsVfs2UrlType;
.super Ljava/lang/Object;
.source "CommonsVfs2UrlType.java"

# interfaces
.implements Lorg/reflections/vfs/Vfs$UrlType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/reflections/vfs/CommonsVfs2UrlType$File;,
        Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method


# virtual methods
.method public createDir(Ljava/net/URL;)Lorg/reflections/vfs/Vfs$Dir;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {}, Lorg/apache/commons/vfs2/VFS;->getManager()Lorg/apache/commons/vfs2/FileSystemManager;

    move-result-object v1

    .line 33
    .local v1, "manager":Lorg/apache/commons/vfs2/FileSystemManager;
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/vfs2/FileSystemManager;->resolveFile(Ljava/lang/String;)Lorg/apache/commons/vfs2/FileObject;

    move-result-object v0

    .line 34
    .local v0, "fileObject":Lorg/apache/commons/vfs2/FileObject;
    new-instance v2, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;

    invoke-direct {v2, v0}, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;-><init>(Lorg/apache/commons/vfs2/FileObject;)V

    return-object v2
.end method

.method public matches(Ljava/net/URL;)Z
    .locals 7
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 21
    :try_start_0
    invoke-static {}, Lorg/apache/commons/vfs2/VFS;->getManager()Lorg/apache/commons/vfs2/FileSystemManager;

    move-result-object v2

    .line 22
    .local v2, "manager":Lorg/apache/commons/vfs2/FileSystemManager;
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/vfs2/FileSystemManager;->resolveFile(Ljava/lang/String;)Lorg/apache/commons/vfs2/FileObject;

    move-result-object v1

    .line 23
    .local v1, "fileObject":Lorg/apache/commons/vfs2/FileObject;
    invoke-interface {v1}, Lorg/apache/commons/vfs2/FileObject;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Lorg/apache/commons/vfs2/FileObject;->getType()Lorg/apache/commons/vfs2/FileType;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/vfs2/FileType;->FOLDER:Lorg/apache/commons/vfs2/FileType;
    :try_end_0
    .catch Lorg/apache/commons/vfs2/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    .line 26
    .end local v1    # "fileObject":Lorg/apache/commons/vfs2/FileObject;
    .end local v2    # "manager":Lorg/apache/commons/vfs2/FileSystemManager;
    :cond_0
    :goto_0
    return v3

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Lorg/apache/commons/vfs2/FileSystemException;
    sget-object v4, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not create CommonsVfs2UrlType from url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
