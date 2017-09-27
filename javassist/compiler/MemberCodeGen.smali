.class public Ljavassist/compiler/MemberCodeGen;
.super Ljavassist/compiler/CodeGen;
.source "MemberCodeGen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/compiler/MemberCodeGen$JsrHook2;,
        Ljavassist/compiler/MemberCodeGen$JsrHook;
    }
.end annotation


# instance fields
.field protected resolver:Ljavassist/compiler/MemberResolver;

.field protected resultStatic:Z

.field protected thisClass:Ljavassist/CtClass;

.field protected thisMethod:Ljavassist/bytecode/MethodInfo;


# direct methods
.method public constructor <init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;Ljavassist/ClassPool;)V
    .locals 1
    .param p1, "b"    # Ljavassist/bytecode/Bytecode;
    .param p2, "cc"    # Ljavassist/CtClass;
    .param p3, "cp"    # Ljavassist/ClassPool;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljavassist/compiler/CodeGen;-><init>(Ljavassist/bytecode/Bytecode;)V

    .line 36
    new-instance v0, Ljavassist/compiler/MemberResolver;

    invoke-direct {v0, p3}, Ljavassist/compiler/MemberResolver;-><init>(Ljavassist/ClassPool;)V

    iput-object v0, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    .line 37
    iput-object p2, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/compiler/MemberCodeGen;->thisMethod:Ljavassist/bytecode/MethodInfo;

    .line 39
    return-void
.end method

.method private addFieldrefInfo(Ljavassist/CtField;Ljavassist/bytecode/FieldInfo;)I
    .locals 6
    .param p1, "f"    # Ljavassist/CtField;
    .param p2, "finfo"    # Ljavassist/bytecode/FieldInfo;

    .prologue
    .line 965
    iget-object v5, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5}, Ljavassist/bytecode/Bytecode;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    .line 966
    .local v2, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {p1}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v5

    invoke-virtual {v5}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    .line 967
    .local v1, "cname":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    .line 968
    .local v0, "ci":I
    invoke-virtual {p2}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 969
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p2}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    .line 970
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {v2, v0, v3, v4}, Ljavassist/bytecode/ConstPool;->addFieldrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    return v5
.end method

.method private addFinally(Ljava/util/ArrayList;Ljavassist/compiler/ast/Stmnt;)V
    .locals 8
    .param p1, "returnList"    # Ljava/util/ArrayList;
    .param p2, "finallyBlock"    # Ljavassist/compiler/ast/Stmnt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    .line 277
    .local v0, "bc":Ljavassist/bytecode/Bytecode;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 278
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 279
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    move-object v5, v6

    check-cast v5, [I

    .line 280
    .local v5, "ret":[I
    const/4 v6, 0x0

    aget v4, v5, v6

    .line 281
    .local v4, "pc":I
    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v6

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v4, v6}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    .line 282
    new-instance v1, Ljavassist/compiler/MemberCodeGen$JsrHook2;

    invoke-direct {v1, p0, v5}, Ljavassist/compiler/MemberCodeGen$JsrHook2;-><init>(Ljavassist/compiler/CodeGen;[I)V

    .line 283
    .local v1, "hook":Ljavassist/compiler/CodeGen$ReturnHook;
    invoke-virtual {p2, p0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 284
    invoke-virtual {v1, p0}, Ljavassist/compiler/CodeGen$ReturnHook;->remove(Ljavassist/compiler/CodeGen;)V

    .line 285
    iget-boolean v6, p0, Ljavassist/compiler/MemberCodeGen;->hasReturned:Z

    if-nez v6, :cond_0

    .line 286
    const/16 v6, 0xa7

    invoke-virtual {v0, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 287
    add-int/lit8 v6, v4, 0x3

    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v6}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 278
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 290
    .end local v1    # "hook":Ljavassist/compiler/CodeGen$ReturnHook;
    .end local v4    # "pc":I
    .end local v5    # "ret":[I
    :cond_1
    return-void
.end method

.method private atArrayLength(Ljavassist/compiler/ast/ASTree;)V
    .locals 2
    .param p1, "expr"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 871
    iget v0, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    if-nez v0, :cond_0

    .line 872
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, ".length applied to a non array"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 874
    :cond_0
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v1, 0xbe

    invoke-virtual {v0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 875
    const/16 v0, 0x144

    iput v0, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 876
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    .line 877
    return-void
.end method

.method private atFieldAssignCore(Ljavassist/CtField;ZIZ)V
    .locals 7
    .param p1, "f"    # Ljavassist/CtField;
    .param p2, "is_static"    # Z
    .param p3, "fi"    # I
    .param p4, "is2byte"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    const/4 v4, -0x2

    .line 823
    if-eqz p3, :cond_3

    .line 824
    if-eqz p2, :cond_1

    .line 825
    iget-object v5, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v6, 0xb3

    invoke-virtual {v5, v6}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 826
    iget-object v5, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-eqz p4, :cond_0

    :goto_0
    invoke-virtual {v5, v4}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 833
    :goto_1
    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4, p3}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 844
    :goto_2
    return-void

    .line 826
    :cond_0
    const/4 v4, -0x1

    goto :goto_0

    .line 829
    :cond_1
    iget-object v5, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v6, 0xb5

    invoke-virtual {v5, v6}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 830
    iget-object v5, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-eqz p4, :cond_2

    const/4 v4, -0x3

    :cond_2
    invoke-virtual {v5, v4}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    goto :goto_1

    .line 836
    :cond_3
    invoke-virtual {p1}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    .line 837
    .local v0, "declClass":Ljavassist/CtClass;
    invoke-virtual {v0}, Ljavassist/CtClass;->getAccessorMaker()Ljavassist/compiler/AccessorMaker;

    move-result-object v2

    .line 839
    .local v2, "maker":Ljavassist/compiler/AccessorMaker;
    invoke-virtual {p1}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v1

    .line 840
    .local v1, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v2, v1, p2}, Ljavassist/compiler/AccessorMaker;->getFieldSetter(Ljavassist/bytecode/FieldInfo;Z)Ljavassist/bytecode/MethodInfo;

    move-result-object v3

    .line 841
    .local v3, "minfo":Ljavassist/bytecode/MethodInfo;
    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v3}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private atFieldRead(Ljavassist/CtField;Z)I
    .locals 10
    .param p1, "f"    # Ljavassist/CtField;
    .param p2, "isStatic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 885
    invoke-virtual {p1}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v1

    .line 886
    .local v1, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-direct {p0, v1}, Ljavassist/compiler/MemberCodeGen;->setFieldType(Ljavassist/bytecode/FieldInfo;)Z

    move-result v2

    .line 887
    .local v2, "is2byte":Z
    invoke-direct {p0, p1, v1}, Ljavassist/compiler/MemberCodeGen;->isAccessibleField(Ljavassist/CtField;Ljavassist/bytecode/FieldInfo;)Ljavassist/compiler/AccessorMaker;

    move-result-object v3

    .line 888
    .local v3, "maker":Ljavassist/compiler/AccessorMaker;
    if-eqz v3, :cond_0

    .line 889
    invoke-virtual {v3, v1, p2}, Ljavassist/compiler/AccessorMaker;->getFieldGetter(Ljavassist/bytecode/FieldInfo;Z)Ljavassist/bytecode/MethodInfo;

    move-result-object v4

    .line 890
    .local v4, "minfo":Ljavassist/bytecode/MethodInfo;
    iget-object v5, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v7

    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v8, v9}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    .end local v4    # "minfo":Ljavassist/bytecode/MethodInfo;
    :goto_0
    return v6

    .line 895
    :cond_0
    invoke-direct {p0, p1, v1}, Ljavassist/compiler/MemberCodeGen;->addFieldrefInfo(Ljavassist/CtField;Ljavassist/bytecode/FieldInfo;)I

    move-result v0

    .line 896
    .local v0, "fi":I
    if-eqz p2, :cond_2

    .line 897
    iget-object v6, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v7, 0xb2

    invoke-virtual {v6, v7}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 898
    iget-object v6, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-eqz v2, :cond_1

    const/4 v5, 0x2

    :cond_1
    invoke-virtual {v6, v5}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 905
    :goto_1
    iget-object v5, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v0}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    move v6, v0

    .line 906
    goto :goto_0

    .line 901
    :cond_2
    iget-object v7, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v8, 0xb4

    invoke-virtual {v7, v8}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 902
    iget-object v7, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v7, v5}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_2
.end method

.method private atMethodCallCore2(Ljavassist/CtClass;Ljava/lang/String;ZZIILjavassist/compiler/MemberResolver$Method;)V
    .locals 10
    .param p1, "targetClass"    # Ljavassist/CtClass;
    .param p2, "mname"    # Ljava/lang/String;
    .param p3, "isStatic"    # Z
    .param p4, "isSpecial"    # Z
    .param p5, "aload0pos"    # I
    .param p6, "count"    # I
    .param p7, "found"    # Ljavassist/compiler/MemberResolver$Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 585
    move-object/from16 v0, p7

    iget-object v6, v0, Ljavassist/compiler/MemberResolver$Method;->declaring:Ljavassist/CtClass;

    .line 586
    .local v6, "declClass":Ljavassist/CtClass;
    move-object/from16 v0, p7

    iget-object v5, v0, Ljavassist/compiler/MemberResolver$Method;->info:Ljavassist/bytecode/MethodInfo;

    .line 587
    .local v5, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v5}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    .line 588
    .local v4, "desc":Ljava/lang/String;
    invoke-virtual {v5}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v7

    .line 590
    .local v7, "acc":I
    const-string v1, "<init>"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 591
    const/4 p4, 0x1

    .line 592
    if-eq v6, p1, :cond_0

    .line 593
    new-instance v1, Ljavassist/compiler/CompileError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no such constructor: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 595
    :cond_0
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    if-eq v6, v1, :cond_1

    invoke-static {v7}, Ljavassist/bytecode/AccessFlag;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 596
    invoke-virtual {p0, v4, v6, v5}, Ljavassist/compiler/MemberCodeGen;->getAccessibleConstructor(Ljava/lang/String;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;

    move-result-object v4

    .line 597
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 616
    :cond_1
    :goto_0
    const/4 v8, 0x0

    .line 617
    .local v8, "popTarget":Z
    and-int/lit8 v1, v7, 0x8

    if-eqz v1, :cond_7

    .line 618
    if-nez p3, :cond_2

    .line 624
    const/4 p3, 0x1

    .line 625
    if-ltz p5, :cond_6

    .line 626
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v2, 0x0

    invoke-virtual {v1, p5, v2}, Ljavassist/bytecode/Bytecode;->write(II)V

    .line 631
    :cond_2
    :goto_1
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, v6, p2, v4}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :goto_2
    invoke-virtual {p0, v4, p3, v8}, Ljavassist/compiler/MemberCodeGen;->setReturnType(Ljava/lang/String;ZZ)V

    .line 650
    return-void

    .line 600
    .end local v8    # "popTarget":Z
    :cond_3
    invoke-static {v7}, Ljavassist/bytecode/AccessFlag;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    if-ne v6, v1, :cond_4

    .line 602
    const/4 p4, 0x1

    goto :goto_0

    .line 604
    :cond_4
    const/4 p4, 0x0

    .line 605
    const/4 p3, 0x1

    .line 606
    move-object v3, v4

    .line 607
    .local v3, "origDesc":Ljava/lang/String;
    and-int/lit8 v1, v7, 0x8

    if-nez v1, :cond_5

    .line 608
    invoke-virtual {v6}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljavassist/bytecode/Descriptor;->insertParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 611
    :cond_5
    invoke-static {v7}, Ljavassist/bytecode/AccessFlag;->setPackage(I)I

    move-result v1

    or-int/lit8 v7, v1, 0x8

    move-object v1, p0

    move-object v2, p2

    .line 612
    invoke-virtual/range {v1 .. v6}, Ljavassist/compiler/MemberCodeGen;->getAccessiblePrivate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 628
    .end local v3    # "origDesc":Ljava/lang/String;
    .restart local v8    # "popTarget":Z
    :cond_6
    const/4 v8, 0x1

    goto :goto_1

    .line 633
    :cond_7
    if-eqz p4, :cond_8

    .line 634
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, v6, p2, v4}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 636
    :cond_8
    invoke-virtual {v6}, Ljavassist/CtClass;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljavassist/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v6}, Ljavassist/CtClass;->isInterface()Z

    move-result v1

    invoke-virtual {p1}, Ljavassist/CtClass;->isInterface()Z

    move-result v2

    if-eq v1, v2, :cond_a

    .line 638
    :cond_9
    move-object v6, p1

    .line 640
    :cond_a
    invoke-virtual {v6}, Ljavassist/CtClass;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 641
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    move/from16 v0, p6

    invoke-virtual {v1, v6, p2, v4, v0}, Ljavassist/bytecode/Bytecode;->addInvokeinterface(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 643
    :cond_b
    if-eqz p3, :cond_c

    .line 644
    new-instance v1, Ljavassist/compiler/CompileError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " is not static"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 646
    :cond_c
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, v6, p2, v4}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private atNewArrayExpr2(ILjavassist/compiler/ast/ASTree;Ljava/lang/String;Ljavassist/compiler/ast/ArrayInit;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "sizeExpr"    # Ljavassist/compiler/ast/ASTree;
    .param p3, "jvmClassname"    # Ljava/lang/String;
    .param p4, "init"    # Ljavassist/compiler/ast/ArrayInit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 332
    if-nez p4, :cond_2

    .line 333
    if-nez p2, :cond_0

    .line 334
    new-instance v5, Ljavassist/compiler/CompileError;

    const-string v6, "no array size"

    invoke-direct {v5, v6}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 336
    :cond_0
    invoke-virtual {p2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 346
    :goto_0
    const/16 v5, 0x133

    if-ne p1, v5, :cond_4

    .line 347
    invoke-virtual {p0, p3}, Ljavassist/compiler/MemberCodeGen;->resolveClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "elementClass":Ljava/lang/String;
    iget-object v5, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-static {v1}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavassist/bytecode/Bytecode;->addAnewarray(Ljava/lang/String;)V

    .line 387
    :goto_1
    if-eqz p4, :cond_5

    .line 388
    invoke-virtual {p4}, Ljavassist/compiler/ast/ArrayInit;->length()I

    move-result v4

    .line 389
    .local v4, "s":I
    move-object v3, p4

    .line 390
    .local v3, "list":Ljavassist/compiler/ast/ASTList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v4, :cond_5

    .line 391
    iget-object v5, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v6, 0x59

    invoke-virtual {v5, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 392
    iget-object v5, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v2}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 393
    invoke-virtual {v3}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 394
    invoke-static {p1}, Ljavassist/compiler/MemberCodeGen;->isRefType(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 395
    iget v5, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    invoke-virtual {p0, v5, p1}, Ljavassist/compiler/MemberCodeGen;->atNumCastExpr(II)V

    .line 397
    :cond_1
    iget-object v5, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v6, 0x0

    invoke-static {p1, v6}, Ljavassist/compiler/MemberCodeGen;->getArrayWriteOp(II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 398
    invoke-virtual {v3}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v3

    .line 390
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 338
    .end local v1    # "elementClass":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "list":Ljavassist/compiler/ast/ASTList;
    .end local v4    # "s":I
    :cond_2
    if-nez p2, :cond_3

    .line 339
    invoke-virtual {p4}, Ljavassist/compiler/ast/ArrayInit;->length()I

    move-result v4

    .line 340
    .restart local v4    # "s":I
    iget-object v5, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v4}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    goto :goto_0

    .line 343
    .end local v4    # "s":I
    :cond_3
    new-instance v5, Ljavassist/compiler/CompileError;

    const-string v6, "unnecessary array size specified for new"

    invoke-direct {v5, v6}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 351
    :cond_4
    const/4 v1, 0x0

    .line 352
    .restart local v1    # "elementClass":Ljava/lang/String;
    const/4 v0, 0x0

    .line 353
    .local v0, "atype":I
    sparse-switch p1, :sswitch_data_0

    .line 379
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->badNewExpr()V

    .line 383
    :goto_3
    iget-object v5, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v6, 0xbc

    invoke-virtual {v5, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 384
    iget-object v5, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_1

    .line 355
    :sswitch_0
    const/4 v0, 0x4

    .line 356
    goto :goto_3

    .line 358
    :sswitch_1
    const/4 v0, 0x5

    .line 359
    goto :goto_3

    .line 361
    :sswitch_2
    const/4 v0, 0x6

    .line 362
    goto :goto_3

    .line 364
    :sswitch_3
    const/4 v0, 0x7

    .line 365
    goto :goto_3

    .line 367
    :sswitch_4
    const/16 v0, 0x8

    .line 368
    goto :goto_3

    .line 370
    :sswitch_5
    const/16 v0, 0x9

    .line 371
    goto :goto_3

    .line 373
    :sswitch_6
    const/16 v0, 0xa

    .line 374
    goto :goto_3

    .line 376
    :sswitch_7
    const/16 v0, 0xb

    .line 377
    goto :goto_3

    .line 402
    .end local v0    # "atype":I
    :cond_5
    iput p1, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 403
    const/4 v5, 0x1

    iput v5, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    .line 404
    iput-object v1, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    .line 405
    return-void

    .line 353
    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_0
        0x12f -> :sswitch_4
        0x132 -> :sswitch_1
        0x138 -> :sswitch_3
        0x13d -> :sswitch_2
        0x144 -> :sswitch_6
        0x146 -> :sswitch_7
        0x14e -> :sswitch_5
    .end sparse-switch
.end method

.method private static badLvalue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 1095
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "bad l-value"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static badMethod()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 528
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "bad method"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static badNewExpr()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 408
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "bad new expression"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isAccessibleField(Ljavassist/CtField;Ljavassist/bytecode/FieldInfo;)Ljavassist/compiler/AccessorMaker;
    .locals 5
    .param p1, "f"    # Ljavassist/CtField;
    .param p2, "finfo"    # Ljavassist/bytecode/FieldInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 918
    invoke-virtual {p2}, Ljavassist/bytecode/FieldInfo;->getAccessFlags()I

    move-result v2

    invoke-static {v2}, Ljavassist/bytecode/AccessFlag;->isPrivate(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v2

    iget-object v3, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    if-eq v2, v3, :cond_2

    .line 920
    invoke-virtual {p1}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    .line 921
    .local v0, "declClass":Ljavassist/CtClass;
    iget-object v2, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    invoke-direct {p0, v0, v2}, Ljavassist/compiler/MemberCodeGen;->isEnclosing(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 922
    invoke-virtual {v0}, Ljavassist/CtClass;->getAccessorMaker()Ljavassist/compiler/AccessorMaker;

    move-result-object v1

    .line 923
    .local v1, "maker":Ljavassist/compiler/AccessorMaker;
    if-eqz v1, :cond_0

    .line 933
    .end local v0    # "declClass":Ljavassist/CtClass;
    .end local v1    # "maker":Ljavassist/compiler/AccessorMaker;
    :goto_0
    return-object v1

    .line 926
    .restart local v0    # "declClass":Ljavassist/CtClass;
    .restart local v1    # "maker":Ljavassist/compiler/AccessorMaker;
    :cond_0
    new-instance v2, Ljavassist/compiler/CompileError;

    const-string v3, "fatal error.  bug?"

    invoke-direct {v2, v3}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 929
    .end local v1    # "maker":Ljavassist/compiler/AccessorMaker;
    :cond_1
    new-instance v2, Ljavassist/compiler/CompileError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is private."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 933
    .end local v0    # "declClass":Ljavassist/CtClass;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isEnclosing(Ljavassist/CtClass;Ljavassist/CtClass;)Z
    .locals 1
    .param p1, "outer"    # Ljavassist/CtClass;
    .param p2, "inner"    # Ljavassist/CtClass;

    .prologue
    .line 700
    :cond_0
    if-eqz p2, :cond_1

    .line 701
    :try_start_0
    invoke-virtual {p2}, Ljavassist/CtClass;->getDeclaringClass()Ljavassist/CtClass;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 702
    if-ne p2, p1, :cond_0

    .line 703
    const/4 v0, 0x1

    .line 707
    :goto_0
    return v0

    .line 706
    :catch_0
    move-exception v0

    .line 707
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFieldType(Ljavassist/bytecode/FieldInfo;)Z
    .locals 8
    .param p1, "finfo"    # Ljavassist/bytecode/FieldInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 942
    invoke-virtual {p1}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    .line 944
    .local v4, "type":Ljava/lang/String;
    const/4 v2, 0x0

    .line 945
    .local v2, "i":I
    const/4 v1, 0x0

    .line 946
    .local v1, "dim":I
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 947
    .local v0, "c":C
    :goto_0
    const/16 v5, 0x5b

    if-ne v0, v5, :cond_0

    .line 948
    add-int/lit8 v1, v1, 0x1

    .line 949
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 952
    :cond_0
    iput v1, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    .line 953
    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result v5

    iput v5, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 955
    const/16 v5, 0x4c

    if-ne v0, v5, :cond_2

    .line 956
    add-int/lit8 v5, v2, 0x1

    const/16 v6, 0x3b

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    .line 960
    :goto_1
    if-nez v1, :cond_3

    const/16 v5, 0x4a

    if-eq v0, v5, :cond_1

    const/16 v5, 0x44

    if-ne v0, v5, :cond_3

    :cond_1
    const/4 v3, 0x1

    .line 961
    .local v3, "is2byte":Z
    :goto_2
    return v3

    .line 958
    .end local v3    # "is2byte":Z
    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    goto :goto_1

    .line 960
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method


# virtual methods
.method public atArrayInit(Ljavassist/compiler/ast/ArrayInit;)V
    .locals 2
    .param p1, "init"    # Ljavassist/compiler/ast/ArrayInit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 417
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "array initializer is not supported"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected atArrayVariableAssign(Ljavassist/compiler/ast/ArrayInit;IILjava/lang/String;)V
    .locals 1
    .param p1, "init"    # Ljavassist/compiler/ast/ArrayInit;
    .param p2, "varType"    # I
    .param p3, "varArray"    # I
    .param p4, "varClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 413
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4, p1}, Ljavassist/compiler/MemberCodeGen;->atNewArrayExpr2(ILjavassist/compiler/ast/ASTree;Ljava/lang/String;Ljavassist/compiler/ast/ArrayInit;)V

    .line 414
    return-void
.end method

.method public atCallExpr(Ljavassist/compiler/ast/CallExpr;)V
    .locals 15
    .param p1, "expr"    # Ljavassist/compiler/ast/CallExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 450
    const/4 v2, 0x0

    .line 451
    .local v2, "mname":Ljava/lang/String;
    const/4 v1, 0x0

    .line 452
    .local v1, "targetClass":Ljavassist/CtClass;
    invoke-virtual/range {p1 .. p1}, Ljavassist/compiler/ast/CallExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v9

    .line 453
    .local v9, "method":Ljavassist/compiler/ast/ASTree;
    invoke-virtual/range {p1 .. p1}, Ljavassist/compiler/ast/CallExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    check-cast v3, Ljavassist/compiler/ast/ASTList;

    .line 454
    .local v3, "args":Ljavassist/compiler/ast/ASTList;
    const/4 v4, 0x0

    .line 455
    .local v4, "isStatic":Z
    const/4 v5, 0x0

    .line 456
    .local v5, "isSpecial":Z
    const/4 v6, -0x1

    .line 458
    .local v6, "aload0pos":I
    invoke-virtual/range {p1 .. p1}, Ljavassist/compiler/ast/CallExpr;->getMethod()Ljavassist/compiler/MemberResolver$Method;

    move-result-object v7

    .line 459
    .local v7, "cached":Ljavassist/compiler/MemberResolver$Method;
    instance-of v0, v9, Ljavassist/compiler/ast/Member;

    if-eqz v0, :cond_3

    .line 460
    check-cast v9, Ljavassist/compiler/ast/Member;

    .end local v9    # "method":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {v9}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v2

    .line 461
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    .line 462
    iget-boolean v0, p0, Ljavassist/compiler/MemberCodeGen;->inStaticMethod:Z

    if-nez v0, :cond_0

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljavassist/compiler/MemberResolver$Method;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 463
    :cond_0
    const/4 v4, 0x1

    :cond_1
    :goto_0
    move-object v0, p0

    .line 523
    invoke-virtual/range {v0 .. v7}, Ljavassist/compiler/MemberCodeGen;->atMethodCallCore(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/compiler/ast/ASTList;ZZILjavassist/compiler/MemberResolver$Method;)V

    .line 525
    return-void

    .line 465
    :cond_2
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v6

    .line 466
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    goto :goto_0

    .line 469
    .restart local v9    # "method":Ljavassist/compiler/ast/ASTree;
    :cond_3
    instance-of v0, v9, Ljavassist/compiler/ast/Keyword;

    if-eqz v0, :cond_5

    .line 470
    const/4 v5, 0x1

    .line 471
    const-string v2, "<init>"

    .line 472
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    .line 473
    iget-boolean v0, p0, Ljavassist/compiler/MemberCodeGen;->inStaticMethod:Z

    if-eqz v0, :cond_4

    .line 474
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v13, "a constructor cannot be static"

    invoke-direct {v0, v13}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_4
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 478
    check-cast v9, Ljavassist/compiler/ast/Keyword;

    .end local v9    # "method":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {v9}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result v0

    const/16 v13, 0x150

    if-ne v0, v13, :cond_1

    .line 479
    invoke-static {v1}, Ljavassist/compiler/MemberResolver;->getSuperclass(Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v1

    goto :goto_0

    .line 481
    .restart local v9    # "method":Ljavassist/compiler/ast/ASTree;
    :cond_5
    instance-of v0, v9, Ljavassist/compiler/ast/Expr;

    if-eqz v0, :cond_c

    move-object v8, v9

    .line 482
    check-cast v8, Ljavassist/compiler/ast/Expr;

    .line 483
    .local v8, "e":Ljavassist/compiler/ast/Expr;
    invoke-virtual {v8}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-virtual {v8}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v11

    .line 485
    .local v11, "op":I
    const/16 v0, 0x23

    if-ne v11, v0, :cond_6

    .line 486
    iget-object v13, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v8}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    invoke-virtual {v13, v0, v14}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v1

    .line 488
    const/4 v4, 0x1

    goto :goto_0

    .line 490
    :cond_6
    const/16 v0, 0x2e

    if-ne v11, v0, :cond_b

    .line 491
    invoke-virtual {v8}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v12

    .line 492
    .local v12, "target":Ljavassist/compiler/ast/ASTree;
    instance-of v0, v12, Ljavassist/compiler/ast/Keyword;

    if-eqz v0, :cond_7

    move-object v0, v12

    .line 493
    check-cast v0, Ljavassist/compiler/ast/Keyword;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result v0

    const/16 v13, 0x150

    if-ne v0, v13, :cond_7

    .line 494
    const/4 v5, 0x1

    .line 497
    :cond_7
    :try_start_0
    invoke-virtual {v12, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V
    :try_end_0
    .catch Ljavassist/compiler/NoFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :goto_1
    iget v0, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    if-lez v0, :cond_9

    .line 511
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    const-string v13, "java.lang.Object"

    const/4 v14, 0x1

    invoke-virtual {v0, v13, v14}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v1

    goto/16 :goto_0

    .line 499
    :catch_0
    move-exception v10

    .line 500
    .local v10, "nfe":Ljavassist/compiler/NoFieldException;
    invoke-virtual {v10}, Ljavassist/compiler/NoFieldException;->getExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    if-eq v0, v12, :cond_8

    .line 501
    throw v10

    .line 504
    :cond_8
    const/16 v0, 0x133

    iput v0, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 505
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    .line 506
    invoke-virtual {v10}, Ljavassist/compiler/NoFieldException;->getField()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    .line 507
    const/4 v4, 0x1

    goto :goto_1

    .line 512
    .end local v10    # "nfe":Ljavassist/compiler/NoFieldException;
    :cond_9
    iget v0, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    const/16 v13, 0x133

    if-ne v0, v13, :cond_a

    .line 513
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    iget-object v13, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljavassist/compiler/MemberResolver;->lookupClassByJvmName(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    goto/16 :goto_0

    .line 515
    :cond_a
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->badMethod()V

    goto/16 :goto_0

    .line 518
    .end local v12    # "target":Ljavassist/compiler/ast/ASTree;
    :cond_b
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->badMethod()V

    goto/16 :goto_0

    .line 521
    .end local v8    # "e":Ljavassist/compiler/ast/Expr;
    .end local v11    # "op":I
    :cond_c
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->fatal()V

    goto/16 :goto_0
.end method

.method protected atClassObject2(Ljava/lang/String;)V
    .locals 2
    .param p1, "cname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 974
    invoke-virtual {p0}, Ljavassist/compiler/MemberCodeGen;->getMajorVersion()I

    move-result v0

    const/16 v1, 0x31

    if-ge v0, v1, :cond_0

    .line 975
    invoke-super {p0, p1}, Ljavassist/compiler/CodeGen;->atClassObject2(Ljava/lang/String;)V

    .line 978
    :goto_0
    return-void

    .line 977
    :cond_0
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/Bytecode;->addLdc(I)V

    goto :goto_0
.end method

.method protected atFieldAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Z)V
    .locals 15
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .param p2, "op"    # I
    .param p3, "left"    # Ljavassist/compiler/ast/ASTree;
    .param p4, "right"    # Ljavassist/compiler/ast/ASTree;
    .param p5, "doDup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 777
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v1}, Ljavassist/compiler/MemberCodeGen;->fieldAccess(Ljavassist/compiler/ast/ASTree;Z)Ljavassist/CtField;

    move-result-object v9

    .line 778
    .local v9, "f":Ljavassist/CtField;
    iget-boolean v13, p0, Ljavassist/compiler/MemberCodeGen;->resultStatic:Z

    .line 779
    .local v13, "is_static":Z
    const/16 v1, 0x3d

    move/from16 v0, p2

    if-eq v0, v1, :cond_0

    if-nez v13, :cond_0

    .line 780
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 783
    :cond_0
    const/16 v1, 0x3d

    move/from16 v0, p2

    if-ne v0, v1, :cond_3

    .line 784
    invoke-virtual {v9}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v11

    .line 785
    .local v11, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-direct {p0, v11}, Ljavassist/compiler/MemberCodeGen;->setFieldType(Ljavassist/bytecode/FieldInfo;)Z

    .line 786
    invoke-direct {p0, v9, v11}, Ljavassist/compiler/MemberCodeGen;->isAccessibleField(Ljavassist/CtField;Ljavassist/bytecode/FieldInfo;)Ljavassist/compiler/AccessorMaker;

    move-result-object v14

    .line 787
    .local v14, "maker":Ljavassist/compiler/AccessorMaker;
    if-nez v14, :cond_2

    .line 788
    invoke-direct {p0, v9, v11}, Ljavassist/compiler/MemberCodeGen;->addFieldrefInfo(Ljavassist/CtField;Ljavassist/bytecode/FieldInfo;)I

    move-result v10

    .line 795
    .end local v11    # "finfo":Ljavassist/bytecode/FieldInfo;
    .end local v14    # "maker":Ljavassist/compiler/AccessorMaker;
    .local v10, "fi":I
    :goto_0
    iget v5, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 796
    .local v5, "fType":I
    iget v6, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    .line 797
    .local v6, "fDim":I
    iget-object v7, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    .local v7, "cname":Ljava/lang/String;
    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    .line 799
    invoke-virtual/range {v1 .. v7}, Ljavassist/compiler/MemberCodeGen;->atAssignCore(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;IILjava/lang/String;)V

    .line 801
    invoke-static {v5, v6}, Ljavassist/compiler/MemberCodeGen;->is2word(II)Z

    move-result v12

    .line 802
    .local v12, "is2w":Z
    if-eqz p5, :cond_1

    .line 804
    if-eqz v13, :cond_5

    .line 805
    if-eqz v12, :cond_4

    const/16 v8, 0x5c

    .line 809
    .local v8, "dup_code":I
    :goto_1
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, v8}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 812
    .end local v8    # "dup_code":I
    :cond_1
    invoke-direct {p0, v9, v13, v10, v12}, Ljavassist/compiler/MemberCodeGen;->atFieldAssignCore(Ljavassist/CtField;ZIZ)V

    .line 814
    iput v5, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 815
    iput v6, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    .line 816
    iput-object v7, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    .line 817
    return-void

    .line 790
    .end local v5    # "fType":I
    .end local v6    # "fDim":I
    .end local v7    # "cname":Ljava/lang/String;
    .end local v10    # "fi":I
    .end local v12    # "is2w":Z
    .restart local v11    # "finfo":Ljavassist/bytecode/FieldInfo;
    .restart local v14    # "maker":Ljavassist/compiler/AccessorMaker;
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "fi":I
    goto :goto_0

    .line 793
    .end local v10    # "fi":I
    .end local v11    # "finfo":Ljavassist/bytecode/FieldInfo;
    .end local v14    # "maker":Ljavassist/compiler/AccessorMaker;
    :cond_3
    invoke-direct {p0, v9, v13}, Ljavassist/compiler/MemberCodeGen;->atFieldRead(Ljavassist/CtField;Z)I

    move-result v10

    .restart local v10    # "fi":I
    goto :goto_0

    .line 805
    .restart local v5    # "fType":I
    .restart local v6    # "fDim":I
    .restart local v7    # "cname":Ljava/lang/String;
    .restart local v12    # "is2w":Z
    :cond_4
    const/16 v8, 0x59

    goto :goto_1

    .line 807
    :cond_5
    if-eqz v12, :cond_6

    const/16 v8, 0x5d

    .restart local v8    # "dup_code":I
    :goto_2
    goto :goto_1

    .end local v8    # "dup_code":I
    :cond_6
    const/16 v8, 0x5a

    goto :goto_2
.end method

.method protected atFieldPlusPlus(IZLjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/Expr;Z)V
    .locals 11
    .param p1, "token"    # I
    .param p2, "isPost"    # Z
    .param p3, "oprand"    # Ljavassist/compiler/ast/ASTree;
    .param p4, "expr"    # Ljavassist/compiler/ast/Expr;
    .param p5, "doDup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 984
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Ljavassist/compiler/MemberCodeGen;->fieldAccess(Ljavassist/compiler/ast/ASTree;Z)Ljavassist/CtField;

    move-result-object v6

    .line 985
    .local v6, "f":Ljavassist/CtField;
    iget-boolean v9, p0, Ljavassist/compiler/MemberCodeGen;->resultStatic:Z

    .line 986
    .local v9, "is_static":Z
    if-nez v9, :cond_0

    .line 987
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v2, 0x59

    invoke-virtual {v0, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 989
    :cond_0
    invoke-direct {p0, v6, v9}, Ljavassist/compiler/MemberCodeGen;->atFieldRead(Ljavassist/CtField;Z)I

    move-result v7

    .line 990
    .local v7, "fi":I
    iget v10, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 991
    .local v10, "t":I
    iget v0, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    invoke-static {v10, v0}, Ljavassist/compiler/MemberCodeGen;->is2word(II)Z

    move-result v8

    .line 994
    .local v8, "is2w":Z
    if-eqz v9, :cond_2

    .line 995
    if-eqz v8, :cond_1

    const/16 v1, 0x5c

    .local v1, "dup_code":I
    :goto_0
    move-object v0, p0

    move/from16 v2, p5

    move v3, p1

    move v4, p2

    move-object v5, p4

    .line 999
    invoke-virtual/range {v0 .. v5}, Ljavassist/compiler/MemberCodeGen;->atPlusPlusCore(IZIZLjavassist/compiler/ast/Expr;)V

    .line 1000
    invoke-direct {p0, v6, v9, v7, v8}, Ljavassist/compiler/MemberCodeGen;->atFieldAssignCore(Ljavassist/CtField;ZIZ)V

    .line 1001
    return-void

    .line 995
    .end local v1    # "dup_code":I
    :cond_1
    const/16 v1, 0x59

    goto :goto_0

    .line 997
    :cond_2
    if-eqz v8, :cond_3

    const/16 v1, 0x5d

    .restart local v1    # "dup_code":I
    :goto_1
    goto :goto_0

    .end local v1    # "dup_code":I
    :cond_3
    const/16 v1, 0x5a

    goto :goto_1
.end method

.method protected atFieldRead(Ljavassist/compiler/ast/ASTree;)V
    .locals 4
    .param p1, "expr"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 854
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Ljavassist/compiler/MemberCodeGen;->fieldAccess(Ljavassist/compiler/ast/ASTree;Z)Ljavassist/CtField;

    move-result-object v1

    .line 855
    .local v1, "f":Ljavassist/CtField;
    if-nez v1, :cond_0

    .line 856
    invoke-direct {p0, p1}, Ljavassist/compiler/MemberCodeGen;->atArrayLength(Ljavassist/compiler/ast/ASTree;)V

    .line 868
    :goto_0
    return-void

    .line 860
    :cond_0
    iget-boolean v2, p0, Ljavassist/compiler/MemberCodeGen;->resultStatic:Z

    .line 861
    .local v2, "is_static":Z
    invoke-static {v1}, Ljavassist/compiler/TypeChecker;->getConstantFieldValue(Ljavassist/CtField;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 862
    .local v0, "cexpr":Ljavassist/compiler/ast/ASTree;
    if-nez v0, :cond_1

    .line 863
    invoke-direct {p0, v1, v2}, Ljavassist/compiler/MemberCodeGen;->atFieldRead(Ljavassist/CtField;Z)I

    goto :goto_0

    .line 865
    :cond_1
    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 866
    invoke-virtual {v1}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Ljavassist/compiler/MemberCodeGen;->setFieldType(Ljavassist/bytecode/FieldInfo;)Z

    goto :goto_0
.end method

.method public atMember(Ljavassist/compiler/ast/Member;)V
    .locals 0
    .param p1, "mem"    # Ljavassist/compiler/ast/Member;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 849
    invoke-virtual {p0, p1}, Ljavassist/compiler/MemberCodeGen;->atFieldRead(Ljavassist/compiler/ast/ASTree;)V

    .line 850
    return-void
.end method

.method public atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V
    .locals 3
    .param p1, "args"    # Ljavassist/compiler/ast/ASTList;
    .param p2, "types"    # [I
    .param p3, "dims"    # [I
    .param p4, "cnames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 716
    const/4 v1, 0x0

    .line 717
    .local v1, "i":I
    :goto_0
    if-eqz p1, :cond_0

    .line 718
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 719
    .local v0, "a":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 720
    iget v2, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    aput v2, p2, v1

    .line 721
    iget v2, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    aput v2, p3, v1

    .line 722
    iget-object v2, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    aput-object v2, p4, v1

    .line 723
    add-int/lit8 v1, v1, 0x1

    .line 724
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    .line 725
    goto :goto_0

    .line 726
    .end local v0    # "a":Ljavassist/compiler/ast/ASTree;
    :cond_0
    return-void
.end method

.method public atMethodCallCore(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/compiler/ast/ASTList;ZZILjavassist/compiler/MemberResolver$Method;)V
    .locals 21
    .param p1, "targetClass"    # Ljavassist/CtClass;
    .param p2, "mname"    # Ljava/lang/String;
    .param p3, "args"    # Ljavassist/compiler/ast/ASTList;
    .param p4, "isStatic"    # Z
    .param p5, "isSpecial"    # Z
    .param p6, "aload0pos"    # I
    .param p7, "found"    # Ljavassist/compiler/MemberResolver$Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 542
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljavassist/compiler/MemberCodeGen;->getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I

    move-result v19

    .line 543
    .local v19, "nargs":I
    move/from16 v0, v19

    new-array v7, v0, [I

    .line 544
    .local v7, "types":[I
    move/from16 v0, v19

    new-array v8, v0, [I

    .line 545
    .local v8, "dims":[I
    move/from16 v0, v19

    new-array v9, v0, [Ljava/lang/String;

    .line 547
    .local v9, "cnames":[Ljava/lang/String;
    if-nez p4, :cond_0

    if-eqz p7, :cond_0

    invoke-virtual/range {p7 .. p7}, Ljavassist/compiler/MemberResolver$Method;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v3, 0x57

    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 549
    const/16 p4, 0x1

    .line 552
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->getStackDepth()I

    move-result v20

    .line 555
    .local v20, "stack":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v7, v8, v9}, Ljavassist/compiler/MemberCodeGen;->atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->getStackDepth()I

    move-result v2

    sub-int v2, v2, v20

    add-int/lit8 v16, v2, 0x1

    .line 560
    .local v16, "count":I
    if-nez p7, :cond_1

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljavassist/compiler/MemberCodeGen;->thisMethod:Ljavassist/bytecode/MethodInfo;

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Ljavassist/compiler/MemberResolver;->lookupMethod(Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljava/lang/String;[I[I[Ljava/lang/String;)Ljavassist/compiler/MemberResolver$Method;

    move-result-object p7

    .line 564
    :cond_1
    if-nez p7, :cond_3

    .line 566
    const-string v2, "<init>"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 567
    const-string v18, "constructor not found"

    .line 572
    .local v18, "msg":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljavassist/compiler/CompileError;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 569
    .end local v18    # "msg":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "msg":Ljava/lang/String;
    goto :goto_0

    .end local v18    # "msg":Ljava/lang/String;
    :cond_3
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v17, p7

    .line 575
    invoke-direct/range {v10 .. v17}, Ljavassist/compiler/MemberCodeGen;->atMethodCallCore2(Ljavassist/CtClass;Ljava/lang/String;ZZIILjavassist/compiler/MemberResolver$Method;)V

    .line 577
    return-void
.end method

.method protected atMultiNewArray(ILjavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "classname"    # Ljavassist/compiler/ast/ASTList;
    .param p3, "size"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 424
    invoke-virtual {p3}, Ljavassist/compiler/ast/ASTList;->length()I

    move-result v2

    .line 425
    .local v2, "dim":I
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_0
    if-eqz p3, :cond_0

    .line 426
    invoke-virtual {p3}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    .line 427
    .local v3, "s":Ljavassist/compiler/ast/ASTree;
    if-nez v3, :cond_1

    .line 437
    .end local v3    # "s":Ljavassist/compiler/ast/ASTree;
    :cond_0
    iput p1, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 438
    iput v2, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    .line 439
    const/16 v4, 0x133

    if-ne p1, v4, :cond_3

    .line 440
    invoke-virtual {p0, p2}, Ljavassist/compiler/MemberCodeGen;->resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    .line 441
    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    invoke-static {v4, v2}, Ljavassist/compiler/MemberCodeGen;->toJvmArrayName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "desc":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4, v1, v0}, Ljavassist/bytecode/Bytecode;->addMultiNewarray(Ljava/lang/String;I)I

    .line 447
    return-void

    .line 430
    .end local v1    # "desc":Ljava/lang/String;
    .restart local v3    # "s":Ljavassist/compiler/ast/ASTree;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 431
    invoke-virtual {v3, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 432
    iget v4, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    const/16 v5, 0x144

    if-eq v4, v5, :cond_2

    .line 433
    new-instance v4, Ljavassist/compiler/CompileError;

    const-string v5, "bad type for array size"

    invoke-direct {v4, v5}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 425
    :cond_2
    invoke-virtual {p3}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p3

    goto :goto_0

    .line 444
    .end local v3    # "s":Ljavassist/compiler/ast/ASTree;
    :cond_3
    invoke-static {p1, v2}, Ljavassist/compiler/MemberCodeGen;->toJvmTypeName(II)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "desc":Ljava/lang/String;
    goto :goto_1
.end method

.method public atNewArrayExpr(Ljavassist/compiler/ast/NewExpr;)V
    .locals 7
    .param p1, "expr"    # Ljavassist/compiler/ast/NewExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getArrayType()I

    move-result v4

    .line 313
    .local v4, "type":I
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getArraySize()Ljavassist/compiler/ast/ASTList;

    move-result-object v2

    .line 314
    .local v2, "size":Ljavassist/compiler/ast/ASTList;
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getClassName()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    .line 315
    .local v0, "classname":Ljavassist/compiler/ast/ASTList;
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getInitializer()Ljavassist/compiler/ast/ArrayInit;

    move-result-object v1

    .line 316
    .local v1, "init":Ljavassist/compiler/ast/ArrayInit;
    invoke-virtual {v2}, Ljavassist/compiler/ast/ASTList;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 317
    if-eqz v1, :cond_0

    .line 318
    new-instance v5, Ljavassist/compiler/CompileError;

    const-string v6, "sorry, multi-dimensional array initializer for new is not supported"

    invoke-direct {v5, v6}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 322
    :cond_0
    invoke-virtual {p0, v4, v0, v2}, Ljavassist/compiler/MemberCodeGen;->atMultiNewArray(ILjavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)V

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_1
    invoke-virtual {v2}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    .line 327
    .local v3, "sizeExpr":Ljavassist/compiler/ast/ASTree;
    const/16 v5, 0x2f

    invoke-static {v0, v5}, Ljavassist/compiler/ast/Declarator;->astToClassName(Ljavassist/compiler/ast/ASTList;C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v3, v5, v1}, Ljavassist/compiler/MemberCodeGen;->atNewArrayExpr2(ILjavassist/compiler/ast/ASTree;Ljava/lang/String;Ljavassist/compiler/ast/ArrayInit;)V

    goto :goto_0
.end method

.method public atNewExpr(Ljavassist/compiler/ast/NewExpr;)V
    .locals 9
    .param p1, "expr"    # Ljavassist/compiler/ast/NewExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 293
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0, p1}, Ljavassist/compiler/MemberCodeGen;->atNewArrayExpr(Ljavassist/compiler/ast/NewExpr;)V

    .line 309
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getClassName()Ljavassist/compiler/ast/ASTList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavassist/compiler/MemberResolver;->lookupClassByName(Ljavassist/compiler/ast/ASTList;)Ljavassist/CtClass;

    move-result-object v1

    .line 297
    .local v1, "clazz":Ljavassist/CtClass;
    invoke-virtual {v1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v8

    .line 298
    .local v8, "cname":Ljava/lang/String;
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getArguments()Ljavassist/compiler/ast/ASTList;

    move-result-object v3

    .line 299
    .local v3, "args":Ljavassist/compiler/ast/ASTList;
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v8}, Ljavassist/bytecode/Bytecode;->addNew(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v2, 0x59

    invoke-virtual {v0, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 302
    const-string v2, "<init>"

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Ljavassist/compiler/MemberCodeGen;->atMethodCallCore(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/compiler/ast/ASTList;ZZILjavassist/compiler/MemberResolver$Method;)V

    .line 305
    const/16 v0, 0x133

    iput v0, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 306
    iput v4, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    .line 307
    invoke-static {v8}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    goto :goto_0
.end method

.method protected atTryStmnt(Ljavassist/compiler/ast/Stmnt;)V
    .locals 20
    .param p1, "st"    # Ljavassist/compiler/ast/Stmnt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    .line 191
    .local v2, "bc":Ljavassist/bytecode/Bytecode;
    invoke-virtual/range {p1 .. p1}, Ljavassist/compiler/ast/Stmnt;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    check-cast v4, Ljavassist/compiler/ast/Stmnt;

    .line 192
    .local v4, "body":Ljavassist/compiler/ast/Stmnt;
    if-nez v4, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljavassist/compiler/ast/Stmnt;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavassist/compiler/ast/ASTree;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v5

    check-cast v5, Ljavassist/compiler/ast/ASTList;

    .line 196
    .local v5, "catchList":Ljavassist/compiler/ast/ASTList;
    invoke-virtual/range {p1 .. p1}, Ljavassist/compiler/ast/Stmnt;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavassist/compiler/ast/ASTree;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavassist/compiler/ast/ASTree;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v8

    check-cast v8, Ljavassist/compiler/ast/Stmnt;

    .line 197
    .local v8, "finallyBlock":Ljavassist/compiler/ast/Stmnt;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v9, "gotoList":Ljava/util/ArrayList;
    const/4 v10, 0x0

    .line 200
    .local v10, "jsrHook":Ljavassist/compiler/MemberCodeGen$JsrHook;
    if-eqz v8, :cond_2

    .line 201
    new-instance v10, Ljavassist/compiler/MemberCodeGen$JsrHook;

    .end local v10    # "jsrHook":Ljavassist/compiler/MemberCodeGen$JsrHook;
    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljavassist/compiler/MemberCodeGen$JsrHook;-><init>(Ljavassist/compiler/CodeGen;)V

    .line 203
    .restart local v10    # "jsrHook":Ljavassist/compiler/MemberCodeGen$JsrHook;
    :cond_2
    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v14

    .line 204
    .local v14, "start":I
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 205
    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v7

    .line 206
    .local v7, "end":I
    if-ne v14, v7, :cond_3

    .line 207
    new-instance v18, Ljavassist/compiler/CompileError;

    const-string v19, "empty try block"

    invoke-direct/range {v18 .. v19}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v18

    .line 209
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavassist/compiler/MemberCodeGen;->hasReturned:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    const/4 v15, 0x1

    .line 210
    .local v15, "tryNotReturn":Z
    :goto_1
    if-eqz v15, :cond_4

    .line 211
    const/16 v18, 0xa7

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 212
    new-instance v18, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 216
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljavassist/compiler/MemberCodeGen;->getMaxLocals()I

    move-result v17

    .line 217
    .local v17, "var":I
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljavassist/compiler/MemberCodeGen;->incMaxLocals(I)V

    .line 218
    :cond_5
    :goto_2
    if-eqz v5, :cond_8

    .line 220
    invoke-virtual {v5}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v11

    check-cast v11, Ljavassist/compiler/ast/Pair;

    .line 221
    .local v11, "p":Ljavassist/compiler/ast/Pair;
    invoke-virtual {v5}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v5

    .line 222
    invoke-virtual {v11}, Ljavassist/compiler/ast/Pair;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v6

    check-cast v6, Ljavassist/compiler/ast/Declarator;

    .line 223
    .local v6, "decl":Ljavassist/compiler/ast/Declarator;
    invoke-virtual {v11}, Ljavassist/compiler/ast/Pair;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    check-cast v3, Ljavassist/compiler/ast/Stmnt;

    .line 225
    .local v3, "block":Ljavassist/compiler/ast/Stmnt;
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljavassist/compiler/ast/Declarator;->setLocalVar(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Ljavassist/compiler/ast/Declarator;->getClassName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljavassist/compiler/MemberResolver;->lookupClassByJvmName(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v16

    .line 228
    .local v16, "type":Ljavassist/CtClass;
    invoke-virtual/range {v16 .. v16}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljavassist/compiler/ast/Declarator;->setClassName(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v2, v14, v7, v0, v1}, Ljavassist/bytecode/Bytecode;->addExceptionHandler(IIILjavassist/CtClass;)V

    .line 230
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 231
    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 232
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavassist/compiler/MemberCodeGen;->hasReturned:Z

    .line 233
    if-eqz v3, :cond_6

    .line 234
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 236
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavassist/compiler/MemberCodeGen;->hasReturned:Z

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 237
    const/16 v18, 0xa7

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 238
    new-instance v18, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 240
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 209
    .end local v3    # "block":Ljavassist/compiler/ast/Stmnt;
    .end local v6    # "decl":Ljavassist/compiler/ast/Declarator;
    .end local v11    # "p":Ljavassist/compiler/ast/Pair;
    .end local v15    # "tryNotReturn":Z
    .end local v16    # "type":Ljavassist/CtClass;
    .end local v17    # "var":I
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 244
    .restart local v15    # "tryNotReturn":Z
    .restart local v17    # "var":I
    :cond_8
    if-eqz v8, :cond_a

    .line 245
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljavassist/compiler/MemberCodeGen$JsrHook;->remove(Ljavassist/compiler/CodeGen;)V

    .line 247
    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v12

    .line 248
    .local v12, "pcAnyCatch":I
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v14, v12, v12, v0}, Ljavassist/bytecode/Bytecode;->addExceptionHandler(IIII)V

    .line 249
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 250
    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 251
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavassist/compiler/MemberCodeGen;->hasReturned:Z

    .line 252
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 253
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavassist/compiler/MemberCodeGen;->hasReturned:Z

    move/from16 v18, v0

    if-nez v18, :cond_9

    .line 254
    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 255
    const/16 v18, 0xbf

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 258
    :cond_9
    iget-object v0, v10, Ljavassist/compiler/MemberCodeGen$JsrHook;->jsrList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Ljavassist/compiler/MemberCodeGen;->addFinally(Ljava/util/ArrayList;Ljavassist/compiler/ast/Stmnt;)V

    .line 261
    .end local v12    # "pcAnyCatch":I
    :cond_a
    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v13

    .line 262
    .local v13, "pcEnd":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Ljavassist/compiler/MemberCodeGen;->patchGoto(Ljava/util/ArrayList;I)V

    .line 263
    if-nez v15, :cond_b

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavassist/compiler/MemberCodeGen;->hasReturned:Z

    .line 264
    if-eqz v8, :cond_0

    .line 265
    if-eqz v15, :cond_0

    .line 266
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    goto/16 :goto_0

    .line 263
    :cond_b
    const/16 v18, 0x0

    goto :goto_3
.end method

.method protected fieldAccess(Ljavassist/compiler/ast/ASTree;Z)Ljavassist/CtField;
    .locals 12
    .param p1, "expr"    # Ljavassist/compiler/ast/ASTree;
    .param p2, "acceptLength"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1010
    instance-of v8, p1, Ljavassist/compiler/ast/Member;

    if-eqz v8, :cond_2

    move-object v8, p1

    .line 1011
    check-cast v8, Ljavassist/compiler/ast/Member;

    invoke-virtual {v8}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v5

    .line 1012
    .local v5, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1014
    .local v2, "f":Ljavassist/CtField;
    :try_start_0
    iget-object v8, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v8, v5}, Ljavassist/CtClass;->getField(Ljava/lang/String;)Ljavassist/CtField;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1021
    invoke-virtual {v2}, Ljavassist/CtField;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v4

    .line 1022
    .local v4, "is_static":Z
    if-nez v4, :cond_1

    .line 1023
    iget-boolean v8, p0, Ljavassist/compiler/MemberCodeGen;->inStaticMethod:Z

    if-eqz v8, :cond_0

    .line 1024
    new-instance v8, Ljavassist/compiler/CompileError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "not available in a static method: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1016
    .end local v4    # "is_static":Z
    :catch_0
    move-exception v1

    .line 1018
    .local v1, "e":Ljavassist/NotFoundException;
    new-instance v8, Ljavassist/compiler/NoFieldException;

    invoke-direct {v8, v5, p1}, Ljavassist/compiler/NoFieldException;-><init>(Ljava/lang/String;Ljavassist/compiler/ast/ASTree;)V

    throw v8

    .line 1027
    .end local v1    # "e":Ljavassist/NotFoundException;
    .restart local v4    # "is_static":Z
    :cond_0
    iget-object v8, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v8, v10}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1029
    :cond_1
    iput-boolean v4, p0, Ljavassist/compiler/MemberCodeGen;->resultStatic:Z

    .line 1091
    .end local v2    # "f":Ljavassist/CtField;
    .end local v4    # "is_static":Z
    .end local v5    # "name":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1032
    :cond_2
    instance-of v8, p1, Ljavassist/compiler/ast/Expr;

    if-eqz v8, :cond_9

    move-object v1, p1

    .line 1033
    check-cast v1, Ljavassist/compiler/ast/Expr;

    .line 1034
    .local v1, "e":Ljavassist/compiler/ast/Expr;
    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v7

    .line 1035
    .local v7, "op":I
    const/16 v8, 0x23

    if-ne v7, v8, :cond_3

    .line 1040
    iget-object v9, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v8

    check-cast v8, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v8}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v8

    check-cast v8, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v9, v10, v8}, Ljavassist/compiler/MemberResolver;->lookupField(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;)Ljavassist/CtField;

    move-result-object v2

    .line 1042
    .restart local v2    # "f":Ljavassist/CtField;
    iput-boolean v11, p0, Ljavassist/compiler/MemberCodeGen;->resultStatic:Z

    goto :goto_0

    .line 1045
    .end local v2    # "f":Ljavassist/CtField;
    :cond_3
    const/16 v8, 0x2e

    if-ne v7, v8, :cond_8

    .line 1046
    const/4 v2, 0x0

    .line 1048
    .restart local v2    # "f":Ljavassist/CtField;
    :try_start_1
    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 1053
    iget v8, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    const/16 v10, 0x133

    if-ne v8, v10, :cond_5

    iget v8, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    if-nez v8, :cond_5

    .line 1054
    iget-object v9, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    iget-object v10, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v8

    check-cast v8, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v9, v10, v8}, Ljavassist/compiler/MemberResolver;->lookupFieldByJvmName(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;)Ljavassist/CtField;

    move-result-object v2

    .line 1062
    :goto_1
    invoke-virtual {v2}, Ljavassist/CtField;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v4

    .line 1063
    .restart local v4    # "is_static":Z
    if-eqz v4, :cond_4

    .line 1064
    iget-object v8, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v9, 0x57

    invoke-virtual {v8, v9}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1066
    :cond_4
    iput-boolean v4, p0, Ljavassist/compiler/MemberCodeGen;->resultStatic:Z
    :try_end_1
    .catch Ljavassist/compiler/NoFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1069
    .end local v4    # "is_static":Z
    :catch_1
    move-exception v6

    .line 1070
    .local v6, "nfe":Ljavassist/compiler/NoFieldException;
    invoke-virtual {v6}, Ljavassist/compiler/NoFieldException;->getExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v8

    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v9

    if-eq v8, v9, :cond_7

    .line 1071
    throw v6

    .line 1056
    .end local v6    # "nfe":Ljavassist/compiler/NoFieldException;
    :cond_5
    if-eqz p2, :cond_6

    :try_start_2
    iget v8, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    if-lez v8, :cond_6

    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v8

    check-cast v8, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v8}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v8

    const-string v10, "length"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v2, v9

    .line 1058
    goto/16 :goto_0

    .line 1060
    :cond_6
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->badLvalue()V
    :try_end_2
    .catch Ljavassist/compiler/NoFieldException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1077
    .restart local v6    # "nfe":Ljavassist/compiler/NoFieldException;
    :cond_7
    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    check-cast v3, Ljavassist/compiler/ast/Symbol;

    .line 1078
    .local v3, "fname":Ljavassist/compiler/ast/Symbol;
    invoke-virtual {v6}, Ljavassist/compiler/NoFieldException;->getField()Ljava/lang/String;

    move-result-object v0

    .line 1079
    .local v0, "cname":Ljava/lang/String;
    iget-object v8, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v8, v0, v3, p1}, Ljavassist/compiler/MemberResolver;->lookupFieldByJvmName2(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField;

    move-result-object v2

    .line 1080
    iput-boolean v11, p0, Ljavassist/compiler/MemberCodeGen;->resultStatic:Z

    goto/16 :goto_0

    .line 1085
    .end local v0    # "cname":Ljava/lang/String;
    .end local v2    # "f":Ljavassist/CtField;
    .end local v3    # "fname":Ljavassist/compiler/ast/Symbol;
    .end local v6    # "nfe":Ljavassist/compiler/NoFieldException;
    :cond_8
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->badLvalue()V

    .line 1090
    .end local v1    # "e":Ljavassist/compiler/ast/Expr;
    .end local v7    # "op":I
    :goto_2
    iput-boolean v10, p0, Ljavassist/compiler/MemberCodeGen;->resultStatic:Z

    move-object v2, v9

    .line 1091
    goto/16 :goto_0

    .line 1088
    :cond_9
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->badLvalue()V

    goto :goto_2
.end method

.method protected getAccessibleConstructor(Ljava/lang/String;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "declClass"    # Ljavassist/CtClass;
    .param p3, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 688
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    invoke-direct {p0, p2, v1}, Ljavassist/compiler/MemberCodeGen;->isEnclosing(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 689
    invoke-virtual {p2}, Ljavassist/CtClass;->getAccessorMaker()Ljavassist/compiler/AccessorMaker;

    move-result-object v0

    .line 690
    .local v0, "maker":Ljavassist/compiler/AccessorMaker;
    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {v0, p2, p1, p3}, Ljavassist/compiler/AccessorMaker;->getConstructor(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 694
    .end local v0    # "maker":Ljavassist/compiler/AccessorMaker;
    :cond_0
    new-instance v1, Ljavassist/compiler/CompileError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the called constructor is private in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getAccessiblePrivate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)Ljava/lang/String;
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "newDesc"    # Ljava/lang/String;
    .param p4, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .param p5, "declClass"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 664
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    invoke-direct {p0, p5, v1}, Ljavassist/compiler/MemberCodeGen;->isEnclosing(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    invoke-virtual {p5}, Ljavassist/CtClass;->getAccessorMaker()Ljavassist/compiler/AccessorMaker;

    move-result-object v0

    .line 666
    .local v0, "maker":Ljavassist/compiler/AccessorMaker;
    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {v0, p1, p2, p3, p4}, Ljavassist/compiler/AccessorMaker;->getMethodAccessor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 671
    .end local v0    # "maker":Ljavassist/compiler/AccessorMaker;
    :cond_0
    new-instance v1, Ljavassist/compiler/CompileError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is private"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMajorVersion()I
    .locals 2

    .prologue
    .line 46
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v1}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 47
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    if-nez v0, :cond_0

    .line 48
    sget v1, Ljavassist/bytecode/ClassFile;->MAJOR_VERSION:I

    .line 50
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getMajorVersion()I

    move-result v1

    goto :goto_0
.end method

.method public getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I
    .locals 1
    .param p1, "args"    # Ljavassist/compiler/ast/ASTList;

    .prologue
    .line 711
    invoke-static {p1}, Ljavassist/compiler/ast/ASTList;->length(Ljavassist/compiler/ast/ASTList;)I

    move-result v0

    return v0
.end method

.method protected getSuperName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->getSuperclass(Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThisClass()Ljavassist/CtClass;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    return-object v0
.end method

.method protected getThisName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected insertDefaultSuperCall()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 81
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    invoke-static {v1}, Ljavassist/compiler/MemberResolver;->getSuperclass(Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v1

    const-string v2, "<init>"

    const-string v3, "()V"

    invoke-virtual {v0, v1, v2, v3}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public makeParamList(Ljavassist/compiler/ast/MethodDecl;)[Ljavassist/CtClass;
    .locals 6
    .param p1, "md"    # Ljavassist/compiler/ast/MethodDecl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 1100
    invoke-virtual {p1}, Ljavassist/compiler/ast/MethodDecl;->getParams()Ljavassist/compiler/ast/ASTList;

    move-result-object v3

    .line 1101
    .local v3, "plist":Ljavassist/compiler/ast/ASTList;
    if-nez v3, :cond_1

    .line 1102
    const/4 v4, 0x0

    new-array v2, v4, [Ljavassist/CtClass;

    .line 1112
    .local v2, "params":[Ljavassist/CtClass;
    :cond_0
    return-object v2

    .line 1104
    .end local v2    # "params":[Ljavassist/CtClass;
    :cond_1
    const/4 v0, 0x0

    .line 1105
    .local v0, "i":I
    invoke-virtual {v3}, Ljavassist/compiler/ast/ASTList;->length()I

    move-result v4

    new-array v2, v4, [Ljavassist/CtClass;

    .restart local v2    # "params":[Ljavassist/CtClass;
    move v1, v0

    .line 1106
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-eqz v3, :cond_0

    .line 1107
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v5, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v3}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    check-cast v4, Ljavassist/compiler/ast/Declarator;

    invoke-virtual {v5, v4}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljavassist/compiler/ast/Declarator;)Ljavassist/CtClass;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1108
    invoke-virtual {v3}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v3

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public makeThrowsList(Ljavassist/compiler/ast/MethodDecl;)[Ljavassist/CtClass;
    .locals 6
    .param p1, "md"    # Ljavassist/compiler/ast/MethodDecl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 1117
    invoke-virtual {p1}, Ljavassist/compiler/ast/MethodDecl;->getThrows()Ljavassist/compiler/ast/ASTList;

    move-result-object v3

    .line 1118
    .local v3, "list":Ljavassist/compiler/ast/ASTList;
    if-nez v3, :cond_1

    .line 1119
    const/4 v0, 0x0

    .line 1128
    :cond_0
    return-object v0

    .line 1121
    :cond_1
    const/4 v1, 0x0

    .line 1122
    .local v1, "i":I
    invoke-virtual {v3}, Ljavassist/compiler/ast/ASTList;->length()I

    move-result v4

    new-array v0, v4, [Ljavassist/CtClass;

    .local v0, "clist":[Ljavassist/CtClass;
    move v2, v1

    .line 1123
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-eqz v3, :cond_0

    .line 1124
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v5, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v3}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    check-cast v4, Ljavassist/compiler/ast/ASTList;

    invoke-virtual {v5, v4}, Ljavassist/compiler/MemberResolver;->lookupClassByName(Ljavassist/compiler/ast/ASTList;)Ljavassist/CtClass;

    move-result-object v4

    aput-object v4, v0, v2

    .line 1125
    invoke-virtual {v3}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v3

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0
.end method

.method protected resolveClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "jvmName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 1145
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v0, p1}, Ljavassist/compiler/MemberResolver;->resolveJvmClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 1138
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v0, p1}, Ljavassist/compiler/MemberResolver;->resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setReturnType(Ljava/lang/String;ZZ)V
    .locals 8
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "isStatic"    # Z
    .param p3, "popTarget"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    const/16 v7, 0x57

    .line 731
    const/16 v5, 0x29

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 732
    .local v3, "i":I
    if-gez v3, :cond_0

    .line 733
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->badMethod()V

    .line 735
    :cond_0
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 736
    .local v0, "c":C
    const/4 v1, 0x0

    .line 737
    .local v1, "dim":I
    :goto_0
    const/16 v5, 0x5b

    if-ne v0, v5, :cond_1

    .line 738
    add-int/lit8 v1, v1, 0x1

    .line 739
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 742
    :cond_1
    iput v1, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    .line 743
    const/16 v5, 0x4c

    if-ne v0, v5, :cond_4

    .line 744
    const/16 v5, 0x3b

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 745
    .local v4, "j":I
    if-gez v4, :cond_2

    .line 746
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->badMethod()V

    .line 748
    :cond_2
    const/16 v5, 0x133

    iput v5, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 749
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    .line 756
    .end local v4    # "j":I
    :goto_1
    iget v2, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 757
    .local v2, "etype":I
    if-eqz p2, :cond_3

    .line 758
    if-eqz p3, :cond_3

    .line 759
    invoke-static {v2, v1}, Ljavassist/compiler/MemberCodeGen;->is2word(II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 760
    iget-object v5, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 761
    iget-object v5, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v6, 0x58

    invoke-virtual {v5, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 762
    iget-object v5, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v7}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 772
    :cond_3
    :goto_2
    return-void

    .line 752
    .end local v2    # "etype":I
    :cond_4
    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result v5

    iput v5, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 753
    const/4 v5, 0x0

    iput-object v5, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    goto :goto_1

    .line 764
    .restart local v2    # "etype":I
    :cond_5
    const/16 v5, 0x158

    if-ne v2, v5, :cond_6

    .line 765
    iget-object v5, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v7}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_2

    .line 767
    :cond_6
    iget-object v5, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v6, 0x5f

    invoke-virtual {v5, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 768
    iget-object v5, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v7}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_2
.end method

.method public setThisMethod(Ljavassist/CtMethod;)V
    .locals 2
    .param p1, "m"    # Ljavassist/CtMethod;

    .prologue
    .line 57
    invoke-virtual {p1}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    iput-object v0, p0, Ljavassist/compiler/MemberCodeGen;->thisMethod:Ljavassist/bytecode/MethodInfo;

    .line 58
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->typeChecker:Ljavassist/compiler/TypeChecker;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->typeChecker:Ljavassist/compiler/TypeChecker;

    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->thisMethod:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0, v1}, Ljavassist/compiler/TypeChecker;->setThisMethod(Ljavassist/bytecode/MethodInfo;)V

    .line 60
    :cond_0
    return-void
.end method
