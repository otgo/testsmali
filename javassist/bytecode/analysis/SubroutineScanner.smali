.class public Ljavassist/bytecode/analysis/SubroutineScanner;
.super Ljava/lang/Object;
.source "SubroutineScanner.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;


# instance fields
.field done:Ljava/util/Set;

.field subTable:Ljava/util/Map;

.field private subroutines:[Ljavassist/bytecode/analysis/Subroutine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->subTable:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->done:Ljava/util/Set;

    return-void
.end method

.method private scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "iter"    # Ljavassist/bytecode/CodeIterator;
    .param p3, "sub"    # Ljavassist/bytecode/analysis/Subroutine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v2, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->done:Ljava/util/Set;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v2, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->done:Ljava/util/Set;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->lookAhead()I

    move-result v1

    .line 71
    .local v1, "old":I
    invoke-virtual {p2, p1}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 75
    :cond_1
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result p1

    .line 76
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scanOp(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 77
    .local v0, "next":Z
    :goto_1
    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p2, v1}, Ljavassist/bytecode/CodeIterator;->move(I)V

    goto :goto_0

    .line 76
    .end local v0    # "next":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private scanLookupSwitch(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V
    .locals 5
    .param p1, "pos"    # I
    .param p2, "iter"    # Ljavassist/bytecode/CodeIterator;
    .param p3, "sub"    # Ljavassist/bytecode/analysis/Subroutine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 127
    and-int/lit8 v4, p1, -0x4

    add-int/lit8 v1, v4, 0x4

    .line 129
    .local v1, "index":I
    invoke-virtual {p2, v1}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v4

    add-int/2addr v4, p1

    invoke-direct {p0, v4, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 130
    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p2, v1}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v2

    .line 131
    .local v2, "npairs":I
    mul-int/lit8 v4, v2, 0x8

    add-int/lit8 v1, v1, 0x4

    add-int v0, v4, v1

    .line 134
    .local v0, "end":I
    add-int/lit8 v1, v1, 0x4

    :goto_0
    if-ge v1, v0, :cond_0

    .line 135
    invoke-virtual {p2, v1}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v4

    add-int v3, v4, p1

    .line 136
    .local v3, "target":I
    invoke-direct {p0, v3, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 134
    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 138
    .end local v3    # "target":I
    :cond_0
    return-void
.end method

.method private scanOp(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)Z
    .locals 5
    .param p1, "pos"    # I
    .param p2, "iter"    # Ljavassist/bytecode/CodeIterator;
    .param p3, "sub"    # Ljavassist/bytecode/analysis/Subroutine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 83
    iget-object v4, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->subroutines:[Ljavassist/bytecode/analysis/Subroutine;

    aput-object p3, v4, p1

    .line 85
    invoke-virtual {p2, p1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    .line 87
    .local v0, "opcode":I
    const/16 v4, 0xaa

    if-ne v0, v4, :cond_1

    .line 88
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scanTableSwitch(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 123
    :cond_0
    :goto_0
    return v3

    .line 93
    :cond_1
    const/16 v4, 0xab

    if-ne v0, v4, :cond_2

    .line 94
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scanLookupSwitch(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-static {v0}, Ljavassist/bytecode/analysis/Util;->isReturn(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0xa9

    if-eq v0, v4, :cond_0

    const/16 v4, 0xbf

    if-eq v0, v4, :cond_0

    .line 103
    invoke-static {v0}, Ljavassist/bytecode/analysis/Util;->isJumpInstruction(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 104
    invoke-static {p1, p2}, Ljavassist/bytecode/analysis/Util;->getJumpTarget(ILjavassist/bytecode/CodeIterator;)I

    move-result v2

    .line 105
    .local v2, "target":I
    const/16 v4, 0xa8

    if-eq v0, v4, :cond_3

    const/16 v4, 0xc9

    if-ne v0, v4, :cond_6

    .line 106
    :cond_3
    iget-object v3, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->subTable:Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/analysis/Subroutine;

    .line 107
    .local v1, "s":Ljavassist/bytecode/analysis/Subroutine;
    if-nez v1, :cond_5

    .line 108
    new-instance v1, Ljavassist/bytecode/analysis/Subroutine;

    .end local v1    # "s":Ljavassist/bytecode/analysis/Subroutine;
    invoke-direct {v1, v2, p1}, Ljavassist/bytecode/analysis/Subroutine;-><init>(II)V

    .line 109
    .restart local v1    # "s":Ljavassist/bytecode/analysis/Subroutine;
    iget-object v3, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->subTable:Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-direct {p0, v2, p2, v1}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 123
    .end local v1    # "s":Ljavassist/bytecode/analysis/Subroutine;
    .end local v2    # "target":I
    :cond_4
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 112
    .restart local v1    # "s":Ljavassist/bytecode/analysis/Subroutine;
    .restart local v2    # "target":I
    :cond_5
    invoke-virtual {v1, p1}, Ljavassist/bytecode/analysis/Subroutine;->addCaller(I)V

    goto :goto_1

    .line 115
    .end local v1    # "s":Ljavassist/bytecode/analysis/Subroutine;
    :cond_6
    invoke-direct {p0, v2, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 118
    invoke-static {v0}, Ljavassist/bytecode/analysis/Util;->isGoto(I)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0
.end method

.method private scanTableSwitch(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "iter"    # Ljavassist/bytecode/CodeIterator;
    .param p3, "sub"    # Ljavassist/bytecode/analysis/Subroutine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 142
    and-int/lit8 v5, p1, -0x4

    add-int/lit8 v2, v5, 0x4

    .line 144
    .local v2, "index":I
    invoke-virtual {p2, v2}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v5

    add-int/2addr v5, p1

    invoke-direct {p0, v5, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 145
    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p2, v2}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v3

    .line 146
    .local v3, "low":I
    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p2, v2}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v1

    .line 147
    .local v1, "high":I
    sub-int v5, v1, v3

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v2, v2, 0x4

    add-int v0, v5, v2

    .line 150
    .local v0, "end":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 151
    invoke-virtual {p2, v2}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v5

    add-int v4, v5, p1

    .line 152
    .local v4, "target":I
    invoke-direct {p0, v4, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 150
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 154
    .end local v4    # "target":I
    :cond_0
    return-void
.end method


# virtual methods
.method public scan(Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/analysis/Subroutine;
    .locals 7
    .param p1, "method"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    .line 44
    .local v0, "code":Ljavassist/bytecode/CodeAttribute;
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v4

    .line 46
    .local v4, "iter":Ljavassist/bytecode/CodeIterator;
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getCodeLength()I

    move-result v5

    new-array v5, v5, [Ljavassist/bytecode/analysis/Subroutine;

    iput-object v5, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->subroutines:[Ljavassist/bytecode/analysis/Subroutine;

    .line 47
    iget-object v5, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->subTable:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 48
    iget-object v5, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->done:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 50
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v5, v4, v6}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 52
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v1

    .line 53
    .local v1, "exceptions":Ljavassist/bytecode/ExceptionTable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 54
    invoke-virtual {v1, v3}, Ljavassist/bytecode/ExceptionTable;->handlerPc(I)I

    move-result v2

    .line 57
    .local v2, "handler":I
    iget-object v5, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->subroutines:[Ljavassist/bytecode/analysis/Subroutine;

    invoke-virtual {v1, v3}, Ljavassist/bytecode/ExceptionTable;->startPc(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-direct {p0, v2, v4, v5}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 53
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    .end local v2    # "handler":I
    :cond_0
    iget-object v5, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->subroutines:[Ljavassist/bytecode/analysis/Subroutine;

    return-object v5
.end method
