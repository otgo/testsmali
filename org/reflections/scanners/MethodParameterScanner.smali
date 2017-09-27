.class public Lorg/reflections/scanners/MethodParameterScanner;
.super Lorg/reflections/scanners/AbstractScanner;
.source "MethodParameterScanner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/reflections/scanners/AbstractScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public scan(Ljava/lang/Object;)V
    .locals 11
    .param p1, "cls"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-virtual {p0}, Lorg/reflections/scanners/MethodParameterScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v1

    .line 15
    .local v1, "md":Lorg/reflections/adapters/MetadataAdapter;
    invoke-interface {v1, p1}, Lorg/reflections/adapters/MetadataAdapter;->getMethods(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 17
    .local v2, "method":Ljava/lang/Object;
    invoke-interface {v1, v2}, Lorg/reflections/adapters/MetadataAdapter;->getParameterNames(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 18
    .local v6, "signature":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lorg/reflections/scanners/MethodParameterScanner;->acceptResult(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 19
    invoke-virtual {p0}, Lorg/reflections/scanners/MethodParameterScanner;->getStore()Lcom/google/common/collect/Multimap;

    move-result-object v7

    invoke-interface {v1, p1, v2}, Lorg/reflections/adapters/MetadataAdapter;->getMethodFullKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v6, v9}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    :cond_1
    invoke-interface {v1, v2}, Lorg/reflections/adapters/MetadataAdapter;->getReturnTypeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 23
    .local v5, "returnTypeName":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lorg/reflections/scanners/MethodParameterScanner;->acceptResult(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 24
    invoke-virtual {p0}, Lorg/reflections/scanners/MethodParameterScanner;->getStore()Lcom/google/common/collect/Multimap;

    move-result-object v7

    invoke-interface {v1, p1, v2}, Lorg/reflections/adapters/MetadataAdapter;->getMethodFullKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v5, v9}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    :cond_2
    invoke-interface {v1, v2}, Lorg/reflections/adapters/MetadataAdapter;->getParameterNames(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 28
    .local v4, "parameterNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 29
    invoke-interface {v1, v2, v0}, Lorg/reflections/adapters/MetadataAdapter;->getParameterAnnotationNames(Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "paramAnnotation":Ljava/lang/Object;
    move-object v7, v3

    .line 30
    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lorg/reflections/scanners/MethodParameterScanner;->acceptResult(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 31
    invoke-virtual {p0}, Lorg/reflections/scanners/MethodParameterScanner;->getStore()Lcom/google/common/collect/Multimap;

    move-result-object v7

    check-cast v3, Ljava/lang/String;

    .end local v3    # "paramAnnotation":Ljava/lang/Object;
    invoke-interface {v1, p1, v2}, Lorg/reflections/adapters/MetadataAdapter;->getMethodFullKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v3, v10}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 28
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    .end local v0    # "i":I
    .end local v2    # "method":Ljava/lang/Object;
    .end local v4    # "parameterNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "returnTypeName":Ljava/lang/String;
    .end local v6    # "signature":Ljava/lang/String;
    :cond_5
    return-void
.end method
