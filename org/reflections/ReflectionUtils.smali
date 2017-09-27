.class public abstract Lorg/reflections/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# static fields
.field public static includeObject:Z

.field private static primitiveDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static primitiveNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static primitiveTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lorg/reflections/ReflectionUtils;->includeObject:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([Ljava/lang/annotation/Annotation;)[Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # [Ljava/lang/annotation/Annotation;

    .prologue
    .line 56
    invoke-static {p0}, Lorg/reflections/ReflectionUtils;->annotationTypes([Ljava/lang/annotation/Annotation;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/annotation/Annotation;
    .param p1, "x1"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 56
    invoke-static {p0, p1}, Lorg/reflections/ReflectionUtils;->areAnnotationMembersMatching(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/reflect/Member;)[Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Ljava/lang/reflect/Member;

    .prologue
    .line 56
    invoke-static {p0}, Lorg/reflections/ReflectionUtils;->parameterTypes(Ljava/lang/reflect/Member;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/reflect/Member;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Ljava/lang/reflect/Member;

    .prologue
    .line 56
    invoke-static {p0}, Lorg/reflections/ReflectionUtils;->parameterAnnotations(Ljava/lang/reflect/Member;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Iterable;

    .prologue
    .line 56
    invoke-static {p0}, Lorg/reflections/ReflectionUtils;->annotationTypes(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static annotationTypes(Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 421
    .local p0, "annotations":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/annotation/Annotation;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 422
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 423
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_0
    return-object v1
.end method

.method private static annotationTypes([Ljava/lang/annotation/Annotation;)[Ljava/lang/Class;
    .locals 3
    .param p0, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/annotation/Annotation;",
            ")[",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Class;

    .line 428
    .local v1, "result":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    :cond_0
    return-object v1
.end method

.method private static areAnnotationMembersMatching(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z
    .locals 9
    .param p0, "annotation1"    # Ljava/lang/annotation/Annotation;
    .param p1, "annotation2"    # Ljava/lang/annotation/Annotation;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 461
    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 462
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    move v4, v2

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    .line 464
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    :try_start_0
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_1

    .line 471
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    return v2

    .line 465
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/reflections/ReflectionsException;

    const-string v5, "could not invoke method %s on annotation %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v0}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 462
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_2
    move v2, v3

    .line 469
    goto :goto_1
.end method

.method static varargs filter(Ljava/lang/Iterable;[Lcom/google/common/base/Predicate;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;[",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 456
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "predicates":[Lcom/google/common/base/Predicate;, "[Lcom/google/common/base/Predicate<-TT;>;"
    invoke-static {p1}, Lorg/reflections/util/Utils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    .line 457
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/common/base/Predicates;->and([Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    goto :goto_0
.end method

.method static varargs filter([Ljava/lang/Object;[Lcom/google/common/base/Predicate;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    .local p1, "predicates":[Lcom/google/common/base/Predicate;, "[Lcom/google/common/base/Predicate<-TT;>;"
    invoke-static {p1}, Lorg/reflections/util/Utils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 452
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/base/Predicates;->and([Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs forName(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 13
    .param p0, "typeName"    # Ljava/lang/String;
    .param p1, "classLoaders"    # [Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 348
    invoke-static {}, Lorg/reflections/ReflectionUtils;->getPrimitiveNames()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 349
    invoke-static {}, Lorg/reflections/ReflectionUtils;->getPrimitiveTypes()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Lorg/reflections/ReflectionUtils;->getPrimitiveNames()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 389
    :goto_0
    return-object v7

    .line 352
    :cond_0
    const-string v8, "["

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 353
    const-string v8, "["

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 354
    .local v3, "i":I
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "]"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "array":Ljava/lang/String;
    invoke-static {}, Lorg/reflections/ReflectionUtils;->getPrimitiveNames()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 358
    invoke-static {}, Lorg/reflections/ReflectionUtils;->getPrimitiveDescriptors()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Lorg/reflections/ReflectionUtils;->getPrimitiveNames()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "type":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 363
    .restart local v6    # "type":Ljava/lang/String;
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 368
    .end local v0    # "array":Ljava/lang/String;
    .end local v3    # "i":I
    :goto_2
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 369
    .local v5, "reflectionsExceptions":Ljava/util/List;, "Ljava/util/List<Lorg/reflections/ReflectionsException;>;"
    invoke-static {p1}, Lorg/reflections/util/ClasspathHelper;->classLoaders([Ljava/lang/ClassLoader;)[Ljava/lang/ClassLoader;

    move-result-object v8

    array-length v9, v8

    :goto_3
    if-ge v7, v9, :cond_4

    aget-object v1, v8, v7

    .line 370
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const-string v10, "["

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 371
    const/4 v10, 0x0

    :try_start_0
    invoke-static {v6, v10, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 360
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v5    # "reflectionsExceptions":Ljava/util/List;, "Ljava/util/List<Lorg/reflections/ReflectionsException;>;"
    .restart local v0    # "array":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "L"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 365
    .end local v0    # "array":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v6    # "type":Ljava/lang/String;
    :cond_2
    move-object v6, p0

    .restart local v6    # "type":Ljava/lang/String;
    goto :goto_2

    .line 372
    .restart local v1    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v5    # "reflectionsExceptions":Ljava/util/List;, "Ljava/util/List<Lorg/reflections/ReflectionsException;>;"
    :catch_0
    move-exception v2

    .line 373
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v10, Lorg/reflections/ReflectionsException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "could not get type for name "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v2}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_3
    :try_start_1
    invoke-virtual {v1, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    goto/16 :goto_0

    .line 377
    :catch_1
    move-exception v2

    .line 378
    .restart local v2    # "e":Ljava/lang/Throwable;
    new-instance v10, Lorg/reflections/ReflectionsException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "could not get type for name "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v2}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 382
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_4
    sget-object v7, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v7, :cond_5

    .line 383
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/reflections/ReflectionsException;

    .line 384
    .local v4, "reflectionsException":Lorg/reflections/ReflectionsException;
    sget-object v8, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "could not get type for name "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from any class loader"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 389
    .end local v4    # "reflectionsException":Lorg/reflections/ReflectionsException;
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public static varargs forNames(Ljava/lang/Iterable;[Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 5
    .param p1, "classLoaders"    # [Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "classes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+TT;>;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 397
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/reflections/ReflectionUtils;->forName(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 398
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    .line 399
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 402
    .end local v0    # "className":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-object v1
.end method

.method public static varargs getAll(Ljava/util/Set;[Lcom/google/common/base/Predicate;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/AnnotatedElement;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;[",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "elements":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "predicates":[Lcom/google/common/base/Predicate;, "[Lcom/google/common/base/Predicate<-TT;>;"
    invoke-static {p1}, Lorg/reflections/util/Utils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "elements":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "elements":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    :cond_0
    invoke-static {p1}, Lcom/google/common/base/Predicates;->and([Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs getAllAnnotations(Ljava/lang/reflect/AnnotatedElement;[Lcom/google/common/base/Predicate;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/AnnotatedElement;",
            ">(TT;[",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "type":Ljava/lang/reflect/AnnotatedElement;, "TT;"
    .local p1, "predicates":[Lcom/google/common/base/Predicate;, "[Lcom/google/common/base/Predicate<Ljava/lang/annotation/Annotation;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 116
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/annotation/Annotation;>;"
    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 117
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/AnnotatedElement;, "TT;"
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/common/base/Predicate;

    invoke-static {p0, v2}, Lorg/reflections/ReflectionUtils;->getAllSuperTypes(Ljava/lang/Class;[Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 118
    .local v1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1, p1}, Lorg/reflections/ReflectionUtils;->getAnnotations(Ljava/lang/reflect/AnnotatedElement;[Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 121
    .end local v1    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "type":Ljava/lang/reflect/AnnotatedElement;, "TT;"
    :cond_0
    invoke-static {p0, p1}, Lorg/reflections/ReflectionUtils;->getAnnotations(Ljava/lang/reflect/AnnotatedElement;[Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 123
    .end local p0    # "type":Ljava/lang/reflect/AnnotatedElement;, "TT;"
    :cond_1
    return-object v0
.end method

.method public static varargs getAllConstructors(Ljava/lang/Class;[Lcom/google/common/base/Predicate;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/lang/reflect/Constructor;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "predicates":[Lcom/google/common/base/Predicate;, "[Lcom/google/common/base/Predicate<-Ljava/lang/reflect/Constructor;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 90
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Constructor;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/common/base/Predicate;

    invoke-static {p0, v2}, Lorg/reflections/ReflectionUtils;->getAllSuperTypes(Ljava/lang/Class;[Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 91
    .local v1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1, p1}, Lorg/reflections/ReflectionUtils;->getConstructors(Ljava/lang/Class;[Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 93
    .end local v1    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object v0
.end method

.method public static varargs getAllFields(Ljava/lang/Class;[Lcom/google/common/base/Predicate;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "predicates":[Lcom/google/common/base/Predicate;, "[Lcom/google/common/base/Predicate<-Ljava/lang/reflect/Field;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 104
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/common/base/Predicate;

    invoke-static {p0, v2}, Lorg/reflections/ReflectionUtils;->getAllSuperTypes(Ljava/lang/Class;[Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .local v1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1, p1}, Lorg/reflections/ReflectionUtils;->getFields(Ljava/lang/Class;[Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 105
    .end local v1    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object v0
.end method

.method public static varargs getAllMethods(Ljava/lang/Class;[Lcom/google/common/base/Predicate;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/lang/reflect/Method;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "predicates":[Lcom/google/common/base/Predicate;, "[Lcom/google/common/base/Predicate<-Ljava/lang/reflect/Method;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 76
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Method;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/common/base/Predicate;

    invoke-static {p0, v2}, Lorg/reflections/ReflectionUtils;->getAllSuperTypes(Ljava/lang/Class;[Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 77
    .local v1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1, p1}, Lorg/reflections/ReflectionUtils;->getMethods(Ljava/lang/Class;[Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 79
    .end local v1    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object v0
.end method

.method public static varargs getAllSuperTypes(Ljava/lang/Class;[Lcom/google/common/base/Predicate;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "predicates":[Lcom/google/common/base/Predicate;, "[Lcom/google/common/base/Predicate<-Ljava/lang/Class<*>;>;"
    const/4 v3, 0x0

    .line 64
    invoke-static {}, Lcom/google/common/collect/Sets;->newLinkedHashSet()Ljava/util/LinkedHashSet;

    move-result-object v1

    .line 65
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    if-eqz p0, :cond_1

    sget-boolean v2, Lorg/reflections/ReflectionUtils;->includeObject:Z

    if-nez v2, :cond_0

    const-class v2, Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    :cond_0
    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    new-array v4, v3, [Lcom/google/common/base/Predicate;

    invoke-static {v2, v4}, Lorg/reflections/ReflectionUtils;->getAllSuperTypes(Ljava/lang/Class;[Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 68
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v4, v2

    .local v0, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v6, v3, [Lcom/google/common/base/Predicate;

    invoke-static {v0, v6}, Lorg/reflections/ReflectionUtils;->getAllSuperTypes(Ljava/lang/Class;[Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-static {v1, p1}, Lorg/reflections/ReflectionUtils;->filter(Ljava/lang/Iterable;[Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method public static varargs getAnnotations(Ljava/lang/reflect/AnnotatedElement;[Lcom/google/common/base/Predicate;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/AnnotatedElement;",
            ">(TT;[",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "type":Ljava/lang/reflect/AnnotatedElement;, "TT;"
    .local p1, "predicates":[Lcom/google/common/base/Predicate;, "[Lcom/google/common/base/Predicate<Ljava/lang/annotation/Annotation;>;"
    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/reflections/ReflectionUtils;->filter([Ljava/lang/Object;[Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getConstructors(Ljava/lang/Class;[Lcom/google/common/base/Predicate;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/lang/reflect/Constructor;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "predicates":[Lcom/google/common/base/Predicate;, "[Lcom/google/common/base/Predicate<-Ljava/lang/reflect/Constructor;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/reflections/ReflectionUtils;->filter([Ljava/lang/Object;[Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getFields(Ljava/lang/Class;[Lcom/google/common/base/Predicate;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "predicates":[Lcom/google/common/base/Predicate;, "[Lcom/google/common/base/Predicate<-Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/reflections/ReflectionUtils;->filter([Ljava/lang/Object;[Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getMethods(Ljava/lang/Class;[Lcom/google/common/base/Predicate;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/lang/reflect/Method;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "predicates":[Lcom/google/common/base/Predicate;, "[Lcom/google/common/base/Predicate<-Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_0
    invoke-static {v0, p1}, Lorg/reflections/ReflectionUtils;->filter([Ljava/lang/Object;[Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0
.end method

.method private static getPrimitiveDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    invoke-static {}, Lorg/reflections/ReflectionUtils;->initPrimitives()V

    sget-object v0, Lorg/reflections/ReflectionUtils;->primitiveDescriptors:Ljava/util/List;

    return-object v0
.end method

.method private static getPrimitiveNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    invoke-static {}, Lorg/reflections/ReflectionUtils;->initPrimitives()V

    sget-object v0, Lorg/reflections/ReflectionUtils;->primitiveNames:Ljava/util/List;

    return-object v0
.end method

.method private static getPrimitiveTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    invoke-static {}, Lorg/reflections/ReflectionUtils;->initPrimitives()V

    sget-object v0, Lorg/reflections/ReflectionUtils;->primitiveTypes:Ljava/util/List;

    return-object v0
.end method

.method private static initPrimitives()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 438
    sget-object v0, Lorg/reflections/ReflectionUtils;->primitiveNames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 439
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "boolean"

    aput-object v1, v0, v3

    const-string v1, "char"

    aput-object v1, v0, v4

    const-string v1, "byte"

    aput-object v1, v0, v5

    const-string v1, "short"

    aput-object v1, v0, v6

    const-string v1, "int"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "long"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "float"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "double"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "void"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lorg/reflections/ReflectionUtils;->primitiveNames:Ljava/util/List;

    .line 440
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lorg/reflections/ReflectionUtils;->primitiveTypes:Ljava/util/List;

    .line 441
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Z"

    aput-object v1, v0, v3

    const-string v1, "C"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "S"

    aput-object v1, v0, v6

    const-string v1, "I"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "J"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "D"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "V"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lorg/reflections/ReflectionUtils;->primitiveDescriptors:Ljava/util/List;

    .line 443
    :cond_0
    return-void
.end method

.method private static parameterAnnotations(Ljava/lang/reflect/Member;)Ljava/util/Set;
    .locals 5
    .param p0, "member"    # Ljava/lang/reflect/Member;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 413
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/annotation/Annotation;>;"
    instance-of v3, p0, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    check-cast p0, Ljava/lang/reflect/Method;

    .line 414
    .end local p0    # "member":Ljava/lang/reflect/Member;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 416
    .local v1, "annotations":[[Ljava/lang/annotation/Annotation;
    :goto_0
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .local v0, "annotation":[Ljava/lang/annotation/Annotation;
    invoke-static {v2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 414
    .end local v0    # "annotation":[Ljava/lang/annotation/Annotation;
    .end local v1    # "annotations":[[Ljava/lang/annotation/Annotation;
    .restart local p0    # "member":Ljava/lang/reflect/Member;
    :cond_0
    instance-of v3, p0, Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_1

    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 415
    .end local p0    # "member":Ljava/lang/reflect/Member;
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    goto :goto_0

    .restart local p0    # "member":Ljava/lang/reflect/Member;
    :cond_1
    const/4 v3, 0x0

    check-cast v3, [[Ljava/lang/annotation/Annotation;

    move-object v1, v3

    goto :goto_0

    .line 417
    .end local p0    # "member":Ljava/lang/reflect/Member;
    .restart local v1    # "annotations":[[Ljava/lang/annotation/Annotation;
    :cond_2
    return-object v2
.end method

.method private static parameterTypes(Ljava/lang/reflect/Member;)[Ljava/lang/Class;
    .locals 3
    .param p0, "member"    # Ljava/lang/reflect/Member;

    .prologue
    const/4 v0, 0x0

    .line 406
    if-eqz p0, :cond_0

    .line 407
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/reflect/Method;

    if-ne v1, v2, :cond_1

    check-cast p0, Ljava/lang/reflect/Method;

    .end local p0    # "member":Ljava/lang/reflect/Member;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 408
    :cond_0
    :goto_0
    return-object v0

    .restart local p0    # "member":Ljava/lang/reflect/Member;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/reflect/Constructor;

    if-ne v1, v2, :cond_0

    check-cast p0, Ljava/lang/reflect/Constructor;

    .end local p0    # "member":Ljava/lang/reflect/Member;
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public static withAnnotation(Ljava/lang/Class;)Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/AnnotatedElement;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Lorg/reflections/ReflectionUtils$4;

    invoke-direct {v0, p0}, Lorg/reflections/ReflectionUtils$4;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static withAnnotation(Ljava/lang/annotation/Annotation;)Lcom/google/common/base/Predicate;
    .locals 1
    .param p0, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/AnnotatedElement;",
            ">(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lorg/reflections/ReflectionUtils$6;

    invoke-direct {v0, p0}, Lorg/reflections/ReflectionUtils$6;-><init>(Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public static varargs withAnnotations([Ljava/lang/Class;)Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/AnnotatedElement;",
            ">([",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "annotations":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Lorg/reflections/ReflectionUtils$5;

    invoke-direct {v0, p0}, Lorg/reflections/ReflectionUtils$5;-><init>([Ljava/lang/Class;)V

    return-object v0
.end method

.method public static varargs withAnnotations([Ljava/lang/annotation/Annotation;)Lcom/google/common/base/Predicate;
    .locals 1
    .param p0, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/AnnotatedElement;",
            ">([",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Lorg/reflections/ReflectionUtils$7;

    invoke-direct {v0, p0}, Lorg/reflections/ReflectionUtils$7;-><init>([Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public static withAnyParameterAnnotation(Ljava/lang/Class;)Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/reflect/Member;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Lorg/reflections/ReflectionUtils$11;

    invoke-direct {v0, p0}, Lorg/reflections/ReflectionUtils$11;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static withAnyParameterAnnotation(Ljava/lang/annotation/Annotation;)Lcom/google/common/base/Predicate;
    .locals 1
    .param p0, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/reflect/Member;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    new-instance v0, Lorg/reflections/ReflectionUtils$12;

    invoke-direct {v0, p0}, Lorg/reflections/ReflectionUtils$12;-><init>(Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public static withClassModifier(I)Lcom/google/common/base/Predicate;
    .locals 1
    .param p0, "mod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 336
    new-instance v0, Lorg/reflections/ReflectionUtils$18;

    invoke-direct {v0, p0}, Lorg/reflections/ReflectionUtils$18;-><init>(I)V

    return-object v0
.end method

.method public static withModifier(I)Lcom/google/common/base/Predicate;
    .locals 1
    .param p0, "mod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/Member;",
            ">(I)",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Lorg/reflections/ReflectionUtils$17;

    invoke-direct {v0, p0}, Lorg/reflections/ReflectionUtils$17;-><init>(I)V

    return-object v0
.end method

.method public static withName(Ljava/lang/String;)Lcom/google/common/base/Predicate;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/Member;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lorg/reflections/ReflectionUtils$1;

    invoke-direct {v0, p0}, Lorg/reflections/ReflectionUtils$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs withParameters([Ljava/lang/Class;)Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/reflect/Member;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lorg/reflections/ReflectionUtils$8;

    invoke-direct {v0, p0}, Lorg/reflections/ReflectionUtils$8;-><init>([Ljava/lang/Class;)V

    return-object v0
.end method

.method public static varargs withParametersAssignableTo([Ljava/lang/Class;)Lcom/google/common/base/Predicate;
    .locals 1
    .param p0, "types"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/reflect/Member;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Lorg/reflections/ReflectionUtils$9;

    invoke-direct {v0, p0}, Lorg/reflections/ReflectionUtils$9;-><init>([Ljava/lang/Class;)V

    return-object v0
.end method

.method public static withParametersCount(I)Lcom/google/common/base/Predicate;
    .locals 1
    .param p0, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/reflect/Member;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Lorg/reflections/ReflectionUtils$10;

    invoke-direct {v0, p0}, Lorg/reflections/ReflectionUtils$10;-><init>(I)V

    return-object v0
.end method

.method public static withPattern(Ljava/lang/String;)Lcom/google/common/base/Predicate;
    .locals 1
    .param p0, "regex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/AnnotatedElement;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Lorg/reflections/ReflectionUtils$3;

    invoke-direct {v0, p0}, Lorg/reflections/ReflectionUtils$3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static withPrefix(Ljava/lang/String;)Lcom/google/common/base/Predicate;
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/Member;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lorg/reflections/ReflectionUtils$2;

    invoke-direct {v0, p0}, Lorg/reflections/ReflectionUtils$2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static withReturnType(Ljava/lang/Class;)Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/reflections/ReflectionUtils$15;

    invoke-direct {v0, p0}, Lorg/reflections/ReflectionUtils$15;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static withReturnTypeAssignableTo(Ljava/lang/Class;)Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/reflections/ReflectionUtils$16;

    invoke-direct {v0, p0}, Lorg/reflections/ReflectionUtils$16;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static withType(Ljava/lang/Class;)Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/reflections/ReflectionUtils$13;

    invoke-direct {v0, p0}, Lorg/reflections/ReflectionUtils$13;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static withTypeAssignableTo(Ljava/lang/Class;)Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/reflections/ReflectionUtils$14;

    invoke-direct {v0, p0}, Lorg/reflections/ReflectionUtils$14;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
