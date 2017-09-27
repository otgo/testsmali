.class public Lorg/reflections/scanners/MethodAnnotationsScanner;
.super Lorg/reflections/scanners/AbstractScanner;
.source "MethodAnnotationsScanner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lorg/reflections/scanners/AbstractScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public scan(Ljava/lang/Object;)V
    .locals 6
    .param p1, "cls"    # Ljava/lang/Object;

    .prologue
    .line 9
    invoke-virtual {p0}, Lorg/reflections/scanners/MethodAnnotationsScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/reflections/adapters/MetadataAdapter;->getMethods(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 10
    .local v0, "method":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/reflections/scanners/MethodAnnotationsScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/reflections/adapters/MetadataAdapter;->getMethodAnnotationNames(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    .local v1, "methodAnnotation":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/reflections/scanners/MethodAnnotationsScanner;->acceptResult(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 12
    invoke-virtual {p0}, Lorg/reflections/scanners/MethodAnnotationsScanner;->getStore()Lcom/google/common/collect/Multimap;

    move-result-object v4

    invoke-virtual {p0}, Lorg/reflections/scanners/MethodAnnotationsScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v5

    invoke-interface {v5, p1, v0}, Lorg/reflections/adapters/MetadataAdapter;->getMethodFullKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    .end local v0    # "method":Ljava/lang/Object;
    .end local v1    # "methodAnnotation":Ljava/lang/String;
    :cond_2
    return-void
.end method
