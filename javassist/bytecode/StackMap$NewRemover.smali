.class Ljavassist/bytecode/StackMap$NewRemover;
.super Ljavassist/bytecode/StackMap$SimpleCopy;
.source "StackMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NewRemover"
.end annotation


# instance fields
.field posOfNew:I


# direct methods
.method constructor <init>(Ljavassist/bytecode/StackMap;I)V
    .locals 0
    .param p1, "map"    # Ljavassist/bytecode/StackMap;
    .param p2, "where"    # I

    .prologue
    .line 450
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMap$SimpleCopy;-><init>(Ljavassist/bytecode/StackMap;)V

    .line 451
    iput p2, p0, Ljavassist/bytecode/StackMap$NewRemover;->posOfNew:I

    .line 452
    return-void
.end method

.method private stackTypeInfoArray(III)I
    .locals 10
    .param p1, "pos"    # I
    .param p2, "offset"    # I
    .param p3, "num"    # I

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x7

    .line 459
    move v4, p1

    .line 460
    .local v4, "p":I
    const/4 v1, 0x0

    .line 461
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v2, p3, :cond_3

    .line 462
    iget-object v6, p0, Ljavassist/bytecode/StackMap$NewRemover;->info:[B

    aget-byte v5, v6, v4

    .line 463
    .local v5, "tag":B
    if-ne v5, v8, :cond_0

    .line 464
    add-int/lit8 v4, v4, 0x3

    .line 461
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 465
    :cond_0
    if-ne v5, v9, :cond_2

    .line 466
    iget-object v6, p0, Ljavassist/bytecode/StackMap$NewRemover;->info:[B

    add-int/lit8 v7, v4, 0x1

    invoke-static {v6, v7}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v3

    .line 467
    .local v3, "offsetOfNew":I
    iget v6, p0, Ljavassist/bytecode/StackMap$NewRemover;->posOfNew:I

    if-ne v3, v6, :cond_1

    .line 468
    add-int/lit8 v1, v1, 0x1

    .line 470
    :cond_1
    add-int/lit8 v4, v4, 0x3

    .line 471
    goto :goto_1

    .line 473
    .end local v3    # "offsetOfNew":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 476
    .end local v5    # "tag":B
    :cond_3
    iget-object v6, p0, Ljavassist/bytecode/StackMap$NewRemover;->writer:Ljavassist/bytecode/StackMap$Writer;

    sub-int v7, p3, v1

    invoke-virtual {v6, v7}, Ljavassist/bytecode/StackMap$Writer;->write16bit(I)V

    .line 477
    const/4 v2, 0x0

    :goto_2
    if-ge v2, p3, :cond_7

    .line 478
    iget-object v6, p0, Ljavassist/bytecode/StackMap$NewRemover;->info:[B

    aget-byte v5, v6, p1

    .line 479
    .restart local v5    # "tag":B
    if-ne v5, v8, :cond_4

    .line 480
    iget-object v6, p0, Ljavassist/bytecode/StackMap$NewRemover;->info:[B

    add-int/lit8 v7, p1, 0x1

    invoke-static {v6, v7}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 481
    .local v0, "clazz":I
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/StackMap$NewRemover;->objectVariable(II)V

    .line 482
    add-int/lit8 p1, p1, 0x3

    .line 477
    .end local v0    # "clazz":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 484
    :cond_4
    if-ne v5, v9, :cond_6

    .line 485
    iget-object v6, p0, Ljavassist/bytecode/StackMap$NewRemover;->info:[B

    add-int/lit8 v7, p1, 0x1

    invoke-static {v6, v7}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v3

    .line 486
    .restart local v3    # "offsetOfNew":I
    iget v6, p0, Ljavassist/bytecode/StackMap$NewRemover;->posOfNew:I

    if-eq v3, v6, :cond_5

    .line 487
    invoke-virtual {p0, p1, v3}, Ljavassist/bytecode/StackMap$NewRemover;->uninitialized(II)V

    .line 489
    :cond_5
    add-int/lit8 p1, p1, 0x3

    .line 490
    goto :goto_3

    .line 492
    .end local v3    # "offsetOfNew":I
    :cond_6
    invoke-virtual {p0, p1, v5}, Ljavassist/bytecode/StackMap$NewRemover;->typeInfo(IB)V

    .line 493
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 497
    .end local v5    # "tag":B
    :cond_7
    return p1
.end method


# virtual methods
.method public stack(III)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "offset"    # I
    .param p3, "num"    # I

    .prologue
    .line 455
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/StackMap$NewRemover;->stackTypeInfoArray(III)I

    move-result v0

    return v0
.end method
