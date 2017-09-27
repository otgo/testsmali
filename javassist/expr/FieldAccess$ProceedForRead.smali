.class Ljavassist/expr/FieldAccess$ProceedForRead;
.super Ljava/lang/Object;
.source "FieldAccess.java"

# interfaces
.implements Ljavassist/compiler/ProceedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/expr/FieldAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProceedForRead"
.end annotation


# instance fields
.field fieldType:Ljavassist/CtClass;

.field index:I

.field opcode:I

.field targetVar:I


# direct methods
.method constructor <init>(Ljavassist/CtClass;III)V
    .locals 0
    .param p1, "type"    # Ljavassist/CtClass;
    .param p2, "op"    # I
    .param p3, "i"    # I
    .param p4, "var"    # I

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->fieldType:Ljavassist/CtClass;

    .line 234
    iput p4, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->targetVar:I

    .line 235
    iput p2, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->opcode:I

    .line 236
    iput p3, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->index:I

    .line 237
    return-void
.end method


# virtual methods
.method public doit(Ljavassist/compiler/JvstCodeGen;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/ast/ASTList;)V
    .locals 3
    .param p1, "gen"    # Ljavassist/compiler/JvstCodeGen;
    .param p2, "bytecode"    # Ljavassist/bytecode/Bytecode;
    .param p3, "args"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 242
    if-eqz p3, :cond_0

    invoke-virtual {p1, p3}, Ljavassist/compiler/JvstCodeGen;->isParamListName(Ljavassist/compiler/ast/ASTList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    new-instance v1, Ljavassist/compiler/CompileError;

    const-string v2, "$proceed() cannot take a parameter for field reading"

    invoke-direct {v1, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_0
    iget v1, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->opcode:I

    invoke-static {v1}, Ljavassist/expr/FieldAccess;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    const/4 v0, 0x0

    .line 254
    .local v0, "stack":I
    :goto_0
    iget-object v1, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->fieldType:Ljavassist/CtClass;

    instance-of v1, v1, Ljavassist/CtPrimitiveType;

    if-eqz v1, :cond_2

    .line 255
    iget-object v1, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->fieldType:Ljavassist/CtClass;

    check-cast v1, Ljavassist/CtPrimitiveType;

    invoke-virtual {v1}, Ljavassist/CtPrimitiveType;->getDataSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 259
    :goto_1
    iget v1, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->opcode:I

    invoke-virtual {p2, v1}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 260
    iget v1, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->index:I

    invoke-virtual {p2, v1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 261
    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 262
    iget-object v1, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->fieldType:Ljavassist/CtClass;

    invoke-virtual {p1, v1}, Ljavassist/compiler/JvstCodeGen;->setType(Ljavassist/CtClass;)V

    .line 263
    return-void

    .line 250
    .end local v0    # "stack":I
    :cond_1
    const/4 v0, -0x1

    .line 251
    .restart local v0    # "stack":I
    iget v1, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->targetVar:I

    invoke-virtual {p2, v1}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    goto :goto_0

    .line 257
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setReturnType(Ljavassist/compiler/JvstTypeChecker;Ljavassist/compiler/ast/ASTList;)V
    .locals 1
    .param p1, "c"    # Ljavassist/compiler/JvstTypeChecker;
    .param p2, "args"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->fieldType:Ljavassist/CtClass;

    invoke-virtual {p1, v0}, Ljavassist/compiler/JvstTypeChecker;->setType(Ljavassist/CtClass;)V

    .line 269
    return-void
.end method
