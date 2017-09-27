.class public Lorg/reflections/scanners/FieldAnnotationsScanner;
.super Lorg/reflections/scanners/AbstractScanner;
.source "FieldAnnotationsScanner.java"


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
    .locals 12
    .param p1, "cls"    # Ljava/lang/Object;

    .prologue
    .line 9
    invoke-virtual {p0}, Lorg/reflections/scanners/FieldAnnotationsScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v6

    invoke-interface {v6, p1}, Lorg/reflections/adapters/MetadataAdapter;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/reflections/scanners/FieldAnnotationsScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v6

    invoke-interface {v6, p1}, Lorg/reflections/adapters/MetadataAdapter;->getFields(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 11
    .local v5, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 12
    .local v1, "field":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/reflections/scanners/FieldAnnotationsScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v7

    invoke-interface {v7, v1}, Lorg/reflections/adapters/MetadataAdapter;->getFieldAnnotationNames(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 13
    .local v3, "fieldAnnotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 15
    .local v2, "fieldAnnotation":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/reflections/scanners/FieldAnnotationsScanner;->acceptResult(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 16
    invoke-virtual {p0}, Lorg/reflections/scanners/FieldAnnotationsScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v8

    invoke-interface {v8, v1}, Lorg/reflections/adapters/MetadataAdapter;->getFieldName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 17
    .local v4, "fieldName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/reflections/scanners/FieldAnnotationsScanner;->getStore()Lcom/google/common/collect/Multimap;

    move-result-object v8

    const-string v9, "%s.%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v2, v9}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    .end local v1    # "field":Ljava/lang/Object;
    .end local v2    # "fieldAnnotation":Ljava/lang/String;
    .end local v3    # "fieldAnnotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "fieldName":Ljava/lang/String;
    :cond_2
    return-void
.end method
