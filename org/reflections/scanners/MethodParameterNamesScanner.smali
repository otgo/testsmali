.class public Lorg/reflections/scanners/MethodParameterNamesScanner;
.super Lorg/reflections/scanners/AbstractScanner;
.source "MethodParameterNamesScanner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/reflections/scanners/AbstractScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public scan(Ljava/lang/Object;)V
    .locals 11
    .param p1, "cls"    # Ljava/lang/Object;

    .prologue
    .line 19
    invoke-virtual {p0}, Lorg/reflections/scanners/MethodParameterNamesScanner;->getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;

    move-result-object v4

    .line 21
    .local v4, "md":Lorg/reflections/adapters/MetadataAdapter;
    invoke-interface {v4, p1}, Lorg/reflections/adapters/MetadataAdapter;->getMethods(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 22
    .local v5, "method":Ljava/lang/Object;
    invoke-interface {v4, p1, v5}, Lorg/reflections/adapters/MetadataAdapter;->getMethodFullKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/reflections/scanners/MethodParameterNamesScanner;->acceptResult(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v5

    .line 24
    check-cast v8, Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v8}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v8

    const-string v10, "LocalVariableTable"

    invoke-virtual {v8, v10}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v7

    check-cast v7, Ljavassist/bytecode/LocalVariableAttribute;

    .line 25
    .local v7, "table":Ljavassist/bytecode/LocalVariableAttribute;
    invoke-virtual {v7}, Ljavassist/bytecode/LocalVariableAttribute;->tableLength()I

    move-result v3

    .local v3, "length":I
    move-object v8, v5

    .line 26
    check-cast v8, Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v8}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v0, 0x0

    .line 27
    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 28
    new-instance v6, Ljava/util/ArrayList;

    sub-int v8, v3, v0

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .local v6, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v1, v0

    .line 29
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_2

    move-object v8, v5

    check-cast v8, Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v8}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v8

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {v7, v1}, Ljavassist/bytecode/LocalVariableAttribute;->nameIndex(I)I

    move-result v10

    invoke-virtual {v8, v10}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 26
    .end local v1    # "i":I
    .end local v6    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 30
    .restart local v1    # "i":I
    .restart local v6    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p0}, Lorg/reflections/scanners/MethodParameterNamesScanner;->getStore()Lcom/google/common/collect/Multimap;

    move-result-object v8

    const-string v10, ", "

    invoke-static {v10}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v2, v10}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "length":I
    .end local v5    # "method":Ljava/lang/Object;
    .end local v6    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "table":Ljavassist/bytecode/LocalVariableAttribute;
    :cond_3
    return-void
.end method
