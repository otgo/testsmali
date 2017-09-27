.class public Lorg/reflections/adapters/JavaReflectionAdapter;
.super Ljava/lang/Object;
.source "JavaReflectionAdapter.java"

# interfaces
.implements Lorg/reflections/adapters/MetadataAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/reflections/adapters/MetadataAdapter",
        "<",
        "Ljava/lang/Class;",
        "Ljava/lang/reflect/Field;",
        "Ljava/lang/reflect/Member;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAnnotationNames([Ljava/lang/annotation/Annotation;)Ljava/util/List;
    .locals 5
    .param p1, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 136
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_0
    return-object v1
.end method

.method public static getName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # Ljava/lang/Class;

    .prologue
    .line 142
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    move-object v0, p0

    .line 145
    .local v0, "cl":Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "dim":I
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[]"

    invoke-static {v3, v1}, Lorg/reflections/util/Utils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 151
    .end local v0    # "cl":Ljava/lang/Class;
    .end local v1    # "dim":I
    :goto_1
    return-object v2

    .line 147
    .restart local v0    # "cl":Ljava/lang/Class;
    .restart local v1    # "dim":I
    :catch_0
    move-exception v2

    .line 151
    .end local v0    # "cl":Ljava/lang/Class;
    .end local v1    # "dim":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public acceptsInput(Ljava/lang/String;)Z
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 129
    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getClassAnnotationNames(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p1, "aClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/reflections/adapters/JavaReflectionAdapter;->getAnnotationNames([Ljava/lang/annotation/Annotation;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getClassAnnotationNames(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavaReflectionAdapter;->getClassAnnotationNames(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    .line 113
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavaReflectionAdapter;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFieldAnnotationNames(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavaReflectionAdapter;->getFieldAnnotationNames(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFieldAnnotationNames(Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/reflections/adapters/JavaReflectionAdapter;->getAnnotationNames([Ljava/lang/annotation/Annotation;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFieldName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavaReflectionAdapter;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 80
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFields(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p1, "cls"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFields(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavaReflectionAdapter;->getFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInterfacesNames(Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .param p1, "cls"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 122
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 123
    .local v0, "classes":[Ljava/lang/Class;
    new-instance v2, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    array-length v3, v0

    :goto_0
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    .local v2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    array-length v3, v0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v1, v0, v4

    .local v1, "cls1":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1    # "cls1":Ljava/lang/Class;
    .end local v2    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    move v3, v4

    .line 123
    goto :goto_0

    .line 125
    .restart local v2    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-object v2
.end method

.method public bridge synthetic getInterfacesNames(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavaReflectionAdapter;->getInterfacesNames(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMethodAnnotationNames(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Ljava/lang/reflect/Member;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavaReflectionAdapter;->getMethodAnnotationNames(Ljava/lang/reflect/Member;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMethodAnnotationNames(Ljava/lang/reflect/Member;)Ljava/util/List;
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Member;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    instance-of v1, p1, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/lang/reflect/Method;

    .line 62
    .end local p1    # "method":Ljava/lang/reflect/Member;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 64
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;
    :goto_0
    invoke-direct {p0, v0}, Lorg/reflections/adapters/JavaReflectionAdapter;->getAnnotationNames([Ljava/lang/annotation/Annotation;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 62
    .end local v0    # "annotations":[Ljava/lang/annotation/Annotation;
    .restart local p1    # "method":Ljava/lang/reflect/Member;
    :cond_0
    instance-of v1, p1, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/reflect/Constructor;

    .line 63
    .end local p1    # "method":Ljava/lang/reflect/Member;
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_0

    .restart local p1    # "method":Ljava/lang/reflect/Member;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMethodFullKey(Ljava/lang/Class;Ljava/lang/reflect/Member;)Ljava/lang/String;
    .locals 2
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "method"    # Ljava/lang/reflect/Member;

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavaReflectionAdapter;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/reflections/adapters/JavaReflectionAdapter;->getMethodKey(Ljava/lang/Class;Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMethodFullKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Class;

    check-cast p2, Ljava/lang/reflect/Member;

    invoke-virtual {p0, p1, p2}, Lorg/reflections/adapters/JavaReflectionAdapter;->getMethodFullKey(Ljava/lang/Class;Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethodKey(Ljava/lang/Class;Ljava/lang/reflect/Member;)Ljava/lang/String;
    .locals 3
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "method"    # Ljava/lang/reflect/Member;

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lorg/reflections/adapters/JavaReflectionAdapter;->getMethodName(Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {p0, p2}, Lorg/reflections/adapters/JavaReflectionAdapter;->getParameterNames(Ljava/lang/reflect/Member;)Ljava/util/List;

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

.method public bridge synthetic getMethodKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Class;

    check-cast p2, Ljava/lang/reflect/Member;

    invoke-virtual {p0, p1, p2}, Lorg/reflections/adapters/JavaReflectionAdapter;->getMethodKey(Ljava/lang/Class;Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMethodModifier(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Ljava/lang/reflect/Member;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavaReflectionAdapter;->getMethodModifier(Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethodModifier(Ljava/lang/reflect/Member;)Ljava/lang/String;
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Member;

    .prologue
    .line 93
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMethodName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Ljava/lang/reflect/Member;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavaReflectionAdapter;->getMethodName(Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethodName(Ljava/lang/reflect/Member;)Ljava/lang/String;
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Member;

    .prologue
    .line 32
    instance-of v0, p1, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    const-string v0, "<init>"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMethods(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .param p1, "cls"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Member;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 26
    .local v0, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Member;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    return-object v0
.end method

.method public bridge synthetic getMethods(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavaReflectionAdapter;->getMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOfCreateClassObject(Lorg/reflections/vfs/Vfs$File;)Ljava/lang/Class;
    .locals 1
    .param p1, "file"    # Lorg/reflections/vfs/Vfs$File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/reflections/adapters/JavaReflectionAdapter;->getOfCreateClassObject(Lorg/reflections/vfs/Vfs$File;[Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public varargs getOfCreateClassObject(Lorg/reflections/vfs/Vfs$File;[Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 4
    .param p1, "file"    # Lorg/reflections/vfs/Vfs$File;
    .param p2, "loaders"    # [Ljava/lang/ClassLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    invoke-interface {p1}, Lorg/reflections/vfs/Vfs$File;->getRelativePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".class"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0, p2}, Lorg/reflections/ReflectionUtils;->forName(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getOfCreateClassObject(Lorg/reflections/vfs/Vfs$File;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavaReflectionAdapter;->getOfCreateClassObject(Lorg/reflections/vfs/Vfs$File;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameterAnnotationNames(Ljava/lang/Object;I)Ljava/util/List;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Ljava/lang/reflect/Member;

    invoke-virtual {p0, p1, p2}, Lorg/reflections/adapters/JavaReflectionAdapter;->getParameterAnnotationNames(Ljava/lang/reflect/Member;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParameterAnnotationNames(Ljava/lang/reflect/Member;I)Ljava/util/List;
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Member;
    .param p2, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 68
    instance-of v1, p1, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/reflect/Method;

    .line 69
    .end local p1    # "method":Ljava/lang/reflect/Member;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 72
    .local v0, "annotations":[[Ljava/lang/annotation/Annotation;
    :goto_0
    if-eqz v0, :cond_0

    aget-object v2, v0, p2

    :cond_0
    invoke-direct {p0, v2}, Lorg/reflections/adapters/JavaReflectionAdapter;->getAnnotationNames([Ljava/lang/annotation/Annotation;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 69
    .end local v0    # "annotations":[[Ljava/lang/annotation/Annotation;
    .restart local p1    # "method":Ljava/lang/reflect/Member;
    :cond_1
    instance-of v1, p1, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/reflect/Constructor;

    .line 70
    .end local p1    # "method":Ljava/lang/reflect/Member;
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_0

    .restart local p1    # "method":Ljava/lang/reflect/Member;
    :cond_2
    move-object v1, v2

    check-cast v1, [[Ljava/lang/annotation/Annotation;

    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getParameterNames(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Ljava/lang/reflect/Member;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavaReflectionAdapter;->getParameterNames(Ljava/lang/reflect/Member;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParameterNames(Ljava/lang/reflect/Member;)Ljava/util/List;
    .locals 6
    .param p1, "member"    # Ljava/lang/reflect/Member;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 39
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    instance-of v4, p1, Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    check-cast p1, Ljava/lang/reflect/Method;

    .end local p1    # "member":Ljava/lang/reflect/Member;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 42
    .local v2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v2, :cond_2

    .line 43
    array-length v5, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v1, v2, v4

    .line 44
    .local v1, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lorg/reflections/adapters/JavaReflectionAdapter;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "name":Ljava/lang/String;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 39
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local p1    # "member":Ljava/lang/reflect/Member;
    :cond_0
    instance-of v4, p1, Ljava/lang/reflect/Constructor;

    if-eqz v4, :cond_1

    check-cast p1, Ljava/lang/reflect/Constructor;

    .line 40
    .end local p1    # "member":Ljava/lang/reflect/Member;
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .restart local p1    # "member":Ljava/lang/reflect/Member;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 49
    .end local p1    # "member":Ljava/lang/reflect/Member;
    .restart local v2    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    return-object v3
.end method

.method public bridge synthetic getReturnTypeName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Ljava/lang/reflect/Member;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavaReflectionAdapter;->getReturnTypeName(Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReturnTypeName(Ljava/lang/reflect/Member;)Ljava/lang/String;
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Member;

    .prologue
    .line 76
    check-cast p1, Ljava/lang/reflect/Method;

    .end local p1    # "method":Ljava/lang/reflect/Member;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuperclassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    .line 117
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 118
    .local v0, "superclass":Ljava/lang/Class;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public bridge synthetic getSuperclassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavaReflectionAdapter;->getSuperclassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPublic(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 105
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/lang/Class;

    .line 106
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 109
    .local v0, "mod":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 106
    .end local v0    # "mod":Ljava/lang/Integer;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Ljava/lang/reflect/Member;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/reflect/Member;

    .line 107
    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 109
    .end local p1    # "o":Ljava/lang/Object;
    .restart local v0    # "mod":Ljava/lang/Integer;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
