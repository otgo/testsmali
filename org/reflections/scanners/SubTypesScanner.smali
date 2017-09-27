.class public Lorg/reflections/scanners/SubTypesScanner;
.super Lorg/reflections/scanners/AbstractScanner;
.source "SubTypesScanner.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/reflections/scanners/SubTypesScanner;-><init>(Z)V

    .line 13
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "excludeObjectClass"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/reflections/scanners/AbstractScanner;-><init>()V

    .line 18
    if-eqz p1, :cond_0

    .line 19
    new-instance v0, Lorg/reflections/util/FilterBuilder;

    invoke-direct {v0}, Lorg/reflections/util/FilterBuilder;-><init>()V

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/reflections/util/FilterBuilder;->exclude(Ljava/lang/String;)Lorg/reflections/util/FilterBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/reflections/scanners/SubTypesScanner;->filterResultsBy(Lcom/google/common/base/Predicate;)Lorg/reflections/scanners/Scanner;

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public scan(Ljava/lang/Object;)V
    .locals 5
    .param p1, "cls"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-virtual {p0}, Lorg/reflections/scanners/SubTypesScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/reflections/adapters/MetadataAdapter;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/reflections/scanners/SubTypesScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/reflections/adapters/MetadataAdapter;->getSuperclassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, "superclass":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/reflections/scanners/SubTypesScanner;->acceptResult(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    invoke-virtual {p0}, Lorg/reflections/scanners/SubTypesScanner;->getStore()Lcom/google/common/collect/Multimap;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    :cond_0
    invoke-virtual {p0}, Lorg/reflections/scanners/SubTypesScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/reflections/adapters/MetadataAdapter;->getInterfacesNames(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    .local v0, "anInterface":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/reflections/scanners/SubTypesScanner;->acceptResult(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 34
    invoke-virtual {p0}, Lorg/reflections/scanners/SubTypesScanner;->getStore()Lcom/google/common/collect/Multimap;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    .end local v0    # "anInterface":Ljava/lang/String;
    :cond_2
    return-void
.end method
