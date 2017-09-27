.class public Ljavassist/expr/Instanceof;
.super Ljavassist/expr/Expr;
.source "Instanceof.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/expr/Instanceof$ProceedForInstanceof;
    }
.end annotation


# direct methods
.method protected constructor <init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "i"    # Ljavassist/bytecode/CodeIterator;
    .param p3, "declaring"    # Ljavassist/CtClass;
    .param p4, "m"    # Ljavassist/bytecode/MethodInfo;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/expr/Expr;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Ljavassist/expr/Expr;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Ljavassist/expr/Expr;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getType()Ljavassist/CtClass;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Ljavassist/expr/Instanceof;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 69
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    iget v3, p0, Ljavassist/expr/Instanceof;->currentPos:I

    .line 70
    .local v3, "pos":I
    iget-object v4, p0, Ljavassist/expr/Instanceof;->iterator:Ljavassist/bytecode/CodeIterator;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    .line 71
    .local v1, "index":I
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Ljavassist/expr/Instanceof;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v4}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljavassist/ClassPool;->getCtClass(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v4

    return-object v4
.end method

.method public mayThrow()[Ljavassist/CtClass;
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Ljavassist/expr/Expr;->mayThrow()[Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/String;)V
    .locals 16
    .param p1, "statement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavassist/expr/Instanceof;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v2}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    .line 95
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/Instanceof;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v9

    .line 96
    .local v9, "constPool":Ljavassist/bytecode/ConstPool;
    move-object/from16 v0, p0

    iget v13, v0, Ljavassist/expr/Instanceof;->currentPos:I

    .line 97
    .local v13, "pos":I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavassist/expr/Instanceof;->iterator:Ljavassist/bytecode/CodeIterator;

    add-int/lit8 v4, v13, 0x1

    invoke-virtual {v2, v4}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v12

    .line 99
    .local v12, "index":I
    new-instance v1, Ljavassist/compiler/Javac;

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavassist/expr/Instanceof;->thisClass:Ljavassist/CtClass;

    invoke-direct {v1, v2}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    .line 100
    .local v1, "jc":Ljavassist/compiler/Javac;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavassist/expr/Instanceof;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v2}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v10

    .line 101
    .local v10, "cp":Ljavassist/ClassPool;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavassist/expr/Instanceof;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v2}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v8

    .line 104
    .local v8, "ca":Ljavassist/bytecode/CodeAttribute;
    const/4 v2, 0x1

    :try_start_0
    new-array v3, v2, [Ljavassist/CtClass;

    const/4 v2, 0x0

    const-string v4, "java.lang.Object"

    invoke-virtual {v10, v4}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v4

    aput-object v4, v3, v2

    .line 106
    .local v3, "params":[Ljavassist/CtClass;
    sget-object v14, Ljavassist/CtClass;->booleanType:Ljavassist/CtClass;

    .line 108
    .local v14, "retType":Ljavassist/CtClass;
    invoke-virtual {v8}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v5

    .line 109
    .local v5, "paramVar":I
    const-string v2, "java.lang.Object"

    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/Instanceof;->withinStatic()Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Ljavassist/compiler/Javac;->recordParams(Ljava/lang/String;[Ljavassist/CtClass;ZIZ)I

    .line 111
    const/4 v2, 0x1

    invoke-virtual {v1, v14, v2}, Ljavassist/compiler/Javac;->recordReturnType(Ljavassist/CtClass;Z)I

    move-result v15

    .line 112
    .local v15, "retVar":I
    new-instance v2, Ljavassist/expr/Instanceof$ProceedForInstanceof;

    invoke-direct {v2, v12}, Ljavassist/expr/Instanceof$ProceedForInstanceof;-><init>(I)V

    invoke-virtual {v1, v2}, Ljavassist/compiler/Javac;->recordProceed(Ljavassist/compiler/ProceedHandler;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/Instanceof;->getType()Ljavassist/CtClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavassist/compiler/Javac;->recordType(Ljavassist/CtClass;)V

    .line 119
    move-object/from16 v0, p1

    invoke-static {v14, v0}, Ljavassist/expr/Instanceof;->checkResultValue(Ljavassist/CtClass;Ljava/lang/String;)Z

    .line 121
    invoke-virtual {v1}, Ljavassist/compiler/Javac;->getBytecode()Ljavassist/bytecode/Bytecode;

    move-result-object v7

    .line 122
    .local v7, "bytecode":Ljavassist/bytecode/Bytecode;
    const/4 v2, 0x1

    invoke-static {v3, v2, v5, v7}, Ljavassist/expr/Instanceof;->storeStack([Ljavassist/CtClass;ZILjavassist/bytecode/Bytecode;)V

    .line 123
    invoke-virtual {v1, v8, v13}, Ljavassist/compiler/Javac;->recordLocalVariables(Ljavassist/bytecode/CodeAttribute;I)Z

    .line 125
    invoke-virtual {v7, v14}, Ljavassist/bytecode/Bytecode;->addConstZero(Ljavassist/CtClass;)V

    .line 126
    invoke-virtual {v7, v15, v14}, Ljavassist/bytecode/Bytecode;->addStore(ILjavassist/CtClass;)I

    .line 128
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v7, v15, v14}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    .line 131
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v7, v2}, Ljavassist/expr/Instanceof;->replace0(ILjavassist/bytecode/Bytecode;I)V
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_2

    .line 138
    return-void

    .line 133
    .end local v3    # "params":[Ljavassist/CtClass;
    .end local v5    # "paramVar":I
    .end local v7    # "bytecode":Ljavassist/bytecode/Bytecode;
    .end local v14    # "retType":Ljavassist/CtClass;
    .end local v15    # "retVar":I
    :catch_0
    move-exception v11

    .local v11, "e":Ljavassist/compiler/CompileError;
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-direct {v2, v11}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v2

    .line 134
    .end local v11    # "e":Ljavassist/compiler/CompileError;
    :catch_1
    move-exception v11

    .local v11, "e":Ljavassist/NotFoundException;
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-direct {v2, v11}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v2

    .line 135
    .end local v11    # "e":Ljavassist/NotFoundException;
    :catch_2
    move-exception v11

    .line 136
    .local v11, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v2, Ljavassist/CannotCompileException;

    const-string v4, "broken method"

    invoke-direct {v2, v4}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public where()Ljavassist/CtBehavior;
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Ljavassist/expr/Expr;->where()Ljavassist/CtBehavior;

    move-result-object v0

    return-object v0
.end method
