.class public Ljavassist/bytecode/analysis/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# instance fields
.field private jsrMerged:Z

.field private locals:[Ljavassist/bytecode/analysis/Type;

.field private retMerged:Z

.field private stack:[Ljavassist/bytecode/analysis/Type;

.field private top:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "locals"    # I
    .param p2, "stack"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v0, p1, [Ljavassist/bytecode/analysis/Type;

    iput-object v0, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    .line 39
    new-array v0, p2, [Ljavassist/bytecode/analysis/Type;

    iput-object v0, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    .line 40
    return-void
.end method


# virtual methods
.method public clearStack()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    .line 88
    return-void
.end method

.method public copy()Ljavassist/bytecode/analysis/Frame;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 152
    new-instance v0, Ljavassist/bytecode/analysis/Frame;

    iget-object v1, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    array-length v1, v1

    iget-object v2, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Ljavassist/bytecode/analysis/Frame;-><init>(II)V

    .line 153
    .local v0, "frame":Ljavassist/bytecode/analysis/Frame;
    iget-object v1, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    iget-object v2, v0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    iget-object v3, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iget-object v1, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    iget-object v2, v0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    iget-object v3, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget v1, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    iput v1, v0, Ljavassist/bytecode/analysis/Frame;->top:I

    .line 156
    return-object v0
.end method

.method public copyStack()Ljavassist/bytecode/analysis/Frame;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 166
    new-instance v0, Ljavassist/bytecode/analysis/Frame;

    iget-object v1, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    array-length v1, v1

    iget-object v2, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Ljavassist/bytecode/analysis/Frame;-><init>(II)V

    .line 167
    .local v0, "frame":Ljavassist/bytecode/analysis/Frame;
    iget-object v1, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    iget-object v2, v0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    iget-object v3, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iget v1, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    iput v1, v0, Ljavassist/bytecode/analysis/Frame;->top:I

    .line 169
    return-object v0
.end method

.method public getLocal(I)Ljavassist/bytecode/analysis/Type;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 49
    iget-object v0, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getStack(I)Ljavassist/bytecode/analysis/Type;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 70
    iget-object v0, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTopIndex()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method isJsrMerged()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Ljavassist/bytecode/analysis/Frame;->jsrMerged:Z

    return v0
.end method

.method isRetMerged()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Ljavassist/bytecode/analysis/Frame;->retMerged:Z

    return v0
.end method

.method public localsLength()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    array-length v0, v0

    return v0
.end method

.method public merge(Ljavassist/bytecode/analysis/Frame;)Z
    .locals 6
    .param p1, "frame"    # Ljavassist/bytecode/analysis/Frame;

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 213
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 214
    iget-object v4, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    aget-object v4, v4, v1

    if-eqz v4, :cond_2

    .line 215
    iget-object v4, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    aget-object v3, v4, v1

    .line 216
    .local v3, "prev":Ljavassist/bytecode/analysis/Type;
    iget-object v4, p1, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljavassist/bytecode/analysis/Type;->merge(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    .line 218
    .local v2, "merged":Ljavassist/bytecode/analysis/Type;
    iget-object v4, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    aput-object v2, v4, v1

    .line 219
    invoke-virtual {v2, v3}, Ljavassist/bytecode/analysis/Type;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljavassist/bytecode/analysis/Type;->popChanged()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    :cond_0
    const/4 v0, 0x1

    .line 213
    .end local v2    # "merged":Ljavassist/bytecode/analysis/Type;
    .end local v3    # "prev":Ljavassist/bytecode/analysis/Type;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_2
    iget-object v4, p1, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    aget-object v4, v4, v1

    if-eqz v4, :cond_1

    .line 223
    iget-object v4, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    iget-object v5, p1, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    aget-object v5, v5, v1

    aput-object v5, v4, v1

    .line 224
    const/4 v0, 0x1

    goto :goto_1

    .line 228
    :cond_3
    invoke-virtual {p0, p1}, Ljavassist/bytecode/analysis/Frame;->mergeStack(Ljavassist/bytecode/analysis/Frame;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 229
    return v0
.end method

.method public mergeStack(Ljavassist/bytecode/analysis/Frame;)Z
    .locals 7
    .param p1, "frame"    # Ljavassist/bytecode/analysis/Frame;

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "changed":Z
    iget v4, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    iget v5, p1, Ljavassist/bytecode/analysis/Frame;->top:I

    if-eq v4, v5, :cond_0

    .line 182
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Operand stacks could not be merged, they are different sizes!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 184
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    if-ge v1, v4, :cond_4

    .line 185
    iget-object v4, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    aget-object v4, v4, v1

    if-eqz v4, :cond_3

    .line 186
    iget-object v4, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    aget-object v3, v4, v1

    .line 187
    .local v3, "prev":Ljavassist/bytecode/analysis/Type;
    iget-object v4, p1, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljavassist/bytecode/analysis/Type;->merge(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    .line 188
    .local v2, "merged":Ljavassist/bytecode/analysis/Type;
    sget-object v4, Ljavassist/bytecode/analysis/Type;->BOGUS:Ljavassist/bytecode/analysis/Type;

    if-ne v2, v4, :cond_1

    .line 189
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Operand stacks could not be merged due to differing primitive types: pos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 191
    :cond_1
    iget-object v4, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    aput-object v2, v4, v1

    .line 193
    invoke-virtual {v2, v3}, Ljavassist/bytecode/analysis/Type;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljavassist/bytecode/analysis/Type;->popChanged()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 194
    :cond_2
    const/4 v0, 0x1

    .line 184
    .end local v2    # "merged":Ljavassist/bytecode/analysis/Type;
    .end local v3    # "prev":Ljavassist/bytecode/analysis/Type;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_4
    return v0
.end method

.method public peek()Ljavassist/bytecode/analysis/Type;
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Stack is empty"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    iget v1, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public pop()Ljavassist/bytecode/analysis/Type;
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Stack is empty"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    iget v1, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public push(Ljavassist/bytecode/analysis/Type;)V
    .locals 3
    .param p1, "type"    # Ljavassist/bytecode/analysis/Type;

    .prologue
    .line 141
    iget-object v0, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    iget v1, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    aput-object p1, v0, v1

    .line 142
    return-void
.end method

.method setJsrMerged(Z)V
    .locals 0
    .param p1, "jsrMerged"    # Z

    .prologue
    .line 267
    iput-boolean p1, p0, Ljavassist/bytecode/analysis/Frame;->jsrMerged:Z

    .line 268
    return-void
.end method

.method public setLocal(ILjavassist/bytecode/analysis/Type;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "type"    # Ljavassist/bytecode/analysis/Type;

    .prologue
    .line 59
    iget-object v0, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    aput-object p2, v0, p1

    .line 60
    return-void
.end method

.method setRetMerged(Z)V
    .locals 0
    .param p1, "retMerged"    # Z

    .prologue
    .line 287
    iput-boolean p1, p0, Ljavassist/bytecode/analysis/Frame;->retMerged:Z

    .line 288
    return-void
.end method

.method public setStack(ILjavassist/bytecode/analysis/Type;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "type"    # Ljavassist/bytecode/analysis/Type;

    .prologue
    .line 80
    iget-object v0, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    aput-object p2, v0, p1

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 235
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v2, "locals = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 237
    iget-object v2, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    const-string v2, "empty"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    iget-object v2, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 239
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    :cond_1
    iget-object v2, p0, Ljavassist/bytecode/analysis/Frame;->locals:[Ljavassist/bytecode/analysis/Type;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljavassist/bytecode/analysis/Type;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 241
    :cond_2
    const-string v2, "] stack = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    if-ge v1, v2, :cond_4

    .line 243
    iget-object v2, p0, Ljavassist/bytecode/analysis/Frame;->stack:[Ljavassist/bytecode/analysis/Type;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 244
    iget v2, p0, Ljavassist/bytecode/analysis/Frame;->top:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    .line 245
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 247
    :cond_4
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
