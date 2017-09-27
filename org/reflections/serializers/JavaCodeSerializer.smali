.class public Lorg/reflections/serializers/JavaCodeSerializer;
.super Ljava/lang/Object;
.source "JavaCodeSerializer.java"

# interfaces
.implements Lorg/reflections/serializers/Serializer;


# static fields
.field private static final arrayDescriptor:Ljava/lang/String; = "$$"

.field private static final dotSeparator:Ljava/lang/String; = "."

.field private static final doubleSeparator:Ljava/lang/String; = "__"

.field private static final pathSeparator:Ljava/lang/String; = "_"

.field private static final tokenSeparator:Ljava/lang/String; = "_"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNonDuplicateName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p1, "candidate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 253
    .local p2, "prev":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/reflections/serializers/JavaCodeSerializer;->getNonDuplicateName(Ljava/lang/String;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNonDuplicateName(Ljava/lang/String;Ljava/util/List;I)Ljava/lang/String;
    .locals 4
    .param p1, "candidate"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 238
    .local p2, "prev":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/reflections/serializers/JavaCodeSerializer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "normalized":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 240
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lorg/reflections/serializers/JavaCodeSerializer;->getNonDuplicateName(Ljava/lang/String;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v1

    .line 245
    .end local v1    # "normalized":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 239
    .restart local v1    # "normalized":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "candidate"    # Ljava/lang/String;

    .prologue
    .line 249
    const-string v0, "."

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resolveAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 9
    .param p0, "annotation"    # Ljava/lang/Class;

    .prologue
    .line 290
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_"

    const-string v8, "."

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 291
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 292
    .local v3, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3}, Lorg/reflections/serializers/JavaCodeSerializer;->resolveClassOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 293
    .local v0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/ClassLoader;

    invoke-static {v5, v6}, Lorg/reflections/ReflectionUtils;->forName(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 294
    .local v1, "aClass1":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 295
    .local v2, "annotation1":Ljava/lang/annotation/Annotation;
    return-object v2

    .line 296
    .end local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "aClass1":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v2    # "annotation1":Ljava/lang/annotation/Annotation;
    .end local v3    # "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "name":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 297
    .local v4, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/reflections/ReflectionsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not resolve to annotation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static resolveClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4
    .param p0, "aClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 272
    :try_start_0
    invoke-static {p0}, Lorg/reflections/serializers/JavaCodeSerializer;->resolveClassOf(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/reflections/ReflectionsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not resolve to class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static resolveClassOf(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 6
    .param p0, "element"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 258
    move-object v1, p0

    .line 259
    .local v1, "cursor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v2

    .line 261
    .local v2, "ognl":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 263
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 266
    :cond_0
    const-string v3, "."

    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/util/LinkedList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".$"

    const-string v5, "$"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "classOgnl":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    return-object v3
.end method

.method public static resolveField(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 6
    .param p0, "aField"    # Ljava/lang/Class;

    .prologue
    .line 280
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 282
    .local v0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lorg/reflections/serializers/JavaCodeSerializer;->resolveClassOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 283
    .end local v0    # "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/reflections/ReflectionsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not resolve to field "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static resolveMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 11
    .param p0, "aMethod"    # Ljava/lang/Class;

    .prologue
    .line 302
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, "methodOgnl":Ljava/lang/String;
    :try_start_0
    const-string v8, "_"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 308
    const/4 v8, 0x0

    const-string v9, "_"

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, "methodName":Ljava/lang/String;
    const-string v8, "_"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "__"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 310
    .local v6, "params":[Ljava/lang/String;
    array-length v8, v6

    new-array v5, v8, [Ljava/lang/Class;

    .line 311
    .local v5, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v6

    if-ge v2, v8, :cond_1

    .line 312
    aget-object v8, v6, v2

    const-string v9, "$$"

    const-string v10, "[]"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "_"

    const-string v10, "."

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 313
    .local v7, "typeName":Ljava/lang/String;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/ClassLoader;

    invoke-static {v7, v8}, Lorg/reflections/ReflectionUtils;->forName(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v5, v2

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    .end local v2    # "i":I
    .end local v3    # "methodName":Ljava/lang/String;
    .end local v5    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v6    # "params":[Ljava/lang/String;
    .end local v7    # "typeName":Ljava/lang/String;
    :cond_0
    move-object v3, v4

    .line 317
    .restart local v3    # "methodName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 320
    .restart local v5    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 321
    .local v0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lorg/reflections/serializers/JavaCodeSerializer;->resolveClassOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    return-object v8

    .line 322
    .end local v0    # "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "methodName":Ljava/lang/String;
    .end local v5    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Lorg/reflections/ReflectionsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "could not resolve to method "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)Lorg/reflections/Reflections;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read is not implemented on JavaCodeSerializer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public save(Lorg/reflections/Reflections;Ljava/lang/String;)Ljava/io/File;
    .locals 11
    .param p1, "reflections"    # Lorg/reflections/Reflections;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x2e

    const/16 v9, 0x2f

    .line 77
    const-string v7, "/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 78
    const/4 v7, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 82
    :cond_0
    invoke-virtual {p2, v10, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    const-string v8, ".java"

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "filename":Ljava/lang/String;
    invoke-static {v3}, Lorg/reflections/util/Utils;->prepareFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 88
    .local v2, "file":Ljava/io/File;
    invoke-virtual {p2, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 89
    .local v4, "lastDot":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_2

    .line 90
    const-string v5, ""

    .line 91
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p2, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "className":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string v7, "//generated using Reflections JavaCodeSerializer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ["

    .line 101
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    .line 102
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 104
    const-string v7, "package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_1
    const-string v7, "public interface "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " {\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p0, p1}, Lorg/reflections/serializers/JavaCodeSerializer;->toString(Lorg/reflections/Reflections;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v7, "}\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/google/common/io/Files;->write(Ljava/lang/CharSequence;Ljava/io/File;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-object v2

    .line 93
    .end local v0    # "className":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {p2, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 94
    .restart local v5    # "packageName":Ljava/lang/String;
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "className":Ljava/lang/String;
    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    throw v7
.end method

.method public toString(Lorg/reflections/Reflections;)Ljava/lang/String;
    .locals 34
    .param p1, "reflections"    # Lorg/reflections/Reflections;

    .prologue
    .line 121
    invoke-virtual/range {p1 .. p1}, Lorg/reflections/Reflections;->getStore()Lorg/reflections/Store;

    move-result-object v28

    const-class v29, Lorg/reflections/scanners/TypeElementsScanner;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lorg/reflections/Store;->get(Ljava/lang/String;)Lcom/google/common/collect/Multimap;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/google/common/collect/Multimap;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 122
    sget-object v28, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v28, :cond_0

    sget-object v28, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    const-string v29, "JavaCodeSerializer needs TypeElementsScanner configured"

    invoke-interface/range {v28 .. v29}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 125
    :cond_0
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v25, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v24

    .line 128
    .local v24, "prevPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x1

    .line 130
    .local v13, "indent":I
    invoke-virtual/range {p1 .. p1}, Lorg/reflections/Reflections;->getStore()Lorg/reflections/Store;

    move-result-object v28

    const-class v29, Lorg/reflections/scanners/TypeElementsScanner;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lorg/reflections/Store;->get(Ljava/lang/String;)Lcom/google/common/collect/Multimap;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v16

    .line 131
    .local v16, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 132
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_0
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_f

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 133
    .local v10, "fqn":Ljava/lang/String;
    const-string v28, "\\."

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v27

    .line 136
    .local v27, "typePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 137
    .local v11, "i":I
    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v28

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v28

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v28

    move/from16 v0, v28

    if-ge v11, v0, :cond_1

    move-object/from16 v0, v27

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 138
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 142
    :cond_1
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v15

    .local v15, "j":I
    :goto_2
    if-le v15, v11, :cond_2

    .line 143
    const-string v28, "\t"

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, v28

    invoke-static {v0, v13}, Lorg/reflections/util/Utils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, "}\n"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    add-int/lit8 v15, v15, -0x1

    goto :goto_2

    .line 147
    :cond_2
    move v15, v11

    :goto_3
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    if-ge v15, v0, :cond_3

    .line 148
    const-string v28, "\t"

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "indent":I
    .local v14, "indent":I
    move-object/from16 v0, v28

    invoke-static {v0, v13}, Lorg/reflections/util/Utils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, "public interface "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v27

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v15}, Lorg/reflections/serializers/JavaCodeSerializer;->getNonDuplicateName(Ljava/lang/String;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, " {\n"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    add-int/lit8 v15, v15, 0x1

    move v13, v14

    .end local v14    # "indent":I
    .restart local v13    # "indent":I
    goto :goto_3

    .line 152
    :cond_3
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 155
    .local v5, "className":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 156
    .local v4, "annotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 157
    .local v9, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    new-instance v30, Lorg/reflections/serializers/JavaCodeSerializer$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/reflections/serializers/JavaCodeSerializer$1;-><init>(Lorg/reflections/serializers/JavaCodeSerializer;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/common/collect/Multimaps;->newSetMultimap(Ljava/util/Map;Lcom/google/common/base/Supplier;)Lcom/google/common/collect/SetMultimap;

    move-result-object v18

    .line 163
    .local v18, "methods":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/reflections/Reflections;->getStore()Lorg/reflections/Store;

    move-result-object v28

    const-class v30, Lorg/reflections/scanners/TypeElementsScanner;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v10, v31, v32

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/reflections/Store;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_4
    :goto_4
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_8

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 164
    .local v6, "element":Ljava/lang/String;
    const-string v30, "@"

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 165
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 166
    :cond_5
    const-string v30, "("

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 168
    const-string v30, "<"

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_4

    .line 169
    const/16 v30, 0x28

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 170
    .local v12, "i1":I
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v6, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 171
    .local v19, "name":Ljava/lang/String;
    add-int/lit8 v30, v12, 0x1

    const-string v31, ")"

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 173
    .local v22, "params":Ljava/lang/String;
    const-string v23, ""

    .line 174
    .local v23, "paramsDescriptor":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v30

    if-eqz v30, :cond_6

    .line 175
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "_"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "."

    const-string v32, "_"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    const-string v32, ", "

    const-string v33, "__"

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    const-string v32, "[]"

    const-string v33, "$$"

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 177
    :cond_6
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 178
    .local v21, "normalized":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 180
    .end local v12    # "i1":I
    .end local v19    # "name":Ljava/lang/String;
    .end local v21    # "normalized":Ljava/lang/String;
    .end local v22    # "params":Ljava/lang/String;
    .end local v23    # "paramsDescriptor":Ljava/lang/String;
    :cond_7
    invoke-static {v6}, Lorg/reflections/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_4

    .line 182
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 187
    .end local v6    # "element":Ljava/lang/String;
    :cond_8
    const-string v28, "\t"

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "indent":I
    .restart local v14    # "indent":I
    move-object/from16 v0, v28

    invoke-static {v0, v13}, Lorg/reflections/util/Utils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, "public interface "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v30

    invoke-direct {v0, v5, v1, v2}, Lorg/reflections/serializers/JavaCodeSerializer;->getNonDuplicateName(Ljava/lang/String;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, " {\n"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_11

    .line 191
    const-string v28, "\t"

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "indent":I
    .restart local v13    # "indent":I
    move-object/from16 v0, v28

    invoke-static {v0, v14}, Lorg/reflections/util/Utils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, "public interface fields {\n"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_5
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_9

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 193
    .local v8, "field":Ljava/lang/String;
    const-string v30, "\t"

    move-object/from16 v0, v30

    invoke-static {v0, v13}, Lorg/reflections/util/Utils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "public interface "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v8, v1}, Lorg/reflections/serializers/JavaCodeSerializer;->getNonDuplicateName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " {}\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 195
    .end local v8    # "field":Ljava/lang/String;
    :cond_9
    const-string v28, "\t"

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, v28

    invoke-static {v0, v13}, Lorg/reflections/util/Utils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, "}\n"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :goto_6
    invoke-interface/range {v18 .. v18}, Lcom/google/common/collect/Multimap;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_c

    .line 200
    const-string v28, "\t"

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "indent":I
    .restart local v14    # "indent":I
    move-object/from16 v0, v28

    invoke-static {v0, v13}, Lorg/reflections/util/Utils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, "public interface methods {\n"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-interface/range {v18 .. v18}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_7
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_b

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 202
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 203
    .local v26, "simpleName":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 205
    .restart local v21    # "normalized":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Collection;->size()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    move-object/from16 v17, v26

    .line 207
    .local v17, "methodName":Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v9}, Lorg/reflections/serializers/JavaCodeSerializer;->getNonDuplicateName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v17

    .line 209
    const-string v30, "\t"

    move-object/from16 v0, v30

    invoke-static {v0, v14}, Lorg/reflections/util/Utils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "public interface "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lorg/reflections/serializers/JavaCodeSerializer;->getNonDuplicateName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " {}\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .end local v17    # "methodName":Ljava/lang/String;
    :cond_a
    move-object/from16 v17, v21

    .line 205
    goto :goto_8

    .line 211
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "normalized":Ljava/lang/String;
    .end local v26    # "simpleName":Ljava/lang/String;
    :cond_b
    const-string v28, "\t"

    add-int/lit8 v13, v14, -0x1

    .end local v14    # "indent":I
    .restart local v13    # "indent":I
    move-object/from16 v0, v28

    invoke-static {v0, v13}, Lorg/reflections/util/Utils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, "}\n"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_c
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_e

    .line 216
    const-string v28, "\t"

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "indent":I
    .restart local v14    # "indent":I
    move-object/from16 v0, v28

    invoke-static {v0, v13}, Lorg/reflections/util/Utils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, "public interface annotations {\n"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_9
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_d

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 218
    .local v3, "annotation":Ljava/lang/String;
    move-object/from16 v20, v3

    .line 219
    .local v20, "nonDuplicateName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lorg/reflections/serializers/JavaCodeSerializer;->getNonDuplicateName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v20

    .line 220
    const-string v30, "\t"

    move-object/from16 v0, v30

    invoke-static {v0, v14}, Lorg/reflections/util/Utils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "public interface "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " {}\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 222
    .end local v3    # "annotation":Ljava/lang/String;
    .end local v20    # "nonDuplicateName":Ljava/lang/String;
    :cond_d
    const-string v28, "\t"

    add-int/lit8 v13, v14, -0x1

    .end local v14    # "indent":I
    .restart local v13    # "indent":I
    move-object/from16 v0, v28

    invoke-static {v0, v13}, Lorg/reflections/util/Utils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, "}\n"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_e
    move-object/from16 v24, v27

    .line 226
    goto/16 :goto_0

    .line 230
    .end local v4    # "annotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "className":Ljava/lang/String;
    .end local v9    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "fqn":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v15    # "j":I
    .end local v18    # "methods":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27    # "typePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_f
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v15

    .restart local v15    # "j":I
    :goto_a
    const/16 v28, 0x1

    move/from16 v0, v28

    if-lt v15, v0, :cond_10

    .line 231
    const-string v28, "\t"

    move-object/from16 v0, v28

    invoke-static {v0, v15}, Lorg/reflections/util/Utils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "}\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    add-int/lit8 v15, v15, -0x1

    goto :goto_a

    .line 234
    :cond_10
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    return-object v28

    .end local v13    # "indent":I
    .restart local v4    # "annotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "className":Ljava/lang/String;
    .restart local v9    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "fqn":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v14    # "indent":I
    .restart local v18    # "methods":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v27    # "typePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    move v13, v14

    .end local v14    # "indent":I
    .restart local v13    # "indent":I
    goto/16 :goto_6
.end method
