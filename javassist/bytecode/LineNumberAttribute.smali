.class public Ljavassist/bytecode/LineNumberAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "LineNumberAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/LineNumberAttribute$Pc;
    }
.end annotation


# static fields
.field public static final tag:Ljava/lang/String; = "LineNumberTable"


# direct methods
.method constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 0
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "n"    # I
    .param p3, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Ljavassist/bytecode/ConstPool;[B)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "i"    # [B

    .prologue
    .line 39
    const-string v0, "LineNumberTable"

    invoke-direct {p0, p1, v0, p2}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    .line 40
    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 6
    .param p1, "newCp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "classnames"    # Ljava/util/Map;

    .prologue
    .line 160
    iget-object v4, p0, Ljavassist/bytecode/LineNumberAttribute;->info:[B

    .line 161
    .local v4, "src":[B
    array-length v3, v4

    .line 162
    .local v3, "num":I
    new-array v1, v3, [B

    .line 163
    .local v1, "dest":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 164
    aget-byte v5, v4, v2

    aput-byte v5, v1, v2

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_0
    new-instance v0, Ljavassist/bytecode/LineNumberAttribute;

    invoke-direct {v0, p1, v1}, Ljavassist/bytecode/LineNumberAttribute;-><init>(Ljavassist/bytecode/ConstPool;[B)V

    .line 167
    .local v0, "attr":Ljavassist/bytecode/LineNumberAttribute;
    return-object v0
.end method

.method public lineNumber(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 69
    iget-object v0, p0, Ljavassist/bytecode/LineNumberAttribute;->info:[B

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method shiftPc(IIZ)V
    .locals 6
    .param p1, "where"    # I
    .param p2, "gapLength"    # I
    .param p3, "exclusive"    # Z

    .prologue
    .line 174
    invoke-virtual {p0}, Ljavassist/bytecode/LineNumberAttribute;->tableLength()I

    move-result v1

    .line 175
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 176
    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v3, v4, 0x2

    .line 177
    .local v3, "pos":I
    iget-object v4, p0, Ljavassist/bytecode/LineNumberAttribute;->info:[B

    invoke-static {v4, v3}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v2

    .line 178
    .local v2, "pc":I
    if-gt v2, p1, :cond_0

    if-eqz p3, :cond_1

    if-ne v2, p1, :cond_1

    .line 179
    :cond_0
    add-int v4, v2, p2

    iget-object v5, p0, Ljavassist/bytecode/LineNumberAttribute;->info:[B

    invoke-static {v4, v5, v3}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 175
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    .end local v2    # "pc":I
    .end local v3    # "pos":I
    :cond_2
    return-void
.end method

.method public startPc(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 58
    iget-object v0, p0, Ljavassist/bytecode/LineNumberAttribute;->info:[B

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method public tableLength()I
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Ljavassist/bytecode/LineNumberAttribute;->info:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method public toLineNumber(I)I
    .locals 3
    .param p1, "pc"    # I

    .prologue
    .line 78
    invoke-virtual {p0}, Ljavassist/bytecode/LineNumberAttribute;->tableLength()I

    move-result v1

    .line 79
    .local v1, "n":I
    const/4 v0, 0x0

    .line 80
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 81
    invoke-virtual {p0, v0}, Ljavassist/bytecode/LineNumberAttribute;->startPc(I)I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 82
    if-nez v0, :cond_1

    .line 83
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljavassist/bytecode/LineNumberAttribute;->lineNumber(I)I

    move-result v2

    .line 87
    :goto_1
    return v2

    .line 80
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljavassist/bytecode/LineNumberAttribute;->lineNumber(I)I

    move-result v2

    goto :goto_1
.end method

.method public toNearPc(I)Ljavassist/bytecode/LineNumberAttribute$Pc;
    .locals 8
    .param p1, "line"    # I

    .prologue
    const/4 v7, 0x0

    .line 130
    invoke-virtual {p0}, Ljavassist/bytecode/LineNumberAttribute;->tableLength()I

    move-result v3

    .line 131
    .local v3, "n":I
    const/4 v4, 0x0

    .line 132
    .local v4, "nearPc":I
    const/4 v1, 0x0

    .line 133
    .local v1, "distance":I
    if-lez v3, :cond_0

    .line 134
    invoke-virtual {p0, v7}, Ljavassist/bytecode/LineNumberAttribute;->lineNumber(I)I

    move-result v6

    sub-int v1, v6, p1

    .line 135
    invoke-virtual {p0, v7}, Ljavassist/bytecode/LineNumberAttribute;->startPc(I)I

    move-result v4

    .line 138
    :cond_0
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 139
    invoke-virtual {p0, v2}, Ljavassist/bytecode/LineNumberAttribute;->lineNumber(I)I

    move-result v6

    sub-int v0, v6, p1

    .line 140
    .local v0, "d":I
    if-gez v0, :cond_1

    if-gt v0, v1, :cond_2

    :cond_1
    if-ltz v0, :cond_3

    if-lt v0, v1, :cond_2

    if-gez v1, :cond_3

    .line 142
    :cond_2
    move v1, v0

    .line 143
    invoke-virtual {p0, v2}, Ljavassist/bytecode/LineNumberAttribute;->startPc(I)I

    move-result v4

    .line 138
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "d":I
    :cond_4
    new-instance v5, Ljavassist/bytecode/LineNumberAttribute$Pc;

    invoke-direct {v5}, Ljavassist/bytecode/LineNumberAttribute$Pc;-><init>()V

    .line 148
    .local v5, "res":Ljavassist/bytecode/LineNumberAttribute$Pc;
    iput v4, v5, Ljavassist/bytecode/LineNumberAttribute$Pc;->index:I

    .line 149
    add-int v6, p1, v1

    iput v6, v5, Ljavassist/bytecode/LineNumberAttribute$Pc;->line:I

    .line 150
    return-object v5
.end method

.method public toStartPc(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 98
    invoke-virtual {p0}, Ljavassist/bytecode/LineNumberAttribute;->tableLength()I

    move-result v1

    .line 99
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 100
    invoke-virtual {p0, v0}, Ljavassist/bytecode/LineNumberAttribute;->lineNumber(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 101
    invoke-virtual {p0, v0}, Ljavassist/bytecode/LineNumberAttribute;->startPc(I)I

    move-result v2

    .line 103
    :goto_1
    return v2

    .line 99
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method
