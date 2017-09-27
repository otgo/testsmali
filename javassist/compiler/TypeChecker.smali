.class public Ljavassist/compiler/TypeChecker;
.super Ljavassist/compiler/ast/Visitor;
.source "TypeChecker.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;
.implements Ljavassist/compiler/TokenId;


# static fields
.field static final javaLangObject:Ljava/lang/String; = "java.lang.Object"

.field static final jvmJavaLangClass:Ljava/lang/String; = "java/lang/Class"

.field static final jvmJavaLangObject:Ljava/lang/String; = "java/lang/Object"

.field static final jvmJavaLangString:Ljava/lang/String; = "java/lang/String"


# instance fields
.field protected arrayDim:I

.field protected className:Ljava/lang/String;

.field protected exprType:I

.field protected resolver:Ljavassist/compiler/MemberResolver;

.field protected thisClass:Ljavassist/CtClass;

.field protected thisMethod:Ljavassist/bytecode/MethodInfo;


# direct methods
.method public constructor <init>(Ljavassist/CtClass;Ljavassist/ClassPool;)V
    .locals 1
    .param p1, "cc"    # Ljavassist/CtClass;
    .param p2, "cp"    # Ljavassist/ClassPool;

    .prologue
    .line 44
    invoke-direct {p0}, Ljavassist/compiler/ast/Visitor;-><init>()V

    .line 45
    new-instance v0, Ljavassist/compiler/MemberResolver;

    invoke-direct {v0, p2}, Ljavassist/compiler/MemberResolver;-><init>(Ljavassist/ClassPool;)V

    iput-object v0, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    .line 46
    iput-object p1, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/compiler/TypeChecker;->thisMethod:Ljavassist/bytecode/MethodInfo;

    .line 48
    return-void
.end method

.method protected static argTypesToString([I[I[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "types"    # [I
    .param p1, "dims"    # [I
    .param p2, "cnames"    # [Ljava/lang/String;

    .prologue
    .line 56
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 58
    array-length v1, p0

    .line 59
    .local v1, "n":I
    if-lez v1, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "i":I
    :goto_0
    aget v3, p0, v0

    aget v4, p1, v0

    aget-object v5, p2, v0

    invoke-static {v2, v3, v4, v5}, Ljavassist/compiler/TypeChecker;->typeToString(Ljava/lang/StringBuffer;IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_0

    .line 64
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 70
    .end local v0    # "i":I
    :cond_0
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private atArrayAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/Expr;Ljavassist/compiler/ast/ASTree;)V
    .locals 5
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .param p2, "op"    # I
    .param p3, "array"    # Ljavassist/compiler/ast/Expr;
    .param p4, "right"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p3}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    invoke-virtual {p3}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljavassist/compiler/TypeChecker;->atArrayRead(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    .line 259
    iget v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 260
    .local v1, "aType":I
    iget v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 261
    .local v0, "aDim":I
    iget-object v2, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 262
    .local v2, "cname":Ljava/lang/String;
    invoke-virtual {p4, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 263
    iput v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 264
    iput v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 265
    iput-object v2, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 266
    return-void
.end method

.method private atFieldRead(Ljavassist/CtField;)V
    .locals 8
    .param p1, "f"    # Ljavassist/CtField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 781
    invoke-virtual {p1}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v2

    .line 782
    .local v2, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v2}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    .line 784
    .local v4, "type":Ljava/lang/String;
    const/4 v3, 0x0

    .line 785
    .local v3, "i":I
    const/4 v1, 0x0

    .line 786
    .local v1, "dim":I
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 787
    .local v0, "c":C
    :goto_0
    const/16 v5, 0x5b

    if-ne v0, v5, :cond_0

    .line 788
    add-int/lit8 v1, v1, 0x1

    .line 789
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 792
    :cond_0
    iput v1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 793
    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result v5

    iput v5, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 795
    const/16 v5, 0x4c

    if-ne v0, v5, :cond_1

    .line 796
    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x3b

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 799
    :goto_1
    return-void

    .line 798
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    goto :goto_1
.end method

.method private atFieldRead(Ljavassist/compiler/ast/ASTree;)V
    .locals 1
    .param p1, "expr"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 777
    invoke-virtual {p0, p1}, Ljavassist/compiler/TypeChecker;->fieldAccess(Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavassist/compiler/TypeChecker;->atFieldRead(Ljavassist/CtField;)V

    .line 778
    return-void
.end method

.method private atPlusExpr(Ljavassist/compiler/ast/BinExpr;)Ljavassist/compiler/ast/Expr;
    .locals 12
    .param p1, "expr"    # Ljavassist/compiler/ast/BinExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 346
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    .line 347
    .local v3, "left":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v5

    .line 348
    .local v5, "right":Ljavassist/compiler/ast/ASTree;
    if-nez v5, :cond_0

    .line 351
    invoke-virtual {v3, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 352
    const/4 v8, 0x0

    .line 389
    :goto_0
    return-object v8

    .line 355
    :cond_0
    invoke-static {v3}, Ljavassist/compiler/TypeChecker;->isPlusExpr(Ljavassist/compiler/ast/ASTree;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v3

    .line 356
    check-cast v8, Ljavassist/compiler/ast/BinExpr;

    invoke-direct {p0, v8}, Ljavassist/compiler/TypeChecker;->atPlusExpr(Ljavassist/compiler/ast/BinExpr;)Ljavassist/compiler/ast/Expr;

    move-result-object v4

    .line 357
    .local v4, "newExpr":Ljavassist/compiler/ast/Expr;
    if-eqz v4, :cond_2

    .line 358
    invoke-virtual {v5, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 359
    const/16 v8, 0x133

    iput v8, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 360
    const/4 v8, 0x0

    iput v8, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 361
    const-string v8, "java/lang/StringBuffer"

    iput-object v8, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 362
    invoke-static {v4, v5}, Ljavassist/compiler/TypeChecker;->makeAppendCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v8

    goto :goto_0

    .line 366
    .end local v4    # "newExpr":Ljavassist/compiler/ast/Expr;
    :cond_1
    invoke-virtual {v3, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 368
    :cond_2
    iget v7, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 369
    .local v7, "type1":I
    iget v1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 370
    .local v1, "dim1":I
    iget-object v0, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 371
    .local v0, "cname":Ljava/lang/String;
    invoke-virtual {v5, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 373
    const/16 v8, 0x2b

    invoke-direct {p0, p1, v8, v3, v5}, Ljavassist/compiler/TypeChecker;->isConstant(Ljavassist/compiler/ast/BinExpr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 374
    const/4 v8, 0x0

    goto :goto_0

    .line 376
    :cond_3
    const/16 v8, 0x133

    if-ne v7, v8, :cond_4

    if-nez v1, :cond_4

    const-string v8, "java/lang/String"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    iget v8, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    const/16 v9, 0x133

    if-ne v8, v9, :cond_6

    iget v8, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    if-nez v8, :cond_6

    const-string v8, "java/lang/String"

    iget-object v9, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 379
    :cond_5
    new-instance v8, Ljavassist/compiler/ast/Symbol;

    const-string v9, "java"

    invoke-direct {v8, v9}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljavassist/compiler/ast/Symbol;

    const-string v10, "lang"

    invoke-direct {v9, v10}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljavassist/compiler/ast/Symbol;

    const-string v11, "StringBuffer"

    invoke-direct {v10, v11}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9, v10}, Ljavassist/compiler/ast/ASTList;->make(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    move-result-object v6

    .line 381
    .local v6, "sbufClass":Ljavassist/compiler/ast/ASTList;
    new-instance v2, Ljavassist/compiler/ast/NewExpr;

    const/4 v8, 0x0

    invoke-direct {v2, v6, v8}, Ljavassist/compiler/ast/NewExpr;-><init>(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)V

    .line 382
    .local v2, "e":Ljavassist/compiler/ast/ASTree;
    const/16 v8, 0x133

    iput v8, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 383
    const/4 v8, 0x0

    iput v8, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 384
    const-string v8, "java/lang/StringBuffer"

    iput-object v8, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 385
    invoke-static {v2, v3}, Ljavassist/compiler/TypeChecker;->makeAppendCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v8

    invoke-static {v8, v5}, Ljavassist/compiler/TypeChecker;->makeAppendCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v8

    goto/16 :goto_0

    .line 388
    .end local v2    # "e":Ljavassist/compiler/ast/ASTree;
    .end local v6    # "sbufClass":Ljavassist/compiler/ast/ASTList;
    :cond_6
    const/16 v8, 0x2b

    invoke-direct {p0, p1, v8, v7}, Ljavassist/compiler/TypeChecker;->computeBinExprType(Ljavassist/compiler/ast/BinExpr;II)V

    .line 389
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private atPlusPlus(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/Expr;)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "oprand"    # Ljavassist/compiler/ast/ASTree;
    .param p3, "expr"    # Ljavassist/compiler/ast/Expr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    const/16 v6, 0x144

    .line 925
    if-nez p2, :cond_2

    const/4 v2, 0x1

    .line 926
    .local v2, "isPost":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 927
    invoke-virtual {p3}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object p2

    .line 929
    :cond_0
    instance-of v4, p2, Ljavassist/compiler/ast/Variable;

    if-eqz v4, :cond_3

    .line 930
    check-cast p2, Ljavassist/compiler/ast/Variable;

    .end local p2    # "oprand":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p2}, Ljavassist/compiler/ast/Variable;->getDeclarator()Ljavassist/compiler/ast/Declarator;

    move-result-object v0

    .line 931
    .local v0, "d":Ljavassist/compiler/ast/Declarator;
    invoke-virtual {v0}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result v4

    iput v4, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 932
    invoke-virtual {v0}, Ljavassist/compiler/ast/Declarator;->getArrayDim()I

    move-result v4

    iput v4, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 950
    .end local v0    # "d":Ljavassist/compiler/ast/Declarator;
    :cond_1
    :goto_1
    return-void

    .line 925
    .end local v2    # "isPost":Z
    .restart local p2    # "oprand":Ljavassist/compiler/ast/ASTree;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 935
    .restart local v2    # "isPost":Z
    :cond_3
    instance-of v4, p2, Ljavassist/compiler/ast/Expr;

    if-eqz v4, :cond_5

    move-object v1, p2

    .line 936
    check-cast v1, Ljavassist/compiler/ast/Expr;

    .line 937
    .local v1, "e":Ljavassist/compiler/ast/Expr;
    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v4

    const/16 v5, 0x41

    if-ne v4, v5, :cond_5

    .line 938
    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljavassist/compiler/TypeChecker;->atArrayRead(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    .line 940
    iget v3, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 941
    .local v3, "t":I
    if-eq v3, v6, :cond_4

    const/16 v4, 0x12f

    if-eq v3, v4, :cond_4

    const/16 v4, 0x132

    if-eq v3, v4, :cond_4

    const/16 v4, 0x14e

    if-ne v3, v4, :cond_1

    .line 942
    :cond_4
    iput v6, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    goto :goto_1

    .line 948
    .end local v1    # "e":Ljavassist/compiler/ast/Expr;
    .end local v3    # "t":I
    :cond_5
    invoke-virtual {p0, p2}, Ljavassist/compiler/TypeChecker;->atFieldPlusPlus(Ljavassist/compiler/ast/ASTree;)V

    goto :goto_1
.end method

.method private atVariableAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/Variable;Ljavassist/compiler/ast/Declarator;Ljavassist/compiler/ast/ASTree;)V
    .locals 4
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .param p2, "op"    # I
    .param p3, "var"    # Ljavassist/compiler/ast/Variable;
    .param p4, "d"    # Ljavassist/compiler/ast/Declarator;
    .param p5, "right"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p4}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result v2

    .line 243
    .local v2, "varType":I
    invoke-virtual {p4}, Ljavassist/compiler/ast/Declarator;->getArrayDim()I

    move-result v0

    .line 244
    .local v0, "varArray":I
    invoke-virtual {p4}, Ljavassist/compiler/ast/Declarator;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "varClass":Ljava/lang/String;
    const/16 v3, 0x3d

    if-eq p2, v3, :cond_0

    .line 247
    invoke-virtual {p0, p3}, Ljavassist/compiler/TypeChecker;->atVariable(Ljavassist/compiler/ast/Variable;)V

    .line 249
    :cond_0
    invoke-virtual {p5, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 250
    iput v2, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 251
    iput v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 252
    iput-object v1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 253
    return-void
.end method

.method private static badMethod()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 694
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "bad method"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private booleanExpr(Ljavassist/compiler/ast/ASTree;)V
    .locals 5
    .param p1, "expr"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 512
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->getCompOperator(Ljavassist/compiler/ast/ASTree;)I

    move-result v2

    .line 513
    .local v2, "op":I
    const/16 v4, 0x166

    if-ne v2, v4, :cond_1

    move-object v0, p1

    .line 514
    check-cast v0, Ljavassist/compiler/ast/BinExpr;

    .line 515
    .local v0, "bexpr":Ljavassist/compiler/ast/BinExpr;
    invoke-virtual {v0}, Ljavassist/compiler/ast/BinExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 516
    iget v3, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 517
    .local v3, "type1":I
    iget v1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 518
    .local v1, "dim1":I
    invoke-virtual {v0}, Ljavassist/compiler/ast/BinExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 519
    if-nez v1, :cond_0

    iget v4, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    if-nez v4, :cond_0

    .line 520
    iget v4, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    invoke-direct {p0, v0, v3, v4}, Ljavassist/compiler/TypeChecker;->insertCast(Ljavassist/compiler/ast/BinExpr;II)V

    .line 532
    .end local v0    # "bexpr":Ljavassist/compiler/ast/BinExpr;
    .end local v1    # "dim1":I
    .end local v3    # "type1":I
    .end local p1    # "expr":Ljavassist/compiler/ast/ASTree;
    :cond_0
    :goto_0
    const/16 v4, 0x12d

    iput v4, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 533
    const/4 v4, 0x0

    iput v4, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 534
    return-void

    .line 522
    .restart local p1    # "expr":Ljavassist/compiler/ast/ASTree;
    :cond_1
    const/16 v4, 0x21

    if-ne v2, v4, :cond_2

    .line 523
    check-cast p1, Ljavassist/compiler/ast/Expr;

    .end local p1    # "expr":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    goto :goto_0

    .line 524
    .restart local p1    # "expr":Ljavassist/compiler/ast/ASTree;
    :cond_2
    const/16 v4, 0x171

    if-eq v2, v4, :cond_3

    const/16 v4, 0x170

    if-ne v2, v4, :cond_4

    :cond_3
    move-object v0, p1

    .line 525
    check-cast v0, Ljavassist/compiler/ast/BinExpr;

    .line 526
    .restart local v0    # "bexpr":Ljavassist/compiler/ast/BinExpr;
    invoke-virtual {v0}, Ljavassist/compiler/ast/BinExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 527
    invoke-virtual {v0}, Ljavassist/compiler/ast/BinExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    goto :goto_0

    .line 530
    .end local v0    # "bexpr":Ljavassist/compiler/ast/BinExpr;
    :cond_4
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    goto :goto_0
.end method

.method private computeBinExprType(Ljavassist/compiler/ast/BinExpr;II)V
    .locals 2
    .param p1, "expr"    # Ljavassist/compiler/ast/BinExpr;
    .param p2, "token"    # I
    .param p3, "type1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 499
    iget v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 500
    .local v0, "type2":I
    const/16 v1, 0x16c

    if-eq p2, v1, :cond_0

    const/16 v1, 0x16e

    if-eq p2, v1, :cond_0

    const/16 v1, 0x172

    if-ne p2, v1, :cond_2

    .line 501
    :cond_0
    iput p3, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 505
    :goto_0
    iget v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    invoke-static {v1}, Ljavassist/compiler/CodeGen;->isP_INT(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 506
    const/16 v1, 0x144

    iput v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 507
    :cond_1
    return-void

    .line 503
    :cond_2
    invoke-direct {p0, p1, p3, v0}, Ljavassist/compiler/TypeChecker;->insertCast(Ljavassist/compiler/ast/BinExpr;II)V

    goto :goto_0
.end method

.method protected static fatal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "fatal"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fieldAccess2(Ljavassist/compiler/ast/Expr;Ljava/lang/String;)Ljavassist/CtField;
    .locals 4
    .param p1, "e"    # Ljavassist/compiler/ast/Expr;
    .param p2, "jvmClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 886
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    check-cast v1, Ljavassist/compiler/ast/Member;

    .line 887
    .local v1, "fname":Ljavassist/compiler/ast/Member;
    iget-object v2, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v2, p2, v1, p1}, Ljavassist/compiler/MemberResolver;->lookupFieldByJvmName2(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField;

    move-result-object v0

    .line 888
    .local v0, "f":Ljavassist/CtField;
    const/16 v2, 0x23

    invoke-virtual {p1, v2}, Ljavassist/compiler/ast/Expr;->setOperator(I)V

    .line 889
    new-instance v2, Ljavassist/compiler/ast/Symbol;

    invoke-static {p2}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljavassist/compiler/ast/Expr;->setOprand1(Ljavassist/compiler/ast/ASTree;)V

    .line 890
    invoke-virtual {v1, v0}, Ljavassist/compiler/ast/Member;->setField(Ljavassist/CtField;)V

    .line 891
    return-object v0
.end method

.method public static getConstantFieldValue(Ljavassist/CtField;)Ljavassist/compiler/ast/ASTree;
    .locals 6
    .param p0, "f"    # Ljavassist/CtField;

    .prologue
    const/4 v2, 0x0

    .line 455
    if-nez p0, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-object v2

    .line 458
    :cond_1
    invoke-virtual {p0}, Ljavassist/CtField;->getConstantValue()Ljava/lang/Object;

    move-result-object v1

    .line 459
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 462
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 463
    new-instance v2, Ljavassist/compiler/ast/StringL;

    check-cast v1, Ljava/lang/String;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-direct {v2, v1}, Ljavassist/compiler/ast/StringL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 464
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v3, v1, Ljava/lang/Double;

    if-nez v3, :cond_3

    instance-of v3, v1, Ljava/lang/Float;

    if-eqz v3, :cond_5

    .line 465
    :cond_3
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_4

    const/16 v0, 0x195

    .line 467
    .local v0, "token":I
    :goto_1
    new-instance v2, Ljavassist/compiler/ast/DoubleConst;

    check-cast v1, Ljava/lang/Number;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-direct {v2, v4, v5, v0}, Ljavassist/compiler/ast/DoubleConst;-><init>(DI)V

    goto :goto_0

    .line 465
    .end local v0    # "token":I
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_4
    const/16 v0, 0x194

    goto :goto_1

    .line 469
    :cond_5
    instance-of v3, v1, Ljava/lang/Number;

    if-eqz v3, :cond_7

    .line 470
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_6

    const/16 v0, 0x193

    .line 471
    .restart local v0    # "token":I
    :goto_2
    new-instance v2, Ljavassist/compiler/ast/IntConst;

    check-cast v1, Ljava/lang/Number;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5, v0}, Ljavassist/compiler/ast/IntConst;-><init>(JI)V

    goto :goto_0

    .line 470
    .end local v0    # "token":I
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_6
    const/16 v0, 0x192

    goto :goto_2

    .line 473
    :cond_7
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 474
    new-instance v3, Ljavassist/compiler/ast/Keyword;

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x19a

    :goto_3
    invoke-direct {v3, v2}, Ljavassist/compiler/ast/Keyword;-><init>(I)V

    move-object v2, v3

    goto :goto_0

    :cond_8
    const/16 v2, 0x19b

    goto :goto_3
.end method

.method private static getConstantFieldValue(Ljavassist/compiler/ast/Member;)Ljavassist/compiler/ast/ASTree;
    .locals 1
    .param p0, "mem"    # Ljavassist/compiler/ast/Member;

    .prologue
    .line 451
    invoke-virtual {p0}, Ljavassist/compiler/ast/Member;->getField()Ljavassist/CtField;

    move-result-object v0

    invoke-static {v0}, Ljavassist/compiler/TypeChecker;->getConstantFieldValue(Ljavassist/CtField;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    return-object v0
.end method

.method private insertCast(Ljavassist/compiler/ast/BinExpr;II)V
    .locals 3
    .param p1, "expr"    # Ljavassist/compiler/ast/BinExpr;
    .param p2, "type1"    # I
    .param p3, "type2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 539
    invoke-static {p2, p3}, Ljavassist/compiler/CodeGen;->rightIsStrong(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    new-instance v0, Ljavassist/compiler/ast/CastExpr;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-direct {v0, p3, v1, v2}, Ljavassist/compiler/ast/CastExpr;-><init>(IILjavassist/compiler/ast/ASTree;)V

    invoke-virtual {p1, v0}, Ljavassist/compiler/ast/BinExpr;->setLeft(Ljavassist/compiler/ast/ASTree;)V

    .line 543
    :goto_0
    return-void

    .line 542
    :cond_0
    iput p2, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    goto :goto_0
.end method

.method private isConstant(Ljavassist/compiler/ast/BinExpr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Z
    .locals 4
    .param p1, "expr"    # Ljavassist/compiler/ast/BinExpr;
    .param p2, "op"    # I
    .param p3, "left"    # Ljavassist/compiler/ast/ASTree;
    .param p4, "right"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2b

    .line 396
    invoke-static {p3}, Ljavassist/compiler/TypeChecker;->stripPlusExpr(Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;

    move-result-object p3

    .line 397
    invoke-static {p4}, Ljavassist/compiler/TypeChecker;->stripPlusExpr(Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;

    move-result-object p4

    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, "newExpr":Ljavassist/compiler/ast/ASTree;
    instance-of v1, p3, Ljavassist/compiler/ast/StringL;

    if-eqz v1, :cond_1

    instance-of v1, p4, Ljavassist/compiler/ast/StringL;

    if-eqz v1, :cond_1

    if-ne p2, v3, :cond_1

    .line 400
    new-instance v0, Ljavassist/compiler/ast/StringL;

    .end local v0    # "newExpr":Ljavassist/compiler/ast/ASTree;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p3, Ljavassist/compiler/ast/StringL;

    .end local p3    # "left":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p3}, Ljavassist/compiler/ast/StringL;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p4, Ljavassist/compiler/ast/StringL;

    .end local p4    # "right":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p4}, Ljavassist/compiler/ast/StringL;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/compiler/ast/StringL;-><init>(Ljava/lang/String;)V

    .line 407
    .restart local v0    # "newExpr":Ljavassist/compiler/ast/ASTree;
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 408
    const/4 v1, 0x0

    .line 414
    :goto_1
    return v1

    .line 402
    .restart local p3    # "left":Ljavassist/compiler/ast/ASTree;
    .restart local p4    # "right":Ljavassist/compiler/ast/ASTree;
    :cond_1
    instance-of v1, p3, Ljavassist/compiler/ast/IntConst;

    if-eqz v1, :cond_2

    .line 403
    check-cast p3, Ljavassist/compiler/ast/IntConst;

    .end local p3    # "left":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p3, p2, p4}, Ljavassist/compiler/ast/IntConst;->compute(ILjavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    goto :goto_0

    .line 404
    .restart local p3    # "left":Ljavassist/compiler/ast/ASTree;
    :cond_2
    instance-of v1, p3, Ljavassist/compiler/ast/DoubleConst;

    if-eqz v1, :cond_0

    .line 405
    check-cast p3, Ljavassist/compiler/ast/DoubleConst;

    .end local p3    # "left":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p3, p2, p4}, Ljavassist/compiler/ast/DoubleConst;->compute(ILjavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    goto :goto_0

    .line 410
    .end local p4    # "right":Ljavassist/compiler/ast/ASTree;
    :cond_3
    invoke-virtual {p1, v3}, Ljavassist/compiler/ast/BinExpr;->setOperator(I)V

    .line 411
    invoke-virtual {p1, v0}, Ljavassist/compiler/ast/BinExpr;->setOprand1(Ljavassist/compiler/ast/ASTree;)V

    .line 412
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljavassist/compiler/ast/BinExpr;->setOprand2(Ljavassist/compiler/ast/ASTree;)V

    .line 413
    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 414
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isConstant(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;)Z
    .locals 6
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .param p2, "op"    # I
    .param p3, "oprand"    # Ljavassist/compiler/ast/ASTree;

    .prologue
    const/16 v5, 0x2d

    const/4 v1, 0x0

    .line 605
    invoke-static {p3}, Ljavassist/compiler/TypeChecker;->stripPlusExpr(Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;

    move-result-object p3

    .line 606
    instance-of v4, p3, Ljavassist/compiler/ast/IntConst;

    if-eqz v4, :cond_2

    move-object v0, p3

    .line 607
    check-cast v0, Ljavassist/compiler/ast/IntConst;

    .line 608
    .local v0, "c":Ljavassist/compiler/ast/IntConst;
    invoke-virtual {v0}, Ljavassist/compiler/ast/IntConst;->get()J

    move-result-wide v2

    .line 609
    .local v2, "v":J
    if-ne p2, v5, :cond_1

    .line 610
    neg-long v2, v2

    .line 616
    :goto_0
    invoke-virtual {v0, v2, v3}, Ljavassist/compiler/ast/IntConst;->set(J)V

    .line 628
    .end local v0    # "c":Ljavassist/compiler/ast/IntConst;
    .end local v2    # "v":J
    :goto_1
    const/16 v1, 0x2b

    invoke-virtual {p1, v1}, Ljavassist/compiler/ast/Expr;->setOperator(I)V

    .line 629
    const/4 v1, 0x1

    :cond_0
    return v1

    .line 611
    .restart local v0    # "c":Ljavassist/compiler/ast/IntConst;
    .restart local v2    # "v":J
    :cond_1
    const/16 v4, 0x7e

    if-ne p2, v4, :cond_0

    .line 612
    const-wide/16 v4, -0x1

    xor-long/2addr v2, v4

    goto :goto_0

    .line 618
    .end local v0    # "c":Ljavassist/compiler/ast/IntConst;
    .end local v2    # "v":J
    :cond_2
    instance-of v4, p3, Ljavassist/compiler/ast/DoubleConst;

    if-eqz v4, :cond_0

    move-object v0, p3

    .line 619
    check-cast v0, Ljavassist/compiler/ast/DoubleConst;

    .line 620
    .local v0, "c":Ljavassist/compiler/ast/DoubleConst;
    if-ne p2, v5, :cond_0

    .line 621
    invoke-virtual {v0}, Ljavassist/compiler/ast/DoubleConst;->get()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v0, v4, v5}, Ljavassist/compiler/ast/DoubleConst;->set(D)V

    goto :goto_1
.end method

.method private static isPlusExpr(Ljavassist/compiler/ast/ASTree;)Z
    .locals 4
    .param p0, "expr"    # Ljavassist/compiler/ast/ASTree;

    .prologue
    const/4 v2, 0x0

    .line 481
    instance-of v3, p0, Ljavassist/compiler/ast/BinExpr;

    if-eqz v3, :cond_0

    move-object v0, p0

    .line 482
    check-cast v0, Ljavassist/compiler/ast/BinExpr;

    .line 483
    .local v0, "bexpr":Ljavassist/compiler/ast/BinExpr;
    invoke-virtual {v0}, Ljavassist/compiler/ast/BinExpr;->getOperator()I

    move-result v1

    .line 484
    .local v1, "token":I
    const/16 v3, 0x2b

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    .line 487
    .end local v0    # "bexpr":Ljavassist/compiler/ast/BinExpr;
    .end local v1    # "token":I
    :cond_0
    return v2
.end method

.method private static makeAppendCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;
    .locals 3
    .param p0, "target"    # Ljavassist/compiler/ast/ASTree;
    .param p1, "arg"    # Ljavassist/compiler/ast/ASTree;

    .prologue
    .line 491
    const/16 v0, 0x2e

    new-instance v1, Ljavassist/compiler/ast/Member;

    const-string v2, "append"

    invoke-direct {v1, v2}, Ljavassist/compiler/ast/Member;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0, v1}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v0

    new-instance v1, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v1, p1}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-static {v0, v1}, Ljavassist/compiler/ast/CallExpr;->makeCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/CallExpr;

    move-result-object v0

    return-object v0
.end method

.method static stripPlusExpr(Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;
    .locals 5
    .param p0, "expr"    # Ljavassist/compiler/ast/ASTree;

    .prologue
    const/16 v4, 0x2b

    .line 421
    instance-of v3, p0, Ljavassist/compiler/ast/BinExpr;

    if-eqz v3, :cond_1

    move-object v1, p0

    .line 422
    check-cast v1, Ljavassist/compiler/ast/BinExpr;

    .line 423
    .local v1, "e":Ljavassist/compiler/ast/BinExpr;
    invoke-virtual {v1}, Ljavassist/compiler/ast/BinExpr;->getOperator()I

    move-result v3

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Ljavassist/compiler/ast/BinExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    if-nez v3, :cond_2

    .line 424
    invoke-virtual {v1}, Ljavassist/compiler/ast/BinExpr;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 443
    .end local v1    # "e":Ljavassist/compiler/ast/BinExpr;
    :cond_0
    :goto_0
    return-object v0

    .line 426
    :cond_1
    instance-of v3, p0, Ljavassist/compiler/ast/Expr;

    if-eqz v3, :cond_4

    move-object v1, p0

    .line 427
    check-cast v1, Ljavassist/compiler/ast/Expr;

    .line 428
    .local v1, "e":Ljavassist/compiler/ast/Expr;
    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v2

    .line 429
    .local v2, "op":I
    const/16 v3, 0x23

    if-ne v2, v3, :cond_3

    .line 430
    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    check-cast v3, Ljavassist/compiler/ast/Member;

    invoke-static {v3}, Ljavassist/compiler/TypeChecker;->getConstantFieldValue(Ljavassist/compiler/ast/Member;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 431
    .local v0, "cexpr":Ljavassist/compiler/ast/ASTree;
    if-nez v0, :cond_0

    .end local v0    # "cexpr":Ljavassist/compiler/ast/ASTree;
    .end local v1    # "e":Ljavassist/compiler/ast/Expr;
    .end local v2    # "op":I
    :cond_2
    move-object v0, p0

    .line 443
    goto :goto_0

    .line 434
    .restart local v1    # "e":Ljavassist/compiler/ast/Expr;
    .restart local v2    # "op":I
    :cond_3
    if-ne v2, v4, :cond_2

    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    if-nez v3, :cond_2

    .line 435
    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    goto :goto_0

    .line 437
    .end local v1    # "e":Ljavassist/compiler/ast/Expr;
    .end local v2    # "op":I
    :cond_4
    instance-of v3, p0, Ljavassist/compiler/ast/Member;

    if-eqz v3, :cond_2

    move-object v3, p0

    .line 438
    check-cast v3, Ljavassist/compiler/ast/Member;

    invoke-static {v3}, Ljavassist/compiler/TypeChecker;->getConstantFieldValue(Ljavassist/compiler/ast/Member;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 439
    .restart local v0    # "cexpr":Ljavassist/compiler/ast/ASTree;
    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method protected static typeToString(Ljava/lang/StringBuffer;IILjava/lang/String;)Ljava/lang/StringBuffer;
    .locals 4
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "type"    # I
    .param p2, "dim"    # I
    .param p3, "cname"    # Ljava/lang/String;

    .prologue
    .line 81
    const/16 v3, 0x133

    if-ne p1, v3, :cond_0

    .line 82
    invoke-static {p3}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "s":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, p2

    .line 94
    .end local p2    # "dim":I
    .local v0, "dim":I
    :goto_1
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "dim":I
    .restart local p2    # "dim":I
    if-lez v0, :cond_2

    .line 95
    const-string v3, "[]"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, p2

    .end local p2    # "dim":I
    .restart local v0    # "dim":I
    goto :goto_1

    .line 83
    .end local v0    # "dim":I
    .end local v2    # "s":Ljava/lang/String;
    .restart local p2    # "dim":I
    :cond_0
    const/16 v3, 0x19c

    if-ne p1, v3, :cond_1

    .line 84
    const-string v2, "Object"

    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_0

    .line 87
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->getTypeName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_0

    .line 89
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljavassist/compiler/CompileError;
    const-string v2, "?"

    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_0

    .line 97
    .end local v1    # "e":Ljavassist/compiler/CompileError;
    :cond_2
    return-object p0
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
    .line 181
    move-object v1, p1

    .line 182
    .local v1, "list":Ljavassist/compiler/ast/ASTList;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {v1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 184
    .local v0, "h":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {v1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    .line 185
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    goto :goto_0

    .line 188
    .end local v0    # "h":Ljavassist/compiler/ast/ASTree;
    :cond_1
    return-void
.end method

.method public atArrayLength(Ljavassist/compiler/ast/Expr;)V
    .locals 2
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 901
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 902
    iget v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    if-nez v0, :cond_0

    .line 903
    new-instance v0, Ljavassist/compiler/NoFieldException;

    const-string v1, "length"

    invoke-direct {v0, v1, p1}, Ljavassist/compiler/NoFieldException;-><init>(Ljava/lang/String;Ljavassist/compiler/ast/ASTree;)V

    throw v0

    .line 905
    :cond_0
    const/16 v0, 0x144

    iput v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 906
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 907
    return-void
.end method

.method public atArrayRead(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V
    .locals 4
    .param p1, "array"    # Ljavassist/compiler/ast/ASTree;
    .param p2, "index"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 912
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 913
    iget v2, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 914
    .local v2, "type":I
    iget v1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 915
    .local v1, "dim":I
    iget-object v0, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 916
    .local v0, "cname":Ljava/lang/String;
    invoke-virtual {p2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 917
    iput v2, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 918
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 919
    iput-object v0, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 920
    return-void
.end method

.method public atAssignExpr(Ljavassist/compiler/ast/AssignExpr;)V
    .locals 8
    .param p1, "expr"    # Ljavassist/compiler/ast/AssignExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p1}, Ljavassist/compiler/ast/AssignExpr;->getOperator()I

    move-result v2

    .line 215
    .local v2, "op":I
    invoke-virtual {p1}, Ljavassist/compiler/ast/AssignExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v7

    .line 216
    .local v7, "left":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p1}, Ljavassist/compiler/ast/AssignExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v5

    .line 217
    .local v5, "right":Ljavassist/compiler/ast/ASTree;
    instance-of v0, v7, Ljavassist/compiler/ast/Variable;

    if-eqz v0, :cond_0

    move-object v3, v7

    .line 218
    check-cast v3, Ljavassist/compiler/ast/Variable;

    check-cast v7, Ljavassist/compiler/ast/Variable;

    .end local v7    # "left":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {v7}, Ljavassist/compiler/ast/Variable;->getDeclarator()Ljavassist/compiler/ast/Declarator;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljavassist/compiler/TypeChecker;->atVariableAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/Variable;Ljavassist/compiler/ast/Declarator;Ljavassist/compiler/ast/ASTree;)V

    .line 232
    :goto_0
    return-void

    .line 222
    .restart local v7    # "left":Ljavassist/compiler/ast/ASTree;
    :cond_0
    instance-of v0, v7, Ljavassist/compiler/ast/Expr;

    if-eqz v0, :cond_1

    move-object v6, v7

    .line 223
    check-cast v6, Ljavassist/compiler/ast/Expr;

    .line 224
    .local v6, "e":Ljavassist/compiler/ast/Expr;
    invoke-virtual {v6}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v0

    const/16 v1, 0x41

    if-ne v0, v1, :cond_1

    .line 225
    check-cast v7, Ljavassist/compiler/ast/Expr;

    .end local v7    # "left":Ljavassist/compiler/ast/ASTree;
    invoke-direct {p0, p1, v2, v7, v5}, Ljavassist/compiler/TypeChecker;->atArrayAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/Expr;Ljavassist/compiler/ast/ASTree;)V

    goto :goto_0

    .line 230
    .end local v6    # "e":Ljavassist/compiler/ast/Expr;
    .restart local v7    # "left":Ljavassist/compiler/ast/ASTree;
    :cond_1
    invoke-virtual {p0, p1, v2, v7, v5}, Ljavassist/compiler/TypeChecker;->atFieldAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    goto :goto_0
.end method

.method public atBinExpr(Ljavassist/compiler/ast/BinExpr;)V
    .locals 10
    .param p1, "expr"    # Ljavassist/compiler/ast/BinExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 306
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->getOperator()I

    move-result v4

    .line 307
    .local v4, "token":I
    invoke-static {v4}, Ljavassist/compiler/CodeGen;->lookupBinOp(I)I

    move-result v1

    .line 308
    .local v1, "k":I
    if-ltz v1, :cond_2

    .line 311
    const/16 v6, 0x2b

    if-ne v4, v6, :cond_1

    .line 312
    invoke-direct {p0, p1}, Ljavassist/compiler/TypeChecker;->atPlusExpr(Ljavassist/compiler/ast/BinExpr;)Ljavassist/compiler/ast/Expr;

    move-result-object v0

    .line 313
    .local v0, "e":Ljavassist/compiler/ast/Expr;
    if-eqz v0, :cond_0

    .line 317
    const/16 v6, 0x2e

    new-instance v7, Ljavassist/compiler/ast/Member;

    const-string v8, "toString"

    invoke-direct {v7, v8}, Ljavassist/compiler/ast/Member;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v0, v7}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v6

    invoke-static {v6, v9}, Ljavassist/compiler/ast/CallExpr;->makeCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/CallExpr;

    move-result-object v0

    .line 319
    invoke-virtual {p1, v0}, Ljavassist/compiler/ast/BinExpr;->setOprand1(Ljavassist/compiler/ast/ASTree;)V

    .line 320
    invoke-virtual {p1, v9}, Ljavassist/compiler/ast/BinExpr;->setOprand2(Ljavassist/compiler/ast/ASTree;)V

    .line 321
    const-string v6, "java/lang/String"

    iput-object v6, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 339
    .end local v0    # "e":Ljavassist/compiler/ast/Expr;
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    .line 326
    .local v2, "left":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    .line 327
    .local v3, "right":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 328
    iget v5, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 329
    .local v5, "type1":I
    invoke-virtual {v3, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 330
    invoke-direct {p0, p1, v4, v2, v3}, Ljavassist/compiler/TypeChecker;->isConstant(Ljavassist/compiler/ast/BinExpr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 331
    invoke-direct {p0, p1, v4, v5}, Ljavassist/compiler/TypeChecker;->computeBinExprType(Ljavassist/compiler/ast/BinExpr;II)V

    goto :goto_0

    .line 337
    .end local v2    # "left":Ljavassist/compiler/ast/ASTree;
    .end local v3    # "right":Ljavassist/compiler/ast/ASTree;
    .end local v5    # "type1":I
    :cond_2
    invoke-direct {p0, p1}, Ljavassist/compiler/TypeChecker;->booleanExpr(Ljavassist/compiler/ast/ASTree;)V

    goto :goto_0
.end method

.method public atCallExpr(Ljavassist/compiler/ast/CallExpr;)V
    .locals 13
    .param p1, "expr"    # Ljavassist/compiler/ast/CallExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    const/16 v12, 0x133

    const/16 v10, 0x23

    const/4 v11, 0x0

    .line 633
    const/4 v4, 0x0

    .line 634
    .local v4, "mname":Ljava/lang/String;
    const/4 v8, 0x0

    .line 635
    .local v8, "targetClass":Ljavassist/CtClass;
    invoke-virtual {p1}, Ljavassist/compiler/ast/CallExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    .line 636
    .local v2, "method":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p1}, Ljavassist/compiler/ast/CallExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/ASTList;

    .line 638
    .local v0, "args":Ljavassist/compiler/ast/ASTList;
    instance-of v9, v2, Ljavassist/compiler/ast/Member;

    if-eqz v9, :cond_0

    .line 639
    check-cast v2, Ljavassist/compiler/ast/Member;

    .end local v2    # "method":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {v2}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v4

    .line 640
    iget-object v8, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    .line 688
    :goto_0
    invoke-virtual {p0, v8, v4, v0}, Ljavassist/compiler/TypeChecker;->atMethodCallCore(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/compiler/ast/ASTList;)Ljavassist/compiler/MemberResolver$Method;

    move-result-object v3

    .line 690
    .local v3, "minfo":Ljavassist/compiler/MemberResolver$Method;
    invoke-virtual {p1, v3}, Ljavassist/compiler/ast/CallExpr;->setMethod(Ljavassist/compiler/MemberResolver$Method;)V

    .line 691
    return-void

    .line 642
    .end local v3    # "minfo":Ljavassist/compiler/MemberResolver$Method;
    .restart local v2    # "method":Ljavassist/compiler/ast/ASTree;
    :cond_0
    instance-of v9, v2, Ljavassist/compiler/ast/Keyword;

    if-eqz v9, :cond_2

    .line 643
    const-string v4, "<init>"

    .line 644
    check-cast v2, Ljavassist/compiler/ast/Keyword;

    .end local v2    # "method":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {v2}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result v9

    const/16 v10, 0x150

    if-ne v9, v10, :cond_1

    .line 645
    iget-object v9, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    invoke-static {v9}, Ljavassist/compiler/MemberResolver;->getSuperclass(Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v8

    goto :goto_0

    .line 647
    :cond_1
    iget-object v8, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    goto :goto_0

    .line 649
    .restart local v2    # "method":Ljavassist/compiler/ast/ASTree;
    :cond_2
    instance-of v9, v2, Ljavassist/compiler/ast/Expr;

    if-eqz v9, :cond_8

    move-object v1, v2

    .line 650
    check-cast v1, Ljavassist/compiler/ast/Expr;

    .line 651
    .local v1, "e":Ljavassist/compiler/ast/Expr;
    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v9

    check-cast v9, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v9}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v4

    .line 652
    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v6

    .line 653
    .local v6, "op":I
    if-ne v6, v10, :cond_3

    .line 654
    iget-object v10, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v9

    check-cast v9, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v9}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9, v11}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v8

    goto :goto_0

    .line 657
    :cond_3
    const/16 v9, 0x2e

    if-ne v6, v9, :cond_7

    .line 658
    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v7

    .line 660
    .local v7, "target":Ljavassist/compiler/ast/ASTree;
    :try_start_0
    invoke-virtual {v7, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V
    :try_end_0
    .catch Ljavassist/compiler/NoFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    :goto_1
    iget v9, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    if-lez v9, :cond_5

    .line 676
    iget-object v9, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    const-string v10, "java.lang.Object"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v8

    goto :goto_0

    .line 662
    :catch_0
    move-exception v5

    .line 663
    .local v5, "nfe":Ljavassist/compiler/NoFieldException;
    invoke-virtual {v5}, Ljavassist/compiler/NoFieldException;->getExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v9

    if-eq v9, v7, :cond_4

    .line 664
    throw v5

    .line 667
    :cond_4
    iput v12, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 668
    iput v11, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 669
    invoke-virtual {v5}, Ljavassist/compiler/NoFieldException;->getField()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 670
    invoke-virtual {v1, v10}, Ljavassist/compiler/ast/Expr;->setOperator(I)V

    .line 671
    new-instance v9, Ljavassist/compiler/ast/Symbol;

    iget-object v10, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    invoke-static {v10}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljavassist/compiler/ast/Expr;->setOprand1(Ljavassist/compiler/ast/ASTree;)V

    goto :goto_1

    .line 677
    .end local v5    # "nfe":Ljavassist/compiler/NoFieldException;
    :cond_5
    iget v9, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    if-ne v9, v12, :cond_6

    .line 678
    iget-object v9, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    iget-object v10, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljavassist/compiler/MemberResolver;->lookupClassByJvmName(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v8

    goto/16 :goto_0

    .line 680
    :cond_6
    invoke-static {}, Ljavassist/compiler/TypeChecker;->badMethod()V

    goto/16 :goto_0

    .line 683
    .end local v7    # "target":Ljavassist/compiler/ast/ASTree;
    :cond_7
    invoke-static {}, Ljavassist/compiler/TypeChecker;->badMethod()V

    goto/16 :goto_0

    .line 686
    .end local v1    # "e":Ljavassist/compiler/ast/Expr;
    .end local v6    # "op":I
    :cond_8
    invoke-static {}, Ljavassist/compiler/TypeChecker;->fatal()V

    goto/16 :goto_0
.end method

.method public atCastExpr(Ljavassist/compiler/ast/CastExpr;)V
    .locals 2
    .param p1, "expr"    # Ljavassist/compiler/ast/CastExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 546
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getClassName()Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavassist/compiler/TypeChecker;->resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "cname":Ljava/lang/String;
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getOprand()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 548
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getType()I

    move-result v1

    iput v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 549
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getArrayDim()I

    move-result v1

    iput v1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 550
    iput-object v0, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 551
    return-void
.end method

.method public atClassObject(Ljavassist/compiler/ast/Expr;)V
    .locals 1
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 895
    const/16 v0, 0x133

    iput v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 896
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 897
    const-string v0, "java/lang/Class"

    iput-object v0, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 898
    return-void
.end method

.method public atCondExpr(Ljavassist/compiler/ast/CondExpr;)V
    .locals 7
    .param p1, "expr"    # Ljavassist/compiler/ast/CondExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 283
    invoke-virtual {p1}, Ljavassist/compiler/ast/CondExpr;->condExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    invoke-direct {p0, v3}, Ljavassist/compiler/TypeChecker;->booleanExpr(Ljavassist/compiler/ast/ASTree;)V

    .line 284
    invoke-virtual {p1}, Ljavassist/compiler/ast/CondExpr;->thenExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 285
    iget v2, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 286
    .local v2, "type1":I
    iget v1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 287
    .local v1, "dim1":I
    iget-object v0, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 288
    .local v0, "cname1":Ljava/lang/String;
    invoke-virtual {p1}, Ljavassist/compiler/ast/CondExpr;->elseExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 290
    if-nez v1, :cond_0

    iget v3, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    if-ne v1, v3, :cond_0

    .line 291
    iget v3, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    invoke-static {v2, v3}, Ljavassist/compiler/CodeGen;->rightIsStrong(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    new-instance v3, Ljavassist/compiler/ast/CastExpr;

    iget v4, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    invoke-virtual {p1}, Ljavassist/compiler/ast/CondExpr;->thenExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v5

    invoke-direct {v3, v4, v6, v5}, Ljavassist/compiler/ast/CastExpr;-><init>(IILjavassist/compiler/ast/ASTree;)V

    invoke-virtual {p1, v3}, Ljavassist/compiler/ast/CondExpr;->setThen(Ljavassist/compiler/ast/ASTree;)V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget v3, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    invoke-static {v3, v2}, Ljavassist/compiler/CodeGen;->rightIsStrong(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    new-instance v3, Ljavassist/compiler/ast/CastExpr;

    invoke-virtual {p1}, Ljavassist/compiler/ast/CondExpr;->elseExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    invoke-direct {v3, v2, v6, v4}, Ljavassist/compiler/ast/CastExpr;-><init>(IILjavassist/compiler/ast/ASTree;)V

    invoke-virtual {p1, v3}, Ljavassist/compiler/ast/CondExpr;->setElse(Ljavassist/compiler/ast/ASTree;)V

    .line 295
    iput v2, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    goto :goto_0
.end method

.method public atDoubleConst(Ljavassist/compiler/ast/DoubleConst;)V
    .locals 2
    .param p1, "d"    # Ljavassist/compiler/ast/DoubleConst;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 1012
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 1013
    invoke-virtual {p1}, Ljavassist/compiler/ast/DoubleConst;->getType()I

    move-result v0

    const/16 v1, 0x195

    if-ne v0, v1, :cond_0

    .line 1014
    const/16 v0, 0x138

    iput v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 1017
    :goto_0
    return-void

    .line 1016
    :cond_0
    const/16 v0, 0x13d

    iput v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    goto :goto_0
.end method

.method public atExpr(Ljavassist/compiler/ast/Expr;)V
    .locals 5
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 563
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v3

    .line 564
    .local v3, "token":I
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    .line 565
    .local v2, "oprand":Ljavassist/compiler/ast/ASTree;
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_3

    .line 566
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    check-cast v4, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v4}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "member":Ljava/lang/String;
    const-string v4, "length"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 569
    :try_start_0
    invoke-virtual {p0, p1}, Ljavassist/compiler/TypeChecker;->atArrayLength(Ljavassist/compiler/ast/Expr;)V
    :try_end_0
    .catch Ljavassist/compiler/NoFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    .end local v0    # "member":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 571
    .restart local v0    # "member":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 573
    .local v1, "nfe":Ljavassist/compiler/NoFieldException;
    invoke-direct {p0, p1}, Ljavassist/compiler/TypeChecker;->atFieldRead(Ljavassist/compiler/ast/ASTree;)V

    goto :goto_0

    .line 575
    .end local v1    # "nfe":Ljavassist/compiler/NoFieldException;
    :cond_1
    const-string v4, "class"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 576
    invoke-virtual {p0, p1}, Ljavassist/compiler/TypeChecker;->atClassObject(Ljavassist/compiler/ast/Expr;)V

    goto :goto_0

    .line 578
    :cond_2
    invoke-direct {p0, p1}, Ljavassist/compiler/TypeChecker;->atFieldRead(Ljavassist/compiler/ast/ASTree;)V

    goto :goto_0

    .line 580
    .end local v0    # "member":Ljava/lang/String;
    :cond_3
    const/16 v4, 0x23

    if-ne v3, v4, :cond_5

    .line 581
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    check-cast v4, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v4}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v0

    .line 582
    .restart local v0    # "member":Ljava/lang/String;
    const-string v4, "class"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 583
    invoke-virtual {p0, p1}, Ljavassist/compiler/TypeChecker;->atClassObject(Ljavassist/compiler/ast/Expr;)V

    goto :goto_0

    .line 585
    :cond_4
    invoke-direct {p0, p1}, Ljavassist/compiler/TypeChecker;->atFieldRead(Ljavassist/compiler/ast/ASTree;)V

    goto :goto_0

    .line 587
    .end local v0    # "member":Ljava/lang/String;
    :cond_5
    const/16 v4, 0x41

    if-ne v3, v4, :cond_6

    .line 588
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Ljavassist/compiler/TypeChecker;->atArrayRead(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    goto :goto_0

    .line 589
    :cond_6
    const/16 v4, 0x16a

    if-eq v3, v4, :cond_7

    const/16 v4, 0x16b

    if-ne v3, v4, :cond_8

    .line 590
    :cond_7
    invoke-direct {p0, v3, v2, p1}, Ljavassist/compiler/TypeChecker;->atPlusPlus(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/Expr;)V

    goto :goto_0

    .line 591
    :cond_8
    const/16 v4, 0x21

    if-ne v3, v4, :cond_9

    .line 592
    invoke-direct {p0, p1}, Ljavassist/compiler/TypeChecker;->booleanExpr(Ljavassist/compiler/ast/ASTree;)V

    goto :goto_0

    .line 593
    :cond_9
    const/16 v4, 0x43

    if-ne v3, v4, :cond_a

    .line 594
    invoke-static {}, Ljavassist/compiler/TypeChecker;->fatal()V

    goto :goto_0

    .line 596
    :cond_a
    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 597
    invoke-direct {p0, p1, v3, v2}, Ljavassist/compiler/TypeChecker;->isConstant(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 598
    const/16 v4, 0x2d

    if-eq v3, v4, :cond_b

    const/16 v4, 0x7e

    if-ne v3, v4, :cond_0

    .line 599
    :cond_b
    iget v4, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    invoke-static {v4}, Ljavassist/compiler/CodeGen;->isP_INT(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 600
    const/16 v4, 0x144

    iput v4, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    goto :goto_0
.end method

.method protected atFieldAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V
    .locals 4
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .param p2, "op"    # I
    .param p3, "left"    # Ljavassist/compiler/ast/ASTree;
    .param p4, "right"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 271
    invoke-virtual {p0, p3}, Ljavassist/compiler/TypeChecker;->fieldAccess(Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField;

    move-result-object v1

    .line 272
    .local v1, "f":Ljavassist/CtField;
    invoke-direct {p0, v1}, Ljavassist/compiler/TypeChecker;->atFieldRead(Ljavassist/CtField;)V

    .line 273
    iget v3, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 274
    .local v3, "fType":I
    iget v2, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 275
    .local v2, "fDim":I
    iget-object v0, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 276
    .local v0, "cname":Ljava/lang/String;
    invoke-virtual {p4, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 277
    iput v3, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 278
    iput v2, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 279
    iput-object v0, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 280
    return-void
.end method

.method protected atFieldPlusPlus(Ljavassist/compiler/ast/ASTree;)V
    .locals 4
    .param p1, "oprand"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    const/16 v3, 0x144

    .line 954
    invoke-virtual {p0, p1}, Ljavassist/compiler/TypeChecker;->fieldAccess(Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField;

    move-result-object v0

    .line 955
    .local v0, "f":Ljavassist/CtField;
    invoke-direct {p0, v0}, Ljavassist/compiler/TypeChecker;->atFieldRead(Ljavassist/CtField;)V

    .line 956
    iget v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 957
    .local v1, "t":I
    if-eq v1, v3, :cond_0

    const/16 v2, 0x12f

    if-eq v1, v2, :cond_0

    const/16 v2, 0x132

    if-eq v1, v2, :cond_0

    const/16 v2, 0x14e

    if-ne v1, v2, :cond_1

    .line 958
    :cond_0
    iput v3, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 959
    :cond_1
    return-void
.end method

.method public atInstanceOfExpr(Ljavassist/compiler/ast/InstanceOfExpr;)V
    .locals 1
    .param p1, "expr"    # Ljavassist/compiler/ast/InstanceOfExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 554
    invoke-virtual {p1}, Ljavassist/compiler/ast/InstanceOfExpr;->getOprand()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 555
    const/16 v0, 0x12d

    iput v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 556
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 557
    return-void
.end method

.method public atIntConst(Ljavassist/compiler/ast/IntConst;)V
    .locals 3
    .param p1, "i"    # Ljavassist/compiler/ast/IntConst;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    const/16 v2, 0x192

    .line 1003
    const/4 v1, 0x0

    iput v1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 1004
    invoke-virtual {p1}, Ljavassist/compiler/ast/IntConst;->getType()I

    move-result v0

    .line 1005
    .local v0, "type":I
    if-eq v0, v2, :cond_0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_2

    .line 1006
    :cond_0
    if-ne v0, v2, :cond_1

    const/16 v1, 0x144

    :goto_0
    iput v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 1009
    :goto_1
    return-void

    .line 1006
    :cond_1
    const/16 v1, 0x132

    goto :goto_0

    .line 1008
    :cond_2
    const/16 v1, 0x146

    iput v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    goto :goto_1
.end method

.method public atKeyword(Ljavassist/compiler/ast/Keyword;)V
    .locals 2
    .param p1, "k"    # Ljavassist/compiler/ast/Keyword;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 973
    const/4 v1, 0x0

    iput v1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 974
    invoke-virtual {p1}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result v0

    .line 975
    .local v0, "token":I
    sparse-switch v0, :sswitch_data_0

    .line 992
    invoke-static {}, Ljavassist/compiler/TypeChecker;->fatal()V

    .line 994
    :goto_0
    return-void

    .line 978
    :sswitch_0
    const/16 v1, 0x12d

    iput v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    goto :goto_0

    .line 981
    :sswitch_1
    const/16 v1, 0x19c

    iput v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    goto :goto_0

    .line 985
    :sswitch_2
    const/16 v1, 0x133

    iput v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 986
    const/16 v1, 0x153

    if-ne v0, v1, :cond_0

    .line 987
    invoke-virtual {p0}, Ljavassist/compiler/TypeChecker;->getThisName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    goto :goto_0

    .line 989
    :cond_0
    invoke-virtual {p0}, Ljavassist/compiler/TypeChecker;->getSuperName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    goto :goto_0

    .line 975
    :sswitch_data_0
    .sparse-switch
        0x150 -> :sswitch_2
        0x153 -> :sswitch_2
        0x19a -> :sswitch_0
        0x19b -> :sswitch_0
        0x19c -> :sswitch_1
    .end sparse-switch
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
    .line 962
    invoke-direct {p0, p1}, Ljavassist/compiler/TypeChecker;->atFieldRead(Ljavassist/compiler/ast/ASTree;)V

    .line 963
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
    .line 737
    const/4 v1, 0x0

    .line 738
    .local v1, "i":I
    :goto_0
    if-eqz p1, :cond_0

    .line 739
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 740
    .local v0, "a":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 741
    iget v2, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    aput v2, p2, v1

    .line 742
    iget v2, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    aput v2, p3, v1

    .line 743
    iget-object v2, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    aput-object v2, p4, v1

    .line 744
    add-int/lit8 v1, v1, 0x1

    .line 745
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    .line 746
    goto :goto_0

    .line 747
    .end local v0    # "a":Ljavassist/compiler/ast/ASTree;
    :cond_0
    return-void
.end method

.method public atMethodCallCore(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/compiler/ast/ASTList;)Ljavassist/compiler/MemberResolver$Method;
    .locals 15
    .param p1, "targetClass"    # Ljavassist/CtClass;
    .param p2, "mname"    # Ljava/lang/String;
    .param p3, "args"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 705
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Ljavassist/compiler/TypeChecker;->getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I

    move-result v13

    .line 706
    .local v13, "nargs":I
    new-array v6, v13, [I

    .line 707
    .local v6, "types":[I
    new-array v7, v13, [I

    .line 708
    .local v7, "dims":[I
    new-array v8, v13, [Ljava/lang/String;

    .line 709
    .local v8, "cnames":[Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v6, v7, v8}, Ljavassist/compiler/TypeChecker;->atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V

    .line 711
    iget-object v1, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    iget-object v3, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    iget-object v4, p0, Ljavassist/compiler/TypeChecker;->thisMethod:Ljavassist/bytecode/MethodInfo;

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v8}, Ljavassist/compiler/MemberResolver;->lookupMethod(Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljava/lang/String;[I[I[Ljava/lang/String;)Ljavassist/compiler/MemberResolver$Method;

    move-result-object v11

    .line 714
    .local v11, "found":Ljavassist/compiler/MemberResolver$Method;
    if-nez v11, :cond_1

    .line 715
    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v9

    .line 716
    .local v9, "clazz":Ljava/lang/String;
    invoke-static {v6, v7, v8}, Ljavassist/compiler/TypeChecker;->argTypesToString([I[I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 718
    .local v14, "signature":Ljava/lang/String;
    const-string v1, "<init>"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find constructor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 723
    .local v12, "msg":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljavassist/compiler/CompileError;

    invoke-direct {v1, v12}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 721
    .end local v12    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 726
    .end local v9    # "clazz":Ljava/lang/String;
    .end local v12    # "msg":Ljava/lang/String;
    .end local v14    # "signature":Ljava/lang/String;
    :cond_1
    iget-object v1, v11, Ljavassist/compiler/MemberResolver$Method;->info:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v10

    .line 727
    .local v10, "desc":Ljava/lang/String;
    invoke-virtual {p0, v10}, Ljavassist/compiler/TypeChecker;->setReturnType(Ljava/lang/String;)V

    .line 728
    return-object v11
.end method

.method protected atMultiNewArray(ILjavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "classname"    # Ljavassist/compiler/ast/ASTList;
    .param p3, "size"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p3}, Ljavassist/compiler/ast/ASTList;->length()I

    move-result v1

    .line 195
    .local v1, "dim":I
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_0
    if-eqz p3, :cond_0

    .line 196
    invoke-virtual {p3}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    .line 197
    .local v2, "s":Ljavassist/compiler/ast/ASTree;
    if-nez v2, :cond_1

    .line 204
    .end local v2    # "s":Ljavassist/compiler/ast/ASTree;
    :cond_0
    iput p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 205
    iput v1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 206
    const/16 v3, 0x133

    if-ne p1, v3, :cond_2

    .line 207
    invoke-virtual {p0, p2}, Ljavassist/compiler/TypeChecker;->resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 210
    :goto_1
    return-void

    .line 200
    .restart local v2    # "s":Ljavassist/compiler/ast/ASTree;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 201
    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 195
    invoke-virtual {p3}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p3

    goto :goto_0

    .line 209
    .end local v2    # "s":Ljavassist/compiler/ast/ASTree;
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

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
    const/4 v6, 0x1

    .line 157
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getArrayType()I

    move-result v4

    .line 158
    .local v4, "type":I
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getArraySize()Ljavassist/compiler/ast/ASTList;

    move-result-object v2

    .line 159
    .local v2, "size":Ljavassist/compiler/ast/ASTList;
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getClassName()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    .line 160
    .local v0, "classname":Ljavassist/compiler/ast/ASTList;
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getInitializer()Ljavassist/compiler/ast/ArrayInit;

    move-result-object v1

    .line 161
    .local v1, "init":Ljavassist/compiler/ast/ASTree;
    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 164
    :cond_0
    invoke-virtual {v2}, Ljavassist/compiler/ast/ASTList;->length()I

    move-result v5

    if-le v5, v6, :cond_1

    .line 165
    invoke-virtual {p0, v4, v0, v2}, Ljavassist/compiler/TypeChecker;->atMultiNewArray(ILjavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)V

    .line 178
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-virtual {v2}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    .line 168
    .local v3, "sizeExpr":Ljavassist/compiler/ast/ASTree;
    if-eqz v3, :cond_2

    .line 169
    invoke-virtual {v3, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 171
    :cond_2
    iput v4, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 172
    iput v6, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 173
    const/16 v5, 0x133

    if-ne v4, v5, :cond_3

    .line 174
    invoke-virtual {p0, v0}, Ljavassist/compiler/TypeChecker;->resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    goto :goto_0

    .line 176
    :cond_3
    const/4 v5, 0x0

    iput-object v5, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    goto :goto_0
.end method

.method public atNewExpr(Ljavassist/compiler/ast/NewExpr;)V
    .locals 5
    .param p1, "expr"    # Ljavassist/compiler/ast/NewExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->isArray()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    invoke-virtual {p0, p1}, Ljavassist/compiler/TypeChecker;->atNewArrayExpr(Ljavassist/compiler/ast/NewExpr;)V

    .line 154
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v3, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getClassName()Ljavassist/compiler/ast/ASTList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavassist/compiler/MemberResolver;->lookupClassByName(Ljavassist/compiler/ast/ASTList;)Ljavassist/CtClass;

    move-result-object v1

    .line 147
    .local v1, "clazz":Ljavassist/CtClass;
    invoke-virtual {v1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "cname":Ljava/lang/String;
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getArguments()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    .line 149
    .local v0, "args":Ljavassist/compiler/ast/ASTList;
    const-string v3, "<init>"

    invoke-virtual {p0, v1, v3, v0}, Ljavassist/compiler/TypeChecker;->atMethodCallCore(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/compiler/ast/ASTList;)Ljavassist/compiler/MemberResolver$Method;

    .line 150
    const/16 v3, 0x133

    iput v3, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 151
    const/4 v3, 0x0

    iput v3, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 152
    invoke-static {v2}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    goto :goto_0
.end method

.method public atStringL(Ljavassist/compiler/ast/StringL;)V
    .locals 1
    .param p1, "s"    # Ljavassist/compiler/ast/StringL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 997
    const/16 v0, 0x133

    iput v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 998
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 999
    const-string v0, "java/lang/String"

    iput-object v0, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 1000
    return-void
.end method

.method public atVariable(Ljavassist/compiler/ast/Variable;)V
    .locals 2
    .param p1, "v"    # Ljavassist/compiler/ast/Variable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 966
    invoke-virtual {p1}, Ljavassist/compiler/ast/Variable;->getDeclarator()Ljavassist/compiler/ast/Declarator;

    move-result-object v0

    .line 967
    .local v0, "d":Ljavassist/compiler/ast/Declarator;
    invoke-virtual {v0}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result v1

    iput v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 968
    invoke-virtual {v0}, Ljavassist/compiler/ast/Declarator;->getArrayDim()I

    move-result v1

    iput v1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 969
    invoke-virtual {v0}, Ljavassist/compiler/ast/Declarator;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 970
    return-void
.end method

.method protected fieldAccess(Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField;
    .locals 12
    .param p1, "expr"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 807
    instance-of v9, p1, Ljavassist/compiler/ast/Member;

    if-eqz v9, :cond_1

    move-object v4, p1

    .line 808
    check-cast v4, Ljavassist/compiler/ast/Member;

    .line 809
    .local v4, "mem":Ljavassist/compiler/ast/Member;
    invoke-virtual {v4}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v5

    .line 811
    .local v5, "name":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v9, v5}, Ljavassist/CtClass;->getField(Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v3

    .line 812
    .local v3, "f":Ljavassist/CtField;
    invoke-virtual {v3}, Ljavassist/CtField;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 813
    invoke-virtual {v4, v3}, Ljavassist/compiler/ast/Member;->setField(Ljavassist/CtField;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    .end local v3    # "f":Ljavassist/CtField;
    .end local v4    # "mem":Ljavassist/compiler/ast/Member;
    .end local v5    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 817
    .restart local v4    # "mem":Ljavassist/compiler/ast/Member;
    .restart local v5    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 819
    .local v1, "e":Ljavassist/NotFoundException;
    new-instance v9, Ljavassist/compiler/NoFieldException;

    invoke-direct {v9, v5, p1}, Ljavassist/compiler/NoFieldException;-><init>(Ljava/lang/String;Ljavassist/compiler/ast/ASTree;)V

    throw v9

    .line 822
    .end local v1    # "e":Ljavassist/NotFoundException;
    .end local v4    # "mem":Ljavassist/compiler/ast/Member;
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    instance-of v9, p1, Ljavassist/compiler/ast/Expr;

    if-eqz v9, :cond_6

    move-object v1, p1

    .line 823
    check-cast v1, Ljavassist/compiler/ast/Expr;

    .line 824
    .local v1, "e":Ljavassist/compiler/ast/Expr;
    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v7

    .line 825
    .local v7, "op":I
    const/16 v9, 0x23

    if-ne v7, v9, :cond_2

    .line 826
    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    check-cast v4, Ljavassist/compiler/ast/Member;

    .line 827
    .restart local v4    # "mem":Ljavassist/compiler/ast/Member;
    iget-object v10, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v9

    check-cast v9, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v9}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9, v4}, Ljavassist/compiler/MemberResolver;->lookupField(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;)Ljavassist/CtField;

    move-result-object v3

    .line 829
    .restart local v3    # "f":Ljavassist/CtField;
    invoke-virtual {v4, v3}, Ljavassist/compiler/ast/Member;->setField(Ljavassist/CtField;)V

    goto :goto_0

    .line 832
    .end local v3    # "f":Ljavassist/CtField;
    .end local v4    # "mem":Ljavassist/compiler/ast/Member;
    :cond_2
    const/16 v9, 0x2e

    if-ne v7, v9, :cond_6

    .line 834
    :try_start_1
    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V
    :try_end_1
    .catch Ljavassist/compiler/NoFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 847
    const/4 v2, 0x0

    .line 849
    .local v2, "err":Ljavassist/compiler/CompileError;
    :try_start_2
    iget v9, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    const/16 v10, 0x133

    if-ne v9, v10, :cond_4

    iget v9, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    if-nez v9, :cond_4

    .line 850
    iget-object v10, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    iget-object v11, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v9

    check-cast v9, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v10, v11, v9}, Ljavassist/compiler/MemberResolver;->lookupFieldByJvmName(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;)Ljavassist/CtField;
    :try_end_2
    .catch Ljavassist/compiler/CompileError; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    goto :goto_0

    .line 836
    .end local v2    # "err":Ljavassist/compiler/CompileError;
    :catch_1
    move-exception v6

    .line 837
    .local v6, "nfe":Ljavassist/compiler/NoFieldException;
    invoke-virtual {v6}, Ljavassist/compiler/NoFieldException;->getExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v9

    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v10

    if-eq v9, v10, :cond_3

    .line 838
    throw v6

    .line 844
    :cond_3
    invoke-virtual {v6}, Ljavassist/compiler/NoFieldException;->getField()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v1, v9}, Ljavassist/compiler/TypeChecker;->fieldAccess2(Ljavassist/compiler/ast/Expr;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v3

    goto :goto_0

    .line 853
    .end local v6    # "nfe":Ljavassist/compiler/NoFieldException;
    .restart local v2    # "err":Ljavassist/compiler/CompileError;
    :catch_2
    move-exception v0

    .line 854
    .local v0, "ce":Ljavassist/compiler/CompileError;
    move-object v2, v0

    .line 873
    .end local v0    # "ce":Ljavassist/compiler/CompileError;
    :cond_4
    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v8

    .line 874
    .local v8, "oprnd1":Ljavassist/compiler/ast/ASTree;
    instance-of v9, v8, Ljavassist/compiler/ast/Symbol;

    if-eqz v9, :cond_5

    .line 875
    check-cast v8, Ljavassist/compiler/ast/Symbol;

    .end local v8    # "oprnd1":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {v8}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v1, v9}, Ljavassist/compiler/TypeChecker;->fieldAccess2(Ljavassist/compiler/ast/Expr;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v3

    goto :goto_0

    .line 877
    .restart local v8    # "oprnd1":Ljavassist/compiler/ast/ASTree;
    :cond_5
    if-eqz v2, :cond_6

    .line 878
    throw v2

    .line 882
    .end local v1    # "e":Ljavassist/compiler/ast/Expr;
    .end local v2    # "err":Ljavassist/compiler/CompileError;
    .end local v7    # "op":I
    .end local v8    # "oprnd1":Ljavassist/compiler/ast/ASTree;
    :cond_6
    new-instance v9, Ljavassist/compiler/CompileError;

    const-string v10, "bad filed access"

    invoke-direct {v9, v10}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I
    .locals 1
    .param p1, "args"    # Ljavassist/compiler/ast/ASTList;

    .prologue
    .line 732
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
    .line 122
    iget-object v0, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->getSuperclass(Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getThisName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 139
    iget-object v0, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

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
    .line 132
    iget-object v0, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v0, p1}, Ljavassist/compiler/MemberResolver;->resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setReturnType(Ljava/lang/String;)V
    .locals 6
    .param p1, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 750
    const/16 v4, 0x29

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 751
    .local v2, "i":I
    if-gez v2, :cond_0

    .line 752
    invoke-static {}, Ljavassist/compiler/TypeChecker;->badMethod()V

    .line 754
    :cond_0
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 755
    .local v0, "c":C
    const/4 v1, 0x0

    .line 756
    .local v1, "dim":I
    :goto_0
    const/16 v4, 0x5b

    if-ne v0, v4, :cond_1

    .line 757
    add-int/lit8 v1, v1, 0x1

    .line 758
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 761
    :cond_1
    iput v1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 762
    const/16 v4, 0x4c

    if-ne v0, v4, :cond_3

    .line 763
    const/16 v4, 0x3b

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 764
    .local v3, "j":I
    if-gez v3, :cond_2

    .line 765
    invoke-static {}, Ljavassist/compiler/TypeChecker;->badMethod()V

    .line 767
    :cond_2
    const/16 v4, 0x133

    iput v4, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 768
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 774
    .end local v3    # "j":I
    :goto_1
    return-void

    .line 771
    :cond_3
    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result v4

    iput v4, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 772
    const/4 v4, 0x0

    iput-object v4, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    goto :goto_1
.end method

.method public setThisMethod(Ljavassist/bytecode/MethodInfo;)V
    .locals 0
    .param p1, "m"    # Ljavassist/bytecode/MethodInfo;

    .prologue
    .line 104
    iput-object p1, p0, Ljavassist/compiler/TypeChecker;->thisMethod:Ljavassist/bytecode/MethodInfo;

    .line 105
    return-void
.end method
