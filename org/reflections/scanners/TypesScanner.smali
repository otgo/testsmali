.class public Lorg/reflections/scanners/TypesScanner;
.super Lorg/reflections/scanners/AbstractScanner;
.source "TypesScanner.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/reflections/scanners/AbstractScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public scan(Lorg/reflections/vfs/Vfs$File;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "file"    # Lorg/reflections/vfs/Vfs$File;
    .param p2, "classObject"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lorg/reflections/scanners/AbstractScanner;->scan(Lorg/reflections/vfs/Vfs$File;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 14
    invoke-virtual {p0}, Lorg/reflections/scanners/TypesScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/reflections/adapters/MetadataAdapter;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/reflections/scanners/TypesScanner;->getStore()Lcom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, v0, v0}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    return-object p2
.end method

.method public scan(Ljava/lang/Object;)V
    .locals 2
    .param p1, "cls"    # Ljava/lang/Object;

    .prologue
    .line 21
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "should not get here"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
