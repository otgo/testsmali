.class final Ljavassist/expr/ExprEditor$LoopContext;
.super Ljava/lang/Object;
.source "ExprEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/expr/ExprEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LoopContext"
.end annotation


# instance fields
.field maxLocals:I

.field maxStack:I

.field newList:Ljavassist/expr/ExprEditor$NewOp;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "locals"    # I

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput p1, p0, Ljavassist/expr/ExprEditor$LoopContext;->maxLocals:I

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/expr/ExprEditor$LoopContext;->maxStack:I

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/expr/ExprEditor$LoopContext;->newList:Ljavassist/expr/ExprEditor$NewOp;

    .line 165
    return-void
.end method


# virtual methods
.method updateMax(II)V
    .locals 1
    .param p1, "locals"    # I
    .param p2, "stack"    # I

    .prologue
    .line 168
    iget v0, p0, Ljavassist/expr/ExprEditor$LoopContext;->maxLocals:I

    if-ge v0, p1, :cond_0

    .line 169
    iput p1, p0, Ljavassist/expr/ExprEditor$LoopContext;->maxLocals:I

    .line 171
    :cond_0
    iget v0, p0, Ljavassist/expr/ExprEditor$LoopContext;->maxStack:I

    if-ge v0, p2, :cond_1

    .line 172
    iput p2, p0, Ljavassist/expr/ExprEditor$LoopContext;->maxStack:I

    .line 173
    :cond_1
    return-void
.end method
