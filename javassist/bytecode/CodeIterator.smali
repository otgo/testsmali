.class public Ljavassist/bytecode/CodeIterator;
.super Ljava/lang/Object;
.source "CodeIterator.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/CodeIterator$Lookup;,
        Ljavassist/bytecode/CodeIterator$Table;,
        Ljavassist/bytecode/CodeIterator$Switcher;,
        Ljavassist/bytecode/CodeIterator$Jump32;,
        Ljavassist/bytecode/CodeIterator$If16;,
        Ljavassist/bytecode/CodeIterator$Jump16;,
        Ljavassist/bytecode/CodeIterator$Branch16;,
        Ljavassist/bytecode/CodeIterator$LdcW;,
        Ljavassist/bytecode/CodeIterator$Branch;,
        Ljavassist/bytecode/CodeIterator$Pointers;,
        Ljavassist/bytecode/CodeIterator$AlignmentException;,
        Ljavassist/bytecode/CodeIterator$Gap;
    }
.end annotation


# static fields
.field private static final opcodeLength:[I


# instance fields
.field protected bytecode:[B

.field protected codeAttr:Ljavassist/bytecode/CodeAttribute;

.field protected currentPos:I

.field protected endPos:I

.field protected mark:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 732
    const/16 v0, 0xca

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljavassist/bytecode/CodeIterator;->opcodeLength:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x3
        0x2
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x2
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x5
        0x5
        0x3
        0x2
        0x3
        0x1
        0x1
        0x3
        0x3
        0x1
        0x1
        0x0
        0x4
        0x3
        0x3
        0x5
        0x5
    .end array-data
.end method

.method protected constructor <init>(Ljavassist/bytecode/CodeAttribute;)V
    .locals 1
    .param p1, "ca"    # Ljavassist/bytecode/CodeAttribute;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    .line 58
    invoke-virtual {p1}, Ljavassist/bytecode/CodeAttribute;->getCode()[B

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    .line 59
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->begin()V

    .line 60
    return-void
.end method

.method private static addLdcW(Ljavassist/bytecode/CodeAttribute$LdcEntry;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "ldcs"    # Ljavassist/bytecode/CodeAttribute$LdcEntry;
    .param p1, "jumps"    # Ljava/util/ArrayList;

    .prologue
    .line 1084
    iget v3, p0, Ljavassist/bytecode/CodeAttribute$LdcEntry;->where:I

    .line 1085
    .local v3, "where":I
    new-instance v1, Ljavassist/bytecode/CodeIterator$LdcW;

    iget v4, p0, Ljavassist/bytecode/CodeAttribute$LdcEntry;->index:I

    invoke-direct {v1, v3, v4}, Ljavassist/bytecode/CodeIterator$LdcW;-><init>(II)V

    .line 1086
    .local v1, "ldcw":Ljavassist/bytecode/CodeIterator$LdcW;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1087
    .local v2, "s":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1088
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/CodeIterator$Branch;

    iget v4, v4, Ljavassist/bytecode/CodeIterator$Branch;->orgPos:I

    if-ge v3, v4, :cond_0

    .line 1089
    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1094
    :goto_1
    return-void

    .line 1087
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1093
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static changeLdcToLdcW([BLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;Ljavassist/bytecode/CodeAttribute$LdcEntry;)[B
    .locals 9
    .param p0, "code"    # [B
    .param p1, "etable"    # Ljavassist/bytecode/ExceptionTable;
    .param p2, "ca"    # Ljavassist/bytecode/CodeAttribute;
    .param p3, "ldcs"    # Ljavassist/bytecode/CodeAttribute$LdcEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1072
    new-instance v0, Ljavassist/bytecode/CodeIterator$Pointers;

    move v2, v1

    move v3, v1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/CodeIterator$Pointers;-><init>(IIILjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)V

    .line 1073
    .local v0, "pointers":Ljavassist/bytecode/CodeIterator$Pointers;
    array-length v2, p0

    invoke-static {p0, v2, v0}, Ljavassist/bytecode/CodeIterator;->makeJumpList([BILjavassist/bytecode/CodeIterator$Pointers;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1074
    .local v6, "jumps":Ljava/util/ArrayList;
    :goto_0
    if-eqz p3, :cond_0

    .line 1075
    invoke-static {p3, v6}, Ljavassist/bytecode/CodeIterator;->addLdcW(Ljavassist/bytecode/CodeAttribute$LdcEntry;Ljava/util/ArrayList;)V

    .line 1076
    iget-object p3, p3, Ljavassist/bytecode/CodeAttribute$LdcEntry;->next:Ljavassist/bytecode/CodeAttribute$LdcEntry;

    goto :goto_0

    :cond_0
    move-object v2, p0

    move v3, v1

    move v4, v1

    move v5, v1

    move-object v7, v0

    .line 1079
    invoke-static/range {v2 .. v7}, Ljavassist/bytecode/CodeIterator;->insertGap2w([BIIZLjava/util/ArrayList;Ljavassist/bytecode/CodeIterator$Pointers;)[B

    move-result-object v8

    .line 1080
    .local v8, "r":[B
    return-object v8
.end method

.method private static copyGapBytes([BI[BII)I
    .locals 3
    .param p0, "newcode"    # [B
    .param p1, "j"    # I
    .param p2, "code"    # [B
    .param p3, "i"    # I
    .param p4, "iEnd"    # I

    .prologue
    .line 973
    sub-int v2, p4, p3

    packed-switch v2, :pswitch_data_0

    .line 985
    :goto_0
    return p1

    .line 975
    :pswitch_0
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "j":I
    .local v1, "j":I
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "i":I
    .local v0, "i":I
    aget-byte v2, p2, p3

    aput-byte v2, p0, p1

    move p3, v0

    .end local v0    # "i":I
    .restart local p3    # "i":I
    move p1, v1

    .line 977
    .end local v1    # "j":I
    .restart local p1    # "j":I
    :pswitch_1
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "j":I
    .restart local v1    # "j":I
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "i":I
    .restart local v0    # "i":I
    aget-byte v2, p2, p3

    aput-byte v2, p0, p1

    move p3, v0

    .end local v0    # "i":I
    .restart local p3    # "i":I
    move p1, v1

    .line 979
    .end local v1    # "j":I
    .restart local p1    # "j":I
    :pswitch_2
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "j":I
    .restart local v1    # "j":I
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "i":I
    .restart local v0    # "i":I
    aget-byte v2, p2, p3

    aput-byte v2, p0, p1

    move p3, v0

    .end local v0    # "i":I
    .restart local p3    # "i":I
    move p1, v1

    .line 981
    .end local v1    # "j":I
    .restart local p1    # "j":I
    :pswitch_3
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "j":I
    .restart local v1    # "j":I
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "i":I
    .restart local v0    # "i":I
    aget-byte v2, p2, p3

    aput-byte v2, p0, p1

    move p3, v0

    .end local v0    # "i":I
    .restart local p3    # "i":I
    move p1, v1

    .end local v1    # "j":I
    .restart local p1    # "j":I
    goto :goto_0

    .line 973
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private insert0(I[BZ)I
    .locals 7
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "exclusive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 466
    array-length v1, p2

    .line 467
    .local v1, "len":I
    if-gtz v1, :cond_0

    move v4, p1

    .line 477
    .end local p1    # "pos":I
    .local v4, "pos":I
    :goto_0
    return v4

    .line 471
    .end local v4    # "pos":I
    .restart local p1    # "pos":I
    :cond_0
    invoke-virtual {p0, p1, v1, p3}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object v5

    iget p1, v5, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    .line 473
    move v2, p1

    .line 474
    .local v2, "p":I
    const/4 v0, 0x0

    .local v0, "j":I
    move v3, v2

    .end local v2    # "p":I
    .local v3, "p":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 475
    iget-object v5, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "p":I
    .restart local v2    # "p":I
    aget-byte v6, p2, v0

    aput-byte v6, v5, v3

    .line 474
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2    # "p":I
    .restart local v3    # "p":I
    goto :goto_1

    :cond_1
    move v4, p1

    .line 477
    .end local p1    # "pos":I
    .restart local v4    # "pos":I
    goto :goto_0
.end method

.method private static insertGap2([BIII[BZ)V
    .locals 20
    .param p0, "code"    # [B
    .param p1, "where"    # I
    .param p2, "gapLength"    # I
    .param p3, "endPos"    # I
    .param p4, "newcode"    # [B
    .param p5, "exclusive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;,
            Ljavassist/bytecode/CodeIterator$AlignmentException;
        }
    .end annotation

    .prologue
    .line 873
    const/4 v6, 0x0

    .line 874
    .local v6, "i":I
    const/4 v11, 0x0

    .line 875
    .local v11, "j":I
    :goto_0
    move/from16 v0, p3

    if-ge v6, v0, :cond_b

    .line 876
    move/from16 v0, p1

    if-ne v6, v0, :cond_1

    .line 877
    add-int v13, v11, p2

    .local v13, "j2":I
    move v12, v11

    .line 878
    .end local v11    # "j":I
    .local v12, "j":I
    :goto_1
    if-ge v12, v13, :cond_0

    .line 879
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "j":I
    .restart local v11    # "j":I
    const/16 v18, 0x0

    aput-byte v18, p4, v12

    move v12, v11

    .end local v11    # "j":I
    .restart local v12    # "j":I
    goto :goto_1

    :cond_0
    move v11, v12

    .line 882
    .end local v12    # "j":I
    .end local v13    # "j2":I
    .restart local v11    # "j":I
    :cond_1
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Ljavassist/bytecode/CodeIterator;->nextOpcode([BI)I

    move-result v15

    .line 883
    .local v15, "nextPos":I
    aget-byte v18, p0, v6

    move/from16 v0, v18

    and-int/lit16 v10, v0, 0xff

    .line 885
    .local v10, "inst":I
    const/16 v18, 0x99

    move/from16 v0, v18

    if-gt v0, v10, :cond_2

    const/16 v18, 0xa8

    move/from16 v0, v18

    if-le v10, v0, :cond_3

    :cond_2
    const/16 v18, 0xc6

    move/from16 v0, v18

    if-eq v10, v0, :cond_3

    const/16 v18, 0xc7

    move/from16 v0, v18

    if-ne v10, v0, :cond_5

    .line 888
    :cond_3
    add-int/lit8 v18, v6, 0x1

    aget-byte v18, p0, v18

    shl-int/lit8 v18, v18, 0x8

    add-int/lit8 v19, v6, 0x2

    aget-byte v19, p0, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v17, v18, v19

    .line 889
    .local v17, "offset":I
    move/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    invoke-static {v6, v0, v1, v2, v3}, Ljavassist/bytecode/CodeIterator;->newOffset(IIIIZ)I

    move-result v17

    .line 890
    aget-byte v18, p0, v6

    aput-byte v18, p4, v11

    .line 891
    add-int/lit8 v18, v11, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p4

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 892
    add-int/lit8 v11, v11, 0x3

    .line 875
    .end local v17    # "offset":I
    :cond_4
    :goto_2
    move v6, v15

    goto :goto_0

    .line 894
    :cond_5
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-eq v10, v0, :cond_6

    const/16 v18, 0xc9

    move/from16 v0, v18

    if-ne v10, v0, :cond_7

    .line 896
    :cond_6
    add-int/lit8 v18, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v17

    .line 897
    .restart local v17    # "offset":I
    move/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    invoke-static {v6, v0, v1, v2, v3}, Ljavassist/bytecode/CodeIterator;->newOffset(IIIIZ)I

    move-result v17

    .line 898
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "j":I
    .restart local v12    # "j":I
    aget-byte v18, p0, v6

    aput-byte v18, p4, v11

    .line 899
    move/from16 v0, v17

    move-object/from16 v1, p4

    invoke-static {v0, v1, v12}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 900
    add-int/lit8 v11, v12, 0x4

    .line 901
    .end local v12    # "j":I
    .restart local v11    # "j":I
    goto :goto_2

    .line 902
    .end local v17    # "offset":I
    :cond_7
    const/16 v18, 0xaa

    move/from16 v0, v18

    if-ne v10, v0, :cond_9

    .line 903
    if-eq v6, v11, :cond_8

    and-int/lit8 v18, p2, 0x3

    if-eqz v18, :cond_8

    .line 904
    new-instance v18, Ljavassist/bytecode/CodeIterator$AlignmentException;

    invoke-direct/range {v18 .. v18}, Ljavassist/bytecode/CodeIterator$AlignmentException;-><init>()V

    throw v18

    .line 906
    :cond_8
    and-int/lit8 v18, v6, -0x4

    add-int/lit8 v9, v18, 0x4

    .line 913
    .local v9, "i2":I
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-static {v0, v11, v1, v6, v9}, Ljavassist/bytecode/CodeIterator;->copyGapBytes([BI[BII)I

    move-result v11

    .line 915
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    invoke-static {v6, v0, v1, v2, v3}, Ljavassist/bytecode/CodeIterator;->newOffset(IIIIZ)I

    move-result v4

    .line 917
    .local v4, "defaultbyte":I
    move-object/from16 v0, p4

    invoke-static {v4, v0, v11}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 918
    add-int/lit8 v18, v9, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v14

    .line 919
    .local v14, "lowbyte":I
    add-int/lit8 v18, v11, 0x4

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-static {v14, v0, v1}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 920
    add-int/lit8 v18, v9, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v5

    .line 921
    .local v5, "highbyte":I
    add-int/lit8 v18, v11, 0x8

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-static {v5, v0, v1}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 922
    add-int/lit8 v11, v11, 0xc

    .line 923
    add-int/lit8 v8, v9, 0xc

    .line 924
    .local v8, "i0":I
    sub-int v18, v5, v14

    add-int/lit8 v18, v18, 0x1

    mul-int/lit8 v18, v18, 0x4

    add-int v9, v8, v18

    .line 925
    :goto_3
    if-ge v8, v9, :cond_4

    .line 926
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    invoke-static {v6, v0, v1, v2, v3}, Ljavassist/bytecode/CodeIterator;->newOffset(IIIIZ)I

    move-result v17

    .line 928
    .restart local v17    # "offset":I
    move/from16 v0, v17

    move-object/from16 v1, p4

    invoke-static {v0, v1, v11}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 929
    add-int/lit8 v11, v11, 0x4

    .line 930
    add-int/lit8 v8, v8, 0x4

    .line 931
    goto :goto_3

    .line 933
    .end local v4    # "defaultbyte":I
    .end local v5    # "highbyte":I
    .end local v8    # "i0":I
    .end local v9    # "i2":I
    .end local v14    # "lowbyte":I
    .end local v17    # "offset":I
    :cond_9
    const/16 v18, 0xab

    move/from16 v0, v18

    if-ne v10, v0, :cond_d

    .line 934
    if-eq v6, v11, :cond_a

    and-int/lit8 v18, p2, 0x3

    if-eqz v18, :cond_a

    .line 935
    new-instance v18, Ljavassist/bytecode/CodeIterator$AlignmentException;

    invoke-direct/range {v18 .. v18}, Ljavassist/bytecode/CodeIterator$AlignmentException;-><init>()V

    throw v18

    .line 937
    :cond_a
    and-int/lit8 v18, v6, -0x4

    add-int/lit8 v9, v18, 0x4

    .line 945
    .restart local v9    # "i2":I
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-static {v0, v11, v1, v6, v9}, Ljavassist/bytecode/CodeIterator;->copyGapBytes([BI[BII)I

    move-result v11

    .line 947
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    invoke-static {v6, v0, v1, v2, v3}, Ljavassist/bytecode/CodeIterator;->newOffset(IIIIZ)I

    move-result v4

    .line 949
    .restart local v4    # "defaultbyte":I
    move-object/from16 v0, p4

    invoke-static {v4, v0, v11}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 950
    add-int/lit8 v18, v9, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v16

    .line 951
    .local v16, "npairs":I
    add-int/lit8 v18, v11, 0x4

    move/from16 v0, v16

    move-object/from16 v1, p4

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 952
    add-int/lit8 v11, v11, 0x8

    .line 953
    add-int/lit8 v8, v9, 0x8

    .line 954
    .restart local v8    # "i0":I
    mul-int/lit8 v18, v16, 0x8

    add-int v9, v8, v18

    .line 955
    :goto_4
    if-ge v8, v9, :cond_4

    .line 956
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v8, v1, v11}, Ljavassist/bytecode/ByteArray;->copy32bit([BI[BI)V

    .line 957
    add-int/lit8 v18, v8, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    invoke-static {v6, v0, v1, v2, v3}, Ljavassist/bytecode/CodeIterator;->newOffset(IIIIZ)I

    move-result v17

    .line 960
    .restart local v17    # "offset":I
    add-int/lit8 v18, v11, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p4

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 961
    add-int/lit8 v11, v11, 0x8

    .line 962
    add-int/lit8 v8, v8, 0x8

    .line 963
    goto :goto_4

    .line 966
    .end local v4    # "defaultbyte":I
    .end local v6    # "i":I
    .end local v8    # "i0":I
    .end local v9    # "i2":I
    .end local v11    # "j":I
    .end local v16    # "npairs":I
    .end local v17    # "offset":I
    .local v7, "i":I
    .restart local v12    # "j":I
    :goto_5
    if-ge v7, v15, :cond_c

    .line 967
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "j":I
    .restart local v11    # "j":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    aget-byte v18, p0, v7

    aput-byte v18, p4, v12

    move v12, v11

    .end local v11    # "j":I
    .restart local v12    # "j":I
    move v7, v6

    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_5

    .line 969
    .end local v7    # "i":I
    .end local v10    # "inst":I
    .end local v12    # "j":I
    .end local v15    # "nextPos":I
    .restart local v6    # "i":I
    .restart local v11    # "j":I
    :cond_b
    return-void

    .end local v6    # "i":I
    .end local v11    # "j":I
    .restart local v7    # "i":I
    .restart local v10    # "inst":I
    .restart local v12    # "j":I
    .restart local v15    # "nextPos":I
    :cond_c
    move v11, v12

    .end local v12    # "j":I
    .restart local v11    # "j":I
    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_2

    :cond_d
    move v12, v11

    .end local v11    # "j":I
    .restart local v12    # "j":I
    move v7, v6

    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_5
.end method

.method private static insertGap2w([BIIZLjava/util/ArrayList;Ljavassist/bytecode/CodeIterator$Pointers;)[B
    .locals 10
    .param p0, "code"    # [B
    .param p1, "where"    # I
    .param p2, "gapLength"    # I
    .param p3, "exclusive"    # Z
    .param p4, "jumps"    # Ljava/util/ArrayList;
    .param p5, "ptrs"    # Ljavassist/bytecode/CodeIterator$Pointers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1137
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1138
    .local v5, "n":I
    if-lez p2, :cond_0

    .line 1139
    invoke-virtual {p5, p1, p2, p3}, Ljavassist/bytecode/CodeIterator$Pointers;->shiftPc(IIZ)V

    .line 1140
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 1141
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavassist/bytecode/CodeIterator$Branch;

    invoke-virtual {v8, p1, p2, p3}, Ljavassist/bytecode/CodeIterator$Branch;->shift(IIZ)V

    .line 1140
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1144
    .end local v3    # "i":I
    :cond_0
    const/4 v7, 0x1

    .line 1146
    .local v7, "unstable":Z
    :cond_1
    if-eqz v7, :cond_3

    .line 1147
    const/4 v7, 0x0

    .line 1148
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v5, :cond_1

    .line 1149
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/CodeIterator$Branch;

    .line 1150
    .local v0, "b":Ljavassist/bytecode/CodeIterator$Branch;
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator$Branch;->expanded()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1151
    const/4 v7, 0x1

    .line 1152
    iget v6, v0, Ljavassist/bytecode/CodeIterator$Branch;->pos:I

    .line 1153
    .local v6, "p":I
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator$Branch;->deltaSize()I

    move-result v1

    .line 1154
    .local v1, "delta":I
    invoke-virtual {p5, v6, v1, v9}, Ljavassist/bytecode/CodeIterator$Pointers;->shiftPc(IIZ)V

    .line 1155
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v5, :cond_2

    .line 1156
    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavassist/bytecode/CodeIterator$Branch;

    invoke-virtual {v8, v6, v1, v9}, Ljavassist/bytecode/CodeIterator$Branch;->shift(IIZ)V

    .line 1155
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1148
    .end local v1    # "delta":I
    .end local v4    # "j":I
    .end local v6    # "p":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1161
    .end local v0    # "b":Ljavassist/bytecode/CodeIterator$Branch;
    .end local v3    # "i":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v5, :cond_5

    .line 1162
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/CodeIterator$Branch;

    .line 1163
    .restart local v0    # "b":Ljavassist/bytecode/CodeIterator$Branch;
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator$Branch;->gapChanged()I

    move-result v2

    .line 1164
    .local v2, "diff":I
    if-lez v2, :cond_4

    .line 1165
    const/4 v7, 0x1

    .line 1166
    iget v6, v0, Ljavassist/bytecode/CodeIterator$Branch;->pos:I

    .line 1167
    .restart local v6    # "p":I
    invoke-virtual {p5, v6, v2, v9}, Ljavassist/bytecode/CodeIterator$Pointers;->shiftPc(IIZ)V

    .line 1168
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_4
    if-ge v4, v5, :cond_4

    .line 1169
    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavassist/bytecode/CodeIterator$Branch;

    invoke-virtual {v8, v6, v2, v9}, Ljavassist/bytecode/CodeIterator$Branch;->shift(IIZ)V

    .line 1168
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1161
    .end local v4    # "j":I
    .end local v6    # "p":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1172
    .end local v0    # "b":Ljavassist/bytecode/CodeIterator$Branch;
    .end local v2    # "diff":I
    :cond_5
    if-nez v7, :cond_1

    .line 1174
    invoke-static {p0, p4, p1, p2}, Ljavassist/bytecode/CodeIterator;->makeExapndedCode([BLjava/util/ArrayList;II)[B

    move-result-object v8

    return-object v8
.end method

.method static insertGapCore0([BIIZLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)[B
    .locals 8
    .param p0, "code"    # [B
    .param p1, "where"    # I
    .param p2, "gapLength"    # I
    .param p3, "exclusive"    # Z
    .param p4, "etable"    # Ljavassist/bytecode/ExceptionTable;
    .param p5, "ca"    # Ljavassist/bytecode/CodeAttribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 815
    if-gtz p2, :cond_0

    .line 823
    .end local p0    # "code":[B
    :goto_0
    return-object p0

    .line 819
    .restart local p0    # "code":[B
    :cond_0
    :try_start_0
    invoke-static/range {p0 .. p5}, Ljavassist/bytecode/CodeIterator;->insertGapCore1([BIIZLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)[B
    :try_end_0
    .catch Ljavassist/bytecode/CodeIterator$AlignmentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 821
    :catch_0
    move-exception v6

    .line 823
    .local v6, "e":Ljavassist/bytecode/CodeIterator$AlignmentException;
    add-int/lit8 v0, p2, 0x3

    and-int/lit8 v2, v0, -0x4

    move-object v0, p0

    move v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    :try_start_1
    invoke-static/range {v0 .. v5}, Ljavassist/bytecode/CodeIterator;->insertGapCore1([BIIZLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)[B
    :try_end_1
    .catch Ljavassist/bytecode/CodeIterator$AlignmentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p0

    goto :goto_0

    .line 826
    :catch_1
    move-exception v7

    .line 827
    .local v7, "e2":Ljavassist/bytecode/CodeIterator$AlignmentException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fatal error?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private insertGapCore0w([BIIZLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;Ljavassist/bytecode/CodeIterator$Gap;)[B
    .locals 10
    .param p1, "code"    # [B
    .param p2, "where"    # I
    .param p3, "gapLength"    # I
    .param p4, "exclusive"    # Z
    .param p5, "etable"    # Ljavassist/bytecode/ExceptionTable;
    .param p6, "ca"    # Ljavassist/bytecode/CodeAttribute;
    .param p7, "newWhere"    # Ljavassist/bytecode/CodeIterator$Gap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 1113
    if-gtz p3, :cond_0

    .line 1130
    .end local p1    # "code":[B
    :goto_0
    return-object p1

    .line 1116
    .restart local p1    # "code":[B
    :cond_0
    new-instance v1, Ljavassist/bytecode/CodeIterator$Pointers;

    iget v2, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    iget v3, p0, Ljavassist/bytecode/CodeIterator;->mark:I

    move v4, p2

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Ljavassist/bytecode/CodeIterator$Pointers;-><init>(IIILjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)V

    .line 1117
    .local v1, "pointers":Ljavassist/bytecode/CodeIterator$Pointers;
    array-length v2, p1

    invoke-static {p1, v2, v1}, Ljavassist/bytecode/CodeIterator;->makeJumpList([BILjavassist/bytecode/CodeIterator$Pointers;)Ljava/util/ArrayList;

    move-result-object v6

    .local v6, "jumps":Ljava/util/ArrayList;
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v7, v1

    .line 1118
    invoke-static/range {v2 .. v7}, Ljavassist/bytecode/CodeIterator;->insertGap2w([BIIZLjava/util/ArrayList;Ljavassist/bytecode/CodeIterator$Pointers;)[B

    move-result-object v8

    .line 1119
    .local v8, "r":[B
    iget v2, v1, Ljavassist/bytecode/CodeIterator$Pointers;->cursor:I

    iput v2, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    .line 1120
    iget v2, v1, Ljavassist/bytecode/CodeIterator$Pointers;->mark:I

    iput v2, p0, Ljavassist/bytecode/CodeIterator;->mark:I

    .line 1121
    iget v9, v1, Ljavassist/bytecode/CodeIterator$Pointers;->mark0:I

    .line 1122
    .local v9, "where2":I
    iget v2, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    if-ne v9, v2, :cond_1

    if-nez p4, :cond_1

    .line 1123
    iget v2, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    add-int/2addr v2, p3

    iput v2, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    .line 1125
    :cond_1
    if-eqz p4, :cond_2

    .line 1126
    sub-int/2addr v9, p3

    .line 1128
    :cond_2
    move-object/from16 v0, p7

    iput v9, v0, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    .line 1129
    move-object/from16 v0, p7

    iput p3, v0, Ljavassist/bytecode/CodeIterator$Gap;->length:I

    move-object p1, v8

    .line 1130
    goto :goto_0
.end method

.method private static insertGapCore1([BIIZLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)[B
    .locals 12
    .param p0, "code"    # [B
    .param p1, "where"    # I
    .param p2, "gapLength"    # I
    .param p3, "exclusive"    # Z
    .param p4, "etable"    # Ljavassist/bytecode/ExceptionTable;
    .param p5, "ca"    # Ljavassist/bytecode/CodeAttribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;,
            Ljavassist/bytecode/CodeIterator$AlignmentException;
        }
    .end annotation

    .prologue
    .line 837
    array-length v4, p0

    .line 838
    .local v4, "codeLength":I
    add-int v1, v4, p2

    new-array v5, v1, [B

    .local v5, "newcode":[B
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p3

    .line 839
    invoke-static/range {v1 .. v6}, Ljavassist/bytecode/CodeIterator;->insertGap2([BIII[BZ)V

    .line 840
    move-object/from16 v0, p4

    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/ExceptionTable;->shiftPc(IIZ)V

    .line 841
    const-string v1, "LineNumberTable"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v7

    check-cast v7, Ljavassist/bytecode/LineNumberAttribute;

    .line 843
    .local v7, "na":Ljavassist/bytecode/LineNumberAttribute;
    if-eqz v7, :cond_0

    .line 844
    invoke-virtual {v7, p1, p2, p3}, Ljavassist/bytecode/LineNumberAttribute;->shiftPc(IIZ)V

    .line 846
    :cond_0
    const-string v1, "LocalVariableTable"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v10

    check-cast v10, Ljavassist/bytecode/LocalVariableAttribute;

    .line 848
    .local v10, "va":Ljavassist/bytecode/LocalVariableAttribute;
    if-eqz v10, :cond_1

    .line 849
    invoke-virtual {v10, p1, p2, p3}, Ljavassist/bytecode/LocalVariableAttribute;->shiftPc(IIZ)V

    .line 851
    :cond_1
    const-string v1, "LocalVariableTypeTable"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v11

    check-cast v11, Ljavassist/bytecode/LocalVariableAttribute;

    .line 854
    .local v11, "vta":Ljavassist/bytecode/LocalVariableAttribute;
    if-eqz v11, :cond_2

    .line 855
    invoke-virtual {v11, p1, p2, p3}, Ljavassist/bytecode/LocalVariableAttribute;->shiftPc(IIZ)V

    .line 857
    :cond_2
    const-string v1, "StackMapTable"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v9

    check-cast v9, Ljavassist/bytecode/StackMapTable;

    .line 858
    .local v9, "smt":Ljavassist/bytecode/StackMapTable;
    if-eqz v9, :cond_3

    .line 859
    invoke-virtual {v9, p1, p2, p3}, Ljavassist/bytecode/StackMapTable;->shiftPc(IIZ)V

    .line 861
    :cond_3
    const-string v1, "StackMap"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v8

    check-cast v8, Ljavassist/bytecode/StackMap;

    .line 862
    .local v8, "sm":Ljavassist/bytecode/StackMap;
    if-eqz v8, :cond_4

    .line 863
    invoke-virtual {v8, p1, p2, p3}, Ljavassist/bytecode/StackMap;->shiftPc(IIZ)V

    .line 865
    :cond_4
    return-object v5
.end method

.method private static makeExapndedCode([BLjava/util/ArrayList;II)[B
    .locals 16
    .param p0, "code"    # [B
    .param p1, "jumps"    # Ljava/util/ArrayList;
    .param p2, "where"    # I
    .param p3, "gapLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 1242
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1243
    .local v8, "n":I
    move-object/from16 v0, p0

    array-length v15, v0

    add-int v12, v15, p3

    .line 1244
    .local v12, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 1245
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/CodeIterator$Branch;

    .line 1246
    .local v1, "b":Ljavassist/bytecode/CodeIterator$Branch;
    invoke-virtual {v1}, Ljavassist/bytecode/CodeIterator$Branch;->deltaSize()I

    move-result v15

    add-int/2addr v12, v15

    .line 1244
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1249
    .end local v1    # "b":Ljavassist/bytecode/CodeIterator$Branch;
    :cond_0
    new-array v9, v12, [B

    .line 1250
    .local v9, "newcode":[B
    const/4 v13, 0x0

    .local v13, "src":I
    const/4 v4, 0x0

    .local v4, "dest":I
    const/4 v2, 0x0

    .line 1251
    .local v2, "bindex":I
    move-object/from16 v0, p0

    array-length v7, v0

    .line 1254
    .local v7, "len":I
    if-lez v8, :cond_1

    .line 1255
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/CodeIterator$Branch;

    .line 1256
    .restart local v1    # "b":Ljavassist/bytecode/CodeIterator$Branch;
    iget v3, v1, Ljavassist/bytecode/CodeIterator$Branch;->orgPos:I

    .local v3, "bpos":I
    move v14, v13

    .line 1263
    .end local v13    # "src":I
    .local v14, "src":I
    :goto_1
    if-ge v14, v7, :cond_6

    .line 1264
    move/from16 v0, p2

    if-ne v14, v0, :cond_2

    .line 1265
    add-int v10, v4, p3

    .local v10, "pos2":I
    move v5, v4

    .line 1266
    .end local v4    # "dest":I
    .local v5, "dest":I
    :goto_2
    if-ge v5, v10, :cond_3

    .line 1267
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dest":I
    .restart local v4    # "dest":I
    const/4 v15, 0x0

    aput-byte v15, v9, v5

    move v5, v4

    .end local v4    # "dest":I
    .restart local v5    # "dest":I
    goto :goto_2

    .line 1259
    .end local v1    # "b":Ljavassist/bytecode/CodeIterator$Branch;
    .end local v3    # "bpos":I
    .end local v5    # "dest":I
    .end local v10    # "pos2":I
    .end local v14    # "src":I
    .restart local v4    # "dest":I
    .restart local v13    # "src":I
    :cond_1
    const/4 v1, 0x0

    .line 1260
    .restart local v1    # "b":Ljavassist/bytecode/CodeIterator$Branch;
    move v3, v7

    .restart local v3    # "bpos":I
    move v14, v13

    .end local v13    # "src":I
    .restart local v14    # "src":I
    goto :goto_1

    :cond_2
    move v5, v4

    .line 1270
    .end local v4    # "dest":I
    .restart local v5    # "dest":I
    :cond_3
    if-eq v14, v3, :cond_4

    .line 1271
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dest":I
    .restart local v4    # "dest":I
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "src":I
    .restart local v13    # "src":I
    aget-byte v15, p0, v14

    aput-byte v15, v9, v5

    move v14, v13

    .end local v13    # "src":I
    .restart local v14    # "src":I
    goto :goto_1

    .line 1273
    .end local v4    # "dest":I
    .restart local v5    # "dest":I
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v1, v14, v0, v5, v9}, Ljavassist/bytecode/CodeIterator$Branch;->write(I[BI[B)I

    move-result v11

    .line 1274
    .local v11, "s":I
    add-int v13, v14, v11

    .line 1275
    .end local v14    # "src":I
    .restart local v13    # "src":I
    invoke-virtual {v1}, Ljavassist/bytecode/CodeIterator$Branch;->deltaSize()I

    move-result v15

    add-int/2addr v15, v11

    add-int v4, v5, v15

    .line 1276
    .end local v5    # "dest":I
    .restart local v4    # "dest":I
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v8, :cond_5

    .line 1277
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "b":Ljavassist/bytecode/CodeIterator$Branch;
    check-cast v1, Ljavassist/bytecode/CodeIterator$Branch;

    .line 1278
    .restart local v1    # "b":Ljavassist/bytecode/CodeIterator$Branch;
    iget v3, v1, Ljavassist/bytecode/CodeIterator$Branch;->orgPos:I

    :goto_3
    move v14, v13

    .line 1284
    .end local v13    # "src":I
    .restart local v14    # "src":I
    goto :goto_1

    .line 1281
    .end local v14    # "src":I
    .restart local v13    # "src":I
    :cond_5
    const/4 v1, 0x0

    .line 1282
    move v3, v7

    goto :goto_3

    .line 1287
    .end local v11    # "s":I
    .end local v13    # "src":I
    .restart local v14    # "src":I
    :cond_6
    return-object v9
.end method

.method private static makeJumpList([BILjavassist/bytecode/CodeIterator$Pointers;)Ljava/util/ArrayList;
    .locals 24
    .param p0, "code"    # [B
    .param p1, "endPos"    # I
    .param p2, "ptrs"    # Ljavassist/bytecode/CodeIterator$Pointers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 1180
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1182
    .local v19, "jumps":Ljava/util/ArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move/from16 v0, p1

    if-ge v3, v0, :cond_b

    .line 1183
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Ljavassist/bytecode/CodeIterator;->nextOpcode([BI)I

    move-result v20

    .line 1184
    .local v20, "nextPos":I
    aget-byte v2, p0, v3

    and-int/lit16 v0, v2, 0xff

    move/from16 v17, v0

    .line 1186
    .local v17, "inst":I
    const/16 v2, 0x99

    move/from16 v0, v17

    if-gt v2, v0, :cond_0

    const/16 v2, 0xa8

    move/from16 v0, v17

    if-le v0, v2, :cond_1

    :cond_0
    const/16 v2, 0xc6

    move/from16 v0, v17

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc7

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    .line 1189
    :cond_1
    add-int/lit8 v2, v3, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v8, v3, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    or-int v22, v2, v8

    .line 1191
    .local v22, "offset":I
    const/16 v2, 0xa7

    move/from16 v0, v17

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa8

    move/from16 v0, v17

    if-ne v0, v2, :cond_4

    .line 1192
    :cond_2
    new-instance v14, Ljavassist/bytecode/CodeIterator$Jump16;

    move/from16 v0, v22

    invoke-direct {v14, v3, v0}, Ljavassist/bytecode/CodeIterator$Jump16;-><init>(II)V

    .line 1196
    .local v14, "b":Ljavassist/bytecode/CodeIterator$Branch;
    :goto_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1182
    .end local v14    # "b":Ljavassist/bytecode/CodeIterator$Branch;
    .end local v22    # "offset":I
    :cond_3
    :goto_2
    move/from16 v3, v20

    goto :goto_0

    .line 1194
    .restart local v22    # "offset":I
    :cond_4
    new-instance v14, Ljavassist/bytecode/CodeIterator$If16;

    move/from16 v0, v22

    invoke-direct {v14, v3, v0}, Ljavassist/bytecode/CodeIterator$If16;-><init>(II)V

    .restart local v14    # "b":Ljavassist/bytecode/CodeIterator$Branch;
    goto :goto_1

    .line 1198
    .end local v14    # "b":Ljavassist/bytecode/CodeIterator$Branch;
    .end local v22    # "offset":I
    :cond_5
    const/16 v2, 0xc8

    move/from16 v0, v17

    if-eq v0, v2, :cond_6

    const/16 v2, 0xc9

    move/from16 v0, v17

    if-ne v0, v2, :cond_7

    .line 1200
    :cond_6
    add-int/lit8 v2, v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v22

    .line 1201
    .restart local v22    # "offset":I
    new-instance v2, Ljavassist/bytecode/CodeIterator$Jump32;

    move/from16 v0, v22

    invoke-direct {v2, v3, v0}, Ljavassist/bytecode/CodeIterator$Jump32;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1203
    .end local v22    # "offset":I
    :cond_7
    const/16 v2, 0xaa

    move/from16 v0, v17

    if-ne v0, v2, :cond_9

    .line 1204
    and-int/lit8 v2, v3, -0x4

    add-int/lit8 v16, v2, 0x4

    .line 1205
    .local v16, "i2":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v4

    .line 1206
    .local v4, "defaultbyte":I
    add-int/lit8 v2, v16, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v5

    .line 1207
    .local v5, "lowbyte":I
    add-int/lit8 v2, v16, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v6

    .line 1208
    .local v6, "highbyte":I
    add-int/lit8 v15, v16, 0xc

    .line 1209
    .local v15, "i0":I
    sub-int v2, v6, v5

    add-int/lit8 v23, v2, 0x1

    .line 1210
    .local v23, "size":I
    move/from16 v0, v23

    new-array v7, v0, [I

    .line 1211
    .local v7, "offsets":[I
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 1212
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v2

    aput v2, v7, v18

    .line 1213
    add-int/lit8 v15, v15, 0x4

    .line 1211
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 1216
    :cond_8
    new-instance v2, Ljavassist/bytecode/CodeIterator$Table;

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Ljavassist/bytecode/CodeIterator$Table;-><init>(IIII[ILjavassist/bytecode/CodeIterator$Pointers;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1218
    .end local v4    # "defaultbyte":I
    .end local v5    # "lowbyte":I
    .end local v6    # "highbyte":I
    .end local v7    # "offsets":[I
    .end local v15    # "i0":I
    .end local v16    # "i2":I
    .end local v18    # "j":I
    .end local v23    # "size":I
    :cond_9
    const/16 v2, 0xab

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    .line 1219
    and-int/lit8 v2, v3, -0x4

    add-int/lit8 v16, v2, 0x4

    .line 1220
    .restart local v16    # "i2":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v4

    .line 1221
    .restart local v4    # "defaultbyte":I
    add-int/lit8 v2, v16, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v21

    .line 1222
    .local v21, "npairs":I
    add-int/lit8 v15, v16, 0x8

    .line 1223
    .restart local v15    # "i0":I
    move/from16 v0, v21

    new-array v11, v0, [I

    .line 1224
    .local v11, "matches":[I
    move/from16 v0, v21

    new-array v7, v0, [I

    .line 1225
    .restart local v7    # "offsets":[I
    const/16 v18, 0x0

    .restart local v18    # "j":I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 1226
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v2

    aput v2, v11, v18

    .line 1227
    add-int/lit8 v2, v15, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v2

    aput v2, v7, v18

    .line 1228
    add-int/lit8 v15, v15, 0x8

    .line 1225
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 1231
    :cond_a
    new-instance v8, Ljavassist/bytecode/CodeIterator$Lookup;

    move v9, v3

    move v10, v4

    move-object v12, v7

    move-object/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Ljavassist/bytecode/CodeIterator$Lookup;-><init>(II[I[ILjavassist/bytecode/CodeIterator$Pointers;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1235
    .end local v4    # "defaultbyte":I
    .end local v7    # "offsets":[I
    .end local v11    # "matches":[I
    .end local v15    # "i0":I
    .end local v16    # "i2":I
    .end local v17    # "inst":I
    .end local v18    # "j":I
    .end local v20    # "nextPos":I
    .end local v21    # "npairs":I
    :cond_b
    return-object v19
.end method

.method private static newOffset(IIIIZ)I
    .locals 1
    .param p0, "i"    # I
    .param p1, "offset"    # I
    .param p2, "where"    # I
    .param p3, "gapLength"    # I
    .param p4, "exclusive"    # Z

    .prologue
    .line 990
    add-int v0, p0, p1

    .line 991
    .local v0, "target":I
    if-ge p0, p2, :cond_2

    .line 992
    if-lt p2, v0, :cond_0

    if-eqz p4, :cond_1

    if-ne p2, v0, :cond_1

    .line 993
    :cond_0
    add-int/2addr p1, p3

    .line 1005
    :cond_1
    :goto_0
    return p1

    .line 995
    :cond_2
    if-ne p0, p2, :cond_3

    .line 998
    if-ge v0, p2, :cond_1

    .line 999
    sub-int/2addr p1, p3

    goto :goto_0

    .line 1002
    :cond_3
    if-lt v0, p2, :cond_4

    if-nez p4, :cond_1

    if-ne p2, v0, :cond_1

    .line 1003
    :cond_4
    sub-int/2addr p1, p3

    goto :goto_0
.end method

.method static nextOpcode([BI)I
    .locals 9
    .param p0, "code"    # [B
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 755
    :try_start_0
    aget-byte v7, p0, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v6, v7, 0xff

    .line 762
    .local v6, "opcode":I
    :try_start_1
    sget-object v7, Ljavassist/bytecode/CodeIterator;->opcodeLength:[I

    aget v3, v7, v6
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 763
    .local v3, "len":I
    if-lez v3, :cond_0

    .line 764
    add-int v7, p1, v3

    .line 779
    :goto_0
    return v7

    .line 757
    .end local v3    # "len":I
    .end local v6    # "opcode":I
    :catch_0
    move-exception v0

    .line 758
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Ljavassist/bytecode/BadBytecode;

    const-string v8, "invalid opcode address"

    invoke-direct {v7, v8}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v7

    .line 765
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v3    # "len":I
    .restart local v6    # "opcode":I
    :cond_0
    const/16 v7, 0xc4

    if-ne v6, v7, :cond_2

    .line 766
    add-int/lit8 v7, p1, 0x1

    :try_start_2
    aget-byte v7, p0, v7

    const/16 v8, -0x7c

    if-ne v7, v8, :cond_1

    .line 767
    add-int/lit8 v7, p1, 0x6

    goto :goto_0

    .line 769
    :cond_1
    add-int/lit8 v7, p1, 0x4

    goto :goto_0

    .line 771
    :cond_2
    and-int/lit8 v7, p1, -0x4

    add-int/lit8 v2, v7, 0x8

    .line 772
    .local v2, "index2":I
    const/16 v7, 0xab

    if-ne v6, v7, :cond_3

    .line 773
    invoke-static {p0, v2}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v5

    .line 774
    .local v5, "npairs":I
    mul-int/lit8 v7, v5, 0x8

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x4

    goto :goto_0

    .line 776
    .end local v5    # "npairs":I
    :cond_3
    const/16 v7, 0xaa

    if-ne v6, v7, :cond_4

    .line 777
    invoke-static {p0, v2}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v4

    .line 778
    .local v4, "low":I
    add-int/lit8 v7, v2, 0x4

    invoke-static {p0, v7}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    .line 779
    .local v1, "high":I
    sub-int v7, v1, v4

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x8

    goto :goto_0

    .line 785
    .end local v1    # "high":I
    .end local v2    # "index2":I
    .end local v3    # "len":I
    .end local v4    # "low":I
    :catch_1
    move-exception v7

    .line 789
    :cond_4
    new-instance v7, Ljavassist/bytecode/BadBytecode;

    invoke-direct {v7, v6}, Ljavassist/bytecode/BadBytecode;-><init>(I)V

    throw v7
.end method

.method private skipSuperConstructor0(I)I
    .locals 9
    .param p1, "skipThis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->begin()V

    .line 285
    iget-object v7, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    invoke-virtual {v7}, Ljavassist/bytecode/CodeAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    .line 286
    .local v2, "cp":Ljavassist/bytecode/ConstPool;
    iget-object v7, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    invoke-virtual {v7}, Ljavassist/bytecode/CodeAttribute;->getDeclaringClass()Ljava/lang/String;

    move-result-object v6

    .line 287
    .local v6, "thisClassName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 288
    .local v5, "nested":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 289
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v3

    .line 290
    .local v3, "index":I
    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    .line 291
    .local v0, "c":I
    const/16 v7, 0xbb

    if-ne v0, v7, :cond_1

    .line 292
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 293
    :cond_1
    const/16 v7, 0xb7

    if-ne v0, v7, :cond_0

    .line 294
    iget-object v7, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    add-int/lit8 v8, v3, 0x1

    invoke-static {v7, v8}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v4

    .line 295
    .local v4, "mref":I
    invoke-virtual {v2, v4}, Ljavassist/bytecode/ConstPool;->getMethodrefName(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "<init>"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 296
    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_0

    .line 297
    if-gez p1, :cond_3

    .line 310
    .end local v0    # "c":I
    .end local v3    # "index":I
    .end local v4    # "mref":I
    :cond_2
    :goto_1
    return v3

    .line 300
    .restart local v0    # "c":I
    .restart local v3    # "index":I
    .restart local v4    # "mref":I
    :cond_3
    invoke-virtual {v2, v4}, Ljavassist/bytecode/ConstPool;->getMethodrefClassName(I)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "cname":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-lez p1, :cond_5

    const/4 v7, 0x1

    :goto_2
    if-eq v8, v7, :cond_2

    .line 309
    .end local v0    # "c":I
    .end local v1    # "cname":Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "mref":I
    :cond_4
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->begin()V

    .line 310
    const/4 v3, -0x1

    goto :goto_1

    .line 301
    .restart local v0    # "c":I
    .restart local v1    # "cname":Ljava/lang/String;
    .restart local v3    # "index":I
    .restart local v4    # "mref":I
    :cond_5
    const/4 v7, 0x0

    goto :goto_2
.end method


# virtual methods
.method public append([B)I
    .locals 6
    .param p1, "code"    # [B

    .prologue
    .line 682
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v3

    .line 683
    .local v3, "size":I
    array-length v2, p1

    .line 684
    .local v2, "len":I
    if-gtz v2, :cond_1

    .line 692
    :cond_0
    return v3

    .line 687
    :cond_1
    invoke-virtual {p0, v2}, Ljavassist/bytecode/CodeIterator;->appendGap(I)V

    .line 688
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    .line 689
    .local v0, "dest":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 690
    add-int v4, v1, v3

    aget-byte v5, p1, v1

    aput-byte v5, v0, v4

    .line 689
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public append(Ljavassist/bytecode/ExceptionTable;I)V
    .locals 2
    .param p1, "et"    # Ljavassist/bytecode/ExceptionTable;
    .param p2, "offset"    # I

    .prologue
    .line 726
    iget-object v1, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v0

    .line 727
    .local v0, "table":Ljavassist/bytecode/ExceptionTable;
    invoke-virtual {v0}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Ljavassist/bytecode/ExceptionTable;->add(ILjavassist/bytecode/ExceptionTable;I)V

    .line 728
    return-void
.end method

.method public appendGap(I)V
    .locals 5
    .param p1, "gapLength"    # I

    .prologue
    .line 701
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    .line 702
    .local v0, "code":[B
    array-length v1, v0

    .line 703
    .local v1, "codeLength":I
    add-int v4, v1, p1

    new-array v3, v4, [B

    .line 706
    .local v3, "newcode":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 707
    aget-byte v4, v0, v2

    aput-byte v4, v3, v2

    .line 706
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 709
    :cond_0
    move v2, v1

    :goto_1
    add-int v4, v1, p1

    if-ge v2, v4, :cond_1

    .line 710
    const/4 v4, 0x0

    aput-byte v4, v3, v2

    .line 709
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 712
    :cond_1
    iget-object v4, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    invoke-virtual {v4, v3}, Ljavassist/bytecode/CodeAttribute;->setCode([B)V

    .line 713
    iput-object v3, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    .line 714
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v4

    iput v4, p0, Ljavassist/bytecode/CodeIterator;->endPos:I

    .line 715
    return-void
.end method

.method public begin()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/bytecode/CodeIterator;->mark:I

    iput v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    .line 67
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/CodeIterator;->endPos:I

    .line 68
    return-void
.end method

.method public byteAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 127
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public get()Ljavassist/bytecode/CodeAttribute;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    return-object v0
.end method

.method public getCodeLength()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    array-length v0, v0

    return v0
.end method

.method public getMark()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->mark:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 185
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    iget v1, p0, Ljavassist/bytecode/CodeIterator;->endPos:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insert([B)I
    .locals 2
    .param p1, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 334
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljavassist/bytecode/CodeIterator;->insert0(I[BZ)I

    move-result v0

    return v0
.end method

.method public insert(I[B)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/CodeIterator;->insert0(I[BZ)I

    .line 360
    return-void
.end method

.method public insert(Ljavassist/bytecode/ExceptionTable;I)V
    .locals 2
    .param p1, "et"    # Ljavassist/bytecode/ExceptionTable;
    .param p2, "offset"    # I

    .prologue
    .line 672
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Ljavassist/bytecode/ExceptionTable;->add(ILjavassist/bytecode/ExceptionTable;I)V

    .line 673
    return-void
.end method

.method public insertAt(I[B)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 383
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/CodeIterator;->insert0(I[BZ)I

    move-result v0

    return v0
.end method

.method public insertEx([B)I
    .locals 2
    .param p1, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 407
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Ljavassist/bytecode/CodeIterator;->insert0(I[BZ)I

    move-result v0

    return v0
.end method

.method public insertEx(I[B)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 432
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/CodeIterator;->insert0(I[BZ)I

    .line 433
    return-void
.end method

.method public insertExAt(I[B)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 456
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/CodeIterator;->insert0(I[BZ)I

    move-result v0

    return v0
.end method

.method public insertExGap(I)I
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 535
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object v0

    iget v0, v0, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    return v0
.end method

.method public insertExGap(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 555
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object v0

    iget v0, v0, Ljavassist/bytecode/CodeIterator$Gap;->length:I

    return v0
.end method

.method public insertGap(I)I
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 496
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object v0

    iget v0, v0, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    return v0
.end method

.method public insertGap(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 516
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object v0

    iget v0, v0, Ljavassist/bytecode/CodeIterator$Gap;->length:I

    return v0
.end method

.method public insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;
    .locals 11
    .param p1, "pos"    # I
    .param p2, "length"    # I
    .param p3, "exclusive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 614
    new-instance v7, Ljavassist/bytecode/CodeIterator$Gap;

    invoke-direct {v7}, Ljavassist/bytecode/CodeIterator$Gap;-><init>()V

    .line 615
    .local v7, "gap":Ljavassist/bytecode/CodeIterator$Gap;
    if-gtz p2, :cond_0

    .line 616
    iput p1, v7, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    .line 617
    const/4 v0, 0x0

    iput v0, v7, Ljavassist/bytecode/CodeIterator$Gap;->length:I

    .line 649
    :goto_0
    return-object v7

    .line 623
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    array-length v0, v0

    add-int/2addr v0, p2

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_2

    .line 625
    iget-object v1, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v5

    iget-object v6, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v7}, Ljavassist/bytecode/CodeIterator;->insertGapCore0w([BIIZLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;Ljavassist/bytecode/CodeIterator$Gap;)[B

    move-result-object v8

    .line 627
    .local v8, "c":[B
    iget p1, v7, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    .line 628
    move v10, p2

    .line 645
    .local v10, "length2":I
    :cond_1
    :goto_1
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    invoke-virtual {v0, v8}, Ljavassist/bytecode/CodeAttribute;->setCode([B)V

    .line 646
    iput-object v8, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    .line 647
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/CodeIterator;->endPos:I

    .line 648
    invoke-virtual {p0, p1, v10}, Ljavassist/bytecode/CodeIterator;->updateCursors(II)V

    goto :goto_0

    .line 631
    .end local v8    # "c":[B
    .end local v10    # "length2":I
    :cond_2
    iget v9, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    .line 632
    .local v9, "cur":I
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v4

    iget-object v5, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Ljavassist/bytecode/CodeIterator;->insertGapCore0([BIIZLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)[B

    move-result-object v8

    .line 635
    .restart local v8    # "c":[B
    array-length v0, v8

    iget-object v1, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    array-length v1, v1

    sub-int v10, v0, v1

    .line 636
    .restart local v10    # "length2":I
    iput p1, v7, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    .line 637
    iput v10, v7, Ljavassist/bytecode/CodeIterator$Gap;->length:I

    .line 638
    if-lt v9, p1, :cond_3

    .line 639
    add-int v0, v9, v10

    iput v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    .line 641
    :cond_3
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->mark:I

    if-gt v0, p1, :cond_4

    iget v0, p0, Ljavassist/bytecode/CodeIterator;->mark:I

    if-ne v0, p1, :cond_1

    if-eqz p3, :cond_1

    .line 642
    :cond_4
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->mark:I

    add-int/2addr v0, v10

    iput v0, p0, Ljavassist/bytecode/CodeIterator;->mark:I

    goto :goto_1
.end method

.method public lookAhead()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    return v0
.end method

.method public move(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 83
    iput p1, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    .line 84
    return-void
.end method

.method public next()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 198
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    .line 199
    .local v0, "pos":I
    iget-object v1, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    invoke-static {v1, v0}, Ljavassist/bytecode/CodeIterator;->nextOpcode([BI)I

    move-result v1

    iput v1, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    .line 200
    return v0
.end method

.method public s16bitAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 147
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readS16bit([BI)I

    move-result v0

    return v0
.end method

.method public s32bitAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 161
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v0

    return v0
.end method

.method public setMark(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 97
    iput p1, p0, Ljavassist/bytecode/CodeIterator;->mark:I

    .line 98
    return-void
.end method

.method public skipConstructor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 234
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Ljavassist/bytecode/CodeIterator;->skipSuperConstructor0(I)I

    move-result v0

    return v0
.end method

.method public skipSuperConstructor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/bytecode/CodeIterator;->skipSuperConstructor0(I)I

    move-result v0

    return v0
.end method

.method public skipThisConstructor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 278
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljavassist/bytecode/CodeIterator;->skipSuperConstructor0(I)I

    move-result v0

    return v0
.end method

.method public u16bitAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 140
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method protected updateCursors(II)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "length"    # I

    .prologue
    .line 661
    return-void
.end method

.method public write([BI)V
    .locals 5
    .param p1, "code"    # [B
    .param p2, "index"    # I

    .prologue
    .line 177
    array-length v2, p1

    .line 178
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v0, p2

    .end local p2    # "index":I
    .local v0, "index":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 179
    iget-object v3, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    add-int/lit8 p2, v0, 0x1

    .end local v0    # "index":I
    .restart local p2    # "index":I
    aget-byte v4, p1, v1

    aput-byte v4, v3, v0

    .line 178
    add-int/lit8 v1, v1, 0x1

    move v0, p2

    .end local p2    # "index":I
    .restart local v0    # "index":I
    goto :goto_0

    .line 180
    :cond_0
    return-void
.end method

.method public write16bit(II)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "index"    # I

    .prologue
    .line 154
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    invoke-static {p1, v0, p2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 155
    return-void
.end method

.method public write32bit(II)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "index"    # I

    .prologue
    .line 168
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    invoke-static {p1, v0, p2}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 169
    return-void
.end method

.method public writeByte(II)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "index"    # I

    .prologue
    .line 133
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    int-to-byte v1, p1

    aput-byte v1, v0, p2

    .line 134
    return-void
.end method
