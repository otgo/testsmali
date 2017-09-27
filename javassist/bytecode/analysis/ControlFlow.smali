.class public Ljavassist/bytecode/analysis/ControlFlow;
.super Ljava/lang/Object;
.source "ControlFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/analysis/ControlFlow$Catcher;,
        Ljavassist/bytecode/analysis/ControlFlow$Node;,
        Ljavassist/bytecode/analysis/ControlFlow$Access;,
        Ljavassist/bytecode/analysis/ControlFlow$Block;
    }
.end annotation


# instance fields
.field private basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

.field private clazz:Ljavassist/CtClass;

.field private frames:[Ljavassist/bytecode/analysis/Frame;

.field private methodInfo:Ljavassist/bytecode/MethodInfo;


# direct methods
.method public constructor <init>(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    .locals 12
    .param p1, "ctclazz"    # Ljavassist/CtClass;
    .param p2, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Ljavassist/bytecode/analysis/ControlFlow;->clazz:Ljavassist/CtClass;

    .line 64
    iput-object p2, p0, Ljavassist/bytecode/analysis/ControlFlow;->methodInfo:Ljavassist/bytecode/MethodInfo;

    .line 65
    const/4 v8, 0x0

    iput-object v8, p0, Ljavassist/bytecode/analysis/ControlFlow;->frames:[Ljavassist/bytecode/analysis/Frame;

    .line 66
    new-instance v8, Ljavassist/bytecode/analysis/ControlFlow$1;

    invoke-direct {v8, p0}, Ljavassist/bytecode/analysis/ControlFlow$1;-><init>(Ljavassist/bytecode/analysis/ControlFlow;)V

    invoke-virtual {v8, p2}, Ljavassist/bytecode/analysis/ControlFlow$1;->make(Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v8

    check-cast v8, [Ljavassist/bytecode/analysis/ControlFlow$Block;

    check-cast v8, [Ljavassist/bytecode/analysis/ControlFlow$Block;

    iput-object v8, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    .line 74
    iget-object v8, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    array-length v7, v8

    .line 75
    .local v7, "size":I
    new-array v3, v7, [I

    .line 76
    .local v3, "counters":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 77
    iget-object v8, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    aget-object v0, v8, v5

    .line 78
    .local v0, "b":Ljavassist/bytecode/analysis/ControlFlow$Block;
    iput v5, v0, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    .line 79
    invoke-virtual {v0}, Ljavassist/bytecode/analysis/ControlFlow$Block;->incomings()I

    move-result v8

    new-array v8, v8, [Ljavassist/bytecode/analysis/ControlFlow$Block;

    iput-object v8, v0, Ljavassist/bytecode/analysis/ControlFlow$Block;->entrances:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    .line 80
    const/4 v8, 0x0

    aput v8, v3, v5

    .line 76
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "b":Ljavassist/bytecode/analysis/ControlFlow$Block;
    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_3

    .line 84
    iget-object v8, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    aget-object v0, v8, v5

    .line 85
    .restart local v0    # "b":Ljavassist/bytecode/analysis/ControlFlow$Block;
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_2
    invoke-virtual {v0}, Ljavassist/bytecode/analysis/ControlFlow$Block;->exits()I

    move-result v8

    if-ge v6, v8, :cond_1

    .line 86
    invoke-virtual {v0, v6}, Ljavassist/bytecode/analysis/ControlFlow$Block;->exit(I)Ljavassist/bytecode/analysis/ControlFlow$Block;

    move-result-object v4

    .line 87
    .local v4, "e":Ljavassist/bytecode/analysis/ControlFlow$Block;
    iget-object v8, v4, Ljavassist/bytecode/analysis/ControlFlow$Block;->entrances:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget v9, v4, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    aget v10, v3, v9

    add-int/lit8 v11, v10, 0x1

    aput v11, v3, v9

    aput-object v0, v8, v10

    .line 85
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 90
    .end local v4    # "e":Ljavassist/bytecode/analysis/ControlFlow$Block;
    :cond_1
    invoke-virtual {v0}, Ljavassist/bytecode/analysis/ControlFlow$Block;->catchers()[Ljavassist/bytecode/analysis/ControlFlow$Catcher;

    move-result-object v2

    .line 91
    .local v2, "catchers":[Ljavassist/bytecode/analysis/ControlFlow$Catcher;
    const/4 v6, 0x0

    :goto_3
    array-length v8, v2

    if-ge v6, v8, :cond_2

    .line 92
    aget-object v8, v2, v6

    invoke-static {v8}, Ljavassist/bytecode/analysis/ControlFlow$Catcher;->access$100(Ljavassist/bytecode/analysis/ControlFlow$Catcher;)Ljavassist/bytecode/analysis/ControlFlow$Block;

    move-result-object v1

    .line 93
    .local v1, "catchBlock":Ljavassist/bytecode/analysis/ControlFlow$Block;
    iget-object v8, v1, Ljavassist/bytecode/analysis/ControlFlow$Block;->entrances:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget v9, v1, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    aget v10, v3, v9

    add-int/lit8 v11, v10, 0x1

    aput v11, v3, v9

    aput-object v0, v8, v10

    .line 91
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 83
    .end local v1    # "catchBlock":Ljavassist/bytecode/analysis/ControlFlow$Block;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 96
    .end local v0    # "b":Ljavassist/bytecode/analysis/ControlFlow$Block;
    .end local v2    # "catchers":[Ljavassist/bytecode/analysis/ControlFlow$Catcher;
    .end local v6    # "k":I
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljavassist/CtMethod;)V
    .locals 2
    .param p1, "method"    # Ljavassist/CtMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p1}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljavassist/bytecode/analysis/ControlFlow;-><init>(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Ljavassist/bytecode/analysis/ControlFlow;)Ljavassist/bytecode/MethodInfo;
    .locals 1
    .param p0, "x0"    # Ljavassist/bytecode/analysis/ControlFlow;

    .prologue
    .line 46
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow;->methodInfo:Ljavassist/bytecode/MethodInfo;

    return-object v0
.end method


# virtual methods
.method public basicBlocks()[Ljavassist/bytecode/analysis/ControlFlow$Block;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    return-object v0
.end method

.method public dominatorTree()[Ljavassist/bytecode/analysis/ControlFlow$Node;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 141
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    array-length v8, v0

    .line 142
    .local v8, "size":I
    if-nez v8, :cond_0

    .line 163
    :goto_0
    return-object v1

    .line 145
    :cond_0
    new-array v7, v8, [Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 146
    .local v7, "nodes":[Ljavassist/bytecode/analysis/ControlFlow$Node;
    new-array v2, v8, [Z

    .line 147
    .local v2, "visited":[Z
    new-array v4, v8, [I

    .line 148
    .local v4, "distance":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v8, :cond_1

    .line 149
    new-instance v0, Ljavassist/bytecode/analysis/ControlFlow$Node;

    iget-object v9, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    aget-object v9, v9, v6

    invoke-direct {v0, v9}, Ljavassist/bytecode/analysis/ControlFlow$Node;-><init>(Ljavassist/bytecode/analysis/ControlFlow$Block;)V

    aput-object v0, v7, v6

    .line 150
    aput-boolean v3, v2, v6

    .line 148
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 153
    :cond_1
    new-instance v5, Ljavassist/bytecode/analysis/ControlFlow$2;

    invoke-direct {v5, p0, v7}, Ljavassist/bytecode/analysis/ControlFlow$2;-><init>(Ljavassist/bytecode/analysis/ControlFlow;[Ljavassist/bytecode/analysis/ControlFlow$Node;)V

    .line 157
    .local v5, "access":Ljavassist/bytecode/analysis/ControlFlow$Access;
    aget-object v0, v7, v3

    invoke-virtual/range {v0 .. v5}, Ljavassist/bytecode/analysis/ControlFlow$Node;->makeDepth1stTree(Ljavassist/bytecode/analysis/ControlFlow$Node;[ZI[ILjavassist/bytecode/analysis/ControlFlow$Access;)I

    .line 159
    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_3

    .line 160
    aput-boolean v3, v2, v6

    .line 159
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 161
    :cond_3
    aget-object v0, v7, v3

    invoke-virtual {v0, v2, v4, v5}, Ljavassist/bytecode/analysis/ControlFlow$Node;->makeDominatorTree([Z[ILjavassist/bytecode/analysis/ControlFlow$Access;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    invoke-static {v7}, Ljavassist/bytecode/analysis/ControlFlow$Node;->access$300([Ljavassist/bytecode/analysis/ControlFlow$Node;)V

    move-object v1, v7

    .line 163
    goto :goto_0
.end method

.method public frameAt(I)Ljavassist/bytecode/analysis/Frame;
    .locals 3
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow;->frames:[Ljavassist/bytecode/analysis/Frame;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljavassist/bytecode/analysis/Analyzer;

    invoke-direct {v0}, Ljavassist/bytecode/analysis/Analyzer;-><init>()V

    iget-object v1, p0, Ljavassist/bytecode/analysis/ControlFlow;->clazz:Ljavassist/CtClass;

    iget-object v2, p0, Ljavassist/bytecode/analysis/ControlFlow;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0, v1, v2}, Ljavassist/bytecode/analysis/Analyzer;->analyze(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/analysis/Frame;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow;->frames:[Ljavassist/bytecode/analysis/Frame;

    .line 117
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow;->frames:[Ljavassist/bytecode/analysis/Frame;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public postDominatorTree()[Ljavassist/bytecode/analysis/ControlFlow$Node;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 187
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    array-length v9, v0

    .line 188
    .local v9, "size":I
    if-nez v9, :cond_0

    .line 222
    :goto_0
    return-object v1

    .line 191
    :cond_0
    new-array v8, v9, [Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 192
    .local v8, "nodes":[Ljavassist/bytecode/analysis/ControlFlow$Node;
    new-array v2, v9, [Z

    .line 193
    .local v2, "visited":[Z
    new-array v4, v9, [I

    .line 194
    .local v4, "distance":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v9, :cond_1

    .line 195
    new-instance v0, Ljavassist/bytecode/analysis/ControlFlow$Node;

    iget-object v10, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    aget-object v10, v10, v7

    invoke-direct {v0, v10}, Ljavassist/bytecode/analysis/ControlFlow$Node;-><init>(Ljavassist/bytecode/analysis/ControlFlow$Block;)V

    aput-object v0, v8, v7

    .line 196
    aput-boolean v11, v2, v7

    .line 194
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 199
    :cond_1
    new-instance v5, Ljavassist/bytecode/analysis/ControlFlow$3;

    invoke-direct {v5, p0, v8}, Ljavassist/bytecode/analysis/ControlFlow$3;-><init>(Ljavassist/bytecode/analysis/ControlFlow;[Ljavassist/bytecode/analysis/ControlFlow$Node;)V

    .line 204
    .local v5, "access":Ljavassist/bytecode/analysis/ControlFlow$Access;
    const/4 v3, 0x0

    .line 205
    .local v3, "counter":I
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v9, :cond_3

    .line 206
    aget-object v0, v8, v7

    invoke-static {v0}, Ljavassist/bytecode/analysis/ControlFlow$Node;->access$200(Ljavassist/bytecode/analysis/ControlFlow$Node;)Ljavassist/bytecode/analysis/ControlFlow$Block;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/analysis/ControlFlow$Block;->exits()I

    move-result v0

    if-nez v0, :cond_2

    .line 207
    aget-object v0, v8, v7

    invoke-virtual/range {v0 .. v5}, Ljavassist/bytecode/analysis/ControlFlow$Node;->makeDepth1stTree(Ljavassist/bytecode/analysis/ControlFlow$Node;[ZI[ILjavassist/bytecode/analysis/ControlFlow$Access;)I

    move-result v3

    .line 205
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 211
    :cond_3
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v9, :cond_4

    .line 212
    aput-boolean v11, v2, v7

    .line 211
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 214
    :cond_4
    const/4 v6, 0x0

    .line 215
    .local v6, "changed":Z
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v9, :cond_6

    .line 216
    aget-object v0, v8, v7

    invoke-static {v0}, Ljavassist/bytecode/analysis/ControlFlow$Node;->access$200(Ljavassist/bytecode/analysis/ControlFlow$Node;)Ljavassist/bytecode/analysis/ControlFlow$Block;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/analysis/ControlFlow$Block;->exits()I

    move-result v0

    if-nez v0, :cond_5

    .line 217
    aget-object v0, v8, v7

    invoke-virtual {v0, v2, v4, v5}, Ljavassist/bytecode/analysis/ControlFlow$Node;->makeDominatorTree([Z[ILjavassist/bytecode/analysis/ControlFlow$Access;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 218
    const/4 v6, 0x1

    .line 215
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 219
    :cond_6
    if-nez v6, :cond_3

    .line 221
    invoke-static {v8}, Ljavassist/bytecode/analysis/ControlFlow$Node;->access$300([Ljavassist/bytecode/analysis/ControlFlow$Node;)V

    move-object v1, v8

    .line 222
    goto :goto_0
.end method
