.class public Lorg/reflections/vfs/SystemDir;
.super Ljava/lang/Object;
.source "SystemDir.java"

# interfaces
.implements Lorg/reflections/vfs/Vfs$Dir;


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot use dir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    iput-object p1, p0, Lorg/reflections/vfs/SystemDir;->file:Ljava/io/File;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lorg/reflections/vfs/SystemDir;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/reflections/vfs/SystemDir;

    .prologue
    .line 15
    iget-object v0, p0, Lorg/reflections/vfs/SystemDir;->file:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ljava/io/File;

    .prologue
    .line 15
    invoke-static {p0}, Lorg/reflections/vfs/SystemDir;->listFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static listFiles(Ljava/io/File;)Ljava/util/List;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 63
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 64
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 66
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 70
    return-void
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
    .line 34
    iget-object v0, p0, Lorg/reflections/vfs/SystemDir;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/reflections/vfs/SystemDir;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/reflections/vfs/SystemDir$1;

    invoke-direct {v0, p0}, Lorg/reflections/vfs/SystemDir$1;-><init>(Lorg/reflections/vfs/SystemDir;)V

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lorg/reflections/vfs/SystemDir;->file:Ljava/io/File;

    if-nez v0, :cond_0

    .line 28
    const-string v0, "/NO-SUCH-DIRECTORY/"

    .line 30
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/reflections/vfs/SystemDir;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/reflections/vfs/SystemDir;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
