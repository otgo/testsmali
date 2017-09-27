.class public abstract Ljavassist/bytecode/stackmap/Tracer;
.super Ljava/lang/Object;
.source "Tracer.java"

# interfaces
.implements Ljavassist/bytecode/stackmap/TypeTag;


# instance fields
.field protected classPool:Ljavassist/ClassPool;

.field protected cpool:Ljavassist/bytecode/ConstPool;

.field protected localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

.field protected returnType:Ljava/lang/String;

.field protected stackTop:I

.field protected stackTypes:[Ljavassist/bytecode/stackmap/TypeData;


# direct methods
.method public constructor <init>(Ljavassist/ClassPool;Ljavassist/bytecode/ConstPool;IILjava/lang/String;)V
    .locals 1
    .param p1, "classes"    # Ljavassist/ClassPool;
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p3, "maxStack"    # I
    .param p4, "maxLocals"    # I
    .param p5, "retType"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    .line 43
    iput-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    .line 44
    iput-object p5, p0, Ljavassist/bytecode/stackmap/Tracer;->returnType:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 46
    invoke-static {p3}, Ljavassist/bytecode/stackmap/TypeData;->make(I)[Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 47
    invoke-static {p4}, Ljavassist/bytecode/stackmap/TypeData;->make(I)[Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/stackmap/Tracer;)V
    .locals 1
    .param p1, "t"    # Ljavassist/bytecode/stackmap/Tracer;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-object v0, p1, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    iput-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    .line 52
    iget-object v0, p1, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    iput-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    .line 53
    iget-object v0, p1, Ljavassist/bytecode/stackmap/Tracer;->returnType:Ljava/lang/String;

    iput-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->returnType:Ljava/lang/String;

    .line 54
    iget v0, p1, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 55
    iget-object v0, p1, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    array-length v0, v0

    invoke-static {v0}, Ljavassist/bytecode/stackmap/TypeData;->make(I)[Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 56
    iget-object v0, p1, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    array-length v0, v0

    invoke-static {v0}, Ljavassist/bytecode/stackmap/TypeData;->make(I)[Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 57
    return-void
.end method

.method private checkParamTypes(Ljava/lang/String;I)V
    .locals 7
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    const/16 v4, 0x4c

    .line 902
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 903
    .local v1, "c":C
    const/16 v3, 0x29

    if-ne v1, v3, :cond_1

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    move v2, p2

    .line 907
    .local v2, "k":I
    const/4 v0, 0x0

    .line 908
    .local v0, "array":Z
    :goto_1
    const/16 v3, 0x5b

    if-ne v1, v3, :cond_2

    .line 909
    const/4 v0, 0x1

    .line 910
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_1

    .line 913
    :cond_2
    if-ne v1, v4, :cond_3

    .line 914
    const/16 v3, 0x3b

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 915
    if-gtz v2, :cond_4

    .line 916
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string v4, "bad descriptor"

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 919
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 921
    :cond_4
    invoke-direct {p0, p1, v2}, Ljavassist/bytecode/stackmap/Tracer;->checkParamTypes(Ljava/lang/String;I)V

    .line 922
    if-nez v0, :cond_6

    const/16 v3, 0x4a

    if-eq v1, v3, :cond_5

    const/16 v3, 0x44

    if-ne v1, v3, :cond_6

    .line 923
    :cond_5
    iget v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v3, v3, -0x2

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 927
    :goto_2
    if-eqz v0, :cond_7

    .line 928
    iget-object v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object v3, v3, v4

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v3, v4, v5}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    goto :goto_0

    .line 925
    :cond_6
    iget v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto :goto_2

    .line 929
    :cond_7
    if-ne v1, v4, :cond_0

    .line 930
    iget-object v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object v3, v3, v4

    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    const/16 v6, 0x2e

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v3, v4, v5}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    goto :goto_0
.end method

.method private constructorCalled(Ljavassist/bytecode/stackmap/TypeData;I)V
    .locals 2
    .param p1, "target"    # Ljavassist/bytecode/stackmap/TypeData;
    .param p2, "offset"    # I

    .prologue
    .line 823
    invoke-virtual {p1, p2}, Ljavassist/bytecode/stackmap/TypeData;->constructorCalled(I)V

    .line 824
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    if-ge v0, v1, :cond_0

    .line 825
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Ljavassist/bytecode/stackmap/TypeData;->constructorCalled(I)V

    .line 824
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 827
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 828
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Ljavassist/bytecode/stackmap/TypeData;->constructorCalled(I)V

    .line 827
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 829
    :cond_1
    return-void
.end method

.method private doALOAD(I)I
    .locals 3
    .param p1, "localVar"    # I

    .prologue
    .line 287
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    iget-object v2, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v2, v2, p1

    aput-object v2, v0, v1

    .line 288
    const/4 v0, 0x2

    return v0
.end method

.method private doASTORE(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 423
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 425
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object v1, v1, v2

    aput-object v1, v0, p1

    .line 426
    const/4 v0, 0x2

    return v0
.end method

.method private doDUP_XX(II)V
    .locals 5
    .param p1, "delta"    # I
    .param p2, "len"    # I

    .prologue
    .line 430
    iget-object v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 431
    .local v2, "types":[Ljavassist/bytecode/stackmap/TypeData;
    iget v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v3, -0x1

    .line 432
    .local v1, "sp":I
    sub-int v0, v1, p2

    .line 433
    .local v0, "end":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 434
    add-int v3, v1, p1

    aget-object v4, v2, v1

    aput-object v4, v2, v3

    .line 435
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 437
    :cond_0
    return-void
.end method

.method private doGetField(I[BZ)I
    .locals 3
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "notStatic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 738
    add-int/lit8 v2, p1, 0x1

    invoke-static {p2, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v1

    .line 739
    .local v1, "index":I
    invoke-direct {p0, p3, v1}, Ljavassist/bytecode/stackmap/Tracer;->setFieldTarget(ZI)V

    .line 740
    iget-object v2, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/ConstPool;->getFieldrefType(I)Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, "desc":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljavassist/bytecode/stackmap/Tracer;->pushMemberType(Ljava/lang/String;)V

    .line 742
    const/4 v2, 0x3

    return v2
.end method

.method private doInvokeDynamic(I[B)I
    .locals 3
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 842
    add-int/lit8 v2, p1, 0x1

    invoke-static {p2, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v1

    .line 843
    .local v1, "i":I
    iget-object v2, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/ConstPool;->getInvokeDynamicType(I)Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, "desc":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Ljavassist/bytecode/stackmap/Tracer;->checkParamTypes(Ljava/lang/String;I)V

    .line 852
    invoke-direct {p0, v0}, Ljavassist/bytecode/stackmap/Tracer;->pushMemberType(Ljava/lang/String;)V

    .line 853
    const/4 v2, 0x5

    return v2
.end method

.method private doInvokeIntfMethod(I[B)I
    .locals 5
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 832
    add-int/lit8 v3, p1, 0x1

    invoke-static {p2, v3}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v2

    .line 833
    .local v2, "i":I
    iget-object v3, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v3, v2}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefType(I)Ljava/lang/String;

    move-result-object v1

    .line 834
    .local v1, "desc":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Ljavassist/bytecode/stackmap/Tracer;->checkParamTypes(Ljava/lang/String;I)V

    .line 835
    iget-object v3, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v3, v2}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefClassName(I)Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, "className":Ljava/lang/String;
    iget-object v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object v3, v3, v4

    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v3, v0, v4}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 837
    invoke-direct {p0, v1}, Ljavassist/bytecode/stackmap/Tracer;->pushMemberType(Ljava/lang/String;)V

    .line 838
    const/4 v3, 0x5

    return v3
.end method

.method private doInvokeMethod(I[BZ)I
    .locals 6
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "notStatic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 799
    add-int/lit8 v4, p1, 0x1

    invoke-static {p2, v4}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v2

    .line 800
    .local v2, "i":I
    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v4, v2}, Ljavassist/bytecode/ConstPool;->getMethodrefType(I)Ljava/lang/String;

    move-result-object v1

    .line 801
    .local v1, "desc":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-direct {p0, v1, v4}, Ljavassist/bytecode/stackmap/Tracer;->checkParamTypes(Ljava/lang/String;I)V

    .line 802
    if-eqz p3, :cond_1

    .line 803
    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v4, v2}, Ljavassist/bytecode/ConstPool;->getMethodrefClassName(I)Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, "className":Ljava/lang/String;
    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object v3, v4, v5

    .line 805
    .local v3, "target":Ljavassist/bytecode/stackmap/TypeData;
    instance-of v4, v3, Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljavassist/bytecode/stackmap/TypeData;->isUninit()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v3

    .line 806
    check-cast v4, Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;

    invoke-virtual {v4}, Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;->offset()I

    move-result v4

    invoke-direct {p0, v3, v4}, Ljavassist/bytecode/stackmap/Tracer;->constructorCalled(Ljavassist/bytecode/stackmap/TypeData;I)V

    .line 810
    :cond_0
    :goto_0
    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v3, v0, v4}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 813
    .end local v0    # "className":Ljava/lang/String;
    .end local v3    # "target":Ljavassist/bytecode/stackmap/TypeData;
    :cond_1
    invoke-direct {p0, v1}, Ljavassist/bytecode/stackmap/Tracer;->pushMemberType(Ljava/lang/String;)V

    .line 814
    const/4 v4, 0x3

    return v4

    .line 807
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v3    # "target":Ljavassist/bytecode/stackmap/TypeData;
    :cond_2
    instance-of v4, v3, Ljavassist/bytecode/stackmap/TypeData$UninitData;

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 808
    check-cast v4, Ljavassist/bytecode/stackmap/TypeData$UninitData;

    invoke-virtual {v4}, Ljavassist/bytecode/stackmap/TypeData$UninitData;->offset()I

    move-result v4

    invoke-direct {p0, v3, v4}, Ljavassist/bytecode/stackmap/Tracer;->constructorCalled(Ljavassist/bytecode/stackmap/TypeData;I)V

    goto :goto_0
.end method

.method private doLDC(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 251
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 252
    .local v0, "stackTypes":[Ljavassist/bytecode/stackmap/TypeData;
    iget-object v2, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v2, p1}, Ljavassist/bytecode/ConstPool;->getTag(I)I

    move-result v1

    .line 253
    .local v1, "tag":I
    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 254
    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    new-instance v3, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    const-string v4, "java.lang.String"

    invoke-direct {v3, v4}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v2

    .line 271
    :goto_0
    return-void

    .line 255
    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 256
    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v0, v2

    goto :goto_0

    .line 257
    :cond_1
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 258
    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v0, v2

    goto :goto_0

    .line 259
    :cond_2
    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 260
    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v0, v2

    .line 261
    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v0, v2

    goto :goto_0

    .line 263
    :cond_3
    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    .line 264
    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v0, v2

    .line 265
    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v0, v2

    goto :goto_0

    .line 267
    :cond_4
    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    .line 268
    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    new-instance v3, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    const-string v4, "java.lang.Class"

    invoke-direct {v3, v4}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v2

    goto :goto_0

    .line 270
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad LDC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private doMultiANewArray(I[B)I
    .locals 6
    .param p1, "pos"    # I
    .param p2, "code"    # [B

    .prologue
    .line 789
    add-int/lit8 v3, p1, 0x1

    invoke-static {p2, v3}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v1

    .line 790
    .local v1, "i":I
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p2, v3

    and-int/lit16 v0, v3, 0xff

    .line 791
    .local v0, "dim":I
    iget v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v0, -0x1

    sub-int/2addr v3, v4

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 793
    iget-object v3, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v3, v1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 794
    .local v2, "type":Ljava/lang/String;
    iget-object v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v4, -0x1

    new-instance v5, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-direct {v5, v2}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 795
    const/4 v3, 0x4

    return v3
.end method

.method private doNEWARRAY(I[B)I
    .locals 4
    .param p1, "pos"    # I
    .param p2, "code"    # [B

    .prologue
    .line 753
    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, v2, -0x1

    .line 755
    .local v0, "s":I
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 781
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad newarray"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 757
    :pswitch_0
    const-string v1, "[Z"

    .line 784
    .local v1, "type":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    new-instance v3, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-direct {v3, v1}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v0

    .line 785
    const/4 v2, 0x2

    return v2

    .line 760
    .end local v1    # "type":Ljava/lang/String;
    :pswitch_1
    const-string v1, "[C"

    .line 761
    .restart local v1    # "type":Ljava/lang/String;
    goto :goto_0

    .line 763
    .end local v1    # "type":Ljava/lang/String;
    :pswitch_2
    const-string v1, "[F"

    .line 764
    .restart local v1    # "type":Ljava/lang/String;
    goto :goto_0

    .line 766
    .end local v1    # "type":Ljava/lang/String;
    :pswitch_3
    const-string v1, "[D"

    .line 767
    .restart local v1    # "type":Ljava/lang/String;
    goto :goto_0

    .line 769
    .end local v1    # "type":Ljava/lang/String;
    :pswitch_4
    const-string v1, "[B"

    .line 770
    .restart local v1    # "type":Ljava/lang/String;
    goto :goto_0

    .line 772
    .end local v1    # "type":Ljava/lang/String;
    :pswitch_5
    const-string v1, "[S"

    .line 773
    .restart local v1    # "type":Ljava/lang/String;
    goto :goto_0

    .line 775
    .end local v1    # "type":Ljava/lang/String;
    :pswitch_6
    const-string v1, "[I"

    .line 776
    .restart local v1    # "type":Ljava/lang/String;
    goto :goto_0

    .line 778
    .end local v1    # "type":Ljava/lang/String;
    :pswitch_7
    const-string v1, "[J"

    .line 779
    .restart local v1    # "type":Ljava/lang/String;
    goto :goto_0

    .line 755
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private doOpcode0_53(I[BI)I
    .locals 8
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "op"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x2

    .line 134
    iget-object v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 135
    .local v3, "stackTypes":[Ljavassist/bytecode/stackmap/TypeData;
    packed-switch p3, :pswitch_data_0

    .line 244
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "fatal"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 139
    :pswitch_0
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    new-instance v5, Ljavassist/bytecode/stackmap/TypeData$NullType;

    invoke-direct {v5}, Ljavassist/bytecode/stackmap/TypeData$NullType;-><init>()V

    aput-object v5, v3, v4

    .line 247
    :goto_0
    :pswitch_1
    const/4 v4, 0x1

    :cond_0
    :goto_1
    return v4

    .line 148
    :pswitch_2
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v5, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v5, v3, v4

    goto :goto_0

    .line 152
    :pswitch_3
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v5, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v5, v3, v4

    .line 153
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v5, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v5, v3, v4

    goto :goto_0

    .line 158
    :pswitch_4
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v5, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v5, v3, v4

    goto :goto_0

    .line 162
    :pswitch_5
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v5, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v5, v3, v4

    .line 163
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v5, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v5, v3, v4

    goto :goto_0

    .line 167
    :pswitch_6
    iget v6, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v7, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v7, v3, v6

    .line 168
    const/16 v6, 0x11

    if-eq p3, v6, :cond_0

    move v4, v5

    goto :goto_1

    .line 170
    :pswitch_7
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    invoke-direct {p0, v4}, Ljavassist/bytecode/stackmap/Tracer;->doLDC(I)V

    move v4, v5

    .line 171
    goto :goto_1

    .line 174
    :pswitch_8
    add-int/lit8 v5, p1, 0x1

    invoke-static {p2, v5}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v5

    invoke-direct {p0, v5}, Ljavassist/bytecode/stackmap/Tracer;->doLDC(I)V

    goto :goto_1

    .line 177
    :pswitch_9
    sget-object v4, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, v4, p2, p1}, Ljavassist/bytecode/stackmap/Tracer;->doXLOAD(Ljavassist/bytecode/stackmap/TypeData;[BI)I

    move-result v4

    goto :goto_1

    .line 179
    :pswitch_a
    sget-object v4, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, v4, p2, p1}, Ljavassist/bytecode/stackmap/Tracer;->doXLOAD(Ljavassist/bytecode/stackmap/TypeData;[BI)I

    move-result v4

    goto :goto_1

    .line 181
    :pswitch_b
    sget-object v4, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, v4, p2, p1}, Ljavassist/bytecode/stackmap/Tracer;->doXLOAD(Ljavassist/bytecode/stackmap/TypeData;[BI)I

    move-result v4

    goto :goto_1

    .line 183
    :pswitch_c
    sget-object v4, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, v4, p2, p1}, Ljavassist/bytecode/stackmap/Tracer;->doXLOAD(Ljavassist/bytecode/stackmap/TypeData;[BI)I

    move-result v4

    goto/16 :goto_1

    .line 185
    :pswitch_d
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    invoke-direct {p0, v4}, Ljavassist/bytecode/stackmap/Tracer;->doALOAD(I)I

    move-result v4

    goto/16 :goto_1

    .line 190
    :pswitch_e
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v5, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v5, v3, v4

    goto/16 :goto_0

    .line 196
    :pswitch_f
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v5, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v5, v3, v4

    .line 197
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v5, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v5, v3, v4

    goto/16 :goto_0

    .line 203
    :pswitch_10
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v5, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v5, v3, v4

    goto/16 :goto_0

    .line 209
    :pswitch_11
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v5, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v5, v3, v4

    .line 210
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v5, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v5, v3, v4

    goto/16 :goto_0

    .line 216
    :pswitch_12
    add-int/lit8 v1, p3, -0x2a

    .line 217
    .local v1, "reg":I
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    iget-object v5, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v5, v5, v1

    aput-object v5, v3, v4

    goto/16 :goto_0

    .line 220
    .end local v1    # "reg":I
    :pswitch_13
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v5, v3, v4

    goto/16 :goto_0

    .line 223
    :pswitch_14
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v4, -0x2

    sget-object v5, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v5, v3, v4

    .line 224
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v5, v3, v4

    goto/16 :goto_0

    .line 227
    :pswitch_15
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v5, v3, v4

    goto/16 :goto_0

    .line 230
    :pswitch_16
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v4, -0x2

    sget-object v5, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v5, v3, v4

    .line 231
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v5, v3, v4

    goto/16 :goto_0

    .line 234
    :pswitch_17
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v4, -0x1

    .line 235
    .local v2, "s":I
    aget-object v0, v3, v2

    .line 236
    .local v0, "data":Ljavassist/bytecode/stackmap/TypeData;
    invoke-static {v0}, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->make(Ljavassist/bytecode/stackmap/TypeData;)Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v4

    aput-object v4, v3, v2

    goto/16 :goto_0

    .line 241
    .end local v0    # "data":Ljavassist/bytecode/stackmap/TypeData;
    .end local v2    # "s":I
    :pswitch_18
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v5, v3, v4

    goto/16 :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method private doOpcode148_201(I[BI)I
    .locals 11
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "op"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2e

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x3

    .line 505
    packed-switch p3, :pswitch_data_0

    :goto_0
    move v0, v2

    .line 662
    :goto_1
    return v0

    .line 507
    :pswitch_0
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v1, -0x4

    sget-object v4, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v4, v0, v1

    .line 508
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto :goto_0

    .line 512
    :pswitch_1
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v1, -0x1

    sget-object v4, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v4, v0, v1

    goto :goto_0

    .line 516
    :pswitch_2
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v1, -0x4

    sget-object v4, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v4, v0, v1

    .line 517
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto :goto_0

    .line 525
    :pswitch_3
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 526
    add-int/lit8 v1, p1, 0x1

    invoke-static {p2, v1}, Ljavassist/bytecode/ByteArray;->readS16bit([BI)I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Ljavassist/bytecode/stackmap/Tracer;->visitBranch(I[BI)V

    goto :goto_1

    .line 536
    :pswitch_4
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 537
    add-int/lit8 v1, p1, 0x1

    invoke-static {p2, v1}, Ljavassist/bytecode/ByteArray;->readS16bit([BI)I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Ljavassist/bytecode/stackmap/Tracer;->visitBranch(I[BI)V

    goto :goto_1

    .line 540
    :pswitch_5
    add-int/lit8 v1, p1, 0x1

    invoke-static {p2, v1}, Ljavassist/bytecode/ByteArray;->readS16bit([BI)I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Ljavassist/bytecode/stackmap/Tracer;->visitGoto(I[BI)V

    goto :goto_1

    .line 543
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitJSR(I[B)V

    goto :goto_1

    .line 546
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitRET(I[B)V

    .line 547
    const/4 v0, 0x2

    goto :goto_1

    .line 549
    :pswitch_8
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 550
    and-int/lit8 v0, p1, -0x4

    add-int/lit8 v9, v0, 0x8

    .line 551
    .local v9, "pos2":I
    invoke-static {p2, v9}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v8

    .line 552
    .local v8, "low":I
    add-int/lit8 v0, v9, 0x4

    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v6

    .line 553
    .local v6, "high":I
    sub-int v0, v6, v8

    add-int/lit8 v3, v0, 0x1

    .line 554
    .local v3, "n":I
    add-int/lit8 v4, v9, 0x8

    add-int/lit8 v0, v9, -0x4

    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Ljavassist/bytecode/stackmap/Tracer;->visitTableSwitch(I[BIII)V

    .line 555
    mul-int/lit8 v0, v3, 0x4

    add-int/lit8 v0, v0, 0x10

    and-int/lit8 v1, p1, 0x3

    sub-int/2addr v0, v1

    goto/16 :goto_1

    .line 557
    .end local v3    # "n":I
    .end local v6    # "high":I
    .end local v8    # "low":I
    .end local v9    # "pos2":I
    :pswitch_9
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 558
    and-int/lit8 v0, p1, -0x4

    add-int/lit8 v9, v0, 0x8

    .line 559
    .restart local v9    # "pos2":I
    invoke-static {p2, v9}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v3

    .line 560
    .restart local v3    # "n":I
    add-int/lit8 v4, v9, 0x4

    add-int/lit8 v0, v9, -0x4

    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Ljavassist/bytecode/stackmap/Tracer;->visitLookupSwitch(I[BIII)V

    .line 561
    mul-int/lit8 v0, v3, 0x8

    add-int/lit8 v0, v0, 0xc

    and-int/lit8 v1, p1, 0x3

    sub-int/2addr v0, v1

    goto/16 :goto_1

    .line 563
    .end local v3    # "n":I
    .end local v9    # "pos2":I
    :pswitch_a
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 564
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitReturn(I[B)V

    goto/16 :goto_0

    .line 567
    :pswitch_b
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 568
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitReturn(I[B)V

    goto/16 :goto_0

    .line 571
    :pswitch_c
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 572
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitReturn(I[B)V

    goto/16 :goto_0

    .line 575
    :pswitch_d
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 576
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitReturn(I[B)V

    goto/16 :goto_0

    .line 579
    :pswitch_e
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object v0, v0, v1

    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->returnType:Ljava/lang/String;

    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v0, v1, v4}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 580
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitReturn(I[B)V

    goto/16 :goto_0

    .line 583
    :pswitch_f
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitReturn(I[B)V

    goto/16 :goto_0

    .line 586
    :pswitch_10
    invoke-direct {p0, p1, p2, v4}, Ljavassist/bytecode/stackmap/Tracer;->doGetField(I[BZ)I

    move-result v0

    goto/16 :goto_1

    .line 588
    :pswitch_11
    invoke-direct {p0, p1, p2, v4}, Ljavassist/bytecode/stackmap/Tracer;->doPutField(I[BZ)I

    move-result v0

    goto/16 :goto_1

    .line 590
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Ljavassist/bytecode/stackmap/Tracer;->doGetField(I[BZ)I

    move-result v0

    goto/16 :goto_1

    .line 592
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Ljavassist/bytecode/stackmap/Tracer;->doPutField(I[BZ)I

    move-result v0

    goto/16 :goto_1

    .line 595
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Ljavassist/bytecode/stackmap/Tracer;->doInvokeMethod(I[BZ)I

    move-result v0

    goto/16 :goto_1

    .line 597
    :pswitch_15
    invoke-direct {p0, p1, p2, v4}, Ljavassist/bytecode/stackmap/Tracer;->doInvokeMethod(I[BZ)I

    move-result v0

    goto/16 :goto_1

    .line 599
    :pswitch_16
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->doInvokeIntfMethod(I[B)I

    move-result v0

    goto/16 :goto_1

    .line 601
    :pswitch_17
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->doInvokeDynamic(I[B)I

    move-result v0

    goto/16 :goto_1

    .line 603
    :pswitch_18
    add-int/lit8 v1, p1, 0x1

    invoke-static {p2, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v7

    .line 604
    .local v7, "i":I
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    new-instance v4, Ljavassist/bytecode/stackmap/TypeData$UninitData;

    iget-object v5, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v5, v7}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljavassist/bytecode/stackmap/TypeData$UninitData;-><init>(ILjava/lang/String;)V

    aput-object v4, v1, v2

    goto/16 :goto_1

    .line 608
    .end local v7    # "i":I
    :pswitch_19
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->doNEWARRAY(I[B)I

    move-result v0

    goto/16 :goto_1

    .line 610
    :pswitch_1a
    add-int/lit8 v1, p1, 0x1

    invoke-static {p2, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v7

    .line 611
    .restart local v7    # "i":I
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, v7}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 612
    .local v10, "type":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 617
    :goto_2
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, -0x1

    new-instance v4, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-direct {v4, v10}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v2

    goto/16 :goto_1

    .line 615
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 621
    .end local v7    # "i":I
    .end local v10    # "type":Ljava/lang/String;
    :pswitch_1b
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    const-string v1, "[Ljava.lang.Object;"

    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v0, v1, v4}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 622
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v1, -0x1

    sget-object v4, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v4, v0, v1

    goto/16 :goto_0

    .line 625
    :pswitch_1c
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object v0, v0, v1

    const-string v1, "java.lang.Throwable"

    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v0, v1, v4}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 626
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitThrow(I[B)V

    goto/16 :goto_0

    .line 630
    :pswitch_1d
    add-int/lit8 v1, p1, 0x1

    invoke-static {p2, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v7

    .line 631
    .restart local v7    # "i":I
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, v7}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v10

    .line 632
    .restart local v10    # "type":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_1

    .line 633
    const/16 v1, 0x2f

    invoke-virtual {v10, v5, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 635
    :cond_1
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, -0x1

    new-instance v4, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-direct {v4, v10}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v2

    goto/16 :goto_1

    .line 639
    .end local v7    # "i":I
    .end local v10    # "type":Ljava/lang/String;
    :pswitch_1e
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, -0x1

    sget-object v4, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v4, v1, v2

    goto/16 :goto_1

    .line 643
    :pswitch_1f
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto/16 :goto_0

    .line 647
    :pswitch_20
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE(I[B)I

    move-result v0

    goto/16 :goto_1

    .line 649
    :pswitch_21
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->doMultiANewArray(I[B)I

    move-result v0

    goto/16 :goto_1

    .line 652
    :pswitch_22
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 653
    add-int/lit8 v1, p1, 0x1

    invoke-static {p2, v1}, Ljavassist/bytecode/ByteArray;->readS16bit([BI)I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Ljavassist/bytecode/stackmap/Tracer;->visitBranch(I[BI)V

    goto/16 :goto_1

    .line 656
    :pswitch_23
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->visitGoto(I[BI)V

    move v0, v1

    .line 657
    goto/16 :goto_1

    .line 659
    :pswitch_24
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitJSR(I[B)V

    move v0, v1

    .line 660
    goto/16 :goto_1

    .line 505
    :pswitch_data_0
    .packed-switch 0x94
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_22
        :pswitch_23
        :pswitch_24
    .end packed-switch
.end method

.method private doOpcode54_95(I[BI)I
    .locals 9
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "op"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 292
    packed-switch p3, :pswitch_data_0

    .line 400
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "fatal"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 294
    :pswitch_0
    sget-object v4, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, p2, v4}, Ljavassist/bytecode/stackmap/Tracer;->doXSTORE(I[BLjavassist/bytecode/stackmap/TypeData;)I

    move-result v4

    .line 403
    :goto_0
    return v4

    .line 296
    :pswitch_1
    sget-object v4, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, p2, v4}, Ljavassist/bytecode/stackmap/Tracer;->doXSTORE(I[BLjavassist/bytecode/stackmap/TypeData;)I

    move-result v4

    goto :goto_0

    .line 298
    :pswitch_2
    sget-object v4, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, p2, v4}, Ljavassist/bytecode/stackmap/Tracer;->doXSTORE(I[BLjavassist/bytecode/stackmap/TypeData;)I

    move-result v4

    goto :goto_0

    .line 300
    :pswitch_3
    sget-object v4, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, p2, v4}, Ljavassist/bytecode/stackmap/Tracer;->doXSTORE(I[BLjavassist/bytecode/stackmap/TypeData;)I

    move-result v4

    goto :goto_0

    .line 302
    :pswitch_4
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    invoke-direct {p0, v4}, Ljavassist/bytecode/stackmap/Tracer;->doASTORE(I)I

    move-result v4

    goto :goto_0

    .line 307
    :pswitch_5
    add-int/lit8 v3, p3, -0x3b

    .line 308
    .local v3, "var":I
    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    sget-object v6, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v6, v4, v3

    .line 309
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .end local v3    # "var":I
    :goto_1
    move v4, v5

    .line 403
    goto :goto_0

    .line 315
    :pswitch_6
    add-int/lit8 v3, p3, -0x3f

    .line 316
    .restart local v3    # "var":I
    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    sget-object v6, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v6, v4, v3

    .line 317
    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    add-int/lit8 v6, v3, 0x1

    sget-object v7, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v7, v4, v6

    .line 318
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto :goto_1

    .line 324
    .end local v3    # "var":I
    :pswitch_7
    add-int/lit8 v3, p3, -0x43

    .line 325
    .restart local v3    # "var":I
    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    sget-object v6, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v6, v4, v3

    .line 326
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto :goto_1

    .line 332
    .end local v3    # "var":I
    :pswitch_8
    add-int/lit8 v3, p3, -0x47

    .line 333
    .restart local v3    # "var":I
    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    sget-object v6, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v6, v4, v3

    .line 334
    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    add-int/lit8 v6, v3, 0x1

    sget-object v7, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v7, v4, v6

    .line 335
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto :goto_1

    .line 341
    .end local v3    # "var":I
    :pswitch_9
    add-int/lit8 v3, p3, -0x4b

    .line 342
    .restart local v3    # "var":I
    invoke-direct {p0, v3}, Ljavassist/bytecode/stackmap/Tracer;->doASTORE(I)I

    goto :goto_1

    .line 348
    .end local v3    # "var":I
    :pswitch_a
    iget v6, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    const/16 v4, 0x50

    if-eq p3, v4, :cond_0

    const/16 v4, 0x52

    if-ne p3, v4, :cond_1

    :cond_0
    const/4 v4, 0x4

    :goto_2
    sub-int v4, v6, v4

    iput v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto :goto_1

    :cond_1
    const/4 v4, 0x3

    goto :goto_2

    .line 351
    :pswitch_b
    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v6, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v6, v6, -0x3

    aget-object v4, v4, v6

    iget-object v6, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v7, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    iget-object v7, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-static {v4, v6, v7}, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->aastore(Ljavassist/bytecode/stackmap/TypeData;Ljavassist/bytecode/stackmap/TypeData;Ljavassist/ClassPool;)V

    .line 354
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v4, -0x3

    iput v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto :goto_1

    .line 359
    :pswitch_c
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v4, -0x3

    iput v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto :goto_1

    .line 362
    :pswitch_d
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto :goto_1

    .line 365
    :pswitch_e
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto/16 :goto_1

    .line 368
    :pswitch_f
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 369
    .local v1, "sp":I
    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget-object v6, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    add-int/lit8 v7, v1, -0x1

    aget-object v6, v6, v7

    aput-object v6, v4, v1

    .line 370
    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto/16 :goto_1

    .line 374
    .end local v1    # "sp":I
    :pswitch_10
    add-int/lit8 v4, p3, -0x5a

    add-int/lit8 v0, v4, 0x2

    .line 375
    .local v0, "len":I
    invoke-direct {p0, v5, v0}, Ljavassist/bytecode/stackmap/Tracer;->doDUP_XX(II)V

    .line 376
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 377
    .restart local v1    # "sp":I
    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    sub-int v6, v1, v0

    iget-object v7, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v7, v7, v1

    aput-object v7, v4, v6

    .line 378
    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto/16 :goto_1

    .line 381
    .end local v0    # "len":I
    .end local v1    # "sp":I
    :pswitch_11
    invoke-direct {p0, v6, v6}, Ljavassist/bytecode/stackmap/Tracer;->doDUP_XX(II)V

    .line 382
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto/16 :goto_1

    .line 386
    :pswitch_12
    add-int/lit8 v4, p3, -0x5d

    add-int/lit8 v0, v4, 0x3

    .line 387
    .restart local v0    # "len":I
    invoke-direct {p0, v6, v0}, Ljavassist/bytecode/stackmap/Tracer;->doDUP_XX(II)V

    .line 388
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 389
    .restart local v1    # "sp":I
    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    sub-int v6, v1, v0

    iget-object v7, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v7, v7, v1

    aput-object v7, v4, v6

    .line 390
    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    sub-int v6, v1, v0

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    add-int/lit8 v8, v1, 0x1

    aget-object v7, v7, v8

    aput-object v7, v4, v6

    .line 391
    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto/16 :goto_1

    .line 394
    .end local v0    # "len":I
    .end local v1    # "sp":I
    :pswitch_13
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v4, -0x1

    .line 395
    .restart local v1    # "sp":I
    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v2, v4, v1

    .line 396
    .local v2, "t":Ljavassist/bytecode/stackmap/TypeData;
    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget-object v6, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    add-int/lit8 v7, v1, -0x1

    aget-object v6, v6, v7

    aput-object v6, v4, v1

    .line 397
    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    add-int/lit8 v6, v1, -0x1

    aput-object v2, v4, v6

    goto/16 :goto_1

    .line 292
    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private doOpcode96_147(I[BI)I
    .locals 4
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "op"    # I

    .prologue
    const/4 v0, 0x1

    .line 440
    const/16 v1, 0x83

    if-gt p3, v1, :cond_0

    .line 441
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v2, Ljavassist/bytecode/Opcode;->STACK_GROW:[I

    aget v2, v2, p3

    add-int/2addr v1, v2

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 501
    :goto_0
    :pswitch_0
    return v0

    .line 445
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 498
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fatal"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 450
    :pswitch_2
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v1, v2

    .line 451
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v1, v2

    .line 452
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto :goto_0

    .line 455
    :pswitch_3
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v1, v2

    goto :goto_0

    .line 458
    :pswitch_4
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v1, v2

    .line 459
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v1, v2

    .line 460
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto :goto_0

    .line 463
    :pswitch_5
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v1, v2

    goto :goto_0

    .line 466
    :pswitch_6
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v1, v2

    goto :goto_0

    .line 469
    :pswitch_7
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, -0x2

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v1, v2

    goto :goto_0

    .line 472
    :pswitch_8
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v1, v2

    goto :goto_0

    .line 475
    :pswitch_9
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v1, v2

    .line 476
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v1, v2

    .line 477
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto/16 :goto_0

    .line 480
    :pswitch_a
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v1, v2

    .line 481
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v1, v2

    .line 482
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto/16 :goto_0

    .line 485
    :pswitch_b
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v1, v2

    goto/16 :goto_0

    .line 488
    :pswitch_c
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, -0x2

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v1, v2

    goto/16 :goto_0

    .line 491
    :pswitch_d
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v1, v2

    goto/16 :goto_0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x84
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private doPutField(I[BZ)I
    .locals 6
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "notStatic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 724
    add-int/lit8 v3, p1, 0x1

    invoke-static {p2, v3}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v2

    .line 725
    .local v2, "index":I
    iget-object v3, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v3, v2}, Ljavassist/bytecode/ConstPool;->getFieldrefType(I)Ljava/lang/String;

    move-result-object v1

    .line 726
    .local v1, "desc":Ljava/lang/String;
    iget v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    invoke-static {v1}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 727
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 728
    .local v0, "c":C
    const/16 v3, 0x4c

    if-ne v0, v3, :cond_1

    .line 729
    iget-object v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object v3, v3, v4

    invoke-static {v1, v5}, Ljavassist/bytecode/stackmap/Tracer;->getFieldClassName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v3, v4, v5}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 733
    :cond_0
    :goto_0
    invoke-direct {p0, p3, v2}, Ljavassist/bytecode/stackmap/Tracer;->setFieldTarget(ZI)V

    .line 734
    const/4 v3, 0x3

    return v3

    .line 730
    :cond_1
    const/16 v3, 0x5b

    if-ne v0, v3, :cond_0

    .line 731
    iget-object v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object v3, v3, v4

    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v3, v1, v4}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    goto :goto_0
.end method

.method private doWIDE(I[B)I
    .locals 5
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 666
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v1, v2, 0xff

    .line 667
    .local v1, "op":I
    sparse-switch v1, :sswitch_data_0

    .line 707
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad WIDE instruction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 669
    :sswitch_0
    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, p2, v2}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE_XLOAD(I[BLjavassist/bytecode/stackmap/TypeData;)V

    .line 710
    :goto_0
    const/4 v2, 0x4

    :goto_1
    return v2

    .line 672
    :sswitch_1
    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, p2, v2}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE_XLOAD(I[BLjavassist/bytecode/stackmap/TypeData;)V

    goto :goto_0

    .line 675
    :sswitch_2
    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, p2, v2}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE_XLOAD(I[BLjavassist/bytecode/stackmap/TypeData;)V

    goto :goto_0

    .line 678
    :sswitch_3
    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, p2, v2}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE_XLOAD(I[BLjavassist/bytecode/stackmap/TypeData;)V

    goto :goto_0

    .line 681
    :sswitch_4
    add-int/lit8 v2, p1, 0x2

    invoke-static {p2, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 682
    .local v0, "index":I
    invoke-direct {p0, v0}, Ljavassist/bytecode/stackmap/Tracer;->doALOAD(I)I

    goto :goto_0

    .line 685
    .end local v0    # "index":I
    :sswitch_5
    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, p2, v2}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE_STORE(I[BLjavassist/bytecode/stackmap/TypeData;)V

    goto :goto_0

    .line 688
    :sswitch_6
    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, p2, v2}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE_STORE(I[BLjavassist/bytecode/stackmap/TypeData;)V

    goto :goto_0

    .line 691
    :sswitch_7
    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, p2, v2}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE_STORE(I[BLjavassist/bytecode/stackmap/TypeData;)V

    goto :goto_0

    .line 694
    :sswitch_8
    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, p2, v2}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE_STORE(I[BLjavassist/bytecode/stackmap/TypeData;)V

    goto :goto_0

    .line 697
    :sswitch_9
    add-int/lit8 v2, p1, 0x2

    invoke-static {p2, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 698
    .restart local v0    # "index":I
    invoke-direct {p0, v0}, Ljavassist/bytecode/stackmap/Tracer;->doASTORE(I)I

    goto :goto_0

    .line 702
    .end local v0    # "index":I
    :sswitch_a
    const/4 v2, 0x6

    goto :goto_1

    .line 704
    :sswitch_b
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitRET(I[B)V

    goto :goto_0

    .line 667
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x18 -> :sswitch_3
        0x19 -> :sswitch_4
        0x36 -> :sswitch_5
        0x37 -> :sswitch_6
        0x38 -> :sswitch_7
        0x39 -> :sswitch_8
        0x3a -> :sswitch_9
        0x84 -> :sswitch_a
        0xa9 -> :sswitch_b
    .end sparse-switch
.end method

.method private doWIDE_STORE(I[BLjavassist/bytecode/stackmap/TypeData;)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "type"    # Ljavassist/bytecode/stackmap/TypeData;

    .prologue
    .line 719
    add-int/lit8 v1, p1, 0x2

    invoke-static {p2, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 720
    .local v0, "index":I
    invoke-direct {p0, v0, p3}, Ljavassist/bytecode/stackmap/Tracer;->doXSTORE(ILjavassist/bytecode/stackmap/TypeData;)I

    .line 721
    return-void
.end method

.method private doWIDE_XLOAD(I[BLjavassist/bytecode/stackmap/TypeData;)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "type"    # Ljavassist/bytecode/stackmap/TypeData;

    .prologue
    .line 714
    add-int/lit8 v1, p1, 0x2

    invoke-static {p2, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 715
    .local v0, "index":I
    invoke-direct {p0, v0, p3}, Ljavassist/bytecode/stackmap/Tracer;->doXLOAD(ILjavassist/bytecode/stackmap/TypeData;)I

    .line 716
    return-void
.end method

.method private doXLOAD(ILjavassist/bytecode/stackmap/TypeData;)I
    .locals 3
    .param p1, "localVar"    # I
    .param p2, "type"    # Ljavassist/bytecode/stackmap/TypeData;

    .prologue
    .line 279
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aput-object p2, v0, v1

    .line 280
    invoke-virtual {p2}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v2, v0, v1

    .line 283
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method private doXLOAD(Ljavassist/bytecode/stackmap/TypeData;[BI)I
    .locals 2
    .param p1, "type"    # Ljavassist/bytecode/stackmap/TypeData;
    .param p2, "code"    # [B
    .param p3, "pos"    # I

    .prologue
    .line 274
    add-int/lit8 v1, p3, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v0, v1, 0xff

    .line 275
    .local v0, "localVar":I
    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/stackmap/Tracer;->doXLOAD(ILjavassist/bytecode/stackmap/TypeData;)I

    move-result v1

    return v1
.end method

.method private doXSTORE(ILjavassist/bytecode/stackmap/TypeData;)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "type"    # Ljavassist/bytecode/stackmap/TypeData;

    .prologue
    .line 412
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 413
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aput-object p2, v0, p1

    .line 414
    invoke-virtual {p2}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 416
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    add-int/lit8 v1, p1, 0x1

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v2, v0, v1

    .line 419
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method private doXSTORE(I[BLjavassist/bytecode/stackmap/TypeData;)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "type"    # Ljavassist/bytecode/stackmap/TypeData;

    .prologue
    .line 407
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v0, v1, 0xff

    .line 408
    .local v0, "index":I
    invoke-direct {p0, v0, p3}, Ljavassist/bytecode/stackmap/Tracer;->doXSTORE(ILjavassist/bytecode/stackmap/TypeData;)I

    move-result v1

    return v1
.end method

.method private static getFieldClassName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    .line 898
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private pushMemberType(Ljava/lang/String;)V
    .locals 6
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 857
    const/4 v1, 0x0

    .line 858
    .local v1, "top":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_0

    .line 859
    const/16 v3, 0x29

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 860
    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    .line 861
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad descriptor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 865
    :cond_0
    iget-object v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 866
    .local v2, "types":[Ljavassist/bytecode/stackmap/TypeData;
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 867
    .local v0, "index":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 890
    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v2, v0

    .line 894
    :goto_0
    iget v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 895
    :goto_1
    :sswitch_0
    return-void

    .line 869
    :sswitch_1
    new-instance v3, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v0

    goto :goto_0

    .line 872
    :sswitch_2
    new-instance v3, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-static {p1, v1}, Ljavassist/bytecode/stackmap/Tracer;->getFieldClassName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v0

    goto :goto_0

    .line 875
    :sswitch_3
    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v2, v0

    .line 876
    add-int/lit8 v3, v0, 0x1

    sget-object v4, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v4, v2, v3

    .line 877
    iget v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto :goto_1

    .line 880
    :sswitch_4
    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v2, v0

    goto :goto_0

    .line 883
    :sswitch_5
    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v3, v2, v0

    .line 884
    add-int/lit8 v3, v0, 0x1

    sget-object v4, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v4, v2, v3

    .line 885
    iget v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto :goto_1

    .line 867
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_5
        0x46 -> :sswitch_4
        0x4a -> :sswitch_3
        0x4c -> :sswitch_2
        0x56 -> :sswitch_0
        0x5b -> :sswitch_1
    .end sparse-switch
.end method

.method private setFieldTarget(ZI)V
    .locals 3
    .param p1, "notStatic"    # Z
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 746
    if-eqz p1, :cond_0

    .line 747
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, p2}, Ljavassist/bytecode/ConstPool;->getFieldrefClassName(I)Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object v1, v1, v2

    iget-object v2, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v1, v0, v2}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 750
    .end local v0    # "className":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected doOpcode(I[B)I
    .locals 5
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    aget-byte v2, p2, p1

    and-int/lit16 v1, v2, 0xff

    .line 72
    .local v1, "op":I
    const/16 v2, 0x60

    if-ge v1, v2, :cond_1

    .line 73
    const/16 v2, 0x36

    if-ge v1, v2, :cond_0

    .line 74
    invoke-direct {p0, p1, p2, v1}, Ljavassist/bytecode/stackmap/Tracer;->doOpcode0_53(I[BI)I

    move-result v2

    .line 81
    :goto_0
    return v2

    .line 76
    :cond_0
    invoke-direct {p0, p1, p2, v1}, Ljavassist/bytecode/stackmap/Tracer;->doOpcode54_95(I[BI)I

    move-result v2

    goto :goto_0

    .line 78
    :cond_1
    const/16 v2, 0x94

    if-ge v1, v2, :cond_2

    .line 79
    invoke-direct {p0, p1, p2, v1}, Ljavassist/bytecode/stackmap/Tracer;->doOpcode96_147(I[BI)I

    move-result v2

    goto :goto_0

    .line 81
    :cond_2
    invoke-direct {p0, p1, p2, v1}, Ljavassist/bytecode/stackmap/Tracer;->doOpcode148_201(I[BI)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 83
    .end local v1    # "op":I
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Ljavassist/bytecode/BadBytecode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inconsistent stack height "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected visitBranch(I[BI)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 88
    return-void
.end method

.method protected visitGoto(I[BI)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 89
    return-void
.end method

.method protected visitJSR(I[B)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 124
    return-void
.end method

.method protected visitLookupSwitch(I[BIII)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "n"    # I
    .param p4, "pairsPos"    # I
    .param p5, "defaultOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 111
    return-void
.end method

.method protected visitRET(I[B)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 130
    return-void
.end method

.method protected visitReturn(I[B)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 90
    return-void
.end method

.method protected visitTableSwitch(I[BIII)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "n"    # I
    .param p4, "offsetPos"    # I
    .param p5, "defaultOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 101
    return-void
.end method

.method protected visitThrow(I[B)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 91
    return-void
.end method
