.class public Ljavassist/bytecode/StackMapTable$Writer;
.super Ljava/lang/Object;
.source "StackMapTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMapTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Writer"
.end annotation


# instance fields
.field numOfEntries:I

.field output:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    .line 552
    iput v1, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    .line 553
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 554
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 555
    return-void
.end method

.method private write16(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 688
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 689
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 690
    return-void
.end method

.method private writeTypeInfo(II)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "data"    # I

    .prologue
    .line 682
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 683
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 684
    :cond_0
    invoke-direct {p0, p2}, Ljavassist/bytecode/StackMapTable$Writer;->write16(I)V

    .line 685
    :cond_1
    return-void
.end method


# virtual methods
.method public appendFrame(I[I[I)V
    .locals 4
    .param p1, "offsetDelta"    # I
    .param p2, "tags"    # [I
    .param p3, "data"    # [I

    .prologue
    .line 638
    iget v2, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    .line 639
    array-length v1, p2

    .line 640
    .local v1, "k":I
    iget-object v2, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    add-int/lit16 v3, v1, 0xfb

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 641
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Writer;->write16(I)V

    .line 642
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 643
    aget v2, p2, v0

    aget v3, p3, v0

    invoke-direct {p0, v2, v3}, Ljavassist/bytecode/StackMapTable$Writer;->writeTypeInfo(II)V

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 644
    :cond_0
    return-void
.end method

.method public chopFrame(II)V
    .locals 2
    .param p1, "offsetDelta"    # I
    .param p2, "k"    # I

    .prologue
    .line 619
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    .line 620
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    rsub-int v1, p2, 0xfb

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 621
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Writer;->write16(I)V

    .line 622
    return-void
.end method

.method public fullFrame(I[I[I[I[I)V
    .locals 4
    .param p1, "offsetDelta"    # I
    .param p2, "localTags"    # [I
    .param p3, "localData"    # [I
    .param p4, "stackTags"    # [I
    .param p5, "stackData"    # [I

    .prologue
    .line 667
    iget v2, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    .line 668
    iget-object v2, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 669
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Writer;->write16(I)V

    .line 670
    array-length v1, p2

    .line 671
    .local v1, "n":I
    invoke-direct {p0, v1}, Ljavassist/bytecode/StackMapTable$Writer;->write16(I)V

    .line 672
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 673
    aget v2, p2, v0

    aget v3, p3, v0

    invoke-direct {p0, v2, v3}, Ljavassist/bytecode/StackMapTable$Writer;->writeTypeInfo(II)V

    .line 672
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 675
    :cond_0
    array-length v1, p4

    .line 676
    invoke-direct {p0, v1}, Ljavassist/bytecode/StackMapTable$Writer;->write16(I)V

    .line 677
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 678
    aget v2, p4, v0

    aget v3, p5, v0

    invoke-direct {p0, v2, v3}, Ljavassist/bytecode/StackMapTable$Writer;->writeTypeInfo(II)V

    .line 677
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 679
    :cond_1
    return-void
.end method

.method public sameFrame(I)V
    .locals 2
    .param p1, "offsetDelta"    # I

    .prologue
    .line 581
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    .line 582
    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    .line 583
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 588
    :goto_0
    return-void

    .line 585
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xfb

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 586
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Writer;->write16(I)V

    goto :goto_0
.end method

.method public sameLocals(III)V
    .locals 2
    .param p1, "offsetDelta"    # I
    .param p2, "tag"    # I
    .param p3, "data"    # I

    .prologue
    .line 602
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    .line 603
    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    .line 604
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v1, p1, 0x40

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 610
    :goto_0
    invoke-direct {p0, p2, p3}, Ljavassist/bytecode/StackMapTable$Writer;->writeTypeInfo(II)V

    .line 611
    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xf7

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 607
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Writer;->write16(I)V

    goto :goto_0
.end method

.method public toByteArray()[B
    .locals 3

    .prologue
    .line 561
    iget-object v1, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 562
    .local v0, "b":[B
    iget v1, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 563
    return-object v0
.end method

.method public toStackMapTable(Ljavassist/bytecode/ConstPool;)Ljavassist/bytecode/StackMapTable;
    .locals 2
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .prologue
    .line 574
    new-instance v0, Ljavassist/bytecode/StackMapTable;

    invoke-virtual {p0}, Ljavassist/bytecode/StackMapTable$Writer;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavassist/bytecode/StackMapTable;-><init>(Ljavassist/bytecode/ConstPool;[B)V

    return-object v0
.end method
