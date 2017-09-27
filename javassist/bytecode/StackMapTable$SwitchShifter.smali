.class Ljavassist/bytecode/StackMapTable$SwitchShifter;
.super Ljavassist/bytecode/StackMapTable$Shifter;
.source "StackMapTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMapTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SwitchShifter"
.end annotation


# direct methods
.method constructor <init>(Ljavassist/bytecode/StackMapTable;II)V
    .locals 1
    .param p1, "smt"    # Ljavassist/bytecode/StackMapTable;
    .param p2, "where"    # I
    .param p3, "gap"    # I

    .prologue
    .line 931
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljavassist/bytecode/StackMapTable$Shifter;-><init>(Ljavassist/bytecode/StackMapTable;IIZ)V

    .line 932
    return-void
.end method

.method static deleteGap([BII)[B
    .locals 5
    .param p0, "info"    # [B
    .param p1, "where"    # I
    .param p2, "gap"    # I

    .prologue
    .line 965
    add-int/2addr p1, p2

    .line 966
    array-length v1, p0

    .line 967
    .local v1, "len":I
    sub-int v3, v1, p2

    new-array v2, v3, [B

    .line 968
    .local v2, "newinfo":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 969
    if-ge v0, p1, :cond_0

    const/4 v3, 0x0

    :goto_1
    sub-int v3, v0, v3

    aget-byte v4, p0, v0

    aput-byte v4, v2, v3

    .line 968
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v3, p2

    .line 969
    goto :goto_1

    .line 971
    :cond_1
    return-object v2
.end method


# virtual methods
.method update(II)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "offsetDelta"    # I

    .prologue
    .line 975
    iget v1, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->position:I

    .line 976
    .local v1, "oldPos":I
    add-int v3, v1, p2

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    add-int/2addr v2, v3

    iput v2, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->position:I

    .line 977
    move v0, p2

    .line 978
    .local v0, "newDelta":I
    iget v2, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->where:I

    iget v3, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->position:I

    if-ne v2, v3, :cond_2

    .line 979
    iget v2, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->gap:I

    sub-int v0, p2, v2

    .line 985
    :goto_1
    iget-object v2, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->info:[B

    add-int/lit8 v3, p1, 0x1

    invoke-static {v0, v2, v3}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 986
    :cond_0
    return-void

    .line 976
    .end local v0    # "newDelta":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 980
    .restart local v0    # "newDelta":I
    :cond_2
    iget v2, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->where:I

    if-ne v2, v1, :cond_0

    .line 981
    iget v2, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->gap:I

    add-int v0, p2, v2

    goto :goto_1
.end method

.method update(IIII)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "offsetDelta"    # I
    .param p3, "base"    # I
    .param p4, "entry"    # I

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0x40

    .line 935
    iget v2, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->position:I

    .line 936
    .local v2, "oldPos":I
    add-int v4, v2, p2

    if-nez v2, :cond_1

    const/4 v3, 0x0

    :goto_0
    add-int/2addr v3, v4

    iput v3, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->position:I

    .line 937
    move v0, p2

    .line 938
    .local v0, "newDelta":I
    iget v3, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->where:I

    iget v4, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->position:I

    if-ne v3, v4, :cond_2

    .line 939
    iget v3, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->gap:I

    sub-int v0, p2, v3

    .line 945
    :goto_1
    if-ge p2, v5, :cond_4

    .line 946
    if-ge v0, v5, :cond_3

    .line 947
    iget-object v3, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->info:[B

    add-int v4, v0, p3

    int-to-byte v4, v4

    aput-byte v4, v3, p1

    .line 962
    :cond_0
    :goto_2
    return-void

    .line 936
    .end local v0    # "newDelta":I
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 940
    .restart local v0    # "newDelta":I
    :cond_2
    iget v3, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->where:I

    if-ne v3, v2, :cond_0

    .line 941
    iget v3, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->gap:I

    add-int v0, p2, v3

    goto :goto_1

    .line 949
    :cond_3
    iget-object v3, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->info:[B

    invoke-static {v3, p1, v6}, Ljavassist/bytecode/StackMapTable$SwitchShifter;->insertGap([BII)[B

    move-result-object v1

    .line 950
    .local v1, "newinfo":[B
    int-to-byte v3, p4

    aput-byte v3, v1, p1

    .line 951
    add-int/lit8 v3, p1, 0x1

    invoke-static {v0, v1, v3}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 952
    iput-object v1, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->updatedInfo:[B

    goto :goto_2

    .line 955
    .end local v1    # "newinfo":[B
    :cond_4
    if-ge v0, v5, :cond_5

    .line 956
    iget-object v3, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->info:[B

    invoke-static {v3, p1, v6}, Ljavassist/bytecode/StackMapTable$SwitchShifter;->deleteGap([BII)[B

    move-result-object v1

    .line 957
    .restart local v1    # "newinfo":[B
    add-int v3, v0, p3

    int-to-byte v3, v3

    aput-byte v3, v1, p1

    .line 958
    iput-object v1, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->updatedInfo:[B

    goto :goto_2

    .line 961
    .end local v1    # "newinfo":[B
    :cond_5
    iget-object v3, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->info:[B

    add-int/lit8 v4, p1, 0x1

    invoke-static {v0, v3, v4}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    goto :goto_2
.end method
