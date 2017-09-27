.class public Lorg/reflections/scanners/TypeAnnotationsScanner;
.super Lorg/reflections/scanners/AbstractScanner;
.source "TypeAnnotationsScanner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lorg/reflections/scanners/AbstractScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public scan(Ljava/lang/Object;)V
    .locals 4
    .param p1, "cls"    # Ljava/lang/Object;

    .prologue
    .line 10
    invoke-virtual {p0}, Lorg/reflections/scanners/TypeAnnotationsScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/reflections/adapters/MetadataAdapter;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 12
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/reflections/scanners/TypeAnnotationsScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/reflections/adapters/MetadataAdapter;->getClassAnnotationNames(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14
    .local v0, "annotationType":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/reflections/scanners/TypeAnnotationsScanner;->acceptResult(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-class v3, Ljava/lang/annotation/Inherited;

    .line 15
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Lorg/reflections/scanners/TypeAnnotationsScanner;->getStore()Lcom/google/common/collect/Multimap;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    .end local v0    # "annotationType":Ljava/lang/String;
    :cond_2
    return-void
.end method
