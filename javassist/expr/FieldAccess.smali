.class public Ljavassist/expr/FieldAccess;
.super Ljavassist/expr/Expr;
.source "FieldAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/expr/FieldAccess$ProceedForWrite;,
        Ljavassist/expr/FieldAccess$ProceedForRead;
    }
.end annotation


# instance fields
.field opcode:I


# direct methods
.method protected constructor <init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;I)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "i"    # Ljavassist/bytecode/CodeIterator;
    .param p3, "declaring"    # Ljavassist/CtClass;
    .param p4, "m"    # Ljavassist/bytecode/MethodInfo;
    .param p5, "op"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/expr/Expr;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 33
    iput p5, p0, Ljavassist/expr/FieldAccess;->opcode:I

    .line 34
    return-void
.end method

.method private getCtClass()Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Ljavassist/expr/FieldAccess;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/expr/FieldAccess;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method static isStatic(I)Z
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 69
    const/16 v0, 0xb2

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Ljavassist/expr/FieldAccess;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v2, p0, Ljavassist/expr/FieldAccess;->currentPos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v0

    .line 98
    .local v0, "index":I
    invoke-virtual {p0}, Ljavassist/expr/FieldAccess;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getFieldrefClassName(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getField()Ljavassist/CtField;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Ljavassist/expr/FieldAccess;->getCtClass()Ljavassist/CtClass;

    move-result-object v0

    .line 114
    .local v0, "cc":Ljavassist/CtClass;
    iget-object v3, p0, Ljavassist/expr/FieldAccess;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v4, p0, Ljavassist/expr/FieldAccess;->currentPos:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v2

    .line 115
    .local v2, "index":I
    invoke-virtual {p0}, Ljavassist/expr/FieldAccess;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    .line 116
    .local v1, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {v1, v2}, Ljavassist/bytecode/ConstPool;->getFieldrefName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljavassist/bytecode/ConstPool;->getFieldrefType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljavassist/CtClass;->getField(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v3

    return-object v3
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Ljavassist/expr/FieldAccess;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v2, p0, Ljavassist/expr/FieldAccess;->currentPos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v0

    .line 106
    .local v0, "index":I
    invoke-virtual {p0}, Ljavassist/expr/FieldAccess;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getFieldrefName(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
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

.method public getSignature()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    iget-object v1, p0, Ljavassist/expr/FieldAccess;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v2, p0, Ljavassist/expr/FieldAccess;->currentPos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v0

    .line 139
    .local v0, "index":I
    invoke-virtual {p0}, Ljavassist/expr/FieldAccess;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getFieldrefType(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isReader()Z
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Ljavassist/expr/FieldAccess;->opcode:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavassist/expr/FieldAccess;->opcode:I

    const/16 v1, 0xb2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStatic()Z
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Ljavassist/expr/FieldAccess;->opcode:I

    invoke-static {v0}, Ljavassist/expr/FieldAccess;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method public isWriter()Z
    .locals 2

    .prologue
    .line 83
    iget v0, p0, Ljavassist/expr/FieldAccess;->opcode:I

    const/16 v1, 0xb5

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavassist/expr/FieldAccess;->opcode:I

    const/16 v1, 0xb3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mayThrow()[Ljavassist/CtClass;
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Ljavassist/expr/Expr;->mayThrow()[Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/String;)V
    .locals 19
    .param p1, "statement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 153
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavassist/expr/FieldAccess;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v3}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    .line 154
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/FieldAccess;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v10

    .line 155
    .local v10, "constPool":Ljavassist/bytecode/ConstPool;
    move-object/from16 v0, p0

    iget v15, v0, Ljavassist/expr/FieldAccess;->currentPos:I

    .line 156
    .local v15, "pos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavassist/expr/FieldAccess;->iterator:Ljavassist/bytecode/CodeIterator;

    add-int/lit8 v5, v15, 0x1

    invoke-virtual {v3, v5}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v14

    .line 158
    .local v14, "index":I
    new-instance v2, Ljavassist/compiler/Javac;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljavassist/expr/FieldAccess;->thisClass:Ljavassist/CtClass;

    invoke-direct {v2, v3}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    .line 159
    .local v2, "jc":Ljavassist/compiler/Javac;
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavassist/expr/FieldAccess;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v3}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v9

    .line 163
    .local v9, "ca":Ljavassist/bytecode/CodeAttribute;
    :try_start_0
    invoke-virtual {v10, v14}, Ljavassist/bytecode/ConstPool;->getFieldrefType(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Ljavassist/expr/FieldAccess;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v5}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v5

    invoke-static {v3, v5}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v12

    .line 166
    .local v12, "fieldType":Ljavassist/CtClass;
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/FieldAccess;->isReader()Z

    move-result v16

    .line 167
    .local v16, "read":Z
    if-eqz v16, :cond_3

    .line 168
    const/4 v3, 0x0

    new-array v4, v3, [Ljavassist/CtClass;

    .line 169
    .local v4, "params":[Ljavassist/CtClass;
    move-object/from16 v17, v12

    .line 177
    .local v17, "retType":Ljavassist/CtClass;
    :goto_0
    invoke-virtual {v9}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v6

    .line 178
    .local v6, "paramVar":I
    invoke-virtual {v10, v14}, Ljavassist/bytecode/ConstPool;->getFieldrefClassName(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/FieldAccess;->withinStatic()Z

    move-result v7

    invoke-virtual/range {v2 .. v7}, Ljavassist/compiler/Javac;->recordParams(Ljava/lang/String;[Ljavassist/CtClass;ZIZ)I

    .line 183
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ljavassist/expr/FieldAccess;->checkResultValue(Ljavassist/CtClass;Ljava/lang/String;)Z

    move-result v13

    .line 184
    .local v13, "included":Z
    if-eqz v16, :cond_0

    .line 185
    const/4 v13, 0x1

    .line 187
    :cond_0
    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v13}, Ljavassist/compiler/Javac;->recordReturnType(Ljavassist/CtClass;Z)I

    move-result v18

    .line 188
    .local v18, "retVar":I
    if-eqz v16, :cond_4

    .line 189
    new-instance v3, Ljavassist/expr/FieldAccess$ProceedForRead;

    move-object/from16 v0, p0

    iget v5, v0, Ljavassist/expr/FieldAccess;->opcode:I

    move-object/from16 v0, v17

    invoke-direct {v3, v0, v5, v14, v6}, Ljavassist/expr/FieldAccess$ProceedForRead;-><init>(Ljavassist/CtClass;III)V

    invoke-virtual {v2, v3}, Ljavassist/compiler/Javac;->recordProceed(Ljavassist/compiler/ProceedHandler;)V

    .line 198
    :goto_1
    invoke-virtual {v2}, Ljavassist/compiler/Javac;->getBytecode()Ljavassist/bytecode/Bytecode;

    move-result-object v8

    .line 199
    .local v8, "bytecode":Ljavassist/bytecode/Bytecode;
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/FieldAccess;->isStatic()Z

    move-result v3

    invoke-static {v4, v3, v6, v8}, Ljavassist/expr/FieldAccess;->storeStack([Ljavassist/CtClass;ZILjavassist/bytecode/Bytecode;)V

    .line 200
    invoke-virtual {v2, v9, v15}, Ljavassist/compiler/Javac;->recordLocalVariables(Ljavassist/bytecode/CodeAttribute;I)Z

    .line 202
    if-eqz v13, :cond_1

    .line 203
    sget-object v3, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    move-object/from16 v0, v17

    if-ne v0, v3, :cond_5

    .line 204
    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 205
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 212
    :cond_1
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 213
    if-eqz v16, :cond_2

    .line 214
    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    .line 216
    :cond_2
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v8, v3}, Ljavassist/expr/FieldAccess;->replace0(ILjavassist/bytecode/Bytecode;I)V

    .line 223
    return-void

    .line 172
    .end local v4    # "params":[Ljavassist/CtClass;
    .end local v6    # "paramVar":I
    .end local v8    # "bytecode":Ljavassist/bytecode/Bytecode;
    .end local v13    # "included":Z
    .end local v17    # "retType":Ljavassist/CtClass;
    .end local v18    # "retVar":I
    :cond_3
    const/4 v3, 0x1

    new-array v4, v3, [Ljavassist/CtClass;

    .line 173
    .restart local v4    # "params":[Ljavassist/CtClass;
    const/4 v3, 0x0

    aput-object v12, v4, v3

    .line 174
    sget-object v17, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    .restart local v17    # "retType":Ljavassist/CtClass;
    goto :goto_0

    .line 193
    .restart local v6    # "paramVar":I
    .restart local v13    # "included":Z
    .restart local v18    # "retVar":I
    :cond_4
    invoke-virtual {v2, v12}, Ljavassist/compiler/Javac;->recordType(Ljavassist/CtClass;)V

    .line 194
    new-instance v3, Ljavassist/expr/FieldAccess$ProceedForWrite;

    const/4 v5, 0x0

    aget-object v5, v4, v5

    move-object/from16 v0, p0

    iget v7, v0, Ljavassist/expr/FieldAccess;->opcode:I

    invoke-direct {v3, v5, v7, v14, v6}, Ljavassist/expr/FieldAccess$ProceedForWrite;-><init>(Ljavassist/CtClass;III)V

    invoke-virtual {v2, v3}, Ljavassist/compiler/Javac;->recordProceed(Ljavassist/compiler/ProceedHandler;)V
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 218
    .end local v4    # "params":[Ljavassist/CtClass;
    .end local v6    # "paramVar":I
    .end local v12    # "fieldType":Ljavassist/CtClass;
    .end local v13    # "included":Z
    .end local v16    # "read":Z
    .end local v17    # "retType":Ljavassist/CtClass;
    .end local v18    # "retVar":I
    :catch_0
    move-exception v11

    .local v11, "e":Ljavassist/compiler/CompileError;
    new-instance v3, Ljavassist/CannotCompileException;

    invoke-direct {v3, v11}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v3

    .line 208
    .end local v11    # "e":Ljavassist/compiler/CompileError;
    .restart local v4    # "params":[Ljavassist/CtClass;
    .restart local v6    # "paramVar":I
    .restart local v8    # "bytecode":Ljavassist/bytecode/Bytecode;
    .restart local v12    # "fieldType":Ljavassist/CtClass;
    .restart local v13    # "included":Z
    .restart local v16    # "read":Z
    .restart local v17    # "retType":Ljavassist/CtClass;
    .restart local v18    # "retVar":I
    :cond_5
    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljavassist/bytecode/Bytecode;->addConstZero(Ljavassist/CtClass;)V

    .line 209
    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljavassist/bytecode/Bytecode;->addStore(ILjavassist/CtClass;)I
    :try_end_1
    .catch Ljavassist/compiler/CompileError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 219
    .end local v4    # "params":[Ljavassist/CtClass;
    .end local v6    # "paramVar":I
    .end local v8    # "bytecode":Ljavassist/bytecode/Bytecode;
    .end local v12    # "fieldType":Ljavassist/CtClass;
    .end local v13    # "included":Z
    .end local v16    # "read":Z
    .end local v17    # "retType":Ljavassist/CtClass;
    .end local v18    # "retVar":I
    :catch_1
    move-exception v11

    .local v11, "e":Ljavassist/NotFoundException;
    new-instance v3, Ljavassist/CannotCompileException;

    invoke-direct {v3, v11}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v3

    .line 220
    .end local v11    # "e":Ljavassist/NotFoundException;
    :catch_2
    move-exception v11

    .line 221
    .local v11, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v3, Ljavassist/CannotCompileException;

    const-string v5, "broken method"

    invoke-direct {v3, v5}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public where()Ljavassist/CtBehavior;
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Ljavassist/expr/Expr;->where()Ljavassist/CtBehavior;

    move-result-object v0

    return-object v0
.end method
