.class public Lorg/reflections/util/ConfigurationBuilder;
.super Ljava/lang/Object;
.source "ConfigurationBuilder.java"

# interfaces
.implements Lorg/reflections/Configuration;


# instance fields
.field private classLoaders:[Ljava/lang/ClassLoader;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private executorService:Ljava/util/concurrent/ExecutorService;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private inputsFilter:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected metadataAdapter:Lorg/reflections/adapters/MetadataAdapter;

.field private scanners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/reflections/scanners/Scanner;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private serializer:Lorg/reflections/serializers/Serializer;

.field private urls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/reflections/scanners/Scanner;

    const/4 v1, 0x0

    new-instance v2, Lorg/reflections/scanners/TypeAnnotationsScanner;

    invoke-direct {v2}, Lorg/reflections/scanners/TypeAnnotationsScanner;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/reflections/scanners/SubTypesScanner;

    invoke-direct {v2}, Lorg/reflections/scanners/SubTypesScanner;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->scanners:Ljava/util/Set;

    .line 54
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->urls:Ljava/util/Set;

    .line 55
    return-void
.end method

.method public static varargs build([Ljava/lang/Object;)Lorg/reflections/util/ConfigurationBuilder;
    .locals 15
    .param p0, "params"    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v14, 0x1

    const/4 v10, 0x0

    .line 72
    new-instance v1, Lorg/reflections/util/ConfigurationBuilder;

    invoke-direct {v1}, Lorg/reflections/util/ConfigurationBuilder;-><init>()V

    .line 75
    .local v1, "builder":Lorg/reflections/util/ConfigurationBuilder;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 76
    .local v7, "parameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p0, :cond_5

    .line 77
    array-length v12, p0

    move v11, v10

    :goto_0
    if-ge v11, v12, :cond_5

    aget-object v6, p0, v11

    .line 78
    .local v6, "param":Ljava/lang/Object;
    if-eqz v6, :cond_4

    .line 79
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_1

    check-cast v6, [Ljava/lang/Object;

    .end local v6    # "param":Ljava/lang/Object;
    check-cast v6, [Ljava/lang/Object;

    array-length v13, v6

    move v9, v10

    :goto_1
    if-ge v9, v13, :cond_4

    aget-object v5, v6, v9

    .local v5, "p":Ljava/lang/Object;
    if-eqz v5, :cond_0

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 80
    .end local v5    # "p":Ljava/lang/Object;
    .restart local v6    # "param":Ljava/lang/Object;
    :cond_1
    instance-of v9, v6, Ljava/lang/Iterable;

    if-eqz v9, :cond_3

    check-cast v6, Ljava/lang/Iterable;

    .end local v6    # "param":Ljava/lang/Object;
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "p":Ljava/lang/Object;
    if-eqz v5, :cond_2

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 81
    .end local v5    # "p":Ljava/lang/Object;
    .restart local v6    # "param":Ljava/lang/Object;
    :cond_3
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .end local v6    # "param":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v9, v11, 0x1

    move v11, v9

    goto :goto_0

    .line 86
    :cond_5
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 87
    .local v4, "loaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "param":Ljava/lang/Object;
    instance-of v11, v6, Ljava/lang/ClassLoader;

    if-eqz v11, :cond_6

    check-cast v6, Ljava/lang/ClassLoader;

    .end local v6    # "param":Ljava/lang/Object;
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 89
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v2, 0x0

    .line 90
    .local v2, "classLoaders":[Ljava/lang/ClassLoader;
    :goto_4
    new-instance v3, Lorg/reflections/util/FilterBuilder;

    invoke-direct {v3}, Lorg/reflections/util/FilterBuilder;-><init>()V

    .line 91
    .local v3, "filter":Lorg/reflections/util/FilterBuilder;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 93
    .local v8, "scanners":Ljava/util/List;, "Ljava/util/List<Lorg/reflections/scanners/Scanner;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 94
    .restart local v6    # "param":Ljava/lang/Object;
    instance-of v9, v6, Ljava/lang/String;

    if-eqz v9, :cond_a

    move-object v9, v6

    .line 95
    check-cast v9, Ljava/lang/String;

    invoke-static {v9, v2}, Lorg/reflections/util/ClasspathHelper;->forPackage(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/util/Collection;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/reflections/util/ConfigurationBuilder;->addUrls(Ljava/util/Collection;)Lorg/reflections/util/ConfigurationBuilder;

    .line 96
    new-array v9, v14, [Ljava/lang/String;

    check-cast v6, Ljava/lang/String;

    .end local v6    # "param":Ljava/lang/Object;
    aput-object v6, v9, v10

    invoke-virtual {v3, v9}, Lorg/reflections/util/FilterBuilder;->includePackage([Ljava/lang/String;)Lorg/reflections/util/FilterBuilder;

    goto :goto_5

    .line 89
    .end local v2    # "classLoaders":[Ljava/lang/ClassLoader;
    .end local v3    # "filter":Lorg/reflections/util/FilterBuilder;
    .end local v8    # "scanners":Ljava/util/List;, "Ljava/util/List<Lorg/reflections/scanners/Scanner;>;"
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/ClassLoader;

    invoke-interface {v4, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/ClassLoader;

    move-object v2, v9

    goto :goto_4

    .line 98
    .restart local v2    # "classLoaders":[Ljava/lang/ClassLoader;
    .restart local v3    # "filter":Lorg/reflections/util/FilterBuilder;
    .restart local v6    # "param":Ljava/lang/Object;
    .restart local v8    # "scanners":Ljava/util/List;, "Ljava/util/List<Lorg/reflections/scanners/Scanner;>;"
    :cond_a
    instance-of v9, v6, Ljava/lang/Class;

    if-eqz v9, :cond_c

    .line 99
    const-class v12, Lorg/reflections/scanners/Scanner;

    move-object v9, v6

    check-cast v9, Ljava/lang/Class;

    invoke-virtual {v12, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 100
    const/4 v9, 0x1

    :try_start_0
    new-array v12, v9, [Lorg/reflections/scanners/Scanner;

    const/4 v13, 0x0

    move-object v0, v6

    check-cast v0, Ljava/lang/Class;

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/reflections/scanners/Scanner;

    aput-object v9, v12, v13

    invoke-virtual {v1, v12}, Lorg/reflections/util/ConfigurationBuilder;->addScanners([Lorg/reflections/scanners/Scanner;)Lorg/reflections/util/ConfigurationBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_b
    :goto_6
    new-array v12, v14, [Ljava/net/URL;

    move-object v9, v6

    check-cast v9, Ljava/lang/Class;

    invoke-static {v9, v2}, Lorg/reflections/util/ClasspathHelper;->forClass(Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/net/URL;

    move-result-object v9

    aput-object v9, v12, v10

    invoke-virtual {v1, v12}, Lorg/reflections/util/ConfigurationBuilder;->addUrls([Ljava/net/URL;)Lorg/reflections/util/ConfigurationBuilder;

    .line 103
    check-cast v6, Ljava/lang/Class;

    .end local v6    # "param":Ljava/lang/Object;
    invoke-virtual {v3, v6}, Lorg/reflections/util/FilterBuilder;->includePackage(Ljava/lang/Class;)Lorg/reflections/util/FilterBuilder;

    goto :goto_5

    .line 105
    .restart local v6    # "param":Ljava/lang/Object;
    :cond_c
    instance-of v9, v6, Lorg/reflections/scanners/Scanner;

    if-eqz v9, :cond_d

    check-cast v6, Lorg/reflections/scanners/Scanner;

    .end local v6    # "param":Ljava/lang/Object;
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 106
    .restart local v6    # "param":Ljava/lang/Object;
    :cond_d
    instance-of v9, v6, Ljava/net/URL;

    if-eqz v9, :cond_e

    new-array v9, v14, [Ljava/net/URL;

    check-cast v6, Ljava/net/URL;

    .end local v6    # "param":Ljava/lang/Object;
    aput-object v6, v9, v10

    invoke-virtual {v1, v9}, Lorg/reflections/util/ConfigurationBuilder;->addUrls([Ljava/net/URL;)Lorg/reflections/util/ConfigurationBuilder;

    goto :goto_5

    .line 107
    .restart local v6    # "param":Ljava/lang/Object;
    :cond_e
    instance-of v9, v6, Ljava/lang/ClassLoader;

    if-nez v9, :cond_8

    .line 108
    instance-of v9, v6, Lcom/google/common/base/Predicate;

    if-eqz v9, :cond_f

    check-cast v6, Lcom/google/common/base/Predicate;

    .end local v6    # "param":Ljava/lang/Object;
    invoke-virtual {v3, v6}, Lorg/reflections/util/FilterBuilder;->add(Lcom/google/common/base/Predicate;)Lorg/reflections/util/FilterBuilder;

    goto/16 :goto_5

    .line 109
    .restart local v6    # "param":Ljava/lang/Object;
    :cond_f
    instance-of v9, v6, Ljava/util/concurrent/ExecutorService;

    if-eqz v9, :cond_10

    check-cast v6, Ljava/util/concurrent/ExecutorService;

    .end local v6    # "param":Ljava/lang/Object;
    invoke-virtual {v1, v6}, Lorg/reflections/util/ConfigurationBuilder;->setExecutorService(Ljava/util/concurrent/ExecutorService;)Lorg/reflections/util/ConfigurationBuilder;

    goto/16 :goto_5

    .line 110
    .restart local v6    # "param":Ljava/lang/Object;
    :cond_10
    sget-object v9, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v9, :cond_8

    new-instance v9, Lorg/reflections/ReflectionsException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "could not use param "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 113
    .end local v6    # "param":Ljava/lang/Object;
    :cond_11
    invoke-virtual {v1}, Lorg/reflections/util/ConfigurationBuilder;->getUrls()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 114
    if-eqz v2, :cond_15

    .line 115
    invoke-static {v2}, Lorg/reflections/util/ClasspathHelper;->forClassLoader([Ljava/lang/ClassLoader;)Ljava/util/Collection;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/reflections/util/ConfigurationBuilder;->addUrls(Ljava/util/Collection;)Lorg/reflections/util/ConfigurationBuilder;

    .line 121
    :cond_12
    :goto_7
    invoke-virtual {v1, v3}, Lorg/reflections/util/ConfigurationBuilder;->filterInputsBy(Lcom/google/common/base/Predicate;)Lorg/reflections/util/ConfigurationBuilder;

    .line 122
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_13

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lorg/reflections/scanners/Scanner;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lorg/reflections/scanners/Scanner;

    invoke-virtual {v1, v9}, Lorg/reflections/util/ConfigurationBuilder;->setScanners([Lorg/reflections/scanners/Scanner;)Lorg/reflections/util/ConfigurationBuilder;

    .line 123
    :cond_13
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_14

    invoke-virtual {v1, v4}, Lorg/reflections/util/ConfigurationBuilder;->addClassLoaders(Ljava/util/Collection;)Lorg/reflections/util/ConfigurationBuilder;

    .line 125
    :cond_14
    return-object v1

    .line 117
    :cond_15
    invoke-static {}, Lorg/reflections/util/ClasspathHelper;->forClassLoader()Ljava/util/Collection;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/reflections/util/ConfigurationBuilder;->addUrls(Ljava/util/Collection;)Lorg/reflections/util/ConfigurationBuilder;

    goto :goto_7

    .line 100
    .restart local v6    # "param":Ljava/lang/Object;
    :catch_0
    move-exception v9

    goto/16 :goto_6
.end method


# virtual methods
.method public addClassLoader(Ljava/lang/ClassLoader;)Lorg/reflections/util/ConfigurationBuilder;
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 276
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/reflections/util/ConfigurationBuilder;->addClassLoaders([Ljava/lang/ClassLoader;)Lorg/reflections/util/ConfigurationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addClassLoaders(Ljava/util/Collection;)Lorg/reflections/util/ConfigurationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Lorg/reflections/util/ConfigurationBuilder;"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "classLoaders":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ClassLoader;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/ClassLoader;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ClassLoader;

    invoke-virtual {p0, v0}, Lorg/reflections/util/ConfigurationBuilder;->addClassLoaders([Ljava/lang/ClassLoader;)Lorg/reflections/util/ConfigurationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs addClassLoaders([Ljava/lang/ClassLoader;)Lorg/reflections/util/ConfigurationBuilder;
    .locals 2
    .param p1, "classLoaders"    # [Ljava/lang/ClassLoader;

    .prologue
    .line 281
    iget-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->classLoaders:[Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    .end local p1    # "classLoaders":[Ljava/lang/ClassLoader;
    :goto_0
    iput-object p1, p0, Lorg/reflections/util/ConfigurationBuilder;->classLoaders:[Ljava/lang/ClassLoader;

    .line 282
    return-object p0

    .line 281
    .restart local p1    # "classLoaders":[Ljava/lang/ClassLoader;
    :cond_0
    iget-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->classLoaders:[Ljava/lang/ClassLoader;

    const-class v1, Ljava/lang/ClassLoader;

    invoke-static {v0, p1, v1}, Lcom/google/common/collect/ObjectArrays;->concat([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ClassLoader;

    move-object p1, v0

    goto :goto_0
.end method

.method public varargs addScanners([Lorg/reflections/scanners/Scanner;)Lorg/reflections/util/ConfigurationBuilder;
    .locals 2
    .param p1, "scanners"    # [Lorg/reflections/scanners/Scanner;

    .prologue
    .line 148
    iget-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->scanners:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 149
    return-object p0
.end method

.method public addUrls(Ljava/util/Collection;)Lorg/reflections/util/ConfigurationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/URL;",
            ">;)",
            "Lorg/reflections/util/ConfigurationBuilder;"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/URL;>;"
    iget-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->urls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 178
    return-object p0
.end method

.method public varargs addUrls([Ljava/net/URL;)Lorg/reflections/util/ConfigurationBuilder;
    .locals 2
    .param p1, "urls"    # [Ljava/net/URL;

    .prologue
    .line 185
    iget-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->urls:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 186
    return-object p0
.end method

.method public filterInputsBy(Lcom/google/common/base/Predicate;)Lorg/reflections/util/ConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/reflections/util/ConfigurationBuilder;"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "inputsFilter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/reflections/util/ConfigurationBuilder;->inputsFilter:Lcom/google/common/base/Predicate;

    .line 226
    return-object p0
.end method

.method public varargs forPackages([Ljava/lang/String;)Lorg/reflections/util/ConfigurationBuilder;
    .locals 5
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 129
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, p1, v1

    .line 130
    .local v0, "pkg":Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/ClassLoader;

    invoke-static {v0, v4}, Lorg/reflections/util/ClasspathHelper;->forPackage(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/reflections/util/ConfigurationBuilder;->addUrls(Ljava/util/Collection;)Lorg/reflections/util/ConfigurationBuilder;

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public getClassLoaders()[Ljava/lang/ClassLoader;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->classLoaders:[Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getInputsFilter()Lcom/google/common/base/Predicate;
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

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->inputsFilter:Lcom/google/common/base/Predicate;

    return-object v0
.end method

.method public getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;
    .locals 3

    .prologue
    .line 193
    iget-object v1, p0, Lorg/reflections/util/ConfigurationBuilder;->metadataAdapter:Lorg/reflections/adapters/MetadataAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/reflections/util/ConfigurationBuilder;->metadataAdapter:Lorg/reflections/adapters/MetadataAdapter;

    .line 200
    :goto_0
    return-object v1

    .line 196
    :cond_0
    :try_start_0
    new-instance v1, Lorg/reflections/adapters/JavassistAdapter;

    invoke-direct {v1}, Lorg/reflections/adapters/JavassistAdapter;-><init>()V

    iput-object v1, p0, Lorg/reflections/util/ConfigurationBuilder;->metadataAdapter:Lorg/reflections/adapters/MetadataAdapter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v1, :cond_1

    .line 199
    sget-object v1, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    const-string v2, "could not create JavassistAdapter, using JavaReflectionAdapter"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    :cond_1
    new-instance v1, Lorg/reflections/adapters/JavaReflectionAdapter;

    invoke-direct {v1}, Lorg/reflections/adapters/JavaReflectionAdapter;-><init>()V

    iput-object v1, p0, Lorg/reflections/util/ConfigurationBuilder;->metadataAdapter:Lorg/reflections/adapters/MetadataAdapter;

    goto :goto_0
.end method

.method public getScanners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/reflections/scanners/Scanner;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->scanners:Ljava/util/Set;

    return-object v0
.end method

.method public getSerializer()Lorg/reflections/serializers/Serializer;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->serializer:Lorg/reflections/serializers/Serializer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->serializer:Lorg/reflections/serializers/Serializer;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/reflections/serializers/XmlSerializer;

    invoke-direct {v0}, Lorg/reflections/serializers/XmlSerializer;-><init>()V

    iput-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->serializer:Lorg/reflections/serializers/Serializer;

    goto :goto_0
.end method

.method public getUrls()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->urls:Ljava/util/Set;

    return-object v0
.end method

.method public setClassLoaders([Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "classLoaders"    # [Ljava/lang/ClassLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 271
    iput-object p1, p0, Lorg/reflections/util/ConfigurationBuilder;->classLoaders:[Ljava/lang/ClassLoader;

    .line 272
    return-void
.end method

.method public setExecutorService(Ljava/util/concurrent/ExecutorService;)Lorg/reflections/util/ConfigurationBuilder;
    .locals 0
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 236
    iput-object p1, p0, Lorg/reflections/util/ConfigurationBuilder;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 237
    return-object p0
.end method

.method public setInputsFilter(Lcom/google/common/base/Predicate;)V
    .locals 0
    .param p1    # Lcom/google/common/base/Predicate;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
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
    .line 219
    .local p1, "inputsFilter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/reflections/util/ConfigurationBuilder;->inputsFilter:Lcom/google/common/base/Predicate;

    .line 220
    return-void
.end method

.method public setMetadataAdapter(Lorg/reflections/adapters/MetadataAdapter;)Lorg/reflections/util/ConfigurationBuilder;
    .locals 0
    .param p1, "metadataAdapter"    # Lorg/reflections/adapters/MetadataAdapter;

    .prologue
    .line 207
    iput-object p1, p0, Lorg/reflections/util/ConfigurationBuilder;->metadataAdapter:Lorg/reflections/adapters/MetadataAdapter;

    .line 208
    return-object p0
.end method

.method public varargs setScanners([Lorg/reflections/scanners/Scanner;)Lorg/reflections/util/ConfigurationBuilder;
    .locals 1
    .param p1, "scanners"    # [Lorg/reflections/scanners/Scanner;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 142
    iget-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->scanners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 143
    invoke-virtual {p0, p1}, Lorg/reflections/util/ConfigurationBuilder;->addScanners([Lorg/reflections/scanners/Scanner;)Lorg/reflections/util/ConfigurationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setSerializer(Lorg/reflections/serializers/Serializer;)Lorg/reflections/util/ConfigurationBuilder;
    .locals 0
    .param p1, "serializer"    # Lorg/reflections/serializers/Serializer;

    .prologue
    .line 259
    iput-object p1, p0, Lorg/reflections/util/ConfigurationBuilder;->serializer:Lorg/reflections/serializers/Serializer;

    .line 260
    return-object p0
.end method

.method public setUrls(Ljava/util/Collection;)Lorg/reflections/util/ConfigurationBuilder;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/URL;",
            ">;)",
            "Lorg/reflections/util/ConfigurationBuilder;"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/URL;>;"
    invoke-static {p1}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->urls:Ljava/util/Set;

    .line 162
    return-object p0
.end method

.method public varargs setUrls([Ljava/net/URL;)Lorg/reflections/util/ConfigurationBuilder;
    .locals 1
    .param p1, "urls"    # [Ljava/net/URL;

    .prologue
    .line 169
    invoke-static {p1}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->urls:Ljava/util/Set;

    .line 170
    return-object p0
.end method

.method public useParallelExecutor()Lorg/reflections/util/ConfigurationBuilder;
    .locals 1

    .prologue
    .line 243
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/reflections/util/ConfigurationBuilder;->useParallelExecutor(I)Lorg/reflections/util/ConfigurationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public useParallelExecutor(I)Lorg/reflections/util/ConfigurationBuilder;
    .locals 1
    .param p1, "availableProcessors"    # I

    .prologue
    .line 249
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/reflections/util/ConfigurationBuilder;->setExecutorService(Ljava/util/concurrent/ExecutorService;)Lorg/reflections/util/ConfigurationBuilder;

    .line 250
    return-object p0
.end method
