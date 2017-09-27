.class Ljavassist/bytecode/Descriptor$PrettyPrinter;
.super Ljava/lang/Object;
.source "Descriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/Descriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrettyPrinter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static readType(Ljava/lang/StringBuffer;ILjava/lang/String;)I
    .locals 5
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "pos"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 763
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 764
    .local v2, "c":C
    const/4 v0, 0x0

    .line 765
    .local v0, "arrayDim":I
    :goto_0
    const/16 v4, 0x5b

    if-ne v2, v4, :cond_0

    .line 766
    add-int/lit8 v0, v0, 0x1

    .line 767
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    .line 770
    :cond_0
    const/16 v4, 0x4c

    if-ne v2, v4, :cond_3

    .line 772
    :goto_1
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 773
    const/16 v4, 0x3b

    if-ne v2, v4, :cond_1

    move v1, v0

    .line 786
    .end local v0    # "arrayDim":I
    .local v1, "arrayDim":I
    :goto_2
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "arrayDim":I
    .restart local v0    # "arrayDim":I
    if-lez v1, :cond_4

    .line 787
    const-string v4, "[]"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    .end local v0    # "arrayDim":I
    .restart local v1    # "arrayDim":I
    goto :goto_2

    .line 776
    .end local v1    # "arrayDim":I
    .restart local v0    # "arrayDim":I
    :cond_1
    const/16 v4, 0x2f

    if-ne v2, v4, :cond_2

    .line 777
    const/16 v2, 0x2e

    .line 779
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 782
    :cond_3
    invoke-static {v2}, Ljavassist/bytecode/Descriptor;->toPrimitiveClass(C)Ljavassist/CtClass;

    move-result-object v3

    .line 783
    .local v3, "t":Ljavassist/CtClass;
    invoke-virtual {v3}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    .end local v0    # "arrayDim":I
    .restart local v1    # "arrayDim":I
    goto :goto_2

    .line 789
    .end local v1    # "arrayDim":I
    .end local v3    # "t":Ljavassist/CtClass;
    .restart local v0    # "arrayDim":I
    :cond_4
    add-int/lit8 v4, p1, 0x1

    return v4
.end method

.method static toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "desc"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x29

    const/16 v4, 0x28

    const/4 v3, 0x0

    .line 743
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 744
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    .line 745
    const/4 v0, 0x1

    .line 746
    .local v0, "pos":I
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 747
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_1

    .line 748
    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 749
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 751
    :cond_0
    invoke-static {v1, v0, p0}, Ljavassist/bytecode/Descriptor$PrettyPrinter;->readType(Ljava/lang/StringBuffer;ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 754
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 759
    .end local v0    # "pos":I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 757
    :cond_2
    invoke-static {v1, v3, p0}, Ljavassist/bytecode/Descriptor$PrettyPrinter;->readType(Ljava/lang/StringBuffer;ILjava/lang/String;)I

    goto :goto_1
.end method
