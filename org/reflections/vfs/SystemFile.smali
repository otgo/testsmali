.class public Lorg/reflections/vfs/SystemFile;
.super Ljava/lang/Object;
.source "SystemFile.java"

# interfaces
.implements Lorg/reflections/vfs/Vfs$File;


# instance fields
.field private final file:Ljava/io/File;

.field private final root:Lorg/reflections/vfs/SystemDir;


# direct methods
.method public constructor <init>(Lorg/reflections/vfs/SystemDir;Ljava/io/File;)V
    .locals 0
    .param p1, "root"    # Lorg/reflections/vfs/SystemDir;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/reflections/vfs/SystemFile;->root:Lorg/reflections/vfs/SystemDir;

    .line 14
    iput-object p2, p0, Lorg/reflections/vfs/SystemFile;->file:Ljava/io/File;

    .line 15
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lorg/reflections/vfs/SystemFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelativePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 22
    iget-object v1, p0, Lorg/reflections/vfs/SystemFile;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\"

    const-string v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "filepath":Ljava/lang/String;
    iget-object v1, p0, Lorg/reflections/vfs/SystemFile;->root:Lorg/reflections/vfs/SystemDir;

    invoke-virtual {v1}, Lorg/reflections/vfs/SystemDir;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    iget-object v1, p0, Lorg/reflections/vfs/SystemFile;->root:Lorg/reflections/vfs/SystemDir;

    invoke-virtual {v1}, Lorg/reflections/vfs/SystemDir;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 27
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 32
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/reflections/vfs/SystemFile;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/reflections/vfs/SystemFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
