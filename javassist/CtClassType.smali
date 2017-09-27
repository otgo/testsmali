.class Ljavassist/CtClassType;
.super Ljavassist/CtClass;
.source "CtClassType.java"


# static fields
.field private static final GET_THRESHOLD:I = 0x2


# instance fields
.field private accessors:Ljavassist/compiler/AccessorMaker;

.field classPool:Ljavassist/ClassPool;

.field classfile:Ljavassist/bytecode/ClassFile;

.field private doPruning:Z

.field private fieldInitializers:Ljavassist/FieldInitLink;

.field gcConstPool:Z

.field private getCount:I

.field private hiddenMethods:Ljava/util/Hashtable;

.field private memberCache:Ljava/lang/ref/WeakReference;

.field rawClassfile:[B

.field private uniqueNumberSeed:I

.field wasChanged:Z

.field private wasFrozen:Z

.field wasPruned:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljavassist/ClassPool;)V
    .locals 2
    .param p1, "ins"    # Ljava/io/InputStream;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Ljavassist/CtClassType;-><init>(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 96
    new-instance v0, Ljavassist/bytecode/ClassFile;

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljavassist/bytecode/ClassFile;-><init>(Ljava/io/DataInputStream;)V

    iput-object v0, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;

    .line 97
    iget-object v0, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/CtClassType;->qualifiedName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljavassist/ClassPool;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cp"    # Ljavassist/ClassPool;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1}, Ljavassist/CtClass;-><init>(Ljava/lang/String;)V

    .line 76
    sget-boolean v0, Ljavassist/ClassPool;->doPruning:Z

    iput-boolean v0, p0, Ljavassist/CtClassType;->doPruning:Z

    .line 82
    iput-object p2, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    .line 83
    iput-boolean v2, p0, Ljavassist/CtClassType;->gcConstPool:Z

    iput-boolean v2, p0, Ljavassist/CtClassType;->wasPruned:Z

    iput-boolean v2, p0, Ljavassist/CtClassType;->wasFrozen:Z

    iput-boolean v2, p0, Ljavassist/CtClassType;->wasChanged:Z

    .line 84
    iput-object v1, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;

    .line 85
    iput-object v1, p0, Ljavassist/CtClassType;->rawClassfile:[B

    .line 86
    iput-object v1, p0, Ljavassist/CtClassType;->memberCache:Ljava/lang/ref/WeakReference;

    .line 87
    iput-object v1, p0, Ljavassist/CtClassType;->accessors:Ljavassist/compiler/AccessorMaker;

    .line 88
    iput-object v1, p0, Ljavassist/CtClassType;->fieldInitializers:Ljavassist/FieldInitLink;

    .line 89
    iput-object v1, p0, Ljavassist/CtClassType;->hiddenMethods:Ljava/util/Hashtable;

    .line 90
    iput v2, p0, Ljavassist/CtClassType;->uniqueNumberSeed:I

    .line 91
    iput v2, p0, Ljavassist/CtClassType;->getCount:I

    .line 92
    return-void
.end method

.method private checkGetField(Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;
    .locals 4
    .param p1, "f"    # Ljavassist/CtField;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 915
    if-nez p1, :cond_1

    .line 916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 917
    .local v0, "msg":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 920
    :cond_0
    new-instance v1, Ljavassist/NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 923
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private checkPruned(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 1472
    iget-boolean v0, p0, Ljavassist/CtClassType;->wasPruned:Z

    if-eqz v0, :cond_0

    .line 1473
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was pruned."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1475
    :cond_0
    return-void
.end method

.method private dumpClassFile(Ljavassist/bytecode/ClassFile;)V
    .locals 2
    .param p1, "cf"    # Ljavassist/bytecode/ClassFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1460
    sget-object v1, Ljavassist/CtClassType;->debugDump:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljavassist/CtClassType;->makeFileOutput(Ljava/lang/String;)Ljava/io/DataOutputStream;

    move-result-object v0

    .line 1462
    .local v0, "dump":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p1, v0}, Ljavassist/bytecode/ClassFile;->write(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1465
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 1467
    return-void

    .line 1465
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    throw v1
.end method

.method private exToString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljavassist/CtMember;Ljavassist/CtMember;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "head"    # Ljavassist/CtMember;
    .param p4, "tail"    # Ljavassist/CtMember;

    .prologue
    .line 151
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    :goto_0
    if-eq p3, p4, :cond_0

    .line 153
    invoke-virtual {p3}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object p3

    .line 154
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 155
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method static getAnnotationType(Ljava/lang/Class;Ljavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)Ljava/lang/Object;
    .locals 5
    .param p0, "clz"    # Ljava/lang/Class;
    .param p1, "cp"    # Ljavassist/ClassPool;
    .param p2, "a1"    # Ljavassist/bytecode/AnnotationsAttribute;
    .param p3, "a2"    # Ljavassist/bytecode/AnnotationsAttribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 501
    if-nez p2, :cond_0

    .line 502
    const/4 v0, 0x0

    .line 506
    .local v0, "anno1":[Ljavassist/bytecode/annotation/Annotation;
    :goto_0
    if-nez p3, :cond_1

    .line 507
    const/4 v1, 0x0

    .line 511
    .local v1, "anno2":[Ljavassist/bytecode/annotation/Annotation;
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, "typeName":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 513
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v4, v0

    if-ge v2, v4, :cond_3

    .line 514
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 515
    aget-object v4, v0, v2

    invoke-static {v4, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v4

    .line 522
    .end local v2    # "i":I
    :goto_3
    return-object v4

    .line 504
    .end local v0    # "anno1":[Ljavassist/bytecode/annotation/Annotation;
    .end local v1    # "anno2":[Ljavassist/bytecode/annotation/Annotation;
    .end local v3    # "typeName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v0

    .restart local v0    # "anno1":[Ljavassist/bytecode/annotation/Annotation;
    goto :goto_0

    .line 509
    :cond_1
    invoke-virtual {p3}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v1

    .restart local v1    # "anno2":[Ljavassist/bytecode/annotation/Annotation;
    goto :goto_1

    .line 513
    .restart local v2    # "i":I
    .restart local v3    # "typeName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 517
    .end local v2    # "i":I
    :cond_3
    if-eqz v1, :cond_5

    .line 518
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    array-length v4, v1

    if-ge v2, v4, :cond_5

    .line 519
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 520
    aget-object v4, v1, v2

    invoke-static {v4, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    .line 518
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 522
    .end local v2    # "i":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_3
.end method

.method private getAnnotations(Z)[Ljava/lang/Object;
    .locals 4
    .param p1, "ignoreNotFound"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 541
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v2

    .line 542
    .local v2, "cf":Ljavassist/bytecode/ClassFile;
    const-string v3, "RuntimeInvisibleAnnotations"

    invoke-virtual {v2, v3}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AnnotationsAttribute;

    .line 544
    .local v0, "ainfo":Ljavassist/bytecode/AnnotationsAttribute;
    const-string v3, "RuntimeVisibleAnnotations"

    invoke-virtual {v2, v3}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AnnotationsAttribute;

    .line 546
    .local v1, "ainfo2":Ljavassist/bytecode/AnnotationsAttribute;
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassPool()Ljavassist/ClassPool;

    move-result-object v3

    invoke-static {p1, v3, v0, v1}, Ljavassist/CtClassType;->toAnnotationType(ZLjavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)[Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method private getDeclaredField2(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 973
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v1

    .line 974
    .local v1, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v1}, Ljavassist/CtMember$Cache;->fieldHead()Ljavassist/CtMember;

    move-result-object v0

    .line 975
    .local v0, "field":Ljavassist/CtMember;
    invoke-virtual {v1}, Ljavassist/CtMember$Cache;->lastField()Ljavassist/CtMember;

    move-result-object v2

    .line 976
    .local v2, "tail":Ljavassist/CtMember;
    :cond_0
    if-eq v0, v2, :cond_2

    .line 977
    invoke-virtual {v0}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v0

    .line 978
    invoke-virtual {v0}, Ljavassist/CtMember;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ljavassist/CtMember;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    move-object v3, v0

    .line 980
    check-cast v3, Ljavassist/CtField;

    .line 983
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getFields(Ljava/util/ArrayList;Ljavassist/CtClass;)V
    .locals 7
    .param p0, "alist"    # Ljava/util/ArrayList;
    .param p1, "cc"    # Ljavassist/CtClass;

    .prologue
    .line 881
    if-nez p1, :cond_1

    .line 905
    .end local p1    # "cc":Ljavassist/CtClass;
    :cond_0
    return-void

    .line 885
    .restart local p1    # "cc":Ljavassist/CtClass;
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v6

    invoke-static {p0, v6}, Ljavassist/CtClassType;->getFields(Ljava/util/ArrayList;Ljavassist/CtClass;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 890
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljavassist/CtClass;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v2

    .line 891
    .local v2, "ifs":[Ljavassist/CtClass;
    array-length v4, v2

    .line 892
    .local v4, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 893
    aget-object v6, v2, v1

    invoke-static {p0, v6}, Ljavassist/CtClassType;->getFields(Ljava/util/ArrayList;Ljavassist/CtClass;)V
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 892
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 895
    .end local v1    # "i":I
    .end local v2    # "ifs":[Ljavassist/CtClass;
    .end local v4    # "num":I
    :catch_0
    move-exception v6

    .line 897
    :cond_2
    check-cast p1, Ljavassist/CtClassType;

    .end local p1    # "cc":Ljavassist/CtClass;
    invoke-virtual {p1}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v3

    .line 898
    .local v3, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v3}, Ljavassist/CtMember$Cache;->fieldHead()Ljavassist/CtMember;

    move-result-object v0

    .line 899
    .local v0, "field":Ljavassist/CtMember;
    invoke-virtual {v3}, Ljavassist/CtMember$Cache;->lastField()Ljavassist/CtMember;

    move-result-object v5

    .line 900
    .local v5, "tail":Ljavassist/CtMember;
    :cond_3
    :goto_2
    if-eq v0, v5, :cond_0

    .line 901
    invoke-virtual {v0}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v0

    .line 902
    invoke-virtual {v0}, Ljavassist/CtMember;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 903
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 887
    .end local v0    # "field":Ljavassist/CtMember;
    .end local v3    # "memCache":Ljavassist/CtMember$Cache;
    .end local v5    # "tail":Ljavassist/CtMember;
    .restart local p1    # "cc":Ljavassist/CtClass;
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method private static getMethod0(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;
    .locals 9
    .param p0, "cc"    # Ljavassist/CtClass;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 1149
    instance-of v8, p0, Ljavassist/CtClassType;

    if-eqz v8, :cond_2

    move-object v8, p0

    .line 1150
    check-cast v8, Ljavassist/CtClassType;

    invoke-virtual {v8}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v3

    .line 1151
    .local v3, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v3}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v4

    .line 1152
    .local v4, "mth":Ljavassist/CtMember;
    invoke-virtual {v3}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object v5

    .line 1154
    .local v5, "mthTail":Ljavassist/CtMember;
    :cond_0
    if-eq v4, v5, :cond_2

    .line 1155
    invoke-virtual {v4}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v4

    .line 1156
    invoke-virtual {v4}, Ljavassist/CtMember;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v4

    check-cast v8, Ljavassist/CtMethod;

    invoke-virtual {v8}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v8

    invoke-virtual {v8}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1158
    check-cast v4, Ljavassist/CtMethod;

    .end local v4    # "mth":Ljavassist/CtMember;
    move-object v2, v4

    .line 1182
    .end local v3    # "memCache":Ljavassist/CtMember$Cache;
    .end local v5    # "mthTail":Ljavassist/CtMember;
    :cond_1
    :goto_0
    return-object v2

    .line 1163
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v6

    .line 1164
    .local v6, "s":Ljavassist/CtClass;
    if-eqz v6, :cond_3

    .line 1165
    invoke-static {v6, p1, p2}, Ljavassist/CtClassType;->getMethod0(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1166
    .local v2, "m":Ljavassist/CtMethod;
    if-nez v2, :cond_1

    .line 1173
    .end local v2    # "m":Ljavassist/CtMethod;
    .end local v6    # "s":Ljavassist/CtClass;
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljavassist/CtClass;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v1

    .line 1174
    .local v1, "ifs":[Ljavassist/CtClass;
    array-length v7, v1

    .line 1175
    .local v7, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v7, :cond_4

    .line 1176
    aget-object v8, v1, v0

    invoke-static {v8, p1, p2}, Ljavassist/CtClassType;->getMethod0(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 1177
    .restart local v2    # "m":Ljavassist/CtMethod;
    if-nez v2, :cond_1

    .line 1175
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1181
    .end local v0    # "i":I
    .end local v1    # "ifs":[Ljavassist/CtClass;
    .end local v2    # "m":Ljavassist/CtMethod;
    .end local v7    # "size":I
    :catch_0
    move-exception v8

    .line 1182
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 1170
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method private static getMethods0(Ljava/util/HashMap;Ljavassist/CtClass;)V
    .locals 8
    .param p0, "h"    # Ljava/util/HashMap;
    .param p1, "cc"    # Ljavassist/CtClass;

    .prologue
    .line 1109
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v1

    .line 1110
    .local v1, "ifs":[Ljavassist/CtClass;
    array-length v6, v1

    .line 1111
    .local v6, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 1112
    aget-object v7, v1, v0

    invoke-static {p0, v7}, Ljavassist/CtClassType;->getMethods0(Ljava/util/HashMap;Ljavassist/CtClass;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1114
    .end local v0    # "i":I
    .end local v1    # "ifs":[Ljavassist/CtClass;
    .end local v6    # "size":I
    :catch_0
    move-exception v7

    .line 1117
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v5

    .line 1118
    .local v5, "s":Ljavassist/CtClass;
    if-eqz v5, :cond_1

    .line 1119
    invoke-static {p0, v5}, Ljavassist/CtClassType;->getMethods0(Ljava/util/HashMap;Ljavassist/CtClass;)V
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1123
    .end local v5    # "s":Ljavassist/CtClass;
    :cond_1
    :goto_1
    instance-of v7, p1, Ljavassist/CtClassType;

    if-eqz v7, :cond_3

    .line 1124
    check-cast p1, Ljavassist/CtClassType;

    .end local p1    # "cc":Ljavassist/CtClass;
    invoke-virtual {p1}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v2

    .line 1125
    .local v2, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v2}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v3

    .line 1126
    .local v3, "mth":Ljavassist/CtMember;
    invoke-virtual {v2}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object v4

    .line 1128
    .local v4, "mthTail":Ljavassist/CtMember;
    :cond_2
    :goto_2
    if-eq v3, v4, :cond_3

    .line 1129
    invoke-virtual {v3}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v3

    .line 1130
    invoke-virtual {v3}, Ljavassist/CtMember;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result v7

    if-nez v7, :cond_2

    move-object v7, v3

    .line 1131
    check-cast v7, Ljavassist/CtMethod;

    invoke-virtual {v7}, Ljavassist/CtMethod;->getStringRep()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1134
    .end local v2    # "memCache":Ljavassist/CtMember$Cache;
    .end local v3    # "mth":Ljavassist/CtMember;
    .end local v4    # "mthTail":Ljavassist/CtMember;
    :cond_3
    return-void

    .line 1121
    .restart local p1    # "cc":Ljavassist/CtClass;
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method static hasAnnotationType(Ljava/lang/Class;Ljavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)Z
    .locals 6
    .param p0, "clz"    # Ljava/lang/Class;
    .param p1, "cp"    # Ljavassist/ClassPool;
    .param p2, "a1"    # Ljavassist/bytecode/AnnotationsAttribute;
    .param p3, "a2"    # Ljavassist/bytecode/AnnotationsAttribute;

    .prologue
    const/4 v4, 0x1

    .line 462
    if-nez p2, :cond_1

    .line 463
    const/4 v0, 0x0

    .line 467
    .local v0, "anno1":[Ljavassist/bytecode/annotation/Annotation;
    :goto_0
    if-nez p3, :cond_2

    .line 468
    const/4 v1, 0x0

    .line 472
    .local v1, "anno2":[Ljavassist/bytecode/annotation/Annotation;
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 473
    .local v3, "typeName":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 474
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v5, v0

    if-ge v2, v5, :cond_4

    .line 475
    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 483
    .end local v2    # "i":I
    :cond_0
    :goto_3
    return v4

    .line 465
    .end local v0    # "anno1":[Ljavassist/bytecode/annotation/Annotation;
    .end local v1    # "anno2":[Ljavassist/bytecode/annotation/Annotation;
    .end local v3    # "typeName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v0

    .restart local v0    # "anno1":[Ljavassist/bytecode/annotation/Annotation;
    goto :goto_0

    .line 470
    :cond_2
    invoke-virtual {p3}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v1

    .restart local v1    # "anno2":[Ljavassist/bytecode/annotation/Annotation;
    goto :goto_1

    .line 474
    .restart local v2    # "i":I
    .restart local v3    # "typeName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 478
    .end local v2    # "i":I
    :cond_4
    if-eqz v1, :cond_5

    .line 479
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    array-length v5, v1

    if-ge v2, v5, :cond_5

    .line 480
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 479
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 483
    .end local v2    # "i":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_3
.end method

.method private static insertAuxInitializer(Ljavassist/bytecode/CodeAttribute;Ljavassist/bytecode/Bytecode;I)V
    .locals 5
    .param p0, "codeAttr"    # Ljavassist/bytecode/CodeAttribute;
    .param p1, "initializer"    # Ljavassist/bytecode/Bytecode;
    .param p2, "stacksize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 1592
    invoke-virtual {p0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v1

    .line 1593
    .local v1, "it":Ljavassist/bytecode/CodeIterator;
    invoke-virtual {v1}, Ljavassist/bytecode/CodeIterator;->skipSuperConstructor()I

    move-result v0

    .line 1594
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 1595
    invoke-virtual {v1}, Ljavassist/bytecode/CodeIterator;->skipThisConstructor()I

    move-result v0

    .line 1596
    if-ltz v0, :cond_1

    .line 1607
    :cond_0
    :goto_0
    return-void

    .line 1602
    :cond_1
    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavassist/bytecode/CodeIterator;->insertEx([B)I

    move-result v3

    .line 1603
    .local v3, "pos":I
    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljavassist/bytecode/CodeIterator;->insert(Ljavassist/bytecode/ExceptionTable;I)V

    .line 1604
    invoke-virtual {p0}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v2

    .line 1605
    .local v2, "maxstack":I
    if-ge v2, p2, :cond_0

    .line 1606
    invoke-virtual {p0, p2}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    goto :goto_0
.end method

.method private static isPubCons(Ljavassist/CtConstructor;)Z
    .locals 1
    .param p0, "cons"    # Ljavassist/CtConstructor;

    .prologue
    .line 1037
    invoke-virtual {p0}, Ljavassist/CtConstructor;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavassist/CtConstructor;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeBehaviorCache(Ljavassist/CtMember$Cache;)V
    .locals 7
    .param p1, "cache"    # Ljavassist/CtMember$Cache;

    .prologue
    .line 858
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v6

    invoke-virtual {v6}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v1

    .line 859
    .local v1, "list":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 860
    .local v3, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 861
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/MethodInfo;

    .line 862
    .local v2, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v2}, Ljavassist/bytecode/MethodInfo;->isMethod()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 863
    new-instance v5, Ljavassist/CtMethod;

    invoke-direct {v5, v2, p0}, Ljavassist/CtMethod;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    .line 864
    .local v5, "newMethod":Ljavassist/CtMethod;
    invoke-virtual {p1, v5}, Ljavassist/CtMember$Cache;->addMethod(Ljavassist/CtMember;)V

    .line 860
    .end local v5    # "newMethod":Ljavassist/CtMethod;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 867
    :cond_0
    new-instance v4, Ljavassist/CtConstructor;

    invoke-direct {v4, v2, p0}, Ljavassist/CtConstructor;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    .line 868
    .local v4, "newCons":Ljavassist/CtConstructor;
    invoke-virtual {p1, v4}, Ljavassist/CtMember$Cache;->addConstructor(Ljavassist/CtMember;)V

    goto :goto_1

    .line 871
    .end local v2    # "minfo":Ljavassist/bytecode/MethodInfo;
    .end local v4    # "newCons":Ljavassist/CtConstructor;
    :cond_1
    return-void
.end method

.method private makeFieldCache(Ljavassist/CtMember$Cache;)V
    .locals 6
    .param p1, "cache"    # Ljavassist/CtMember$Cache;

    .prologue
    .line 848
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v5

    invoke-virtual {v5}, Ljavassist/bytecode/ClassFile;->getFields()Ljava/util/List;

    move-result-object v2

    .line 849
    .local v2, "list":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 850
    .local v3, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 851
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/FieldInfo;

    .line 852
    .local v0, "finfo":Ljavassist/bytecode/FieldInfo;
    new-instance v4, Ljavassist/CtField;

    invoke-direct {v4, v0, p0}, Ljavassist/CtField;-><init>(Ljavassist/bytecode/FieldInfo;Ljavassist/CtClass;)V

    .line 853
    .local v4, "newField":Ljavassist/CtField;
    invoke-virtual {p1, v4}, Ljavassist/CtMember$Cache;->addField(Ljavassist/CtMember;)V

    .line 850
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 855
    .end local v0    # "finfo":Ljavassist/bytecode/FieldInfo;
    .end local v4    # "newField":Ljavassist/CtField;
    :cond_0
    return-void
.end method

.method private makeFieldInitializer(Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;)I
    .locals 11
    .param p1, "code"    # Ljavassist/bytecode/Bytecode;
    .param p2, "parameters"    # [Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 1612
    const/4 v10, 0x0

    .line 1613
    .local v10, "stacksize":I
    new-instance v5, Ljavassist/compiler/Javac;

    invoke-direct {v5, p1, p0}, Ljavassist/compiler/Javac;-><init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V

    .line 1615
    .local v5, "jv":Ljavassist/compiler/Javac;
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v5, p2, v0}, Ljavassist/compiler/Javac;->recordParams([Ljavassist/CtClass;Z)I
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1621
    iget-object v8, p0, Ljavassist/CtClassType;->fieldInitializers:Ljavassist/FieldInitLink;

    .local v8, "fi":Ljavassist/FieldInitLink;
    :goto_0
    if-eqz v8, :cond_1

    .line 1622
    iget-object v7, v8, Ljavassist/FieldInitLink;->field:Ljavassist/CtField;

    .line 1623
    .local v7, "f":Ljavassist/CtField;
    invoke-virtual {v7}, Ljavassist/CtField;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1624
    iget-object v0, v8, Ljavassist/FieldInitLink;->init:Ljavassist/CtField$Initializer;

    invoke-virtual {v7}, Ljavassist/CtField;->getType()Ljavassist/CtClass;

    move-result-object v1

    invoke-virtual {v7}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Ljavassist/CtField$Initializer;->compile(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;Ljavassist/compiler/Javac;)I

    move-result v9

    .line 1626
    .local v9, "s":I
    if-ge v10, v9, :cond_0

    .line 1627
    move v10, v9

    .line 1621
    .end local v9    # "s":I
    :cond_0
    iget-object v8, v8, Ljavassist/FieldInitLink;->next:Ljavassist/FieldInitLink;

    goto :goto_0

    .line 1617
    .end local v7    # "f":Ljavassist/CtField;
    .end local v8    # "fi":Ljavassist/FieldInitLink;
    :catch_0
    move-exception v6

    .line 1618
    .local v6, "e":Ljavassist/compiler/CompileError;
    new-instance v0, Ljavassist/CannotCompileException;

    invoke-direct {v0, v6}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v0

    .line 1631
    .end local v6    # "e":Ljavassist/compiler/CompileError;
    .restart local v8    # "fi":Ljavassist/FieldInitLink;
    :cond_1
    return v10
.end method

.method private makeMemberList(Ljava/util/HashMap;)V
    .locals 11
    .param p1, "table"    # Ljava/util/HashMap;

    .prologue
    .line 1676
    invoke-virtual {p0}, Ljavassist/CtClassType;->getModifiers()I

    move-result v6

    .line 1677
    .local v6, "mod":I
    invoke-static {v6}, Ljavassist/Modifier;->isAbstract(I)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v6}, Ljavassist/Modifier;->isInterface(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1679
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v3

    .line 1680
    .local v3, "ifs":[Ljavassist/CtClass;
    array-length v9, v3

    .line 1681
    .local v9, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_2

    .line 1682
    aget-object v2, v3, v1

    .line 1683
    .local v2, "ic":Ljavassist/CtClass;
    if-eqz v2, :cond_1

    instance-of v10, v2, Ljavassist/CtClassType;

    if-eqz v10, :cond_1

    .line 1684
    check-cast v2, Ljavassist/CtClassType;

    .end local v2    # "ic":Ljavassist/CtClass;
    invoke-direct {v2, p1}, Ljavassist/CtClassType;->makeMemberList(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1681
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1687
    .end local v1    # "i":I
    .end local v3    # "ifs":[Ljavassist/CtClass;
    .end local v9    # "size":I
    :catch_0
    move-exception v10

    .line 1690
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljavassist/CtClassType;->getSuperclass()Ljavassist/CtClass;

    move-result-object v8

    .line 1691
    .local v8, "s":Ljavassist/CtClass;
    if-eqz v8, :cond_3

    instance-of v10, v8, Ljavassist/CtClassType;

    if-eqz v10, :cond_3

    .line 1692
    check-cast v8, Ljavassist/CtClassType;

    .end local v8    # "s":Ljavassist/CtClass;
    invoke-direct {v8, p1}, Ljavassist/CtClassType;->makeMemberList(Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1696
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v10

    invoke-virtual {v10}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v4

    .line 1697
    .local v4, "list":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .line 1698
    .local v7, "n":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v7, :cond_4

    .line 1699
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavassist/bytecode/MethodInfo;

    .line 1700
    .local v5, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v5}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1703
    .end local v5    # "minfo":Ljavassist/bytecode/MethodInfo;
    :cond_4
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v10

    invoke-virtual {v10}, Ljavassist/bytecode/ClassFile;->getFields()Ljava/util/List;

    move-result-object v4

    .line 1704
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .line 1705
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v7, :cond_5

    .line 1706
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/FieldInfo;

    .line 1707
    .local v0, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1709
    .end local v0    # "finfo":Ljavassist/bytecode/FieldInfo;
    :cond_5
    return-void

    .line 1694
    .end local v1    # "i":I
    .end local v4    # "list":Ljava/util/List;
    .end local v7    # "n":I
    :catch_1
    move-exception v10

    goto :goto_1
.end method

.method private modifyClassConstructor(Ljavassist/bytecode/ClassFile;)V
    .locals 11
    .param p1, "cf"    # Ljavassist/bytecode/ClassFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1486
    iget-object v7, p0, Ljavassist/CtClassType;->fieldInitializers:Ljavassist/FieldInitLink;

    if-nez v7, :cond_1

    .line 1506
    :cond_0
    :goto_0
    return-void

    .line 1489
    :cond_1
    new-instance v0, Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v7

    invoke-direct {v0, v7, v10, v10}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 1490
    .local v0, "code":Ljavassist/bytecode/Bytecode;
    new-instance v4, Ljavassist/compiler/Javac;

    invoke-direct {v4, v0, p0}, Ljavassist/compiler/Javac;-><init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V

    .line 1491
    .local v4, "jv":Ljavassist/compiler/Javac;
    const/4 v6, 0x0

    .line 1492
    .local v6, "stacksize":I
    const/4 v1, 0x0

    .line 1493
    .local v1, "doInit":Z
    iget-object v3, p0, Ljavassist/CtClassType;->fieldInitializers:Ljavassist/FieldInitLink;

    .local v3, "fi":Ljavassist/FieldInitLink;
    :goto_1
    if-eqz v3, :cond_3

    .line 1494
    iget-object v2, v3, Ljavassist/FieldInitLink;->field:Ljavassist/CtField;

    .line 1495
    .local v2, "f":Ljavassist/CtField;
    invoke-virtual {v2}, Ljavassist/CtField;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1496
    const/4 v1, 0x1

    .line 1497
    iget-object v7, v3, Ljavassist/FieldInitLink;->init:Ljavassist/CtField$Initializer;

    invoke-virtual {v2}, Ljavassist/CtField;->getType()Ljavassist/CtClass;

    move-result-object v8

    invoke-virtual {v2}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v0, v4}, Ljavassist/CtField$Initializer;->compileIfStatic(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/Javac;)I

    move-result v5

    .line 1499
    .local v5, "s":I
    if-ge v6, v5, :cond_2

    .line 1500
    move v6, v5

    .line 1493
    .end local v5    # "s":I
    :cond_2
    iget-object v3, v3, Ljavassist/FieldInitLink;->next:Ljavassist/FieldInitLink;

    goto :goto_1

    .line 1504
    .end local v2    # "f":Ljavassist/CtField;
    :cond_3
    if-eqz v1, :cond_0

    .line 1505
    invoke-direct {p0, p1, v0, v6, v10}, Ljavassist/CtClassType;->modifyClassConstructor(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/Bytecode;II)V

    goto :goto_0
.end method

.method private modifyClassConstructor(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/Bytecode;II)V
    .locals 11
    .param p1, "cf"    # Ljavassist/bytecode/ClassFile;
    .param p2, "code"    # Ljavassist/bytecode/Bytecode;
    .param p3, "stacksize"    # I
    .param p4, "localsize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 1512
    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getStaticInitializer()Ljavassist/bytecode/MethodInfo;

    move-result-object v4

    .line 1513
    .local v4, "m":Ljavassist/bytecode/MethodInfo;
    if-nez v4, :cond_1

    .line 1514
    const/16 v8, 0xb1

    invoke-virtual {p2, v8}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1515
    invoke-virtual {p2, p3}, Ljavassist/bytecode/Bytecode;->setMaxStack(I)V

    .line 1516
    invoke-virtual {p2, p4}, Ljavassist/bytecode/Bytecode;->setMaxLocals(I)V

    .line 1517
    new-instance v4, Ljavassist/bytecode/MethodInfo;

    .end local v4    # "m":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v8

    const-string v9, "<clinit>"

    const-string v10, "()V"

    invoke-direct {v4, v8, v9, v10}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    .restart local v4    # "m":Ljavassist/bytecode/MethodInfo;
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 1519
    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 1520
    invoke-virtual {p1, v4}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    .line 1521
    invoke-virtual {p0}, Ljavassist/CtClassType;->hasMemberCache()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 1522
    .local v0, "cache":Ljavassist/CtMember$Cache;
    if-eqz v0, :cond_0

    .line 1523
    new-instance v8, Ljavassist/CtConstructor;

    invoke-direct {v8, v4, p0}, Ljavassist/CtConstructor;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    invoke-virtual {v0, v8}, Ljavassist/CtMember$Cache;->addConstructor(Ljavassist/CtMember;)V

    .line 1548
    .end local v0    # "cache":Ljavassist/CtMember$Cache;
    :cond_0
    :goto_0
    :try_start_0
    iget-object v8, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v4, v8, p1}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_1

    .line 1553
    return-void

    .line 1526
    :cond_1
    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v1

    .line 1527
    .local v1, "codeAttr":Ljavassist/bytecode/CodeAttribute;
    if-nez v1, :cond_2

    .line 1528
    new-instance v8, Ljavassist/CannotCompileException;

    const-string v9, "empty <clinit>"

    invoke-direct {v8, v9}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1531
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v3

    .line 1532
    .local v3, "it":Ljavassist/bytecode/CodeIterator;
    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljavassist/bytecode/CodeIterator;->insertEx([B)I

    move-result v7

    .line 1533
    .local v7, "pos":I
    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v8

    invoke-virtual {v3, v8, v7}, Ljavassist/bytecode/CodeIterator;->insert(Ljavassist/bytecode/ExceptionTable;I)V

    .line 1534
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v6

    .line 1535
    .local v6, "maxstack":I
    if-ge v6, p3, :cond_3

    .line 1536
    invoke-virtual {v1, p3}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    .line 1538
    :cond_3
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v5

    .line 1539
    .local v5, "maxlocals":I
    if-ge v5, p4, :cond_0

    .line 1540
    invoke-virtual {v1, p4}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V
    :try_end_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1542
    .end local v3    # "it":Ljavassist/bytecode/CodeIterator;
    .end local v5    # "maxlocals":I
    .end local v6    # "maxstack":I
    .end local v7    # "pos":I
    :catch_0
    move-exception v2

    .line 1543
    .local v2, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v8, Ljavassist/CannotCompileException;

    invoke-direct {v8, v2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 1550
    .end local v1    # "codeAttr":Ljavassist/bytecode/CodeAttribute;
    .end local v2    # "e":Ljavassist/bytecode/BadBytecode;
    :catch_1
    move-exception v2

    .line 1551
    .restart local v2    # "e":Ljavassist/bytecode/BadBytecode;
    new-instance v8, Ljavassist/CannotCompileException;

    invoke-direct {v8, v2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method private modifyConstructors(Ljavassist/bytecode/ClassFile;)V
    .locals 12
    .param p1, "cf"    # Ljavassist/bytecode/ClassFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 1558
    iget-object v10, p0, Ljavassist/CtClassType;->fieldInitializers:Ljavassist/FieldInitLink;

    if-nez v10, :cond_1

    .line 1585
    :cond_0
    return-void

    .line 1561
    :cond_1
    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    .line 1562
    .local v1, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v5

    .line 1563
    .local v5, "list":Ljava/util/List;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 1564
    .local v7, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_0

    .line 1565
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavassist/bytecode/MethodInfo;

    .line 1566
    .local v6, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v6}, Ljavassist/bytecode/MethodInfo;->isConstructor()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1567
    invoke-virtual {v6}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    .line 1568
    .local v0, "codeAttr":Ljavassist/bytecode/CodeAttribute;
    if-eqz v0, :cond_2

    .line 1570
    :try_start_0
    new-instance v4, Ljavassist/bytecode/Bytecode;

    const/4 v10, 0x0

    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v11

    invoke-direct {v4, v1, v10, v11}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 1572
    .local v4, "init":Ljavassist/bytecode/Bytecode;
    invoke-virtual {v6}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-static {v10, v11}, Ljavassist/bytecode/Descriptor;->getParameterTypes(Ljava/lang/String;Ljavassist/ClassPool;)[Ljavassist/CtClass;

    move-result-object v8

    .line 1576
    .local v8, "params":[Ljavassist/CtClass;
    invoke-direct {p0, v4, v8}, Ljavassist/CtClassType;->makeFieldInitializer(Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;)I

    move-result v9

    .line 1577
    .local v9, "stacksize":I
    invoke-static {v0, v4, v9}, Ljavassist/CtClassType;->insertAuxInitializer(Ljavassist/bytecode/CodeAttribute;Ljavassist/bytecode/Bytecode;I)V

    .line 1578
    iget-object v10, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v6, v10, p1}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .line 1564
    .end local v0    # "codeAttr":Ljavassist/bytecode/CodeAttribute;
    .end local v4    # "init":Ljavassist/bytecode/Bytecode;
    .end local v8    # "params":[Ljavassist/CtClass;
    .end local v9    # "stacksize":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1580
    .restart local v0    # "codeAttr":Ljavassist/bytecode/CodeAttribute;
    :catch_0
    move-exception v2

    .line 1581
    .local v2, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v10, Ljavassist/CannotCompileException;

    invoke-direct {v10, v2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v10
.end method

.method private nameReplaced()V
    .locals 3

    .prologue
    .line 813
    invoke-virtual {p0}, Ljavassist/CtClassType;->hasMemberCache()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 814
    .local v0, "cache":Ljavassist/CtMember$Cache;
    if-eqz v0, :cond_0

    .line 815
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v1

    .line 816
    .local v1, "mth":Ljavassist/CtMember;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object v2

    .line 817
    .local v2, "tail":Ljavassist/CtMember;
    :goto_0
    if-eq v1, v2, :cond_0

    .line 818
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    .line 819
    invoke-virtual {v1}, Ljavassist/CtMember;->nameReplaced()V

    goto :goto_0

    .line 822
    .end local v1    # "mth":Ljavassist/CtMember;
    .end local v2    # "tail":Ljavassist/CtMember;
    :cond_0
    return-void
.end method

.method private static notFindInArray(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "values"    # [Ljava/lang/String;

    .prologue
    .line 1667
    array-length v1, p1

    .line 1668
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1669
    aget-object v2, p1, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1670
    const/4 v2, 0x0

    .line 1672
    :goto_1
    return v2

    .line 1668
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1672
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private declared-synchronized removeClassFile()V
    .locals 1

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavassist/CtClassType;->isModified()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavassist/CtClassType;->hasMemberCache()Ljavassist/CtMember$Cache;

    move-result-object v0

    if-nez v0, :cond_0

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :cond_0
    monitor-exit p0

    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized saveClassFile()V
    .locals 3

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljavassist/CtClassType;->hasMemberCache()Ljavassist/CtMember$Cache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    .line 257
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 248
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 249
    .local v0, "barray":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    .local v1, "out":Ljava/io/DataOutputStream;
    :try_start_2
    iget-object v2, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/ClassFile;->write(Ljava/io/DataOutputStream;)V

    .line 252
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 253
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Ljavassist/CtClassType;->rawClassfile:[B

    .line 254
    const/4 v2, 0x0

    iput-object v2, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v2

    goto :goto_0

    .line 245
    .end local v0    # "barray":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "out":Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private static toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;
    .locals 4
    .param p0, "anno"    # Ljavassist/bytecode/annotation/Annotation;
    .param p1, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 674
    :try_start_0
    invoke-virtual {p1}, Ljavassist/ClassPool;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 675
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/annotation/Annotation;->toAnnotationType(Ljava/lang/ClassLoader;Ljavassist/ClassPool;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 679
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :goto_0
    return-object v3

    .line 677
    :catch_0
    move-exception v2

    .line 678
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 679
    .local v1, "cl2":Ljava/lang/ClassLoader;
    invoke-virtual {p0, v1, p1}, Ljavassist/bytecode/annotation/Annotation;->toAnnotationType(Ljava/lang/ClassLoader;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method static toAnnotationType(ZLjavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)[Ljava/lang/Object;
    .locals 10
    .param p0, "ignoreNotFound"    # Z
    .param p1, "cp"    # Ljavassist/ClassPool;
    .param p2, "a1"    # Ljavassist/bytecode/AnnotationsAttribute;
    .param p3, "a2"    # Ljavassist/bytecode/AnnotationsAttribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 556
    if-nez p2, :cond_0

    .line 557
    const/4 v0, 0x0

    .line 558
    .local v0, "anno1":[Ljavassist/bytecode/annotation/Annotation;
    const/4 v6, 0x0

    .line 565
    .local v6, "size1":I
    :goto_0
    if-nez p3, :cond_1

    .line 566
    const/4 v1, 0x0

    .line 567
    .local v1, "anno2":[Ljavassist/bytecode/annotation/Annotation;
    const/4 v7, 0x0

    .line 574
    .local v7, "size2":I
    :goto_1
    if-nez p0, :cond_3

    .line 575
    add-int v8, v6, v7

    new-array v5, v8, [Ljava/lang/Object;

    .line 576
    .local v5, "result":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v6, :cond_2

    .line 577
    aget-object v8, v0, v3

    invoke-static {v8, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v5, v3

    .line 576
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 561
    .end local v0    # "anno1":[Ljavassist/bytecode/annotation/Annotation;
    .end local v1    # "anno2":[Ljavassist/bytecode/annotation/Annotation;
    .end local v3    # "i":I
    .end local v5    # "result":[Ljava/lang/Object;
    .end local v6    # "size1":I
    .end local v7    # "size2":I
    :cond_0
    invoke-virtual {p2}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v0

    .line 562
    .restart local v0    # "anno1":[Ljavassist/bytecode/annotation/Annotation;
    array-length v6, v0

    .restart local v6    # "size1":I
    goto :goto_0

    .line 570
    :cond_1
    invoke-virtual {p3}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v1

    .line 571
    .restart local v1    # "anno2":[Ljavassist/bytecode/annotation/Annotation;
    array-length v7, v1

    .restart local v7    # "size2":I
    goto :goto_1

    .line 579
    .restart local v3    # "i":I
    .restart local v5    # "result":[Ljava/lang/Object;
    :cond_2
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    if-ge v4, v7, :cond_6

    .line 580
    add-int v8, v4, v6

    aget-object v9, v1, v4

    invoke-static {v9, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v5, v8

    .line 579
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 585
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "result":[Ljava/lang/Object;
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v2, "annotations":Ljava/util/ArrayList;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v6, :cond_4

    .line 588
    :try_start_0
    aget-object v8, v0, v3

    invoke-static {v8, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 586
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 592
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_6
    if-ge v4, v7, :cond_5

    .line 594
    :try_start_1
    aget-object v8, v1, v4

    invoke-static {v8, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 592
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 599
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .end local v2    # "annotations":Ljava/util/ArrayList;
    :cond_6
    return-object v5

    .line 596
    .restart local v2    # "annotations":Ljava/util/ArrayList;
    :catch_0
    move-exception v8

    goto :goto_7

    .line 590
    .end local v4    # "j":I
    :catch_1
    move-exception v8

    goto :goto_5
.end method

.method static toAnnotationType(ZLjavassist/ClassPool;Ljavassist/bytecode/ParameterAnnotationsAttribute;Ljavassist/bytecode/ParameterAnnotationsAttribute;Ljavassist/bytecode/MethodInfo;)[[Ljava/lang/Object;
    .locals 12
    .param p0, "ignoreNotFound"    # Z
    .param p1, "cp"    # Ljavassist/ClassPool;
    .param p2, "a1"    # Ljavassist/bytecode/ParameterAnnotationsAttribute;
    .param p3, "a2"    # Ljavassist/bytecode/ParameterAnnotationsAttribute;
    .param p4, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 609
    const/4 v5, 0x0

    .line 610
    .local v5, "numParameters":I
    if-eqz p2, :cond_0

    .line 611
    invoke-virtual {p2}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->numParameters()I

    move-result v5

    .line 617
    :goto_0
    new-array v6, v5, [[Ljava/lang/Object;

    .line 618
    .local v6, "result":[[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_9

    .line 622
    if-nez p2, :cond_2

    .line 623
    const/4 v0, 0x0

    .line 624
    .local v0, "anno1":[Ljavassist/bytecode/annotation/Annotation;
    const/4 v7, 0x0

    .line 631
    .local v7, "size1":I
    :goto_2
    if-nez p3, :cond_3

    .line 632
    const/4 v1, 0x0

    .line 633
    .local v1, "anno2":[Ljavassist/bytecode/annotation/Annotation;
    const/4 v8, 0x0

    .line 640
    .local v8, "size2":I
    :goto_3
    if-nez p0, :cond_5

    .line 641
    add-int v9, v7, v8

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v9, v6, v3

    .line 642
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    if-ge v4, v7, :cond_4

    .line 643
    aget-object v9, v6, v3

    aget-object v10, v0, v4

    invoke-static {v10, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v4

    .line 642
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 612
    .end local v0    # "anno1":[Ljavassist/bytecode/annotation/Annotation;
    .end local v1    # "anno2":[Ljavassist/bytecode/annotation/Annotation;
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v6    # "result":[[Ljava/lang/Object;
    .end local v7    # "size1":I
    .end local v8    # "size2":I
    :cond_0
    if-eqz p3, :cond_1

    .line 613
    invoke-virtual {p3}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->numParameters()I

    move-result v5

    goto :goto_0

    .line 615
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljavassist/bytecode/Descriptor;->numOfParameters(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 627
    .restart local v3    # "i":I
    .restart local v6    # "result":[[Ljava/lang/Object;
    :cond_2
    invoke-virtual {p2}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->getAnnotations()[[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v9

    aget-object v0, v9, v3

    .line 628
    .restart local v0    # "anno1":[Ljavassist/bytecode/annotation/Annotation;
    array-length v7, v0

    .restart local v7    # "size1":I
    goto :goto_2

    .line 636
    :cond_3
    invoke-virtual {p3}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->getAnnotations()[[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v9

    aget-object v1, v9, v3

    .line 637
    .restart local v1    # "anno2":[Ljavassist/bytecode/annotation/Annotation;
    array-length v8, v1

    .restart local v8    # "size2":I
    goto :goto_3

    .line 645
    .restart local v4    # "j":I
    :cond_4
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v8, :cond_8

    .line 646
    aget-object v9, v6, v3

    add-int v10, v4, v7

    aget-object v11, v1, v4

    invoke-static {v11, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    .line 645
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 649
    .end local v4    # "j":I
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 650
    .local v2, "annotations":Ljava/util/ArrayList;
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_6
    if-ge v4, v7, :cond_6

    .line 652
    :try_start_0
    aget-object v9, v0, v4

    invoke-static {v9, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 650
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 656
    :cond_6
    const/4 v4, 0x0

    :goto_8
    if-ge v4, v8, :cond_7

    .line 658
    :try_start_1
    aget-object v9, v1, v4

    invoke-static {v9, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 656
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 663
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v6, v3

    .line 618
    .end local v2    # "annotations":Ljava/util/ArrayList;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 667
    .end local v0    # "anno1":[Ljavassist/bytecode/annotation/Annotation;
    .end local v1    # "anno2":[Ljavassist/bytecode/annotation/Annotation;
    .end local v4    # "j":I
    .end local v7    # "size1":I
    .end local v8    # "size2":I
    :cond_9
    return-object v6

    .line 660
    .restart local v0    # "anno1":[Ljavassist/bytecode/annotation/Annotation;
    .restart local v1    # "anno2":[Ljavassist/bytecode/annotation/Annotation;
    .restart local v2    # "annotations":Ljava/util/ArrayList;
    .restart local v4    # "j":I
    .restart local v7    # "size1":I
    .restart local v8    # "size2":I
    :catch_0
    move-exception v9

    goto :goto_9

    .line 654
    :catch_1
    move-exception v9

    goto :goto_7
.end method


# virtual methods
.method public addConstructor(Ljavassist/CtConstructor;)V
    .locals 2
    .param p1, "c"    # Ljavassist/CtConstructor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 1310
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1311
    invoke-virtual {p1}, Ljavassist/CtConstructor;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 1312
    new-instance v0, Ljavassist/CannotCompileException;

    const-string v1, "cannot add"

    invoke-direct {v0, v1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1314
    :cond_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavassist/CtMember$Cache;->addConstructor(Ljavassist/CtMember;)V

    .line 1315
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtConstructor;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    .line 1316
    return-void
.end method

.method public addField(Ljavassist/CtField;Ljava/lang/String;)V
    .locals 1
    .param p1, "f"    # Ljavassist/CtField;
    .param p2, "init"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 1236
    invoke-static {p2}, Ljavassist/CtField$Initializer;->byExpr(Ljava/lang/String;)Ljavassist/CtField$Initializer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljavassist/CtClassType;->addField(Ljavassist/CtField;Ljavassist/CtField$Initializer;)V

    .line 1237
    return-void
.end method

.method public addField(Ljavassist/CtField;Ljavassist/CtField$Initializer;)V
    .locals 7
    .param p1, "f"    # Ljavassist/CtField;
    .param p2, "init"    # Ljavassist/CtField$Initializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 1242
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1243
    invoke-virtual {p1}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v5

    if-eq v5, p0, :cond_0

    .line 1244
    new-instance v5, Ljavassist/CannotCompileException;

    const-string v6, "cannot add"

    invoke-direct {v5, v6}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1246
    :cond_0
    if-nez p2, :cond_1

    .line 1247
    invoke-virtual {p1}, Ljavassist/CtField;->getInit()Ljavassist/CtField$Initializer;

    move-result-object p2

    .line 1249
    :cond_1
    if-eqz p2, :cond_2

    .line 1250
    invoke-virtual {p1}, Ljavassist/CtField;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljavassist/CtField$Initializer;->check(Ljava/lang/String;)V

    .line 1251
    invoke-virtual {p1}, Ljavassist/CtField;->getModifiers()I

    move-result v4

    .line 1252
    .local v4, "mod":I
    invoke-static {v4}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Ljavassist/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1254
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v5

    invoke-virtual {v5}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 1255
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {p1}, Ljavassist/CtField;->getType()Ljavassist/CtClass;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Ljavassist/CtField$Initializer;->getConstantValue(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;)I

    move-result v2

    .line 1256
    .local v2, "index":I
    if-eqz v2, :cond_2

    .line 1257
    invoke-virtual {p1}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v5

    new-instance v6, Ljavassist/bytecode/ConstantAttribute;

    invoke-direct {v6, v0, v2}, Ljavassist/bytecode/ConstantAttribute;-><init>(Ljavassist/bytecode/ConstPool;I)V

    invoke-virtual {v5, v6}, Ljavassist/bytecode/FieldInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    const/4 p2, 0x0

    .line 1264
    .end local v0    # "cp":Ljavassist/bytecode/ConstPool;
    .end local v2    # "index":I
    .end local v4    # "mod":I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljavassist/CtMember$Cache;->addField(Ljavassist/CtMember;)V

    .line 1265
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v5

    invoke-virtual {p1}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavassist/bytecode/ClassFile;->addField(Ljavassist/bytecode/FieldInfo;)V

    .line 1267
    if-eqz p2, :cond_3

    .line 1268
    new-instance v1, Ljavassist/FieldInitLink;

    invoke-direct {v1, p1, p2}, Ljavassist/FieldInitLink;-><init>(Ljavassist/CtField;Ljavassist/CtField$Initializer;)V

    .line 1269
    .local v1, "fil":Ljavassist/FieldInitLink;
    iget-object v3, p0, Ljavassist/CtClassType;->fieldInitializers:Ljavassist/FieldInitLink;

    .line 1270
    .local v3, "link":Ljavassist/FieldInitLink;
    if-nez v3, :cond_4

    .line 1271
    iput-object v1, p0, Ljavassist/CtClassType;->fieldInitializers:Ljavassist/FieldInitLink;

    .line 1279
    .end local v1    # "fil":Ljavassist/FieldInitLink;
    .end local v3    # "link":Ljavassist/FieldInitLink;
    :cond_3
    :goto_1
    return-void

    .line 1273
    .restart local v1    # "fil":Ljavassist/FieldInitLink;
    .restart local v3    # "link":Ljavassist/FieldInitLink;
    :cond_4
    :goto_2
    iget-object v5, v3, Ljavassist/FieldInitLink;->next:Ljavassist/FieldInitLink;

    if-eqz v5, :cond_5

    .line 1274
    iget-object v3, v3, Ljavassist/FieldInitLink;->next:Ljavassist/FieldInitLink;

    goto :goto_2

    .line 1276
    :cond_5
    iput-object v1, v3, Ljavassist/FieldInitLink;->next:Ljavassist/FieldInitLink;

    goto :goto_1

    .line 1261
    .end local v1    # "fil":Ljavassist/FieldInitLink;
    .end local v3    # "link":Ljavassist/FieldInitLink;
    .restart local v4    # "mod":I
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public addInterface(Ljavassist/CtClass;)V
    .locals 2
    .param p1, "anInterface"    # Ljavassist/CtClass;

    .prologue
    .line 743
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 744
    if-eqz p1, :cond_0

    .line 745
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->addInterface(Ljava/lang/String;)V

    .line 746
    :cond_0
    return-void
.end method

.method public addMethod(Ljavassist/CtMethod;)V
    .locals 4
    .param p1, "m"    # Ljavassist/CtMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 1331
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1332
    invoke-virtual {p1}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 1333
    new-instance v1, Ljavassist/CannotCompileException;

    const-string v2, "bad declaring class"

    invoke-direct {v1, v2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1335
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtMethod;->getModifiers()I

    move-result v0

    .line 1336
    .local v0, "mod":I
    invoke-virtual {p0}, Ljavassist/CtClassType;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1

    .line 1337
    or-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljavassist/CtMethod;->setModifiers(I)V

    .line 1338
    and-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_1

    .line 1339
    new-instance v1, Ljavassist/CannotCompileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "an interface method must be abstract: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljavassist/CtMethod;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1343
    :cond_1
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljavassist/CtMember$Cache;->addMethod(Ljavassist/CtMember;)V

    .line 1344
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    invoke-virtual {p1}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    .line 1345
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_2

    .line 1346
    invoke-virtual {p0}, Ljavassist/CtClassType;->getModifiers()I

    move-result v1

    or-int/lit16 v1, v1, 0x400

    invoke-virtual {p0, v1}, Ljavassist/CtClassType;->setModifiers(I)V

    .line 1347
    :cond_2
    return-void
.end method

.method checkModify()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p0}, Ljavassist/CtClassType;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " class is frozen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "msg":Ljava/lang/String;
    iget-boolean v1, p0, Ljavassist/CtClassType;->wasPruned:Z

    if-eqz v1, :cond_0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and pruned"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavassist/CtClassType;->wasChanged:Z

    .line 292
    return-void
.end method

.method compress()V
    .locals 2

    .prologue
    .line 229
    iget v0, p0, Ljavassist/CtClassType;->getCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 230
    invoke-virtual {p0}, Ljavassist/CtClassType;->isModified()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Ljavassist/ClassPool;->releaseUnmodifiedClassFile:Z

    if-eqz v0, :cond_1

    .line 231
    invoke-direct {p0}, Ljavassist/CtClassType;->removeClassFile()V

    .line 235
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/CtClassType;->getCount:I

    .line 236
    return-void

    .line 232
    :cond_1
    invoke-virtual {p0}, Ljavassist/CtClassType;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljavassist/CtClassType;->wasPruned:Z

    if-nez v0, :cond_0

    .line 233
    invoke-direct {p0}, Ljavassist/CtClassType;->saveClassFile()V

    goto :goto_0
.end method

.method public defrost()V
    .locals 1

    .prologue
    .line 295
    const-string v0, "defrost"

    invoke-direct {p0, v0}, Ljavassist/CtClassType;->checkPruned(Ljava/lang/String;)V

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavassist/CtClassType;->wasFrozen:Z

    .line 297
    return-void
.end method

.method protected extendToString(Ljava/lang/StringBuffer;)V
    .locals 9
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 101
    iget-boolean v6, p0, Ljavassist/CtClassType;->wasChanged:Z

    if-eqz v6, :cond_0

    .line 102
    const-string v6, "changed "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_0
    iget-boolean v6, p0, Ljavassist/CtClassType;->wasFrozen:Z

    if-eqz v6, :cond_1

    .line 105
    const-string v6, "frozen "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    :cond_1
    iget-boolean v6, p0, Ljavassist/CtClassType;->wasPruned:Z

    if-eqz v6, :cond_2

    .line 108
    const-string v6, "pruned "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    :cond_2
    invoke-virtual {p0}, Ljavassist/CtClassType;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljavassist/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    const-string v6, " class "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getSuperclass()Ljavassist/CtClass;

    move-result-object v1

    .line 116
    .local v1, "ext":Ljavassist/CtClass;
    if-eqz v1, :cond_3

    .line 117
    invoke-virtual {v1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, "name":Ljava/lang/String;
    const-string v6, "java.lang.Object"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " extends "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v1    # "ext":Ljavassist/CtClass;
    .end local v5    # "name":Ljava/lang/String;
    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljavassist/CtClassType;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v3

    .line 128
    .local v3, "intf":[Ljavassist/CtClass;
    array-length v6, v3

    if-lez v6, :cond_4

    .line 129
    const-string v6, " implements "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v3

    if-ge v2, v6, :cond_5

    .line 132
    aget-object v6, v3, v2

    invoke-virtual {v6}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const-string v6, ", "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 122
    .end local v2    # "i":I
    .end local v3    # "intf":[Ljavassist/CtClass;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljavassist/NotFoundException;
    const-string v6, " extends ??"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 136
    .end local v0    # "e":Ljavassist/NotFoundException;
    :catch_1
    move-exception v0

    .line 137
    .restart local v0    # "e":Ljavassist/NotFoundException;
    const-string v6, " extends ??"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    .end local v0    # "e":Ljavassist/NotFoundException;
    :cond_5
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v4

    .line 141
    .local v4, "memCache":Ljavassist/CtMember$Cache;
    const-string v6, " fields="

    invoke-virtual {v4}, Ljavassist/CtMember$Cache;->fieldHead()Ljavassist/CtMember;

    move-result-object v7

    invoke-virtual {v4}, Ljavassist/CtMember$Cache;->lastField()Ljavassist/CtMember;

    move-result-object v8

    invoke-direct {p0, p1, v6, v7, v8}, Ljavassist/CtClassType;->exToString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljavassist/CtMember;Ljavassist/CtMember;)V

    .line 143
    const-string v6, " constructors="

    invoke-virtual {v4}, Ljavassist/CtMember$Cache;->consHead()Ljavassist/CtMember;

    move-result-object v7

    invoke-virtual {v4}, Ljavassist/CtMember$Cache;->lastCons()Ljavassist/CtMember;

    move-result-object v8

    invoke-direct {p0, p1, v6, v7, v8}, Ljavassist/CtClassType;->exToString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljavassist/CtMember;Ljavassist/CtMember;)V

    .line 145
    const-string v6, " methods="

    invoke-virtual {v4}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v7

    invoke-virtual {v4}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object v8

    invoke-direct {p0, p1, v6, v7, v8}, Ljavassist/CtClassType;->exToString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljavassist/CtMember;Ljavassist/CtMember;)V

    .line 147
    return-void
.end method

.method public freeze()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavassist/CtClassType;->wasFrozen:Z

    return-void
.end method

.method public getAccessorMaker()Ljavassist/compiler/AccessorMaker;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Ljavassist/CtClassType;->accessors:Ljavassist/compiler/AccessorMaker;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljavassist/compiler/AccessorMaker;

    invoke-direct {v0, p0}, Ljavassist/compiler/AccessorMaker;-><init>(Ljavassist/CtClass;)V

    iput-object v0, p0, Ljavassist/CtClassType;->accessors:Ljavassist/compiler/AccessorMaker;

    .line 163
    :cond_0
    iget-object v0, p0, Ljavassist/CtClassType;->accessors:Ljavassist/compiler/AccessorMaker;

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "clz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 487
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v2

    .line 488
    .local v2, "cf":Ljavassist/bytecode/ClassFile;
    const-string v3, "RuntimeInvisibleAnnotations"

    invoke-virtual {v2, v3}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AnnotationsAttribute;

    .line 490
    .local v0, "ainfo":Ljavassist/bytecode/AnnotationsAttribute;
    const-string v3, "RuntimeVisibleAnnotations"

    invoke-virtual {v2, v3}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AnnotationsAttribute;

    .line 492
    .local v1, "ainfo2":Ljavassist/bytecode/AnnotationsAttribute;
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassPool()Ljavassist/ClassPool;

    move-result-object v3

    invoke-static {p1, v3, v0, v1}, Ljavassist/CtClassType;->getAnnotationType(Ljava/lang/Class;Ljavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public getAnnotations()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 526
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/CtClassType;->getAnnotations(Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)[B
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1362
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    .line 1363
    .local v0, "ai":Ljavassist/bytecode/AttributeInfo;
    if-nez v0, :cond_0

    .line 1364
    const/4 v1, 0x0

    .line 1366
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/AttributeInfo;->get()[B

    move-result-object v1

    goto :goto_0
.end method

.method public getAvailableAnnotations()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 531
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Ljavassist/CtClassType;->getAnnotations(Z)[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected exception "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getClassFile2()Ljavassist/bytecode/ClassFile;
    .locals 10

    .prologue
    .line 167
    iget-object v1, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;

    .line 168
    .local v1, "cfile":Ljavassist/bytecode/ClassFile;
    if-eqz v1, :cond_0

    .line 212
    .end local v1    # "cfile":Ljavassist/bytecode/ClassFile;
    :goto_0
    return-object v1

    .line 171
    .restart local v1    # "cfile":Ljavassist/bytecode/ClassFile;
    :cond_0
    iget-object v5, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v5}, Ljavassist/ClassPool;->compress()V

    .line 172
    iget-object v5, p0, Ljavassist/CtClassType;->rawClassfile:[B

    if-eqz v5, :cond_1

    .line 174
    :try_start_0
    new-instance v5, Ljavassist/bytecode/ClassFile;

    new-instance v6, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Ljavassist/CtClassType;->rawClassfile:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljavassist/bytecode/ClassFile;-><init>(Ljava/io/DataInputStream;)V

    iput-object v5, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;

    .line 176
    const/4 v5, 0x0

    iput-object v5, p0, Ljavassist/CtClassType;->rawClassfile:[B

    .line 177
    const/4 v5, 0x2

    iput v5, p0, Ljavassist/CtClassType;->getCount:I

    .line 178
    iget-object v1, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v2

    .line 181
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 185
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v3, 0x0

    .line 187
    .local v3, "fin":Ljava/io/InputStream;
    :try_start_1
    iget-object v5, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavassist/ClassPool;->openClassfile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 188
    if-nez v3, :cond_3

    .line 189
    new-instance v5, Ljavassist/NotFoundException;

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :catch_1
    move-exception v2

    .line 202
    .local v2, "e":Ljavassist/NotFoundException;
    :goto_1
    :try_start_2
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljavassist/NotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    .end local v2    # "e":Ljavassist/NotFoundException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_2

    .line 210
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 212
    :cond_2
    :goto_3
    throw v5

    .line 191
    :cond_3
    :try_start_4
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljavassist/NotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 192
    .end local v3    # "fin":Ljava/io/InputStream;
    .local v4, "fin":Ljava/io/InputStream;
    :try_start_5
    new-instance v0, Ljavassist/bytecode/ClassFile;

    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljavassist/bytecode/ClassFile;-><init>(Ljava/io/DataInputStream;)V

    .line 193
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ljavassist/CtClassType;->qualifiedName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 194
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot find "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljavassist/CtClassType;->qualifiedName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " found in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljavassist/CtClassType;->qualifiedName:Ljava/lang/String;

    const/16 v8, 0x2e

    const/16 v9, 0x2f

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".class"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 201
    .end local v0    # "cf":Ljavassist/bytecode/ClassFile;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/InputStream;
    .restart local v3    # "fin":Ljava/io/InputStream;
    goto :goto_1

    .line 198
    .end local v3    # "fin":Ljava/io/InputStream;
    .restart local v0    # "cf":Ljavassist/bytecode/ClassFile;
    .restart local v4    # "fin":Ljava/io/InputStream;
    :cond_4
    iput-object v0, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;
    :try_end_5
    .catch Ljavassist/NotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 208
    if-eqz v4, :cond_5

    .line 210
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_5
    :goto_4
    move-object v1, v0

    .line 212
    goto/16 :goto_0

    .line 204
    .end local v0    # "cf":Ljavassist/bytecode/ClassFile;
    .end local v4    # "fin":Ljava/io/InputStream;
    .restart local v3    # "fin":Ljava/io/InputStream;
    :catch_3
    move-exception v2

    .line 205
    .local v2, "e":Ljava/io/IOException;
    :goto_5
    :try_start_7
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 212
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fin":Ljava/io/InputStream;
    .restart local v0    # "cf":Ljavassist/bytecode/ClassFile;
    .restart local v4    # "fin":Ljava/io/InputStream;
    :catch_4
    move-exception v5

    goto :goto_4

    .end local v0    # "cf":Ljavassist/bytecode/ClassFile;
    .end local v4    # "fin":Ljava/io/InputStream;
    .restart local v3    # "fin":Ljava/io/InputStream;
    :catch_5
    move-exception v6

    goto :goto_3

    .line 208
    .end local v3    # "fin":Ljava/io/InputStream;
    .restart local v4    # "fin":Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/InputStream;
    .restart local v3    # "fin":Ljava/io/InputStream;
    goto/16 :goto_2

    .line 204
    .end local v3    # "fin":Ljava/io/InputStream;
    .restart local v4    # "fin":Ljava/io/InputStream;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/InputStream;
    .restart local v3    # "fin":Ljava/io/InputStream;
    goto :goto_5
.end method

.method public getClassInitializer()Ljavassist/CtConstructor;
    .locals 5

    .prologue
    .line 1087
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v3

    .line 1088
    .local v3, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v3}, Ljavassist/CtMember$Cache;->consHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1089
    .local v1, "cons":Ljavassist/CtMember;
    invoke-virtual {v3}, Ljavassist/CtMember$Cache;->lastCons()Ljavassist/CtMember;

    move-result-object v2

    .line 1091
    .local v2, "consTail":Ljavassist/CtMember;
    :cond_0
    if-eq v1, v2, :cond_1

    .line 1092
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    move-object v0, v1

    .line 1093
    check-cast v0, Ljavassist/CtConstructor;

    .line 1094
    .local v0, "cc":Ljavassist/CtConstructor;
    invoke-virtual {v0}, Ljavassist/CtConstructor;->isClassInitializer()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1098
    .end local v0    # "cc":Ljavassist/CtConstructor;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClassPool()Ljavassist/ClassPool;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    return-object v0
.end method

.method public getConstructor(Ljava/lang/String;)Ljavassist/CtConstructor;
    .locals 5
    .param p1, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 1044
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v3

    .line 1045
    .local v3, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v3}, Ljavassist/CtMember$Cache;->consHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1046
    .local v1, "cons":Ljavassist/CtMember;
    invoke-virtual {v3}, Ljavassist/CtMember$Cache;->lastCons()Ljavassist/CtMember;

    move-result-object v2

    .line 1048
    .local v2, "consTail":Ljavassist/CtMember;
    :cond_0
    if-eq v1, v2, :cond_1

    .line 1049
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    move-object v0, v1

    .line 1050
    check-cast v0, Ljavassist/CtConstructor;

    .line 1051
    .local v0, "cc":Ljavassist/CtConstructor;
    invoke-virtual {v0}, Ljavassist/CtConstructor;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v4

    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljavassist/CtConstructor;->isConstructor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1056
    .end local v0    # "cc":Ljavassist/CtConstructor;
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Ljavassist/CtClass;->getConstructor(Ljava/lang/String;)Ljavassist/CtConstructor;

    move-result-object v0

    goto :goto_0
.end method

.method public getConstructors()[Ljavassist/CtConstructor;
    .locals 10

    .prologue
    .line 1011
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v6

    .line 1012
    .local v6, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v6}, Ljavassist/CtMember$Cache;->consHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1013
    .local v1, "cons":Ljavassist/CtMember;
    invoke-virtual {v6}, Ljavassist/CtMember$Cache;->lastCons()Ljavassist/CtMember;

    move-result-object v2

    .line 1015
    .local v2, "consTail":Ljavassist/CtMember;
    const/4 v7, 0x0

    .line 1016
    .local v7, "n":I
    move-object v5, v1

    .line 1017
    .local v5, "mem":Ljavassist/CtMember;
    :cond_0
    :goto_0
    if-eq v5, v2, :cond_1

    .line 1018
    invoke-virtual {v5}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v5

    move-object v9, v5

    .line 1019
    check-cast v9, Ljavassist/CtConstructor;

    invoke-static {v9}, Ljavassist/CtClassType;->isPubCons(Ljavassist/CtConstructor;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1020
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1023
    :cond_1
    new-array v8, v7, [Ljavassist/CtConstructor;

    .line 1024
    .local v8, "result":[Ljavassist/CtConstructor;
    const/4 v3, 0x0

    .line 1025
    .local v3, "i":I
    move-object v5, v1

    move v4, v3

    .line 1026
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_1
    if-eq v5, v2, :cond_2

    .line 1027
    invoke-virtual {v5}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v5

    move-object v0, v5

    .line 1028
    check-cast v0, Ljavassist/CtConstructor;

    .line 1029
    .local v0, "cc":Ljavassist/CtConstructor;
    invoke-static {v0}, Ljavassist/CtClassType;->isPubCons(Ljavassist/CtConstructor;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1030
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aput-object v0, v8, v4

    :goto_2
    move v4, v3

    .line 1031
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 1033
    .end local v0    # "cc":Ljavassist/CtConstructor;
    :cond_2
    return-object v8

    .restart local v0    # "cc":Ljavassist/CtConstructor;
    :cond_3
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_2
.end method

.method public getDeclaredBehaviors()[Ljavassist/CtBehavior;
    .locals 11

    .prologue
    .line 987
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v6

    .line 988
    .local v6, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v6}, Ljavassist/CtMember$Cache;->consHead()Ljavassist/CtMember;

    move-result-object v2

    .line 989
    .local v2, "cons":Ljavassist/CtMember;
    invoke-virtual {v6}, Ljavassist/CtMember$Cache;->lastCons()Ljavassist/CtMember;

    move-result-object v3

    .line 990
    .local v3, "consTail":Ljavassist/CtMember;
    invoke-static {v2, v3}, Ljavassist/CtMember$Cache;->count(Ljavassist/CtMember;Ljavassist/CtMember;)I

    move-result v1

    .line 991
    .local v1, "cnum":I
    invoke-virtual {v6}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v8

    .line 992
    .local v8, "mth":Ljavassist/CtMember;
    invoke-virtual {v6}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object v9

    .line 993
    .local v9, "mthTail":Ljavassist/CtMember;
    invoke-static {v8, v9}, Ljavassist/CtMember$Cache;->count(Ljavassist/CtMember;Ljavassist/CtMember;)I

    move-result v7

    .line 995
    .local v7, "mnum":I
    add-int v10, v1, v7

    new-array v0, v10, [Ljavassist/CtBehavior;

    .line 996
    .local v0, "cb":[Ljavassist/CtBehavior;
    const/4 v4, 0x0

    .local v4, "i":I
    move v5, v4

    .line 997
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_0
    if-eq v2, v3, :cond_0

    .line 998
    invoke-virtual {v2}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v2

    .line 999
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    move-object v10, v2

    check-cast v10, Ljavassist/CtBehavior;

    aput-object v10, v0, v5

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_0

    .line 1002
    :cond_0
    :goto_1
    if-eq v8, v9, :cond_1

    .line 1003
    invoke-virtual {v8}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v8

    .line 1004
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    move-object v10, v8

    check-cast v10, Ljavassist/CtBehavior;

    aput-object v10, v0, v5

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    .line 1007
    :cond_1
    return-object v0
.end method

.method public getDeclaredConstructors()[Ljavassist/CtConstructor;
    .locals 10

    .prologue
    .line 1060
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v6

    .line 1061
    .local v6, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v6}, Ljavassist/CtMember$Cache;->consHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1062
    .local v1, "cons":Ljavassist/CtMember;
    invoke-virtual {v6}, Ljavassist/CtMember$Cache;->lastCons()Ljavassist/CtMember;

    move-result-object v2

    .line 1064
    .local v2, "consTail":Ljavassist/CtMember;
    const/4 v7, 0x0

    .line 1065
    .local v7, "n":I
    move-object v5, v1

    .line 1066
    .local v5, "mem":Ljavassist/CtMember;
    :cond_0
    :goto_0
    if-eq v5, v2, :cond_1

    .line 1067
    invoke-virtual {v5}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v5

    move-object v0, v5

    .line 1068
    check-cast v0, Ljavassist/CtConstructor;

    .line 1069
    .local v0, "cc":Ljavassist/CtConstructor;
    invoke-virtual {v0}, Ljavassist/CtConstructor;->isConstructor()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1070
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1073
    .end local v0    # "cc":Ljavassist/CtConstructor;
    :cond_1
    new-array v8, v7, [Ljavassist/CtConstructor;

    .line 1074
    .local v8, "result":[Ljavassist/CtConstructor;
    const/4 v3, 0x0

    .line 1075
    .local v3, "i":I
    move-object v5, v1

    move v4, v3

    .line 1076
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_1
    if-eq v5, v2, :cond_2

    .line 1077
    invoke-virtual {v5}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v5

    move-object v0, v5

    .line 1078
    check-cast v0, Ljavassist/CtConstructor;

    .line 1079
    .restart local v0    # "cc":Ljavassist/CtConstructor;
    invoke-virtual {v0}, Ljavassist/CtConstructor;->isConstructor()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1080
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aput-object v0, v8, v4

    :goto_2
    move v4, v3

    .line 1081
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 1083
    .end local v0    # "cc":Ljavassist/CtConstructor;
    :cond_2
    return-object v8

    .restart local v0    # "cc":Ljavassist/CtConstructor;
    :cond_3
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_2
.end method

.method public getDeclaredField(Ljava/lang/String;)Ljavassist/CtField;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 964
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavassist/CtClassType;->getDeclaredField(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredField(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 968
    invoke-direct {p0, p1, p2}, Ljavassist/CtClassType;->getDeclaredField2(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v0

    .line 969
    .local v0, "f":Ljavassist/CtField;
    invoke-direct {p0, v0, p1, p2}, Ljavassist/CtClassType;->checkGetField(Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v1

    return-object v1
.end method

.method public getDeclaredFields()[Ljavassist/CtField;
    .locals 8

    .prologue
    .line 949
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v4

    .line 950
    .local v4, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v4}, Ljavassist/CtMember$Cache;->fieldHead()Ljavassist/CtMember;

    move-result-object v1

    .line 951
    .local v1, "field":Ljavassist/CtMember;
    invoke-virtual {v4}, Ljavassist/CtMember$Cache;->lastField()Ljavassist/CtMember;

    move-result-object v6

    .line 952
    .local v6, "tail":Ljavassist/CtMember;
    invoke-static {v1, v6}, Ljavassist/CtMember$Cache;->count(Ljavassist/CtMember;Ljavassist/CtMember;)I

    move-result v5

    .line 953
    .local v5, "num":I
    new-array v0, v5, [Ljavassist/CtField;

    .line 954
    .local v0, "cfs":[Ljavassist/CtField;
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v2

    .line 955
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-eq v1, v6, :cond_0

    .line 956
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    .line 957
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    move-object v7, v1

    check-cast v7, Ljavassist/CtField;

    aput-object v7, v0, v3

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 960
    :cond_0
    return-object v0
.end method

.method public getDeclaredMethod(Ljava/lang/String;)Ljavassist/CtMethod;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 1201
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 1202
    .local v0, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1203
    .local v1, "mth":Ljavassist/CtMember;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object v2

    .line 1204
    .local v2, "mthTail":Ljavassist/CtMember;
    :cond_0
    if-eq v1, v2, :cond_1

    .line 1205
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    .line 1206
    invoke-virtual {v1}, Ljavassist/CtMember;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1207
    check-cast v1, Ljavassist/CtMethod;

    .end local v1    # "mth":Ljavassist/CtMember;
    return-object v1

    .line 1210
    .restart local v1    # "mth":Ljavassist/CtMember;
    :cond_1
    new-instance v3, Ljavassist/NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(..) is not found in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getDeclaredMethod(Ljava/lang/String;[Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # [Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 1217
    invoke-static {p2}, Ljavassist/bytecode/Descriptor;->ofParameters([Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v0

    .line 1218
    .local v0, "desc":Ljava/lang/String;
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v1

    .line 1219
    .local v1, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v1}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v2

    .line 1220
    .local v2, "mth":Ljavassist/CtMember;
    invoke-virtual {v1}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object v3

    .line 1222
    .local v3, "mthTail":Ljavassist/CtMember;
    :cond_0
    if-eq v2, v3, :cond_1

    .line 1223
    invoke-virtual {v2}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v2

    .line 1224
    invoke-virtual {v2}, Ljavassist/CtMember;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Ljavassist/CtMethod;

    invoke-virtual {v4}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v4

    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1226
    check-cast v2, Ljavassist/CtMethod;

    .end local v2    # "mth":Ljavassist/CtMember;
    return-object v2

    .line 1229
    .restart local v2    # "mth":Ljavassist/CtMember;
    :cond_1
    new-instance v4, Ljavassist/NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(..) is not found in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getDeclaredMethods()[Ljavassist/CtMethod;
    .locals 8

    .prologue
    .line 1186
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v3

    .line 1187
    .local v3, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v3}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v4

    .line 1188
    .local v4, "mth":Ljavassist/CtMember;
    invoke-virtual {v3}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object v5

    .line 1189
    .local v5, "mthTail":Ljavassist/CtMember;
    invoke-static {v4, v5}, Ljavassist/CtMember$Cache;->count(Ljavassist/CtMember;Ljavassist/CtMember;)I

    move-result v6

    .line 1190
    .local v6, "num":I
    new-array v0, v6, [Ljavassist/CtMethod;

    .line 1191
    .local v0, "cms":[Ljavassist/CtMethod;
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .line 1192
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-eq v4, v5, :cond_0

    .line 1193
    invoke-virtual {v4}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v4

    .line 1194
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    move-object v7, v4

    check-cast v7, Ljavassist/CtMethod;

    aput-object v7, v0, v2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 1197
    :cond_0
    return-object v0
.end method

.method public getDeclaringClass()Ljavassist/CtClass;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 749
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 750
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    const-string v8, "InnerClasses"

    invoke-virtual {v0, v8}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/InnerClassesAttribute;

    .line 752
    .local v3, "ica":Ljavassist/bytecode/InnerClassesAttribute;
    if-nez v3, :cond_1

    .line 772
    :cond_0
    :goto_0
    return-object v7

    .line 755
    :cond_1
    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v5

    .line 756
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljavassist/bytecode/InnerClassesAttribute;->tableLength()I

    move-result v4

    .line 757
    .local v4, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 758
    invoke-virtual {v3, v2}, Ljavassist/bytecode/InnerClassesAttribute;->innerClass(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 759
    invoke-virtual {v3, v2}, Ljavassist/bytecode/InnerClassesAttribute;->outerClass(I)Ljava/lang/String;

    move-result-object v6

    .line 760
    .local v6, "outName":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 761
    iget-object v7, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v7, v6}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v7

    goto :goto_0

    .line 764
    :cond_2
    const-string v8, "EnclosingMethod"

    invoke-virtual {v0, v8}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/EnclosingMethodAttribute;

    .line 767
    .local v1, "ema":Ljavassist/bytecode/EnclosingMethodAttribute;
    if-eqz v1, :cond_3

    .line 768
    iget-object v7, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v1}, Ljavassist/bytecode/EnclosingMethodAttribute;->className()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v7

    goto :goto_0

    .line 757
    .end local v1    # "ema":Ljavassist/bytecode/EnclosingMethodAttribute;
    .end local v6    # "outName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getEnclosingMethod()Ljavassist/CtMethod;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 776
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 777
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    const-string v3, "EnclosingMethod"

    invoke-virtual {v0, v3}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/EnclosingMethodAttribute;

    .line 780
    .local v1, "ema":Ljavassist/bytecode/EnclosingMethodAttribute;
    if-eqz v1, :cond_0

    .line 781
    iget-object v3, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v1}, Ljavassist/bytecode/EnclosingMethodAttribute;->className()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v2

    .line 782
    .local v2, "enc":Ljavassist/CtClass;
    invoke-virtual {v1}, Ljavassist/bytecode/EnclosingMethodAttribute;->methodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljavassist/bytecode/EnclosingMethodAttribute;->methodDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavassist/CtClass;->getMethod(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v3

    .line 785
    .end local v2    # "enc":Ljavassist/CtClass;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getField(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 908
    invoke-virtual {p0, p1, p2}, Ljavassist/CtClassType;->getField2(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v0

    .line 909
    .local v0, "f":Ljavassist/CtField;
    invoke-direct {p0, v0, p1, p2}, Ljavassist/CtClassType;->checkGetField(Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v1

    return-object v1
.end method

.method getField2(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 927
    invoke-direct {p0, p1, p2}, Ljavassist/CtClassType;->getDeclaredField2(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v0

    .line 928
    .local v0, "df":Ljavassist/CtField;
    if-eqz v0, :cond_0

    .line 945
    .end local v0    # "df":Ljavassist/CtField;
    :goto_0
    return-object v0

    .line 932
    .restart local v0    # "df":Ljavassist/CtField;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v3

    .line 933
    .local v3, "ifs":[Ljavassist/CtClass;
    array-length v4, v3

    .line 934
    .local v4, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 935
    aget-object v6, v3, v2

    invoke-virtual {v6, p1, p2}, Ljavassist/CtClass;->getField2(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v1

    .line 936
    .local v1, "f":Ljavassist/CtField;
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 937
    goto :goto_0

    .line 934
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 940
    .end local v1    # "f":Ljavassist/CtField;
    :cond_2
    invoke-virtual {p0}, Ljavassist/CtClassType;->getSuperclass()Ljavassist/CtClass;

    move-result-object v5

    .line 941
    .local v5, "s":Ljavassist/CtClass;
    if-eqz v5, :cond_3

    .line 942
    invoke-virtual {v5, p1, p2}, Ljavassist/CtClass;->getField2(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 944
    .end local v2    # "i":I
    .end local v3    # "ifs":[Ljavassist/CtClass;
    .end local v4    # "num":I
    .end local v5    # "s":Ljavassist/CtClass;
    :catch_0
    move-exception v6

    .line 945
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFields()[Ljavassist/CtField;
    .locals 2

    .prologue
    .line 874
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 875
    .local v0, "alist":Ljava/util/ArrayList;
    invoke-static {v0, p0}, Ljavassist/CtClassType;->getFields(Ljava/util/ArrayList;Ljavassist/CtClass;)V

    .line 876
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljavassist/CtField;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavassist/CtField;

    check-cast v1, [Ljavassist/CtField;

    return-object v1
.end method

.method public getGenericSignature()Ljava/lang/String;
    .locals 3

    .prologue
    .line 341
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    const-string v2, "Signature"

    invoke-virtual {v1, v2}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/SignatureAttribute;

    .line 343
    .local v0, "sa":Ljavassist/bytecode/SignatureAttribute;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/SignatureAttribute;->getSignature()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getHiddenMethods()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 1637
    iget-object v0, p0, Ljavassist/CtClassType;->hiddenMethods:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 1638
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavassist/CtClassType;->hiddenMethods:Ljava/util/Hashtable;

    .line 1640
    :cond_0
    iget-object v0, p0, Ljavassist/CtClassType;->hiddenMethods:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getInterfaces()[Ljavassist/CtClass;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 718
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v4

    invoke-virtual {v4}, Ljavassist/bytecode/ClassFile;->getInterfaces()[Ljava/lang/String;

    move-result-object v2

    .line 719
    .local v2, "ifs":[Ljava/lang/String;
    array-length v3, v2

    .line 720
    .local v3, "num":I
    new-array v1, v3, [Ljavassist/CtClass;

    .line 721
    .local v1, "ifc":[Ljavassist/CtClass;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 722
    iget-object v4, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v4

    aput-object v4, v1, v0

    .line 721
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 724
    :cond_0
    return-object v1
.end method

.method protected declared-synchronized getMembers()Ljavassist/CtMember$Cache;
    .locals 4

    .prologue
    .line 835
    monitor-enter p0

    const/4 v1, 0x0

    .line 836
    .local v1, "cache":Ljavassist/CtMember$Cache;
    :try_start_0
    iget-object v3, p0, Ljavassist/CtClassType;->memberCache:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljavassist/CtClassType;->memberCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljavassist/CtMember$Cache;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    move-object v2, v1

    .line 838
    .end local v1    # "cache":Ljavassist/CtMember$Cache;
    .local v2, "cache":Ljavassist/CtMember$Cache;
    :try_start_1
    new-instance v1, Ljavassist/CtMember$Cache;

    invoke-direct {v1, p0}, Ljavassist/CtMember$Cache;-><init>(Ljavassist/CtClassType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 839
    .end local v2    # "cache":Ljavassist/CtMember$Cache;
    .restart local v1    # "cache":Ljavassist/CtMember$Cache;
    :try_start_2
    invoke-direct {p0, v1}, Ljavassist/CtClassType;->makeFieldCache(Ljavassist/CtMember$Cache;)V

    .line 840
    invoke-direct {p0, v1}, Ljavassist/CtClassType;->makeBehaviorCache(Ljavassist/CtMember$Cache;)V

    .line 841
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Ljavassist/CtClassType;->memberCache:Ljava/lang/ref/WeakReference;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 844
    :cond_1
    monitor-exit p0

    return-object v1

    .line 835
    :catchall_0
    move-exception v3

    :goto_0
    monitor-exit p0

    throw v3

    .end local v1    # "cache":Ljavassist/CtMember$Cache;
    .restart local v2    # "cache":Ljavassist/CtMember$Cache;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "cache":Ljavassist/CtMember$Cache;
    .restart local v1    # "cache":Ljavassist/CtMember$Cache;
    goto :goto_0
.end method

.method public getMethod(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 1139
    invoke-static {p0, p1, p2}, Ljavassist/CtClassType;->getMethod0(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v0

    .line 1140
    .local v0, "m":Ljavassist/CtMethod;
    if-eqz v0, :cond_0

    .line 1141
    return-object v0

    .line 1143
    :cond_0
    new-instance v1, Ljavassist/NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(..) is not found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMethods()[Ljavassist/CtMethod;
    .locals 3

    .prologue
    .line 1102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1103
    .local v0, "h":Ljava/util/HashMap;
    invoke-static {v0, p0}, Ljavassist/CtClassType;->getMethods0(Ljava/util/HashMap;Ljavassist/CtClass;)V

    .line 1104
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v2, v2, [Ljavassist/CtMethod;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavassist/CtMethod;

    check-cast v1, [Ljavassist/CtMethod;

    return-object v1
.end method

.method public getModifiers()I
    .locals 4

    .prologue
    .line 401
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    .line 402
    .local v1, "cf":Ljavassist/bytecode/ClassFile;
    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getAccessFlags()I

    move-result v0

    .line 403
    .local v0, "acc":I
    const/16 v3, 0x20

    invoke-static {v0, v3}, Ljavassist/bytecode/AccessFlag;->clear(II)I

    move-result v0

    .line 404
    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getInnerAccessFlags()I

    move-result v2

    .line 405
    .local v2, "inner":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_0

    .line 406
    or-int/lit8 v0, v0, 0x8

    .line 408
    :cond_0
    invoke-static {v0}, Ljavassist/bytecode/AccessFlag;->toModifier(I)I

    move-result v3

    return v3
.end method

.method public getNestedClasses()[Ljavassist/CtClass;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 412
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 413
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    const-string v7, "InnerClasses"

    invoke-virtual {v0, v7}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/InnerClassesAttribute;

    .line 415
    .local v2, "ica":Ljavassist/bytecode/InnerClassesAttribute;
    if-nez v2, :cond_0

    .line 416
    const/4 v7, 0x0

    new-array v7, v7, [Ljavassist/CtClass;

    .line 431
    :goto_0
    return-object v7

    .line 418
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "$"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 419
    .local v6, "thisName":Ljava/lang/String;
    invoke-virtual {v2}, Ljavassist/bytecode/InnerClassesAttribute;->tableLength()I

    move-result v4

    .line 420
    .local v4, "n":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 421
    .local v3, "list":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 422
    invoke-virtual {v2, v1}, Ljavassist/bytecode/InnerClassesAttribute;->innerClass(I)Ljava/lang/String;

    move-result-object v5

    .line 423
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 424
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 426
    const/16 v7, 0x24

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 427
    iget-object v7, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v7, v5}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 431
    .end local v5    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljavassist/CtClass;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljavassist/CtClass;

    check-cast v7, [Ljavassist/CtClass;

    goto :goto_0
.end method

.method public getSuperclass()Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 702
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getSuperclass()Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, "supername":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 704
    const/4 v1, 0x0

    .line 706
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v1, v0}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    goto :goto_0
.end method

.method public getURL()Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v1, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavassist/ClassPool;->find(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 270
    .local v0, "url":Ljava/net/URL;
    if-nez v0, :cond_0

    .line 271
    new-instance v1, Ljavassist/NotFoundException;

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_0
    return-object v0
.end method

.method getUniqueNumber()I
    .locals 2

    .prologue
    .line 1643
    iget v0, p0, Ljavassist/CtClassType;->uniqueNumberSeed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavassist/CtClassType;->uniqueNumberSeed:I

    return v0
.end method

.method public hasAnnotation(Ljava/lang/Class;)Z
    .locals 4
    .param p1, "clz"    # Ljava/lang/Class;

    .prologue
    .line 449
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v2

    .line 450
    .local v2, "cf":Ljavassist/bytecode/ClassFile;
    const-string v3, "RuntimeInvisibleAnnotations"

    invoke-virtual {v2, v3}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AnnotationsAttribute;

    .line 452
    .local v0, "ainfo":Ljavassist/bytecode/AnnotationsAttribute;
    const-string v3, "RuntimeVisibleAnnotations"

    invoke-virtual {v2, v3}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AnnotationsAttribute;

    .line 454
    .local v1, "ainfo2":Ljavassist/bytecode/AnnotationsAttribute;
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassPool()Ljavassist/ClassPool;

    move-result-object v3

    invoke-static {p1, v3, v0, v1}, Ljavassist/CtClassType;->hasAnnotationType(Ljava/lang/Class;Ljavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)Z

    move-result v3

    return v3
.end method

.method protected hasMemberCache()Ljavassist/CtMember$Cache;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Ljavassist/CtClassType;->memberCache:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Ljavassist/CtClassType;->memberCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/CtMember$Cache;

    .line 831
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final incGetCounter()V
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Ljavassist/CtClassType;->getCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavassist/CtClassType;->getCount:I

    return-void
.end method

.method public instrument(Ljavassist/CodeConverter;)V
    .locals 6
    .param p1, "converter"    # Ljavassist/CodeConverter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 1378
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1379
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 1380
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    .line 1381
    .local v1, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v3

    .line 1382
    .local v3, "list":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 1383
    .local v5, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 1384
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/MethodInfo;

    .line 1385
    .local v4, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {p1, p0, v4, v1}, Ljavassist/CodeConverter;->doit(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/ConstPool;)V

    .line 1383
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1387
    .end local v4    # "minfo":Ljavassist/bytecode/MethodInfo;
    :cond_0
    return-void
.end method

.method public instrument(Ljavassist/expr/ExprEditor;)V
    .locals 5
    .param p1, "editor"    # Ljavassist/expr/ExprEditor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 1392
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1393
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 1394
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v2

    .line 1395
    .local v2, "list":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 1396
    .local v4, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 1397
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/MethodInfo;

    .line 1398
    .local v3, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {p1, p0, v3}, Ljavassist/expr/ExprEditor;->doit(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)Z

    .line 1396
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1400
    .end local v3    # "minfo":Ljavassist/bytecode/MethodInfo;
    :cond_0
    return-void
.end method

.method public isAnnotation()Z
    .locals 1

    .prologue
    .line 393
    invoke-virtual {p0}, Ljavassist/CtClassType;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljavassist/Modifier;->isAnnotation(I)Z

    move-result v0

    return v0
.end method

.method public isEnum()Z
    .locals 1

    .prologue
    .line 397
    invoke-virtual {p0}, Ljavassist/CtClassType;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljavassist/Modifier;->isEnum(I)Z

    move-result v0

    return v0
.end method

.method public isFrozen()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Ljavassist/CtClassType;->wasFrozen:Z

    return v0
.end method

.method public isInterface()Z
    .locals 1

    .prologue
    .line 389
    invoke-virtual {p0}, Ljavassist/CtClassType;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljavassist/Modifier;->isInterface(I)Z

    move-result v0

    return v0
.end method

.method public isModified()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Ljavassist/CtClassType;->wasChanged:Z

    return v0
.end method

.method public makeClassInitializer()Ljavassist/CtConstructor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1296
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassInitializer()Ljavassist/CtConstructor;

    move-result-object v1

    .line 1297
    .local v1, "clinit":Ljavassist/CtConstructor;
    if-eqz v1, :cond_0

    .line 1304
    .end local v1    # "clinit":Ljavassist/CtConstructor;
    :goto_0
    return-object v1

    .line 1300
    .restart local v1    # "clinit":Ljavassist/CtConstructor;
    :cond_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1301
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 1302
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    new-instance v2, Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    invoke-direct {v2, v3, v4, v4}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 1303
    .local v2, "code":Ljavassist/bytecode/Bytecode;
    invoke-direct {p0, v0, v2, v4, v4}, Ljavassist/CtClassType;->modifyClassConstructor(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/Bytecode;II)V

    .line 1304
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassInitializer()Ljavassist/CtConstructor;

    move-result-object v1

    goto :goto_0
.end method

.method public makeNestedClass(Ljava/lang/String;Z)Ljavassist/CtClass;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isStatic"    # Z

    .prologue
    .line 789
    if-nez p2, :cond_0

    .line 790
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "sorry, only nested static class is supported"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 793
    :cond_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 794
    iget-object v4, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavassist/ClassPool;->makeNestedClass(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    .line 795
    .local v0, "c":Ljavassist/CtClass;
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    .line 796
    .local v1, "cf":Ljavassist/bytecode/ClassFile;
    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v2

    .line 797
    .local v2, "cf2":Ljavassist/bytecode/ClassFile;
    const-string v4, "InnerClasses"

    invoke-virtual {v1, v4}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/InnerClassesAttribute;

    .line 799
    .local v3, "ica":Ljavassist/bytecode/InnerClassesAttribute;
    if-nez v3, :cond_1

    .line 800
    new-instance v3, Ljavassist/bytecode/InnerClassesAttribute;

    .end local v3    # "ica":Ljavassist/bytecode/InnerClassesAttribute;
    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavassist/bytecode/InnerClassesAttribute;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 801
    .restart local v3    # "ica":Ljavassist/bytecode/InnerClassesAttribute;
    invoke-virtual {v1, v3}, Ljavassist/bytecode/ClassFile;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 804
    :cond_1
    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljavassist/bytecode/ClassFile;->getAccessFlags()I

    move-result v6

    and-int/lit8 v6, v6, -0x21

    or-int/lit8 v6, v6, 0x8

    invoke-virtual {v3, v4, v5, p1, v6}, Ljavassist/bytecode/InnerClassesAttribute;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 806
    invoke-virtual {v2}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljavassist/bytecode/InnerClassesAttribute;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavassist/bytecode/ClassFile;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 807
    return-object v0
.end method

.method public makeUniqueName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1646
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1647
    .local v5, "table":Ljava/util/HashMap;
    invoke-direct {p0, v5}, Ljavassist/CtClassType;->makeMemberList(Ljava/util/HashMap;)V

    .line 1648
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1649
    .local v2, "keys":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v6

    new-array v3, v6, [Ljava/lang/String;

    .line 1650
    .local v3, "methods":[Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1652
    invoke-static {p1, v3}, Ljavassist/CtClassType;->notFindInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1663
    .end local p1    # "prefix":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 1655
    .restart local p1    # "prefix":Ljava/lang/String;
    :cond_0
    const/16 v0, 0x64

    .local v0, "i":I
    move v1, v0

    .line 1658
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    const/16 v6, 0x3e7

    if-le v1, v6, :cond_1

    .line 1659
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "too many unique name"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1661
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1662
    .local v4, "name":Ljava/lang/String;
    invoke-static {v4, v3}, Ljavassist/CtClassType;->notFindInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object p1, v4

    .line 1663
    goto :goto_0

    :cond_2
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1
.end method

.method public prune()V
    .locals 1

    .prologue
    .line 1407
    iget-boolean v0, p0, Ljavassist/CtClassType;->wasPruned:Z

    if-eqz v0, :cond_0

    .line 1412
    :goto_0
    return-void

    .line 1410
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavassist/CtClassType;->wasFrozen:Z

    iput-boolean v0, p0, Ljavassist/CtClassType;->wasPruned:Z

    .line 1411
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->prune()V

    goto :goto_0
.end method

.method public rebuildClassFile()V
    .locals 1

    .prologue
    .line 1414
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavassist/CtClassType;->gcConstPool:Z

    return-void
.end method

.method public removeConstructor(Ljavassist/CtConstructor;)V
    .locals 4
    .param p1, "m"    # Ljavassist/CtConstructor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 1319
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1320
    invoke-virtual {p1}, Ljavassist/CtConstructor;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v1

    .line 1321
    .local v1, "mi":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 1322
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1323
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljavassist/CtMember$Cache;->remove(Ljavassist/CtMember;)V

    .line 1324
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljavassist/CtClassType;->gcConstPool:Z

    .line 1328
    return-void

    .line 1327
    :cond_0
    new-instance v2, Ljavassist/NotFoundException;

    invoke-virtual {p1}, Ljavassist/CtConstructor;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeField(Ljavassist/CtField;)V
    .locals 4
    .param p1, "f"    # Ljavassist/CtField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 1282
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1283
    invoke-virtual {p1}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v1

    .line 1284
    .local v1, "fi":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 1285
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getFields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1286
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljavassist/CtMember$Cache;->remove(Ljavassist/CtMember;)V

    .line 1287
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljavassist/CtClassType;->gcConstPool:Z

    .line 1291
    return-void

    .line 1290
    :cond_0
    new-instance v2, Ljavassist/NotFoundException;

    invoke-virtual {p1}, Ljavassist/CtField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeMethod(Ljavassist/CtMethod;)V
    .locals 4
    .param p1, "m"    # Ljavassist/CtMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 1350
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1351
    invoke-virtual {p1}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v1

    .line 1352
    .local v1, "mi":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 1353
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1354
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljavassist/CtMember$Cache;->remove(Ljavassist/CtMember;)V

    .line 1355
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljavassist/CtClassType;->gcConstPool:Z

    .line 1359
    return-void

    .line 1358
    :cond_0
    new-instance v2, Ljavassist/NotFoundException;

    invoke-virtual {p1}, Ljavassist/CtMethod;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public replaceClassName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "thisname":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    invoke-virtual {p0, p2}, Ljavassist/CtClassType;->setName(Ljava/lang/String;)V

    .line 386
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-super {p0, p1, p2}, Ljavassist/CtClass;->replaceClassName(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljavassist/bytecode/ClassFile;->renameClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0}, Ljavassist/CtClassType;->nameReplaced()V

    goto :goto_0
.end method

.method public replaceClassName(Ljavassist/ClassMap;)V
    .locals 4
    .param p1, "classnames"    # Ljavassist/ClassMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, "oldClassName":Ljava/lang/String;
    invoke-static {v2}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljavassist/ClassMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 358
    .local v1, "newClassName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 359
    invoke-static {v1}, Ljavassist/bytecode/Descriptor;->toJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 361
    iget-object v3, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v3, v1}, Ljavassist/ClassPool;->checkNotFrozen(Ljava/lang/String;)V

    .line 364
    :cond_0
    invoke-super {p0, p1}, Ljavassist/CtClass;->replaceClassName(Ljavassist/ClassMap;)V

    .line 365
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 366
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    invoke-virtual {v0, p1}, Ljavassist/bytecode/ClassFile;->renameClass(Ljava/util/Map;)V

    .line 367
    invoke-direct {p0}, Ljavassist/CtClassType;->nameReplaced()V

    .line 369
    if-eqz v1, :cond_1

    .line 370
    invoke-super {p0, v1}, Ljavassist/CtClass;->setName(Ljava/lang/String;)V

    .line 371
    iget-object v3, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v3, v2, p0}, Ljavassist/ClassPool;->classNameChanged(Ljava/lang/String;Ljavassist/CtClass;)V

    .line 373
    :cond_1
    return-void
.end method

.method public setAttribute(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 1370
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1371
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 1372
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    new-instance v1, Ljavassist/bytecode/AttributeInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 1373
    return-void
.end method

.method setClassPool(Ljavassist/ClassPool;)V
    .locals 0
    .param p1, "cp"    # Ljavassist/ClassPool;

    .prologue
    .line 266
    iput-object p1, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    return-void
.end method

.method public setGenericSignature(Ljava/lang/String;)V
    .locals 3
    .param p1, "sig"    # Ljava/lang/String;

    .prologue
    .line 347
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 348
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    new-instance v1, Ljavassist/bytecode/SignatureAttribute;

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavassist/bytecode/SignatureAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    .line 349
    .local v1, "sa":Ljavassist/bytecode/SignatureAttribute;
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 350
    return-void
.end method

.method public setInterfaces([Ljavassist/CtClass;)V
    .locals 4
    .param p1, "list"    # [Ljavassist/CtClass;

    .prologue
    .line 728
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 730
    if-nez p1, :cond_1

    .line 731
    const/4 v3, 0x0

    new-array v1, v3, [Ljava/lang/String;

    .line 739
    .local v1, "ifs":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljavassist/bytecode/ClassFile;->setInterfaces([Ljava/lang/String;)V

    .line 740
    return-void

    .line 733
    .end local v1    # "ifs":[Ljava/lang/String;
    :cond_1
    array-length v2, p1

    .line 734
    .local v2, "num":I
    new-array v1, v2, [Ljava/lang/String;

    .line 735
    .restart local v1    # "ifs":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 736
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 735
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setModifiers(I)V
    .locals 5
    .param p1, "mod"    # I

    .prologue
    .line 435
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 436
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    invoke-static {p1}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 437
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getInnerAccessFlags()I

    move-result v1

    .line 438
    .local v1, "flags":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_1

    .line 439
    and-int/lit8 p1, p1, -0x9

    .line 444
    .end local v1    # "flags":I
    :cond_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 445
    invoke-static {p1}, Ljavassist/bytecode/AccessFlag;->of(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljavassist/bytecode/ClassFile;->setAccessFlags(I)V

    .line 446
    return-void

    .line 441
    .restart local v1    # "flags":I
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot change "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " into a static class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "oldname":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v2, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v2, p1}, Ljavassist/ClassPool;->checkNotFrozen(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 334
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    invoke-super {p0, p1}, Ljavassist/CtClass;->setName(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, p1}, Ljavassist/bytecode/ClassFile;->setName(Ljava/lang/String;)V

    .line 336
    invoke-direct {p0}, Ljavassist/CtClassType;->nameReplaced()V

    .line 337
    iget-object v2, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v2, v1, p0}, Ljavassist/ClassPool;->classNameChanged(Ljava/lang/String;Ljavassist/CtClass;)V

    goto :goto_0
.end method

.method public setSuperclass(Ljavassist/CtClass;)V
    .locals 2
    .param p1, "clazz"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 710
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 711
    invoke-virtual {p0}, Ljavassist/CtClassType;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {p0, p1}, Ljavassist/CtClassType;->addInterface(Ljavassist/CtClass;)V

    .line 715
    :goto_0
    return-void

    .line 714
    :cond_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->setSuperclass(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopPruning(Z)Z
    .locals 4
    .param p1, "stop"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1478
    iget-boolean v3, p0, Ljavassist/CtClassType;->doPruning:Z

    if-nez v3, :cond_0

    move v0, v1

    .line 1479
    .local v0, "prev":Z
    :goto_0
    if-nez p1, :cond_1

    :goto_1
    iput-boolean v1, p0, Ljavassist/CtClassType;->doPruning:Z

    .line 1480
    return v0

    .end local v0    # "prev":Z
    :cond_0
    move v0, v2

    .line 1478
    goto :goto_0

    .restart local v0    # "prev":Z
    :cond_1
    move v1, v2

    .line 1479
    goto :goto_1
.end method

.method public subclassOf(Ljavassist/CtClass;)Z
    .locals 4
    .param p1, "superclass"    # Ljavassist/CtClass;

    .prologue
    const/4 v2, 0x0

    .line 684
    if-nez p1, :cond_1

    .line 698
    :cond_0
    :goto_0
    return v2

    .line 687
    :cond_1
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    .line 688
    .local v1, "superName":Ljava/lang/String;
    move-object v0, p0

    .line 690
    .local v0, "curr":Ljavassist/CtClass;
    :goto_1
    if-eqz v0, :cond_0

    .line 691
    :try_start_0
    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 692
    const/4 v2, 0x1

    goto :goto_0

    .line 694
    :cond_2
    invoke-virtual {v0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 697
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public subtypeOf(Ljavassist/CtClass;)Z
    .locals 9
    .param p1, "clazz"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 301
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "cname":Ljava/lang/String;
    if-eq p0, p1, :cond_0

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v6

    .line 305
    :cond_1
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    .line 306
    .local v1, "file":Ljavassist/bytecode/ClassFile;
    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getSuperclass()Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, "supername":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 310
    :cond_2
    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getInterfaces()[Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, "ifs":[Ljava/lang/String;
    array-length v4, v3

    .line 312
    .local v4, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 313
    aget-object v7, v3, v2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 312
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 316
    :cond_3
    if-eqz v5, :cond_4

    iget-object v7, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v7, v5}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 319
    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_5

    .line 320
    iget-object v7, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    aget-object v8, v3, v2

    invoke-virtual {v7, v8}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 319
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 323
    :cond_5
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public toBytecode(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1420
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->isModified()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1421
    const-string v2, "toBytecode"

    invoke-direct {p0, v2}, Ljavassist/CtClassType;->checkPruned(Ljava/lang/String;)V

    .line 1422
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 1423
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    iget-boolean v2, p0, Ljavassist/CtClassType;->gcConstPool:Z

    if-eqz v2, :cond_0

    .line 1424
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->compact()V

    .line 1425
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljavassist/CtClassType;->gcConstPool:Z

    .line 1428
    :cond_0
    invoke-direct {p0, v0}, Ljavassist/CtClassType;->modifyClassConstructor(Ljavassist/bytecode/ClassFile;)V

    .line 1429
    invoke-direct {p0, v0}, Ljavassist/CtClassType;->modifyConstructors(Ljavassist/bytecode/ClassFile;)V

    .line 1430
    sget-object v2, Ljavassist/CtClassType;->debugDump:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1431
    invoke-direct {p0, v0}, Ljavassist/CtClassType;->dumpClassFile(Ljavassist/bytecode/ClassFile;)V

    .line 1433
    :cond_1
    invoke-virtual {v0, p1}, Ljavassist/bytecode/ClassFile;->write(Ljava/io/DataOutputStream;)V

    .line 1434
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 1435
    const/4 v2, 0x0

    iput-object v2, p0, Ljavassist/CtClassType;->fieldInitializers:Ljavassist/FieldInitLink;

    .line 1436
    iget-boolean v2, p0, Ljavassist/CtClassType;->doPruning:Z

    if-eqz v2, :cond_2

    .line 1438
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->prune()V

    .line 1439
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljavassist/CtClassType;->wasPruned:Z

    .line 1448
    .end local v0    # "cf":Ljavassist/bytecode/ClassFile;
    :cond_2
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Ljavassist/CtClassType;->getCount:I

    .line 1449
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljavassist/CtClassType;->wasFrozen:Z

    .line 1457
    return-void

    .line 1443
    :cond_3
    iget-object v2, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljavassist/ClassPool;->writeClassfile(Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1451
    :catch_0
    move-exception v1

    .line 1452
    .local v1, "e":Ljavassist/NotFoundException;
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-direct {v2, v1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v2

    .line 1454
    .end local v1    # "e":Ljavassist/NotFoundException;
    :catch_1
    move-exception v1

    .line 1455
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-direct {v2, v1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
