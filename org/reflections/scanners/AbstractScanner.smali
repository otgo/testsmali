.class public abstract Lorg/reflections/scanners/AbstractScanner;
.super Ljava/lang/Object;
.source "AbstractScanner.java"

# interfaces
.implements Lorg/reflections/scanners/Scanner;


# instance fields
.field private configuration:Lorg/reflections/Configuration;

.field private resultFilter:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private store:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/google/common/base/Predicates;->alwaysTrue()Lcom/google/common/base/Predicate;

    move-result-object v0

    iput-object v0, p0, Lorg/reflections/scanners/AbstractScanner;->resultFilter:Lcom/google/common/base/Predicate;

    return-void
.end method


# virtual methods
.method public acceptResult(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fqn"    # Ljava/lang/String;

    .prologue
    .line 72
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/reflections/scanners/AbstractScanner;->resultFilter:Lcom/google/common/base/Predicate;

    invoke-interface {v0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public acceptsInput(Ljava/lang/String;)Z
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-virtual {p0}, Lorg/reflections/scanners/AbstractScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/reflections/adapters/MetadataAdapter;->acceptsInput(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 81
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public filterResultsBy(Lcom/google/common/base/Predicate;)Lorg/reflections/scanners/Scanner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/reflections/scanners/Scanner;"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "filter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lorg/reflections/scanners/AbstractScanner;->setResultFilter(Lcom/google/common/base/Predicate;)V

    return-object p0
.end method

.method public getConfiguration()Lorg/reflections/Configuration;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/reflections/scanners/AbstractScanner;->configuration:Lorg/reflections/Configuration;

    return-object v0
.end method

.method protected getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/reflections/scanners/AbstractScanner;->configuration:Lorg/reflections/Configuration;

    invoke-interface {v0}, Lorg/reflections/Configuration;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getResultFilter()Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lorg/reflections/scanners/AbstractScanner;->resultFilter:Lcom/google/common/base/Predicate;

    return-object v0
.end method

.method public getStore()Lcom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lorg/reflections/scanners/AbstractScanner;->store:Lcom/google/common/collect/Multimap;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public scan(Lorg/reflections/vfs/Vfs$File;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "file"    # Lorg/reflections/vfs/Vfs$File;
    .param p2, "classObject"    # Ljava/lang/Object;

    .prologue
    .line 28
    if-nez p2, :cond_0

    .line 30
    :try_start_0
    iget-object v1, p0, Lorg/reflections/scanners/AbstractScanner;->configuration:Lorg/reflections/Configuration;

    invoke-interface {v1}, Lorg/reflections/Configuration;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/reflections/adapters/MetadataAdapter;->getOfCreateClassObject(Lorg/reflections/vfs/Vfs$File;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 35
    :cond_0
    invoke-virtual {p0, p2}, Lorg/reflections/scanners/AbstractScanner;->scan(Ljava/lang/Object;)V

    .line 36
    return-object p2

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/reflections/ReflectionsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not create class object from file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/reflections/vfs/Vfs$File;->getRelativePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract scan(Ljava/lang/Object;)V
.end method

.method public setConfiguration(Lorg/reflections/Configuration;)V
    .locals 0
    .param p1, "configuration"    # Lorg/reflections/Configuration;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/reflections/scanners/AbstractScanner;->configuration:Lorg/reflections/Configuration;

    .line 48
    return-void
.end method

.method public setResultFilter(Lcom/google/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "resultFilter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/reflections/scanners/AbstractScanner;->resultFilter:Lcom/google/common/base/Predicate;

    .line 64
    return-void
.end method

.method public setStore(Lcom/google/common/collect/Multimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "store":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/reflections/scanners/AbstractScanner;->store:Lcom/google/common/collect/Multimap;

    .line 56
    return-void
.end method
