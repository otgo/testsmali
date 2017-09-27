.class public Ljavassist/expr/ExprEditor;
.super Ljava/lang/Object;
.source "ExprEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/expr/ExprEditor$LoopContext;,
        Ljavassist/expr/ExprEditor$NewOp;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doit(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)Z
    .locals 11
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p2}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v7

    .line 83
    .local v7, "codeAttr":Ljavassist/bytecode/CodeAttribute;
    if-nez v7, :cond_1

    .line 84
    const/4 v9, 0x0

    .line 120
    :cond_0
    :goto_0
    return v9

    .line 86
    :cond_1
    invoke-virtual {v7}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v3

    .line 87
    .local v3, "iterator":Ljavassist/bytecode/CodeIterator;
    const/4 v9, 0x0

    .line 88
    .local v9, "edited":Z
    new-instance v8, Ljavassist/expr/ExprEditor$LoopContext;

    invoke-virtual {v7}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v4

    invoke-direct {v8, v4}, Ljavassist/expr/ExprEditor$LoopContext;-><init>(I)V

    .line 90
    .local v8, "context":Ljavassist/expr/ExprEditor$LoopContext;
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 91
    invoke-virtual {p0, v3, p1, p2, v8}, Ljavassist/expr/ExprEditor;->loopBody(Ljavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/expr/ExprEditor$LoopContext;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 92
    const/4 v9, 0x1

    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {v7}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v1

    .line 95
    .local v1, "et":Ljavassist/bytecode/ExceptionTable;
    invoke-virtual {v1}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v10

    .line 96
    .local v10, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v10, :cond_5

    .line 97
    new-instance v0, Ljavassist/expr/Handler;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ljavassist/expr/Handler;-><init>(Ljavassist/bytecode/ExceptionTable;ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 98
    .local v0, "h":Ljavassist/expr/Handler;
    invoke-virtual {p0, v0}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/Handler;)V

    .line 99
    invoke-virtual {v0}, Ljavassist/expr/Handler;->edited()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 100
    const/4 v9, 0x1

    .line 101
    invoke-virtual {v0}, Ljavassist/expr/Handler;->locals()I

    move-result v4

    invoke-virtual {v0}, Ljavassist/expr/Handler;->stack()I

    move-result v5

    invoke-virtual {v8, v4, v5}, Ljavassist/expr/ExprEditor$LoopContext;->updateMax(II)V

    .line 96
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 107
    .end local v0    # "h":Ljavassist/expr/Handler;
    :cond_5
    invoke-virtual {v7}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v4

    iget v5, v8, Ljavassist/expr/ExprEditor$LoopContext;->maxLocals:I

    if-ge v4, v5, :cond_6

    .line 108
    iget v4, v8, Ljavassist/expr/ExprEditor$LoopContext;->maxLocals:I

    invoke-virtual {v7, v4}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V

    .line 110
    :cond_6
    invoke-virtual {v7}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v4

    iget v5, v8, Ljavassist/expr/ExprEditor$LoopContext;->maxStack:I

    add-int/2addr v4, v5

    invoke-virtual {v7, v4}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    .line 112
    if-eqz v9, :cond_0

    .line 113
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v4

    invoke-virtual {p1}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v6

    .line 117
    .local v6, "b":Ljavassist/bytecode/BadBytecode;
    new-instance v4, Ljavassist/CannotCompileException;

    invoke-virtual {v6}, Ljavassist/bytecode/BadBytecode;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method doit(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/expr/ExprEditor$LoopContext;Ljavassist/bytecode/CodeIterator;I)Z
    .locals 4
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .param p3, "context"    # Ljavassist/expr/ExprEditor$LoopContext;
    .param p4, "iterator"    # Ljavassist/bytecode/CodeIterator;
    .param p5, "endPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "edited":Z
    :cond_0
    :goto_0
    invoke-virtual {p4}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p4}, Ljavassist/bytecode/CodeIterator;->lookAhead()I

    move-result v3

    if-ge v3, p5, :cond_1

    .line 132
    invoke-virtual {p4}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v1

    .line 133
    .local v1, "size":I
    invoke-virtual {p0, p4, p1, p2, p3}, Ljavassist/expr/ExprEditor;->loopBody(Ljavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/expr/ExprEditor$LoopContext;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    const/4 v0, 0x1

    .line 135
    invoke-virtual {p4}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v2

    .line 136
    .local v2, "size2":I
    if-eq v1, v2, :cond_0

    .line 137
    sub-int v3, v2, v1

    add-int/2addr p5, v3

    goto :goto_0

    .line 141
    .end local v1    # "size":I
    .end local v2    # "size2":I
    :cond_1
    return v0
.end method

.method public edit(Ljavassist/expr/Cast;)V
    .locals 0
    .param p1, "c"    # Ljavassist/expr/Cast;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 310
    return-void
.end method

.method public edit(Ljavassist/expr/ConstructorCall;)V
    .locals 0
    .param p1, "c"    # Ljavassist/expr/ConstructorCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 291
    return-void
.end method

.method public edit(Ljavassist/expr/FieldAccess;)V
    .locals 0
    .param p1, "f"    # Ljavassist/expr/FieldAccess;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 298
    return-void
.end method

.method public edit(Ljavassist/expr/Handler;)V
    .locals 0
    .param p1, "h"    # Ljavassist/expr/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 316
    return-void
.end method

.method public edit(Ljavassist/expr/Instanceof;)V
    .locals 0
    .param p1, "i"    # Ljavassist/expr/Instanceof;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 304
    return-void
.end method

.method public edit(Ljavassist/expr/MethodCall;)V
    .locals 0
    .param p1, "m"    # Ljavassist/expr/MethodCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 279
    return-void
.end method

.method public edit(Ljavassist/expr/NewArray;)V
    .locals 0
    .param p1, "a"    # Ljavassist/expr/NewArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 272
    return-void
.end method

.method public edit(Ljavassist/expr/NewExpr;)V
    .locals 0
    .param p1, "e"    # Ljavassist/expr/NewExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 263
    return-void
.end method

.method final loopBody(Ljavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/expr/ExprEditor$LoopContext;)Z
    .locals 23
    .param p1, "iterator"    # Ljavassist/bytecode/CodeIterator;
    .param p2, "clazz"    # Ljavassist/CtClass;
    .param p3, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .param p4, "context"    # Ljavassist/expr/ExprEditor$LoopContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 181
    const/16 v19, 0x0

    .line 182
    .local v19, "expr":Ljavassist/expr/Expr;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v5

    .line 183
    .local v5, "pos":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    .line 185
    .local v9, "c":I
    const/16 v6, 0xb2

    if-ge v9, v6, :cond_0

    move-object/from16 v4, v19

    .line 245
    .end local v19    # "expr":Ljavassist/expr/Expr;
    .local v4, "expr":Ljavassist/expr/Expr;
    :goto_0
    if-eqz v4, :cond_c

    :try_start_1
    invoke-virtual {v4}, Ljavassist/expr/Expr;->edited()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 246
    invoke-virtual {v4}, Ljavassist/expr/Expr;->locals()I

    move-result v6

    invoke-virtual {v4}, Ljavassist/expr/Expr;->stack()I

    move-result v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v7}, Ljavassist/expr/ExprEditor$LoopContext;->updateMax(II)V
    :try_end_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_1 .. :try_end_1} :catch_0

    .line 247
    const/4 v6, 0x1

    .line 250
    :goto_1
    return v6

    .line 187
    .end local v4    # "expr":Ljavassist/expr/Expr;
    .restart local v19    # "expr":Ljavassist/expr/Expr;
    :cond_0
    const/16 v6, 0xbc

    if-ge v9, v6, :cond_8

    .line 188
    const/16 v6, 0xb8

    if-eq v9, v6, :cond_1

    const/16 v6, 0xb9

    if-eq v9, v6, :cond_1

    const/16 v6, 0xb6

    if-ne v9, v6, :cond_2

    .line 191
    :cond_1
    :try_start_2
    new-instance v4, Ljavassist/expr/MethodCall;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v4, v5, v0, v1, v2}, Ljavassist/expr/MethodCall;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    :try_end_2
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_2 .. :try_end_2} :catch_1

    .line 192
    .end local v19    # "expr":Ljavassist/expr/Expr;
    .restart local v4    # "expr":Ljavassist/expr/Expr;
    :try_start_3
    move-object v0, v4

    check-cast v0, Ljavassist/expr/MethodCall;

    move-object v6, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/MethodCall;)V
    :try_end_3
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v18

    .line 253
    .end local v5    # "pos":I
    .end local v9    # "c":I
    .local v18, "e":Ljavassist/bytecode/BadBytecode;
    :goto_2
    new-instance v6, Ljavassist/CannotCompileException;

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 194
    .end local v4    # "expr":Ljavassist/expr/Expr;
    .end local v18    # "e":Ljavassist/bytecode/BadBytecode;
    .restart local v5    # "pos":I
    .restart local v9    # "c":I
    .restart local v19    # "expr":Ljavassist/expr/Expr;
    :cond_2
    const/16 v6, 0xb4

    if-eq v9, v6, :cond_3

    const/16 v6, 0xb2

    if-eq v9, v6, :cond_3

    const/16 v6, 0xb5

    if-eq v9, v6, :cond_3

    const/16 v6, 0xb3

    if-ne v9, v6, :cond_4

    .line 197
    :cond_3
    :try_start_4
    new-instance v4, Ljavassist/expr/FieldAccess;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v4 .. v9}, Ljavassist/expr/FieldAccess;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;I)V
    :try_end_4
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_4 .. :try_end_4} :catch_1

    .line 198
    .end local v19    # "expr":Ljavassist/expr/Expr;
    .restart local v4    # "expr":Ljavassist/expr/Expr;
    :try_start_5
    move-object v0, v4

    check-cast v0, Ljavassist/expr/FieldAccess;

    move-object v6, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/FieldAccess;)V
    :try_end_5
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 200
    .end local v4    # "expr":Ljavassist/expr/Expr;
    .restart local v19    # "expr":Ljavassist/expr/Expr;
    :cond_4
    const/16 v6, 0xbb

    if-ne v9, v6, :cond_5

    .line 201
    add-int/lit8 v6, v5, 0x1

    :try_start_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v20

    .line 202
    .local v20, "index":I
    new-instance v6, Ljavassist/expr/ExprEditor$NewOp;

    move-object/from16 v0, p4

    iget-object v7, v0, Ljavassist/expr/ExprEditor$LoopContext;->newList:Ljavassist/expr/ExprEditor$NewOp;

    invoke-virtual/range {p3 .. p3}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v5, v8}, Ljavassist/expr/ExprEditor$NewOp;-><init>(Ljavassist/expr/ExprEditor$NewOp;ILjava/lang/String;)V

    move-object/from16 v0, p4

    iput-object v6, v0, Ljavassist/expr/ExprEditor$LoopContext;->newList:Ljavassist/expr/ExprEditor$NewOp;

    move-object/from16 v4, v19

    .line 204
    .end local v19    # "expr":Ljavassist/expr/Expr;
    .restart local v4    # "expr":Ljavassist/expr/Expr;
    goto/16 :goto_0

    .line 205
    .end local v4    # "expr":Ljavassist/expr/Expr;
    .end local v20    # "index":I
    .restart local v19    # "expr":Ljavassist/expr/Expr;
    :cond_5
    const/16 v6, 0xb7

    if-ne v9, v6, :cond_d

    .line 206
    move-object/from16 v0, p4

    iget-object v0, v0, Ljavassist/expr/ExprEditor$LoopContext;->newList:Ljavassist/expr/ExprEditor$NewOp;

    move-object/from16 v22, v0

    .line 207
    .local v22, "newList":Ljavassist/expr/ExprEditor$NewOp;
    if-eqz v22, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v6

    move-object/from16 v0, v22

    iget-object v7, v0, Ljavassist/expr/ExprEditor$NewOp;->type:Ljava/lang/String;

    add-int/lit8 v8, v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljavassist/bytecode/ConstPool;->isConstructor(Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_6

    .line 210
    new-instance v4, Ljavassist/expr/NewExpr;

    move-object/from16 v0, v22

    iget-object v15, v0, Ljavassist/expr/ExprEditor$NewOp;->type:Ljava/lang/String;

    move-object/from16 v0, v22

    iget v0, v0, Ljavassist/expr/ExprEditor$NewOp;->pos:I

    move/from16 v16, v0

    move-object v10, v4

    move v11, v5

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-direct/range {v10 .. v16}, Ljavassist/expr/NewExpr;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljava/lang/String;I)V
    :try_end_6
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_6 .. :try_end_6} :catch_1

    .line 212
    .end local v19    # "expr":Ljavassist/expr/Expr;
    .restart local v4    # "expr":Ljavassist/expr/Expr;
    :try_start_7
    move-object v0, v4

    check-cast v0, Ljavassist/expr/NewExpr;

    move-object v6, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/NewExpr;)V

    .line 213
    move-object/from16 v0, v22

    iget-object v6, v0, Ljavassist/expr/ExprEditor$NewOp;->next:Ljavassist/expr/ExprEditor$NewOp;

    move-object/from16 v0, p4

    iput-object v6, v0, Ljavassist/expr/ExprEditor$LoopContext;->newList:Ljavassist/expr/ExprEditor$NewOp;
    :try_end_7
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 216
    .end local v4    # "expr":Ljavassist/expr/Expr;
    .restart local v19    # "expr":Ljavassist/expr/Expr;
    :cond_6
    :try_start_8
    new-instance v21, Ljavassist/expr/MethodCall;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v5, v1, v2, v3}, Ljavassist/expr/MethodCall;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 217
    .local v21, "mcall":Ljavassist/expr/MethodCall;
    invoke-virtual/range {v21 .. v21}, Ljavassist/expr/MethodCall;->getMethodName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "<init>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 218
    new-instance v17, Ljavassist/expr/ConstructorCall;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v5, v1, v2, v3}, Ljavassist/expr/ConstructorCall;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    :try_end_8
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_8 .. :try_end_8} :catch_1

    .line 219
    .local v17, "ccall":Ljavassist/expr/ConstructorCall;
    move-object/from16 v4, v17

    .line 220
    .end local v19    # "expr":Ljavassist/expr/Expr;
    .restart local v4    # "expr":Ljavassist/expr/Expr;
    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/ConstructorCall;)V

    goto/16 :goto_0

    .line 223
    .end local v4    # "expr":Ljavassist/expr/Expr;
    .end local v17    # "ccall":Ljavassist/expr/ConstructorCall;
    .restart local v19    # "expr":Ljavassist/expr/Expr;
    :cond_7
    move-object/from16 v4, v21

    .line 224
    .end local v19    # "expr":Ljavassist/expr/Expr;
    .restart local v4    # "expr":Ljavassist/expr/Expr;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/MethodCall;)V
    :try_end_9
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 230
    .end local v4    # "expr":Ljavassist/expr/Expr;
    .end local v21    # "mcall":Ljavassist/expr/MethodCall;
    .end local v22    # "newList":Ljavassist/expr/ExprEditor$NewOp;
    .restart local v19    # "expr":Ljavassist/expr/Expr;
    :cond_8
    const/16 v6, 0xbc

    if-eq v9, v6, :cond_9

    const/16 v6, 0xbd

    if-eq v9, v6, :cond_9

    const/16 v6, 0xc5

    if-ne v9, v6, :cond_a

    .line 232
    :cond_9
    :try_start_a
    new-instance v4, Ljavassist/expr/NewArray;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v4 .. v9}, Ljavassist/expr/NewArray;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;I)V
    :try_end_a
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_a .. :try_end_a} :catch_1

    .line 233
    .end local v19    # "expr":Ljavassist/expr/Expr;
    .restart local v4    # "expr":Ljavassist/expr/Expr;
    :try_start_b
    move-object v0, v4

    check-cast v0, Ljavassist/expr/NewArray;

    move-object v6, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/NewArray;)V
    :try_end_b
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_0

    .line 235
    .end local v4    # "expr":Ljavassist/expr/Expr;
    .restart local v19    # "expr":Ljavassist/expr/Expr;
    :cond_a
    const/16 v6, 0xc1

    if-ne v9, v6, :cond_b

    .line 236
    :try_start_c
    new-instance v4, Ljavassist/expr/Instanceof;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v4, v5, v0, v1, v2}, Ljavassist/expr/Instanceof;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    :try_end_c
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_c .. :try_end_c} :catch_1

    .line 237
    .end local v19    # "expr":Ljavassist/expr/Expr;
    .restart local v4    # "expr":Ljavassist/expr/Expr;
    :try_start_d
    move-object v0, v4

    check-cast v0, Ljavassist/expr/Instanceof;

    move-object v6, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/Instanceof;)V
    :try_end_d
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_0

    .line 239
    .end local v4    # "expr":Ljavassist/expr/Expr;
    .restart local v19    # "expr":Ljavassist/expr/Expr;
    :cond_b
    const/16 v6, 0xc0

    if-ne v9, v6, :cond_d

    .line 240
    :try_start_e
    new-instance v4, Ljavassist/expr/Cast;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v4, v5, v0, v1, v2}, Ljavassist/expr/Cast;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    :try_end_e
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_e .. :try_end_e} :catch_1

    .line 241
    .end local v19    # "expr":Ljavassist/expr/Expr;
    .restart local v4    # "expr":Ljavassist/expr/Expr;
    :try_start_f
    move-object v0, v4

    check-cast v0, Ljavassist/expr/Cast;

    move-object v6, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/Cast;)V
    :try_end_f
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_0

    .line 250
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 252
    .end local v4    # "expr":Ljavassist/expr/Expr;
    .end local v5    # "pos":I
    .end local v9    # "c":I
    .restart local v19    # "expr":Ljavassist/expr/Expr;
    :catch_1
    move-exception v18

    move-object/from16 v4, v19

    .end local v19    # "expr":Ljavassist/expr/Expr;
    .restart local v4    # "expr":Ljavassist/expr/Expr;
    goto/16 :goto_2

    .end local v4    # "expr":Ljavassist/expr/Expr;
    .restart local v5    # "pos":I
    .restart local v9    # "c":I
    .restart local v19    # "expr":Ljavassist/expr/Expr;
    :cond_d
    move-object/from16 v4, v19

    .end local v19    # "expr":Ljavassist/expr/Expr;
    .restart local v4    # "expr":Ljavassist/expr/Expr;
    goto/16 :goto_0
.end method
