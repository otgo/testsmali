.class public Ljavassist/compiler/ast/BinExpr;
.super Ljavassist/compiler/ast/Expr;
.source "BinExpr.java"


# direct methods
.method private constructor <init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "_head"    # Ljavassist/compiler/ast/ASTree;
    .param p3, "_tail"    # Ljavassist/compiler/ast/ASTList;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Ljavassist/compiler/ast/Expr;-><init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    .line 35
    return-void
.end method

.method public static makeBin(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/BinExpr;
    .locals 2
    .param p0, "op"    # I
    .param p1, "oprand1"    # Ljavassist/compiler/ast/ASTree;
    .param p2, "oprand2"    # Ljavassist/compiler/ast/ASTree;

    .prologue
    .line 38
    new-instance v0, Ljavassist/compiler/ast/BinExpr;

    new-instance v1, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v1, p2}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-direct {v0, p0, p1, v1}, Ljavassist/compiler/ast/BinExpr;-><init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljavassist/compiler/ast/Visitor;)V
    .locals 0
    .param p1, "v"    # Ljavassist/compiler/ast/Visitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atBinExpr(Ljavassist/compiler/ast/BinExpr;)V

    return-void
.end method
