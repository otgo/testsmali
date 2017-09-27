.class public Lorg/reflections/vfs/CommonsVfs2UrlType$File;
.super Ljava/lang/Object;
.source "CommonsVfs2UrlType.java"

# interfaces
.implements Lorg/reflections/vfs/Vfs$File;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reflections/vfs/CommonsVfs2UrlType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "File"
.end annotation


# instance fields
.field private final file:Lorg/apache/commons/vfs2/FileObject;

.field private final root:Lorg/apache/commons/vfs2/FileObject;


# direct methods
.method public constructor <init>(Lorg/apache/commons/vfs2/FileObject;Lorg/apache/commons/vfs2/FileObject;)V
    .locals 0
    .param p1, "root"    # Lorg/apache/commons/vfs2/FileObject;
    .param p2, "file"    # Lorg/apache/commons/vfs2/FileObject;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lorg/reflections/vfs/CommonsVfs2UrlType$File;->root:Lorg/apache/commons/vfs2/FileObject;

    .line 116
    iput-object p2, p0, Lorg/reflections/vfs/CommonsVfs2UrlType$File;->file:Lorg/apache/commons/vfs2/FileObject;

    .line 117
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/reflections/vfs/CommonsVfs2UrlType$File;->file:Lorg/apache/commons/vfs2/FileObject;

    invoke-interface {v0}, Lorg/apache/commons/vfs2/FileObject;->getName()Lorg/apache/commons/vfs2/FileName;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/vfs2/FileName;->getBaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelativePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 124
    iget-object v1, p0, Lorg/reflections/vfs/CommonsVfs2UrlType$File;->file:Lorg/apache/commons/vfs2/FileObject;

    invoke-interface {v1}, Lorg/apache/commons/vfs2/FileObject;->getName()Lorg/apache/commons/vfs2/FileName;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/vfs2/FileName;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\"

    const-string v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "filepath":Ljava/lang/String;
    iget-object v1, p0, Lorg/reflections/vfs/CommonsVfs2UrlType$File;->root:Lorg/apache/commons/vfs2/FileObject;

    invoke-interface {v1}, Lorg/apache/commons/vfs2/FileObject;->getName()Lorg/apache/commons/vfs2/FileName;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/vfs2/FileName;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lorg/reflections/vfs/CommonsVfs2UrlType$File;->root:Lorg/apache/commons/vfs2/FileObject;

    invoke-interface {v1}, Lorg/apache/commons/vfs2/FileObject;->getName()Lorg/apache/commons/vfs2/FileName;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/vfs2/FileName;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lorg/reflections/vfs/CommonsVfs2UrlType$File;->file:Lorg/apache/commons/vfs2/FileObject;

    invoke-interface {v0}, Lorg/apache/commons/vfs2/FileObject;->getContent()Lorg/apache/commons/vfs2/FileContent;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/vfs2/FileContent;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
