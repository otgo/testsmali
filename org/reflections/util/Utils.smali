.class public abstract Lorg/reflections/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/InputStream;)V
    .locals 3
    .param p0, "closeable"    # Ljava/io/InputStream;

    .prologue
    .line 143
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v1, :cond_0

    .line 146
    sget-object v1, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    const-string v2, "Could not close InputStream"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static findLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/slf4j/Logger;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 154
    .local p0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v1, "org.slf4j.impl.StaticLoggerBinder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 155
    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 157
    :goto_0
    return-object v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs getConstructorsFromDescriptors(Ljava/lang/Iterable;[Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 5
    .param p1, "classLoaders"    # [Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "annotatedWith":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 110
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Constructor;>;"
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

    .line 111
    .local v0, "annotated":Ljava/lang/String;
    invoke-static {v0}, Lorg/reflections/util/Utils;->isConstructor(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    invoke-static {v0, p1}, Lorg/reflections/util/Utils;->getMemberFromDescriptor(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Member;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 113
    .local v1, "member":Ljava/lang/reflect/Constructor;
    if-eqz v1, :cond_0

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    .end local v0    # "annotated":Ljava/lang/String;
    .end local v1    # "member":Ljava/lang/reflect/Constructor;
    :cond_1
    return-object v2
.end method

.method public static varargs getFieldFromString(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Field;
    .locals 6
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "classLoaders"    # [Ljava/lang/ClassLoader;

    .prologue
    const/16 v5, 0x2e

    .line 132
    const/4 v3, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "fieldName":Ljava/lang/String;
    :try_start_0
    invoke-static {v0, p1}, Lorg/reflections/ReflectionUtils;->forName(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v3, Lorg/reflections/ReflectionsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t resolve field named "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static varargs getMemberFromDescriptor(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Member;
    .locals 16
    .param p0, "descriptor"    # Ljava/lang/String;
    .param p1, "classLoaders"    # [Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/reflections/ReflectionsException;
        }
    .end annotation

    .prologue
    .line 62
    const/16 v13, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 63
    .local v8, "p0":I
    const/4 v13, -0x1

    if-eq v8, v13, :cond_0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "memberKey":Ljava/lang/String;
    :goto_0
    const/4 v13, -0x1

    if-eq v8, v13, :cond_1

    add-int/lit8 v13, v8, 0x1

    const/16 v14, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "methodParameters":Ljava/lang/String;
    :goto_1
    const/16 v13, 0x2e

    invoke-virtual {v4, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    const-string v14, "$"

    invoke-virtual {v4, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 67
    .local v9, "p1":I
    const/16 v13, 0x20

    invoke-virtual {v4, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v4, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "className":Ljava/lang/String;
    add-int/lit8 v13, v9, 0x1

    invoke-virtual {v4, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "memberName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 71
    .local v11, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v6}, Lorg/reflections/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 72
    const-string v13, ","

    invoke-virtual {v6, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 73
    .local v10, "parameterNames":[Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    array-length v13, v10

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .local v12, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    array-length v14, v10

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v14, :cond_2

    aget-object v7, v10, v13

    .line 75
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lorg/reflections/ReflectionUtils;->forName(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .end local v2    # "className":Ljava/lang/String;
    .end local v4    # "memberKey":Ljava/lang/String;
    .end local v5    # "memberName":Ljava/lang/String;
    .end local v6    # "methodParameters":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "p1":I
    .end local v10    # "parameterNames":[Ljava/lang/String;
    .end local v11    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v12    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_0
    move-object/from16 v4, p0

    .line 63
    goto :goto_0

    .line 64
    .restart local v4    # "memberKey":Ljava/lang/String;
    :cond_1
    const-string v6, ""

    goto :goto_1

    .line 77
    .restart local v2    # "className":Ljava/lang/String;
    .restart local v5    # "memberName":Ljava/lang/String;
    .restart local v6    # "methodParameters":Ljava/lang/String;
    .restart local v9    # "p1":I
    .restart local v10    # "parameterNames":[Ljava/lang/String;
    .restart local v11    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v12    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/Class;

    invoke-interface {v12, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    check-cast v11, [Ljava/lang/Class;

    .line 80
    .end local v10    # "parameterNames":[Ljava/lang/String;
    .end local v12    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .restart local v11    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lorg/reflections/ReflectionUtils;->forName(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 81
    .local v1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    if-eqz v1, :cond_9

    .line 83
    :try_start_0
    const-string v13, "("

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 84
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 88
    :goto_4
    return-object v13

    .line 84
    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    goto :goto_4

    .line 85
    :cond_5
    invoke-static/range {p0 .. p0}, Lorg/reflections/util/Utils;->isConstructor(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 86
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v1, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    goto :goto_4

    :cond_6
    invoke-virtual {v1, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    goto :goto_4

    .line 88
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v1, v5, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    goto :goto_4

    :cond_8
    invoke-virtual {v1, v5, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    goto :goto_4

    .line 90
    :catch_0
    move-exception v3

    .line 91
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 92
    goto :goto_3

    .line 94
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_9
    new-instance v13, Lorg/reflections/ReflectionsException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Can\'t resolve member named "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for class "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method public static varargs getMembersFromDescriptors(Ljava/lang/Iterable;[Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 6
    .param p1, "classLoaders"    # [Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Member;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 121
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Member;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 123
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v2, p1}, Lorg/reflections/util/Utils;->getMemberFromDescriptor(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Member;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/reflections/ReflectionsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Lorg/reflections/ReflectionsException;
    new-instance v3, Lorg/reflections/ReflectionsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t resolve member named "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 128
    .end local v0    # "e":Lorg/reflections/ReflectionsException;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static varargs getMethodsFromDescriptors(Ljava/lang/Iterable;[Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 5
    .param p1, "classLoaders"    # [Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "annotatedWith":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 99
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Method;>;"
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

    .line 100
    .local v0, "annotated":Ljava/lang/String;
    invoke-static {v0}, Lorg/reflections/util/Utils;->isConstructor(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 101
    invoke-static {v0, p1}, Lorg/reflections/util/Utils;->getMemberFromDescriptor(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Member;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 102
    .local v1, "member":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    .end local v0    # "annotated":Ljava/lang/String;
    .end local v1    # "member":Ljava/lang/reflect/Method;
    :cond_1
    return-object v2
.end method

.method public static isConstructor(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fqn"    # Ljava/lang/String;

    .prologue
    .line 162
    const-string v0, "init>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 44
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 1
    .param p0, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 48
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static name(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Ljava/lang/Class;

    .prologue
    .line 166
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 174
    :goto_0
    return-object v1

    .line 169
    :cond_0
    const/4 v0, 0x0

    .line 170
    .local v0, "dim":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    add-int/lit8 v0, v0, 0x1

    .line 172
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    .line 174
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-static {v2, v0}, Lorg/reflections/util/Utils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static name(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .locals 3
    .param p0, "constructor"    # Ljava/lang/reflect/Constructor;

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/reflections/util/Utils;->names([Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static name(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static name(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/reflections/util/Utils;->names([Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static names(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "types":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Class<*>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lorg/reflections/util/Utils;->name(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object v0
.end method

.method public static varargs names([Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/reflections/util/Utils;->names(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static prepareFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 54
    .local v1, "parent":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 58
    :cond_0
    return-object v0
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "times"    # I

    .prologue
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
