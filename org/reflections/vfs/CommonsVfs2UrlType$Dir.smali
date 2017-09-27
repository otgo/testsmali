.class public Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;
.super Ljava/lang/Object;
.source "CommonsVfs2UrlType.java"

# interfaces
.implements Lorg/reflections/vfs/Vfs$Dir;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reflections/vfs/CommonsVfs2UrlType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dir"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/reflections/vfs/CommonsVfs2UrlType$Dir$FileAbstractIterator;
    }
.end annotation


# instance fields
.field private final file:Lorg/apache/commons/vfs2/FileObject;


# direct methods
.method public constructor <init>(Lorg/apache/commons/vfs2/FileObject;)V
    .locals 0
    .param p1, "file"    # Lorg/apache/commons/vfs2/FileObject;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;->file:Lorg/apache/commons/vfs2/FileObject;

    .line 42
    return-void
.end method

.method static synthetic access$100(Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;)Lorg/apache/commons/vfs2/FileObject;
    .locals 1
    .param p0, "x0"    # Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;->file:Lorg/apache/commons/vfs2/FileObject;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;->file:Lorg/apache/commons/vfs2/FileObject;

    invoke-interface {v0}, Lorg/apache/commons/vfs2/FileObject;->close()V
    :try_end_0
    .catch Lorg/apache/commons/vfs2/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

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
    .line 53
    new-instance v0, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir$1;

    invoke-direct {v0, p0}, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir$1;-><init>(Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;)V

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;->file:Lorg/apache/commons/vfs2/FileObject;

    invoke-interface {v1}, Lorg/apache/commons/vfs2/FileObject;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/commons/vfs2/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Lorg/apache/commons/vfs2/FileSystemException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
