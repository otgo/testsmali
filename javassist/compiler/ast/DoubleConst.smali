.class public Ljavassist/compiler/ast/DoubleConst;
.super Ljavassist/compiler/ast/ASTree;
.source "DoubleConst.java"


# instance fields
.field protected type:I

.field protected value:D


# direct methods
.method public constructor <init>(DI)V
    .locals 1
    .param p1, "v"    # D
    .param p3, "tokenId"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljavassist/compiler/ast/ASTree;-><init>()V

    iput-wide p1, p0, Ljavassist/compiler/ast/DoubleConst;->value:D

    iput p3, p0, Ljavassist/compiler/ast/DoubleConst;->type:I

    return-void
.end method

.method private static compute(IDDI)Ljavassist/compiler/ast/DoubleConst;
    .locals 3
    .param p0, "op"    # I
    .param p1, "value1"    # D
    .param p3, "value2"    # D
    .param p5, "newType"    # I

    .prologue
    .line 73
    packed-switch p0, :pswitch_data_0

    .line 90
    :pswitch_0
    const/4 v2, 0x0

    .line 93
    :goto_0
    return-object v2

    .line 75
    :pswitch_1
    add-double v0, p1, p3

    .line 93
    .local v0, "newValue":D
    :goto_1
    new-instance v2, Ljavassist/compiler/ast/DoubleConst;

    invoke-direct {v2, v0, v1, p5}, Ljavassist/compiler/ast/DoubleConst;-><init>(DI)V

    goto :goto_0

    .line 78
    .end local v0    # "newValue":D
    :pswitch_2
    sub-double v0, p1, p3

    .line 79
    .restart local v0    # "newValue":D
    goto :goto_1

    .line 81
    .end local v0    # "newValue":D
    :pswitch_3
    mul-double v0, p1, p3

    .line 82
    .restart local v0    # "newValue":D
    goto :goto_1

    .line 84
    .end local v0    # "newValue":D
    :pswitch_4
    div-double v0, p1, p3

    .line 85
    .restart local v0    # "newValue":D
    goto :goto_1

    .line 87
    .end local v0    # "newValue":D
    :pswitch_5
    rem-double v0, p1, p3

    .line 88
    .restart local v0    # "newValue":D
    goto :goto_1

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private compute0(ILjavassist/compiler/ast/DoubleConst;)Ljavassist/compiler/ast/DoubleConst;
    .locals 7
    .param p1, "op"    # I
    .param p2, "right"    # Ljavassist/compiler/ast/DoubleConst;

    .prologue
    const/16 v1, 0x195

    .line 56
    iget v0, p0, Ljavassist/compiler/ast/DoubleConst;->type:I

    if-eq v0, v1, :cond_0

    iget v0, p2, Ljavassist/compiler/ast/DoubleConst;->type:I

    if-ne v0, v1, :cond_1

    .line 58
    :cond_0
    const/16 v6, 0x195

    .line 62
    .local v6, "newType":I
    :goto_0
    iget-wide v2, p0, Ljavassist/compiler/ast/DoubleConst;->value:D

    iget-wide v4, p2, Ljavassist/compiler/ast/DoubleConst;->value:D

    move v1, p1

    invoke-static/range {v1 .. v6}, Ljavassist/compiler/ast/DoubleConst;->compute(IDDI)Ljavassist/compiler/ast/DoubleConst;

    move-result-object v0

    return-object v0

    .line 60
    .end local v6    # "newType":I
    :cond_1
    const/16 v6, 0x194

    .restart local v6    # "newType":I
    goto :goto_0
.end method

.method private compute0(ILjavassist/compiler/ast/IntConst;)Ljavassist/compiler/ast/DoubleConst;
    .locals 7
    .param p1, "op"    # I
    .param p2, "right"    # Ljavassist/compiler/ast/IntConst;

    .prologue
    .line 66
    iget-wide v2, p0, Ljavassist/compiler/ast/DoubleConst;->value:D

    iget-wide v0, p2, Ljavassist/compiler/ast/IntConst;->value:J

    long-to-double v4, v0

    iget v6, p0, Ljavassist/compiler/ast/DoubleConst;->type:I

    move v1, p1

    invoke-static/range {v1 .. v6}, Ljavassist/compiler/ast/DoubleConst;->compute(IDDI)Ljavassist/compiler/ast/DoubleConst;

    move-result-object v0

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
    .line 42
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atDoubleConst(Ljavassist/compiler/ast/DoubleConst;)V

    .line 43
    return-void
.end method

.method public compute(ILjavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;
    .locals 1
    .param p1, "op"    # I
    .param p2, "right"    # Ljavassist/compiler/ast/ASTree;

    .prologue
    .line 46
    instance-of v0, p2, Ljavassist/compiler/ast/IntConst;

    if-eqz v0, :cond_0

    .line 47
    check-cast p2, Ljavassist/compiler/ast/IntConst;

    .end local p2    # "right":Ljavassist/compiler/ast/ASTree;
    invoke-direct {p0, p1, p2}, Ljavassist/compiler/ast/DoubleConst;->compute0(ILjavassist/compiler/ast/IntConst;)Ljavassist/compiler/ast/DoubleConst;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    .line 48
    .restart local p2    # "right":Ljavassist/compiler/ast/ASTree;
    :cond_0
    instance-of v0, p2, Ljavassist/compiler/ast/DoubleConst;

    if-eqz v0, :cond_1

    .line 49
    check-cast p2, Ljavassist/compiler/ast/DoubleConst;

    .end local p2    # "right":Ljavassist/compiler/ast/ASTree;
    invoke-direct {p0, p1, p2}, Ljavassist/compiler/ast/DoubleConst;->compute0(ILjavassist/compiler/ast/DoubleConst;)Ljavassist/compiler/ast/DoubleConst;

    move-result-object v0

    goto :goto_0

    .line 51
    .restart local p2    # "right":Ljavassist/compiler/ast/ASTree;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()D
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Ljavassist/compiler/ast/DoubleConst;->value:D

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Ljavassist/compiler/ast/DoubleConst;->type:I

    return v0
.end method

.method public set(D)V
    .locals 1
    .param p1, "v"    # D

    .prologue
    .line 33
    iput-wide p1, p0, Ljavassist/compiler/ast/DoubleConst;->value:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Ljavassist/compiler/ast/DoubleConst;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
