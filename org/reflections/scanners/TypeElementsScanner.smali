.class public Lorg/reflections/scanners/TypeElementsScanner;
.super Lorg/reflections/scanners/AbstractScanner;
.source "TypeElementsScanner.java"


# instance fields
.field private includeAnnotations:Z

.field private includeFields:Z

.field private includeMethods:Z

.field private publicOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 7
    invoke-direct {p0}, Lorg/reflections/scanners/AbstractScanner;-><init>()V

    .line 8
    iput-boolean v0, p0, Lorg/reflections/scanners/TypeElementsScanner;->includeFields:Z

    .line 9
    iput-boolean v0, p0, Lorg/reflections/scanners/TypeElementsScanner;->includeMethods:Z

    .line 10
    iput-boolean v0, p0, Lorg/reflections/scanners/TypeElementsScanner;->includeAnnotations:Z

    .line 11
    iput-boolean v0, p0, Lorg/reflections/scanners/TypeElementsScanner;->publicOnly:Z

    return-void
.end method


# virtual methods
.method public includeAnnotations()Lorg/reflections/scanners/TypeElementsScanner;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/reflections/scanners/TypeElementsScanner;->includeAnnotations(Z)Lorg/reflections/scanners/TypeElementsScanner;

    move-result-object v0

    return-object v0
.end method

.method public includeAnnotations(Z)Lorg/reflections/scanners/TypeElementsScanner;
    .locals 0
    .param p1, "include"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lorg/reflections/scanners/TypeElementsScanner;->includeAnnotations:Z

    return-object p0
.end method

.method public includeFields()Lorg/reflections/scanners/TypeElementsScanner;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/reflections/scanners/TypeElementsScanner;->includeFields(Z)Lorg/reflections/scanners/TypeElementsScanner;

    move-result-object v0

    return-object v0
.end method

.method public includeFields(Z)Lorg/reflections/scanners/TypeElementsScanner;
    .locals 0
    .param p1, "include"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lorg/reflections/scanners/TypeElementsScanner;->includeFields:Z

    return-object p0
.end method

.method public includeMethods()Lorg/reflections/scanners/TypeElementsScanner;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/reflections/scanners/TypeElementsScanner;->includeMethods(Z)Lorg/reflections/scanners/TypeElementsScanner;

    move-result-object v0

    return-object v0
.end method

.method public includeMethods(Z)Lorg/reflections/scanners/TypeElementsScanner;
    .locals 0
    .param p1, "include"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lorg/reflections/scanners/TypeElementsScanner;->includeMethods:Z

    return-object p0
.end method

.method public publicOnly()Lorg/reflections/scanners/TypeElementsScanner;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/reflections/scanners/TypeElementsScanner;->publicOnly(Z)Lorg/reflections/scanners/TypeElementsScanner;

    move-result-object v0

    return-object v0
.end method

.method public publicOnly(Z)Lorg/reflections/scanners/TypeElementsScanner;
    .locals 0
    .param p1, "only"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lorg/reflections/scanners/TypeElementsScanner;->publicOnly:Z

    return-object p0
.end method

.method public scan(Ljava/lang/Object;)V
    .locals 10
    .param p1, "cls"    # Ljava/lang/Object;

    .prologue
    .line 14
    invoke-virtual {p0}, Lorg/reflections/scanners/TypeElementsScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v6

    invoke-interface {v6, p1}, Lorg/reflections/adapters/MetadataAdapter;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 15
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/reflections/scanners/TypeElementsScanner;->acceptResult(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 41
    :cond_0
    return-void

    .line 17
    :cond_1
    invoke-virtual {p0}, Lorg/reflections/scanners/TypeElementsScanner;->getStore()Lcom/google/common/collect/Multimap;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v6, v1, v7}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    iget-boolean v6, p0, Lorg/reflections/scanners/TypeElementsScanner;->includeFields:Z

    if-eqz v6, :cond_2

    .line 20
    invoke-virtual {p0}, Lorg/reflections/scanners/TypeElementsScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v6

    invoke-interface {v6, p1}, Lorg/reflections/adapters/MetadataAdapter;->getFields(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 21
    .local v2, "field":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/reflections/scanners/TypeElementsScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v7

    invoke-interface {v7, v2}, Lorg/reflections/adapters/MetadataAdapter;->getFieldName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, "fieldName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/reflections/scanners/TypeElementsScanner;->getStore()Lcom/google/common/collect/Multimap;

    move-result-object v7

    invoke-interface {v7, v1, v3}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    .end local v2    # "field":Ljava/lang/Object;
    .end local v3    # "fieldName":Ljava/lang/String;
    :cond_2
    iget-boolean v6, p0, Lorg/reflections/scanners/TypeElementsScanner;->includeMethods:Z

    if-eqz v6, :cond_5

    .line 27
    invoke-virtual {p0}, Lorg/reflections/scanners/TypeElementsScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v6

    invoke-interface {v6, p1}, Lorg/reflections/adapters/MetadataAdapter;->getMethods(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 28
    .local v4, "method":Ljava/lang/Object;
    iget-boolean v7, p0, Lorg/reflections/scanners/TypeElementsScanner;->publicOnly:Z

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lorg/reflections/scanners/TypeElementsScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v7

    invoke-interface {v7, v4}, Lorg/reflections/adapters/MetadataAdapter;->isPublic(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 29
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/reflections/scanners/TypeElementsScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v8

    invoke-interface {v8, v4}, Lorg/reflections/adapters/MetadataAdapter;->getMethodName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    .line 30
    invoke-static {v8}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v8

    invoke-virtual {p0}, Lorg/reflections/scanners/TypeElementsScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v9

    invoke-interface {v9, v4}, Lorg/reflections/adapters/MetadataAdapter;->getParameterNames(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 31
    .local v5, "methodKey":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/reflections/scanners/TypeElementsScanner;->getStore()Lcom/google/common/collect/Multimap;

    move-result-object v7

    invoke-interface {v7, v1, v5}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    .end local v4    # "method":Ljava/lang/Object;
    .end local v5    # "methodKey":Ljava/lang/String;
    :cond_5
    iget-boolean v6, p0, Lorg/reflections/scanners/TypeElementsScanner;->includeAnnotations:Z

    if-eqz v6, :cond_0

    .line 37
    invoke-virtual {p0}, Lorg/reflections/scanners/TypeElementsScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v6

    invoke-interface {v6, p1}, Lorg/reflections/adapters/MetadataAdapter;->getClassAnnotationNames(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 38
    .local v0, "annotation":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/reflections/scanners/TypeElementsScanner;->getStore()Lcom/google/common/collect/Multimap;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v1, v8}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2
.end method
