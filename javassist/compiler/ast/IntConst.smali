.class public Ljavassist/compiler/ast/IntConst;
.super Ljavassist/compiler/ast/ASTree;
.source "IntConst.java"


# instance fields
.field protected type:I

.field protected value:J


# direct methods
.method public constructor <init>(JI)V
    .locals 1
    .param p1, "v"    # J
    .param p3, "tokenId"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljavassist/compiler/ast/ASTree;-><init>()V

    iput-wide p1, p0, Ljavassist/compiler/ast/IntConst;->value:J

    iput p3, p0, Ljavassist/compiler/ast/IntConst;->type:I

    return-void
.end method

.method private compute0(ILjavassist/compiler/ast/DoubleConst;)Ljavassist/compiler/ast/DoubleConst;
    .locals 8
    .param p1, "op"    # I
    .param p2, "right"    # Ljavassist/compiler/ast/DoubleConst;

    .prologue
    .line 114
    iget-wide v6, p0, Ljavassist/compiler/ast/IntConst;->value:J

    long-to-double v2, v6

    .line 115
    .local v2, "value1":D
    iget-wide v4, p2, Ljavassist/compiler/ast/DoubleConst;->value:D

    .line 117
    .local v4, "value2":D
    packed-switch p1, :pswitch_data_0

    .line 134
    :pswitch_0
    const/4 v6, 0x0

    .line 137
    :goto_0
    return-object v6

    .line 119
    :pswitch_1
    add-double v0, v2, v4

    .line 137
    .local v0, "newValue":D
    :goto_1
    new-instance v6, Ljavassist/compiler/ast/DoubleConst;

    iget v7, p2, Ljavassist/compiler/ast/DoubleConst;->type:I

    invoke-direct {v6, v0, v1, v7}, Ljavassist/compiler/ast/DoubleConst;-><init>(DI)V

    goto :goto_0

    .line 122
    .end local v0    # "newValue":D
    :pswitch_2
    sub-double v0, v2, v4

    .line 123
    .restart local v0    # "newValue":D
    goto :goto_1

    .line 125
    .end local v0    # "newValue":D
    :pswitch_3
    mul-double v0, v2, v4

    .line 126
    .restart local v0    # "newValue":D
    goto :goto_1

    .line 128
    .end local v0    # "newValue":D
    :pswitch_4
    div-double v0, v2, v4

    .line 129
    .restart local v0    # "newValue":D
    goto :goto_1

    .line 131
    .end local v0    # "newValue":D
    :pswitch_5
    rem-double v0, v2, v4

    .line 132
    .restart local v0    # "newValue":D
    goto :goto_1

    .line 117
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

.method private compute0(ILjavassist/compiler/ast/IntConst;)Ljavassist/compiler/ast/IntConst;
    .locals 12
    .param p1, "op"    # I
    .param p2, "right"    # Ljavassist/compiler/ast/IntConst;

    .prologue
    const/16 v10, 0x193

    const/16 v5, 0x191

    .line 55
    iget v1, p0, Ljavassist/compiler/ast/IntConst;->type:I

    .line 56
    .local v1, "type1":I
    iget v4, p2, Ljavassist/compiler/ast/IntConst;->type:I

    .line 58
    .local v4, "type2":I
    if-eq v1, v10, :cond_0

    if-ne v4, v10, :cond_1

    .line 59
    :cond_0
    const/16 v0, 0x193

    .line 66
    .local v0, "newType":I
    :goto_0
    iget-wide v6, p0, Ljavassist/compiler/ast/IntConst;->value:J

    .line 67
    .local v6, "value1":J
    iget-wide v8, p2, Ljavassist/compiler/ast/IntConst;->value:J

    .line 69
    .local v8, "value2":J
    sparse-switch p1, :sswitch_data_0

    .line 107
    const/4 v5, 0x0

    .line 110
    :goto_1
    return-object v5

    .line 60
    .end local v0    # "newType":I
    .end local v6    # "value1":J
    .end local v8    # "value2":J
    :cond_1
    if-ne v1, v5, :cond_2

    if-ne v4, v5, :cond_2

    .line 62
    const/16 v0, 0x191

    .restart local v0    # "newType":I
    goto :goto_0

    .line 64
    .end local v0    # "newType":I
    :cond_2
    const/16 v0, 0x192

    .restart local v0    # "newType":I
    goto :goto_0

    .line 71
    .restart local v6    # "value1":J
    .restart local v8    # "value2":J
    :sswitch_0
    add-long v2, v6, v8

    .line 110
    .local v2, "newValue":J
    :goto_2
    new-instance v5, Ljavassist/compiler/ast/IntConst;

    invoke-direct {v5, v2, v3, v0}, Ljavassist/compiler/ast/IntConst;-><init>(JI)V

    goto :goto_1

    .line 74
    .end local v2    # "newValue":J
    :sswitch_1
    sub-long v2, v6, v8

    .line 75
    .restart local v2    # "newValue":J
    goto :goto_2

    .line 77
    .end local v2    # "newValue":J
    :sswitch_2
    mul-long v2, v6, v8

    .line 78
    .restart local v2    # "newValue":J
    goto :goto_2

    .line 80
    .end local v2    # "newValue":J
    :sswitch_3
    div-long v2, v6, v8

    .line 81
    .restart local v2    # "newValue":J
    goto :goto_2

    .line 83
    .end local v2    # "newValue":J
    :sswitch_4
    rem-long v2, v6, v8

    .line 84
    .restart local v2    # "newValue":J
    goto :goto_2

    .line 86
    .end local v2    # "newValue":J
    :sswitch_5
    or-long v2, v6, v8

    .line 87
    .restart local v2    # "newValue":J
    goto :goto_2

    .line 89
    .end local v2    # "newValue":J
    :sswitch_6
    xor-long v2, v6, v8

    .line 90
    .restart local v2    # "newValue":J
    goto :goto_2

    .line 92
    .end local v2    # "newValue":J
    :sswitch_7
    and-long v2, v6, v8

    .line 93
    .restart local v2    # "newValue":J
    goto :goto_2

    .line 95
    .end local v2    # "newValue":J
    :sswitch_8
    iget-wide v10, p0, Ljavassist/compiler/ast/IntConst;->value:J

    long-to-int v5, v8

    shl-long v2, v10, v5

    .line 96
    .restart local v2    # "newValue":J
    move v0, v1

    .line 97
    goto :goto_2

    .line 99
    .end local v2    # "newValue":J
    :sswitch_9
    iget-wide v10, p0, Ljavassist/compiler/ast/IntConst;->value:J

    long-to-int v5, v8

    shr-long v2, v10, v5

    .line 100
    .restart local v2    # "newValue":J
    move v0, v1

    .line 101
    goto :goto_2

    .line 103
    .end local v2    # "newValue":J
    :sswitch_a
    iget-wide v10, p0, Ljavassist/compiler/ast/IntConst;->value:J

    long-to-int v5, v8

    ushr-long v2, v10, v5

    .line 104
    .restart local v2    # "newValue":J
    move v0, v1

    .line 105
    goto :goto_2

    .line 69
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_4
        0x26 -> :sswitch_7
        0x2a -> :sswitch_2
        0x2b -> :sswitch_0
        0x2d -> :sswitch_1
        0x2f -> :sswitch_3
        0x5e -> :sswitch_6
        0x7c -> :sswitch_5
        0x16c -> :sswitch_8
        0x16e -> :sswitch_9
        0x172 -> :sswitch_a
    .end sparse-switch
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
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atIntConst(Ljavassist/compiler/ast/IntConst;)V

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
    invoke-direct {p0, p1, p2}, Ljavassist/compiler/ast/IntConst;->compute0(ILjavassist/compiler/ast/IntConst;)Ljavassist/compiler/ast/IntConst;

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
    invoke-direct {p0, p1, p2}, Ljavassist/compiler/ast/IntConst;->compute0(ILjavassist/compiler/ast/DoubleConst;)Ljavassist/compiler/ast/DoubleConst;

    move-result-object v0

    goto :goto_0

    .line 51
    .restart local p2    # "right":Ljavassist/compiler/ast/ASTree;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Ljavassist/compiler/ast/IntConst;->value:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Ljavassist/compiler/ast/IntConst;->type:I

    return v0
.end method

.method public set(J)V
    .locals 1
    .param p1, "v"    # J

    .prologue
    .line 33
    iput-wide p1, p0, Ljavassist/compiler/ast/IntConst;->value:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Ljavassist/compiler/ast/IntConst;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
