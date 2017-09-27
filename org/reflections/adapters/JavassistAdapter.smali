.class public Lorg/reflections/adapters/JavassistAdapter;
.super Ljava/lang/Object;
.source "JavassistAdapter.java"

# interfaces
.implements Lorg/reflections/adapters/MetadataAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/reflections/adapters/MetadataAdapter",
        "<",
        "Ljavassist/bytecode/ClassFile;",
        "Ljavassist/bytecode/FieldInfo;",
        "Ljavassist/bytecode/MethodInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static includeInvisibleTag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lorg/reflections/adapters/JavassistAdapter;->includeInvisibleTag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private varargs getAnnotationNames([Ljavassist/bytecode/AnnotationsAttribute;)Ljava/util/List;
    .locals 10
    .param p1, "annotationsAttributes"    # [Ljavassist/bytecode/AnnotationsAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavassist/bytecode/AnnotationsAttribute;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 151
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 153
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 154
    array-length v6, p1

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, p1, v5

    .line 155
    .local v1, "annotationsAttribute":Ljavassist/bytecode/AnnotationsAttribute;
    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v1}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v7

    array-length v8, v7

    move v3, v4

    :goto_1
    if-ge v3, v8, :cond_0

    aget-object v0, v7, v3

    .line 157
    .local v0, "annotation":Ljavassist/bytecode/annotation/Annotation;
    invoke-virtual {v0}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 154
    .end local v0    # "annotation":Ljavassist/bytecode/annotation/Annotation;
    :cond_0
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 163
    .end local v1    # "annotationsAttribute":Ljavassist/bytecode/AnnotationsAttribute;
    :cond_1
    return-object v2
.end method

.method private getAnnotationNames([Ljavassist/bytecode/annotation/Annotation;)Ljava/util/List;
    .locals 5
    .param p1, "annotations"    # [Ljavassist/bytecode/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavassist/bytecode/annotation/Annotation;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 169
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 170
    .local v0, "annotation":Ljavassist/bytecode/annotation/Annotation;
    invoke-virtual {v0}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "annotation":Ljavassist/bytecode/annotation/Annotation;
    :cond_0
    return-object v1
.end method

.method private splitDescriptorToTypeNames(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "descriptors"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 179
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 181
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 182
    .local v1, "indices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljavassist/bytecode/Descriptor$Iterator;

    invoke-direct {v2, p1}, Ljavassist/bytecode/Descriptor$Iterator;-><init>(Ljava/lang/String;)V

    .line 183
    .local v2, "iterator":Ljavassist/bytecode/Descriptor$Iterator;
    :goto_0
    invoke-virtual {v2}, Ljavassist/bytecode/Descriptor$Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 184
    invoke-virtual {v2}, Ljavassist/bytecode/Descriptor$Iterator;->next()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_1

    .line 189
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavassist/bytecode/Descriptor;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "s1":Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 195
    .end local v0    # "i":I
    .end local v1    # "indices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "iterator":Ljavassist/bytecode/Descriptor$Iterator;
    .end local v4    # "s1":Ljava/lang/String;
    :cond_1
    return-object v3
.end method


# virtual methods
.method public acceptsInput(Ljava/lang/String;)Z
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 146
    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getClassAnnotationNames(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljavassist/bytecode/ClassFile;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavassistAdapter;->getClassAnnotationNames(Ljavassist/bytecode/ClassFile;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClassAnnotationNames(Ljavassist/bytecode/ClassFile;)Ljava/util/List;
    .locals 3
    .param p1, "aClass"    # Ljavassist/bytecode/ClassFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ClassFile;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x2

    new-array v1, v0, [Ljavassist/bytecode/AnnotationsAttribute;

    const/4 v2, 0x0

    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AnnotationsAttribute;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    sget-boolean v0, Lorg/reflections/adapters/JavassistAdapter;->includeInvisibleTag:Z

    if-eqz v0, :cond_0

    const-string v0, "RuntimeInvisibleAnnotations"

    .line 51
    invoke-virtual {p1, v0}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AnnotationsAttribute;

    :goto_0
    aput-object v0, v1, v2

    .line 50
    invoke-direct {p0, v1}, Lorg/reflections/adapters/JavassistAdapter;->getAnnotationNames([Ljavassist/bytecode/AnnotationsAttribute;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljavassist/bytecode/ClassFile;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavassistAdapter;->getClassName(Ljavassist/bytecode/ClassFile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassName(Ljavassist/bytecode/ClassFile;)Ljava/lang/String;
    .locals 1
    .param p1, "cls"    # Ljavassist/bytecode/ClassFile;

    .prologue
    .line 134
    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFieldAnnotationNames(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljavassist/bytecode/FieldInfo;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavassistAdapter;->getFieldAnnotationNames(Ljavassist/bytecode/FieldInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFieldAnnotationNames(Ljavassist/bytecode/FieldInfo;)Ljava/util/List;
    .locals 3
    .param p1, "field"    # Ljavassist/bytecode/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/FieldInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x2

    new-array v1, v0, [Ljavassist/bytecode/AnnotationsAttribute;

    const/4 v2, 0x0

    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {p1, v0}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AnnotationsAttribute;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    sget-boolean v0, Lorg/reflections/adapters/JavassistAdapter;->includeInvisibleTag:Z

    if-eqz v0, :cond_0

    const-string v0, "RuntimeInvisibleAnnotations"

    .line 56
    invoke-virtual {p1, v0}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AnnotationsAttribute;

    :goto_0
    aput-object v0, v1, v2

    .line 55
    invoke-direct {p0, v1}, Lorg/reflections/adapters/JavassistAdapter;->getAnnotationNames([Ljavassist/bytecode/AnnotationsAttribute;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getFieldName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljavassist/bytecode/FieldInfo;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavassistAdapter;->getFieldName(Ljavassist/bytecode/FieldInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldName(Ljavassist/bytecode/FieldInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljavassist/bytecode/FieldInfo;

    .prologue
    .line 92
    invoke-virtual {p1}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFields(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljavassist/bytecode/ClassFile;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavassistAdapter;->getFields(Ljavassist/bytecode/ClassFile;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFields(Ljavassist/bytecode/ClassFile;)Ljava/util/List;
    .locals 1
    .param p1, "cls"    # Ljavassist/bytecode/ClassFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ClassFile;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljavassist/bytecode/FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getFields()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInterfacesNames(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljavassist/bytecode/ClassFile;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavassistAdapter;->getInterfacesNames(Ljavassist/bytecode/ClassFile;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInterfacesNames(Ljavassist/bytecode/ClassFile;)Ljava/util/List;
    .locals 1
    .param p1, "cls"    # Ljavassist/bytecode/ClassFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ClassFile;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getInterfaces()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMethodAnnotationNames(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavassistAdapter;->getMethodAnnotationNames(Ljavassist/bytecode/MethodInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMethodAnnotationNames(Ljavassist/bytecode/MethodInfo;)Ljava/util/List;
    .locals 3
    .param p1, "method"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/MethodInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x2

    new-array v1, v0, [Ljavassist/bytecode/AnnotationsAttribute;

    const/4 v2, 0x0

    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {p1, v0}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AnnotationsAttribute;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    sget-boolean v0, Lorg/reflections/adapters/JavassistAdapter;->includeInvisibleTag:Z

    if-eqz v0, :cond_0

    const-string v0, "RuntimeInvisibleAnnotations"

    .line 61
    invoke-virtual {p1, v0}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AnnotationsAttribute;

    :goto_0
    aput-object v0, v1, v2

    .line 60
    invoke-direct {p0, v1}, Lorg/reflections/adapters/JavassistAdapter;->getAnnotationNames([Ljavassist/bytecode/AnnotationsAttribute;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getMethodFullKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljavassist/bytecode/ClassFile;

    check-cast p2, Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p0, p1, p2}, Lorg/reflections/adapters/JavassistAdapter;->getMethodFullKey(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethodFullKey(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "cls"    # Ljavassist/bytecode/ClassFile;
    .param p2, "method"    # Ljavassist/bytecode/MethodInfo;

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavassistAdapter;->getClassName(Ljavassist/bytecode/ClassFile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/reflections/adapters/JavassistAdapter;->getMethodKey(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMethodKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljavassist/bytecode/ClassFile;

    check-cast p2, Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p0, p1, p2}, Lorg/reflections/adapters/JavassistAdapter;->getMethodKey(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethodKey(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "cls"    # Ljavassist/bytecode/ClassFile;
    .param p2, "method"    # Ljavassist/bytecode/MethodInfo;

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lorg/reflections/adapters/JavassistAdapter;->getMethodName(Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {p0, p2}, Lorg/reflections/adapters/JavassistAdapter;->getParameterNames(Ljavassist/bytecode/MethodInfo;)Ljava/util/List;

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

.method public bridge synthetic getMethodModifier(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavassistAdapter;->getMethodModifier(Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethodModifier(Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "method"    # Ljavassist/bytecode/MethodInfo;

    .prologue
    .line 109
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v0

    .line 110
    .local v0, "accessFlags":I
    invoke-static {v0}, Ljavassist/bytecode/AccessFlag;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "private"

    .line 112
    :goto_0
    return-object v1

    .line 111
    :cond_0
    invoke-static {v0}, Ljavassist/bytecode/AccessFlag;->isProtected(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "protected"

    goto :goto_0

    .line 112
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/reflections/adapters/JavassistAdapter;->isPublic(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "public"

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method public bridge synthetic getMethodName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavassistAdapter;->getMethodName(Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethodName(Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "method"    # Ljavassist/bytecode/MethodInfo;

    .prologue
    .line 40
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMethods(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljavassist/bytecode/ClassFile;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavassistAdapter;->getMethods(Ljavassist/bytecode/ClassFile;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMethods(Ljavassist/bytecode/ClassFile;)Ljava/util/List;
    .locals 1
    .param p1, "cls"    # Ljavassist/bytecode/ClassFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ClassFile;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljavassist/bytecode/MethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOfCreateClassObject(Lorg/reflections/vfs/Vfs$File;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavassistAdapter;->getOfCreateClassObject(Lorg/reflections/vfs/Vfs$File;)Ljavassist/bytecode/ClassFile;

    move-result-object v0

    return-object v0
.end method

.method public getOfCreateClassObject(Lorg/reflections/vfs/Vfs$File;)Ljavassist/bytecode/ClassFile;
    .locals 6
    .param p1, "file"    # Lorg/reflections/vfs/Vfs$File;

    .prologue
    .line 96
    const/4 v2, 0x0

    .line 98
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {p1}, Lorg/reflections/vfs/Vfs$File;->openInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 99
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 100
    .local v0, "dis":Ljava/io/DataInputStream;
    new-instance v3, Ljavassist/bytecode/ClassFile;

    invoke-direct {v3, v0}, Ljavassist/bytecode/ClassFile;-><init>(Ljava/io/DataInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-static {v2}, Lorg/reflections/util/Utils;->close(Ljava/io/InputStream;)V

    return-object v3

    .line 101
    .end local v0    # "dis":Ljava/io/DataInputStream;
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Lorg/reflections/ReflectionsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not create class file from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/reflections/vfs/Vfs$File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lorg/reflections/util/Utils;->close(Ljava/io/InputStream;)V

    throw v3
.end method

.method public bridge synthetic getParameterAnnotationNames(Ljava/lang/Object;I)Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p0, p1, p2}, Lorg/reflections/adapters/JavassistAdapter;->getParameterAnnotationNames(Ljavassist/bytecode/MethodInfo;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParameterAnnotationNames(Ljavassist/bytecode/MethodInfo;I)Ljava/util/List;
    .locals 8
    .param p1, "method"    # Ljavassist/bytecode/MethodInfo;
    .param p2, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/MethodInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 67
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x2

    new-array v6, v5, [Ljavassist/bytecode/ParameterAnnotationsAttribute;

    const/4 v7, 0x0

    const-string v5, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {p1, v5}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v5

    check-cast v5, Ljavassist/bytecode/ParameterAnnotationsAttribute;

    aput-object v5, v6, v7

    const/4 v7, 0x1

    const-string v5, "RuntimeInvisibleParameterAnnotations"

    .line 68
    invoke-virtual {p1, v5}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v5

    check-cast v5, Ljavassist/bytecode/ParameterAnnotationsAttribute;

    aput-object v5, v6, v7

    .line 67
    invoke-static {v6}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 70
    .local v3, "parameterAnnotationsAttributes":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/ParameterAnnotationsAttribute;>;"
    if-eqz v3, :cond_1

    .line 71
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/ParameterAnnotationsAttribute;

    .line 72
    .local v2, "parameterAnnotationsAttribute":Ljavassist/bytecode/ParameterAnnotationsAttribute;
    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {v2}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->getAnnotations()[[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v1

    .line 74
    .local v1, "annotations":[[Ljavassist/bytecode/annotation/Annotation;
    array-length v6, v1

    if-ge p2, v6, :cond_0

    .line 75
    aget-object v0, v1, p2

    .line 76
    .local v0, "annotation":[Ljavassist/bytecode/annotation/Annotation;
    invoke-direct {p0, v0}, Lorg/reflections/adapters/JavassistAdapter;->getAnnotationNames([Ljavassist/bytecode/annotation/Annotation;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 82
    .end local v0    # "annotation":[Ljavassist/bytecode/annotation/Annotation;
    .end local v1    # "annotations":[[Ljavassist/bytecode/annotation/Annotation;
    .end local v2    # "parameterAnnotationsAttribute":Ljavassist/bytecode/ParameterAnnotationsAttribute;
    :cond_1
    return-object v4
.end method

.method public bridge synthetic getParameterNames(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavassistAdapter;->getParameterNames(Ljavassist/bytecode/MethodInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParameterNames(Ljavassist/bytecode/MethodInfo;)Ljava/util/List;
    .locals 3
    .param p1, "method"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/MethodInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "descriptor":Ljava/lang/String;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-direct {p0, v0}, Lorg/reflections/adapters/JavassistAdapter;->splitDescriptorToTypeNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getReturnTypeName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavassistAdapter;->getReturnTypeName(Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReturnTypeName(Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "method"    # Ljavassist/bytecode/MethodInfo;

    .prologue
    .line 86
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "descriptor":Ljava/lang/String;
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-direct {p0, v0}, Lorg/reflections/adapters/JavassistAdapter;->splitDescriptorToTypeNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public bridge synthetic getSuperclassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljavassist/bytecode/ClassFile;

    invoke-virtual {p0, p1}, Lorg/reflections/adapters/JavassistAdapter;->getSuperclassName(Ljavassist/bytecode/ClassFile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuperclassName(Ljavassist/bytecode/ClassFile;)Ljava/lang/String;
    .locals 1
    .param p1, "cls"    # Ljavassist/bytecode/ClassFile;

    .prologue
    .line 138
    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getSuperclass()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPublic(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 124
    instance-of v1, p1, Ljavassist/bytecode/ClassFile;

    if-eqz v1, :cond_0

    check-cast p1, Ljavassist/bytecode/ClassFile;

    .line 125
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getAccessFlags()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 129
    .local v0, "accessFlags":Ljava/lang/Integer;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljavassist/bytecode/AccessFlag;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 125
    .end local v0    # "accessFlags":Ljava/lang/Integer;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Ljavassist/bytecode/FieldInfo;

    if-eqz v1, :cond_1

    check-cast p1, Ljavassist/bytecode/FieldInfo;

    .line 126
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljavassist/bytecode/FieldInfo;->getAccessFlags()I

    move-result v1

    goto :goto_0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Ljavassist/bytecode/MethodInfo;

    if-eqz v1, :cond_2

    check-cast p1, Ljavassist/bytecode/MethodInfo;

    .line 127
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 129
    .end local p1    # "o":Ljava/lang/Object;
    .restart local v0    # "accessFlags":Ljava/lang/Integer;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method
