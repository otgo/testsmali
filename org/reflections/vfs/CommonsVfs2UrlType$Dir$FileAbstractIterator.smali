.class Lorg/reflections/vfs/CommonsVfs2UrlType$Dir$FileAbstractIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "CommonsVfs2UrlType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileAbstractIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Lorg/reflections/vfs/Vfs$File;",
        ">;"
    }
.end annotation


# instance fields
.field final stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/apache/commons/vfs2/FileObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;


# direct methods
.method private constructor <init>(Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;)V
    .locals 1

    .prologue
    .line 68
    iput-object p1, p0, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir$FileAbstractIterator;->this$0:Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 69
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir$FileAbstractIterator;->stack:Ljava/util/Stack;

    .line 72
    iget-object v0, p0, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir$FileAbstractIterator;->this$0:Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;

    invoke-static {v0}, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;->access$100(Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;)Lorg/apache/commons/vfs2/FileObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir$FileAbstractIterator;->listDir(Lorg/apache/commons/vfs2/FileObject;)Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;Lorg/reflections/vfs/CommonsVfs2UrlType$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;
    .param p2, "x1"    # Lorg/reflections/vfs/CommonsVfs2UrlType$1;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir$FileAbstractIterator;-><init>(Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;)V

    return-void
.end method

.method private getFile(Lorg/apache/commons/vfs2/FileObject;)Lorg/reflections/vfs/CommonsVfs2UrlType$File;
    .locals 2
    .param p1, "file"    # Lorg/apache/commons/vfs2/FileObject;

    .prologue
    .line 88
    new-instance v0, Lorg/reflections/vfs/CommonsVfs2UrlType$File;

    iget-object v1, p0, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir$FileAbstractIterator;->this$0:Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;

    invoke-static {v1}, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;->access$100(Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;)Lorg/apache/commons/vfs2/FileObject;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/reflections/vfs/CommonsVfs2UrlType$File;-><init>(Lorg/apache/commons/vfs2/FileObject;Lorg/apache/commons/vfs2/FileObject;)V

    return-object v0
.end method

.method private isDir(Lorg/apache/commons/vfs2/FileObject;)Z
    .locals 2
    .param p1, "file"    # Lorg/apache/commons/vfs2/FileObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/vfs2/FileSystemException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-interface {p1}, Lorg/apache/commons/vfs2/FileObject;->getType()Lorg/apache/commons/vfs2/FileType;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/vfs2/FileType;->FOLDER:Lorg/apache/commons/vfs2/FileType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private listDir(Lorg/apache/commons/vfs2/FileObject;)Z
    .locals 2
    .param p1, "file"    # Lorg/apache/commons/vfs2/FileObject;

    .prologue
    .line 92
    iget-object v0, p0, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir$FileAbstractIterator;->stack:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir$FileAbstractIterator;->listFiles(Lorg/apache/commons/vfs2/FileObject;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir$FileAbstractIterator;->computeNext()Lorg/reflections/vfs/Vfs$File;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Lorg/reflections/vfs/Vfs$File;
    .locals 3

    .prologue
    .line 75
    :goto_0
    iget-object v2, p0, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir$FileAbstractIterator;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 76
    iget-object v2, p0, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir$FileAbstractIterator;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/vfs2/FileObject;

    .line 78
    .local v1, "file":Lorg/apache/commons/vfs2/FileObject;
    :try_start_0
    invoke-direct {p0, v1}, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir$FileAbstractIterator;->isDir(Lorg/apache/commons/vfs2/FileObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir$FileAbstractIterator;->listDir(Lorg/apache/commons/vfs2/FileObject;)Z
    :try_end_0
    .catch Lorg/apache/commons/vfs2/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Lorg/apache/commons/vfs2/FileSystemException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 78
    .end local v0    # "e":Lorg/apache/commons/vfs2/FileSystemException;
    :cond_0
    :try_start_1
    invoke-direct {p0, v1}, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir$FileAbstractIterator;->getFile(Lorg/apache/commons/vfs2/FileObject;)Lorg/reflections/vfs/CommonsVfs2UrlType$File;
    :try_end_1
    .catch Lorg/apache/commons/vfs2/FileSystemException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 84
    .end local v1    # "file":Lorg/apache/commons/vfs2/FileObject;
    :goto_1
    return-object v2

    :cond_1
    invoke-virtual {p0}, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir$FileAbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/reflections/vfs/Vfs$File;

    goto :goto_1
.end method

.method protected listFiles(Lorg/apache/commons/vfs2/FileObject;)Ljava/util/List;
    .locals 3
    .param p1, "file"    # Lorg/apache/commons/vfs2/FileObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/vfs2/FileObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/vfs2/FileObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    :try_start_0
    invoke-interface {p1}, Lorg/apache/commons/vfs2/FileObject;->getType()Lorg/apache/commons/vfs2/FileType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/vfs2/FileType;->hasChildren()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lorg/apache/commons/vfs2/FileObject;->getChildren()[Lorg/apache/commons/vfs2/FileObject;

    move-result-object v1

    .line 102
    .local v1, "files":[Lorg/apache/commons/vfs2/FileObject;
    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_1
    return-object v2

    .line 101
    .end local v1    # "files":[Lorg/apache/commons/vfs2/FileObject;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 102
    .restart local v1    # "files":[Lorg/apache/commons/vfs2/FileObject;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/apache/commons/vfs2/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 103
    .end local v1    # "files":[Lorg/apache/commons/vfs2/FileObject;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Lorg/apache/commons/vfs2/FileSystemException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
