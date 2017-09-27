.class public Ljavassist/bytecode/AttributeInfo;
.super Ljava/lang/Object;
.source "AttributeInfo.java"


# instance fields
.field protected constPool:Ljavassist/bytecode/ConstPool;

.field info:[B

.field name:I


# direct methods
.method protected constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 2
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "n"    # I
    .param p3, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Ljavassist/bytecode/AttributeInfo;->constPool:Ljavassist/bytecode/ConstPool;

    .line 65
    iput p2, p0, Ljavassist/bytecode/AttributeInfo;->name:I

    .line 66
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 67
    .local v0, "len":I
    new-array v1, v0, [B

    iput-object v1, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    .line 68
    if-lez v0, :cond_0

    .line 69
    iget-object v1, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    invoke-virtual {p3, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 70
    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljavassist/bytecode/ConstPool;I[B)V
    .locals 0
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "attrname"    # I
    .param p3, "attrinfo"    # [B

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Ljavassist/bytecode/AttributeInfo;->constPool:Ljavassist/bytecode/ConstPool;

    .line 41
    iput p2, p0, Ljavassist/bytecode/AttributeInfo;->name:I

    .line 42
    iput-object p3, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    .line 43
    return-void
.end method

.method protected constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "attrname"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x0

    check-cast v0, [B

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "attrname"    # Ljava/lang/String;
    .param p3, "attrinfo"    # [B

    .prologue
    .line 58
    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;I[B)V

    .line 59
    return-void
.end method

.method static copyAll(Ljava/util/ArrayList;Ljavassist/bytecode/ConstPool;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "list"    # Ljava/util/ArrayList;
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .prologue
    const/4 v4, 0x0

    .line 242
    if-nez p0, :cond_1

    move-object v3, v4

    .line 252
    :cond_0
    return-object v3

    .line 245
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v3, "newList":Ljava/util/ArrayList;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 247
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 248
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AttributeInfo;

    .line 249
    .local v0, "attr":Ljavassist/bytecode/AttributeInfo;
    invoke-virtual {v0, p1, v4}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static getLength(Ljava/util/ArrayList;)I
    .locals 5
    .param p0, "list"    # Ljava/util/ArrayList;

    .prologue
    .line 192
    const/4 v3, 0x0

    .line 193
    .local v3, "size":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 194
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 195
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AttributeInfo;

    .line 196
    .local v0, "attr":Ljavassist/bytecode/AttributeInfo;
    invoke-virtual {v0}, Ljavassist/bytecode/AttributeInfo;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "attr":Ljavassist/bytecode/AttributeInfo;
    :cond_0
    return v3
.end method

.method static getRefClasses(Ljava/util/List;Ljava/util/Map;)V
    .locals 3
    .param p0, "attributes"    # Ljava/util/List;
    .param p1, "classnames"    # Ljava/util/Map;

    .prologue
    .line 283
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 284
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AttributeInfo;

    .line 286
    .local v0, "ai":Ljavassist/bytecode/AttributeInfo;
    invoke-virtual {v0, p1}, Ljavassist/bytecode/AttributeInfo;->getRefClasses(Ljava/util/Map;)V

    goto :goto_0

    .line 288
    .end local v0    # "ai":Ljavassist/bytecode/AttributeInfo;
    :cond_0
    return-void
.end method

.method static lookup(Ljava/util/ArrayList;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;
    .locals 4
    .param p0, "list"    # Ljava/util/ArrayList;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 203
    if-nez p0, :cond_0

    move-object v0, v2

    .line 213
    :goto_0
    return-object v0

    .line 206
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 207
    .local v1, "iterator":Ljava/util/ListIterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 208
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AttributeInfo;

    .line 209
    .local v0, "ai":Ljavassist/bytecode/AttributeInfo;
    invoke-virtual {v0}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0    # "ai":Ljavassist/bytecode/AttributeInfo;
    :cond_2
    move-object v0, v2

    .line 213
    goto :goto_0
.end method

.method static read(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)Ljavassist/bytecode/AttributeInfo;
    .locals 4
    .param p0, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 76
    .local v0, "name":I
    invoke-virtual {p0, v0}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "nameStr":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4c

    if-ge v2, v3, :cond_7

    .line 78
    const-string v2, "AnnotationDefault"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    new-instance v2, Ljavassist/bytecode/AnnotationDefaultAttribute;

    invoke-direct {v2, p0, v0, p1}, Ljavassist/bytecode/AnnotationDefaultAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    .line 124
    :goto_0
    return-object v2

    .line 80
    :cond_0
    const-string v2, "BootstrapMethods"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    new-instance v2, Ljavassist/bytecode/BootstrapMethodsAttribute;

    invoke-direct {v2, p0, v0, p1}, Ljavassist/bytecode/BootstrapMethodsAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    goto :goto_0

    .line 82
    :cond_1
    const-string v2, "Code"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    new-instance v2, Ljavassist/bytecode/CodeAttribute;

    invoke-direct {v2, p0, v0, p1}, Ljavassist/bytecode/CodeAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    goto :goto_0

    .line 84
    :cond_2
    const-string v2, "ConstantValue"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    new-instance v2, Ljavassist/bytecode/ConstantAttribute;

    invoke-direct {v2, p0, v0, p1}, Ljavassist/bytecode/ConstantAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    goto :goto_0

    .line 86
    :cond_3
    const-string v2, "Deprecated"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 87
    new-instance v2, Ljavassist/bytecode/DeprecatedAttribute;

    invoke-direct {v2, p0, v0, p1}, Ljavassist/bytecode/DeprecatedAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    goto :goto_0

    .line 88
    :cond_4
    const-string v2, "EnclosingMethod"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 89
    new-instance v2, Ljavassist/bytecode/EnclosingMethodAttribute;

    invoke-direct {v2, p0, v0, p1}, Ljavassist/bytecode/EnclosingMethodAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    goto :goto_0

    .line 90
    :cond_5
    const-string v2, "Exceptions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 91
    new-instance v2, Ljavassist/bytecode/ExceptionsAttribute;

    invoke-direct {v2, p0, v0, p1}, Ljavassist/bytecode/ExceptionsAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    goto :goto_0

    .line 92
    :cond_6
    const-string v2, "InnerClasses"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 93
    new-instance v2, Ljavassist/bytecode/InnerClassesAttribute;

    invoke-direct {v2, p0, v0, p1}, Ljavassist/bytecode/InnerClassesAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    goto :goto_0

    .line 98
    :cond_7
    const-string v2, "LineNumberTable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 99
    new-instance v2, Ljavassist/bytecode/LineNumberAttribute;

    invoke-direct {v2, p0, v0, p1}, Ljavassist/bytecode/LineNumberAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    goto :goto_0

    .line 100
    :cond_8
    const-string v2, "LocalVariableTable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 101
    new-instance v2, Ljavassist/bytecode/LocalVariableAttribute;

    invoke-direct {v2, p0, v0, p1}, Ljavassist/bytecode/LocalVariableAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    goto :goto_0

    .line 102
    :cond_9
    const-string v2, "LocalVariableTypeTable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 103
    new-instance v2, Ljavassist/bytecode/LocalVariableTypeAttribute;

    invoke-direct {v2, p0, v0, p1}, Ljavassist/bytecode/LocalVariableTypeAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    goto/16 :goto_0

    .line 104
    :cond_a
    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 107
    :cond_b
    new-instance v2, Ljavassist/bytecode/AnnotationsAttribute;

    invoke-direct {v2, p0, v0, p1}, Ljavassist/bytecode/AnnotationsAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    goto/16 :goto_0

    .line 109
    :cond_c
    const-string v2, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 111
    :cond_d
    new-instance v2, Ljavassist/bytecode/ParameterAnnotationsAttribute;

    invoke-direct {v2, p0, v0, p1}, Ljavassist/bytecode/ParameterAnnotationsAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    goto/16 :goto_0

    .line 112
    :cond_e
    const-string v2, "Signature"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 113
    new-instance v2, Ljavassist/bytecode/SignatureAttribute;

    invoke-direct {v2, p0, v0, p1}, Ljavassist/bytecode/SignatureAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    goto/16 :goto_0

    .line 114
    :cond_f
    const-string v2, "SourceFile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 115
    new-instance v2, Ljavassist/bytecode/SourceFileAttribute;

    invoke-direct {v2, p0, v0, p1}, Ljavassist/bytecode/SourceFileAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    goto/16 :goto_0

    .line 116
    :cond_10
    const-string v2, "Synthetic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 117
    new-instance v2, Ljavassist/bytecode/SyntheticAttribute;

    invoke-direct {v2, p0, v0, p1}, Ljavassist/bytecode/SyntheticAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    goto/16 :goto_0

    .line 118
    :cond_11
    const-string v2, "StackMap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 119
    new-instance v2, Ljavassist/bytecode/StackMap;

    invoke-direct {v2, p0, v0, p1}, Ljavassist/bytecode/StackMap;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    goto/16 :goto_0

    .line 120
    :cond_12
    const-string v2, "StackMapTable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 121
    new-instance v2, Ljavassist/bytecode/StackMapTable;

    invoke-direct {v2, p0, v0, p1}, Ljavassist/bytecode/StackMapTable;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    goto/16 :goto_0

    .line 124
    :cond_13
    new-instance v2, Ljavassist/bytecode/AttributeInfo;

    invoke-direct {v2, p0, v0, p1}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    goto/16 :goto_0
.end method

.method static declared-synchronized remove(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .param p0, "list"    # Ljava/util/ArrayList;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 217
    const-class v3, Ljavassist/bytecode/AttributeInfo;

    monitor-enter v3

    if-nez p0, :cond_1

    .line 226
    :cond_0
    monitor-exit v3

    return-void

    .line 220
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 221
    .local v1, "iterator":Ljava/util/ListIterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AttributeInfo;

    .line 223
    .local v0, "ai":Ljavassist/bytecode/AttributeInfo;
    invoke-virtual {v0}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 217
    .end local v0    # "ai":Ljavassist/bytecode/AttributeInfo;
    .end local v1    # "iterator":Ljava/util/ListIterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static renameClass(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "attributes"    # Ljava/util/List;
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;

    .prologue
    .line 265
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 266
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AttributeInfo;

    .line 268
    .local v0, "ai":Ljavassist/bytecode/AttributeInfo;
    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    .end local v0    # "ai":Ljavassist/bytecode/AttributeInfo;
    :cond_0
    return-void
.end method

.method static renameClass(Ljava/util/List;Ljava/util/Map;)V
    .locals 3
    .param p0, "attributes"    # Ljava/util/List;
    .param p1, "classnames"    # Ljava/util/Map;

    .prologue
    .line 273
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 274
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AttributeInfo;

    .line 276
    .local v0, "ai":Ljavassist/bytecode/AttributeInfo;
    invoke-virtual {v0, p1}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/Map;)V

    goto :goto_0

    .line 278
    .end local v0    # "ai":Ljavassist/bytecode/AttributeInfo;
    :cond_0
    return-void
.end method

.method static writeAll(Ljava/util/ArrayList;Ljava/io/DataOutputStream;)V
    .locals 3
    .param p0, "list"    # Ljava/util/ArrayList;
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    if-nez p0, :cond_1

    .line 239
    :cond_0
    return-void

    .line 234
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 235
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 236
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AttributeInfo;

    .line 237
    .local v0, "attr":Ljavassist/bytecode/AttributeInfo;
    invoke-virtual {v0, p1}, Ljavassist/bytecode/AttributeInfo;->write(Ljava/io/DataOutputStream;)V

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 6
    .param p1, "newCp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "classnames"    # Ljava/util/Map;

    .prologue
    .line 175
    iget-object v4, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    array-length v2, v4

    .line 176
    .local v2, "s":I
    iget-object v3, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    .line 177
    .local v3, "srcInfo":[B
    new-array v1, v2, [B

    .line 178
    .local v1, "newInfo":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 179
    aget-byte v4, v3, v0

    aput-byte v4, v1, v0

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_0
    new-instance v4, Ljavassist/bytecode/AttributeInfo;

    invoke-virtual {p0}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5, v1}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    return-object v4
.end method

.method public get()[B
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    return-object v0
.end method

.method public getConstPool()Ljavassist/bytecode/ConstPool;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Ljavassist/bytecode/AttributeInfo;->constPool:Ljavassist/bytecode/ConstPool;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Ljavassist/bytecode/AttributeInfo;->constPool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/AttributeInfo;->name:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRefClasses(Ljava/util/Map;)V
    .locals 0
    .param p1, "classnames"    # Ljava/util/Map;

    .prologue
    .line 280
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method renameClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;

    .prologue
    .line 261
    return-void
.end method

.method renameClass(Ljava/util/Map;)V
    .locals 0
    .param p1, "classnames"    # Ljava/util/Map;

    .prologue
    .line 262
    return-void
.end method

.method public set([B)V
    .locals 0
    .param p1, "newinfo"    # [B

    .prologue
    .line 164
    iput-object p1, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    return-void
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget v0, p0, Ljavassist/bytecode/AttributeInfo;->name:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 186
    iget-object v0, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 187
    iget-object v0, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 188
    iget-object v0, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 189
    :cond_0
    return-void
.end method
