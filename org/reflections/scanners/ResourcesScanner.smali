.class public Lorg/reflections/scanners/ResourcesScanner;
.super Lorg/reflections/scanners/AbstractScanner;
.source "ResourcesScanner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lorg/reflections/scanners/AbstractScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptsInput(Ljava/lang/String;)Z
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 9
    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scan(Lorg/reflections/vfs/Vfs$File;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "file"    # Lorg/reflections/vfs/Vfs$File;
    .param p2, "classObject"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-virtual {p0}, Lorg/reflections/scanners/ResourcesScanner;->getStore()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {p1}, Lorg/reflections/vfs/Vfs$File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/reflections/vfs/Vfs$File;->getRelativePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    return-object p2
.end method

.method public scan(Ljava/lang/Object;)V
    .locals 1
    .param p1, "cls"    # Ljava/lang/Object;

    .prologue
    .line 18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
