.class abstract Ljavassist/bytecode/CodeIterator$Branch;
.super Ljava/lang/Object;
.source "CodeIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/CodeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Branch"
.end annotation


# instance fields
.field orgPos:I

.field pos:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "p"    # I

    .prologue
    .line 1292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljavassist/bytecode/CodeIterator$Branch;->orgPos:I

    iput p1, p0, Ljavassist/bytecode/CodeIterator$Branch;->pos:I

    return-void
.end method

.method static shiftOffset(IIIIZ)I
    .locals 1
    .param p0, "i"    # I
    .param p1, "offset"    # I
    .param p2, "where"    # I
    .param p3, "gapLength"    # I
    .param p4, "exclusive"    # Z

    .prologue
    .line 1300
    add-int v0, p0, p1

    .line 1301
    .local v0, "target":I
    if-ge p0, p2, :cond_2

    .line 1302
    if-lt p2, v0, :cond_0

    if-eqz p4, :cond_1

    if-ne p2, v0, :cond_1

    .line 1303
    :cond_0
    add-int/2addr p1, p3

    .line 1317
    :cond_1
    :goto_0
    return p1

    .line 1305
    :cond_2
    if-ne p0, p2, :cond_4

    .line 1308
    if-ge v0, p2, :cond_3

    if-eqz p4, :cond_3

    .line 1309
    sub-int/2addr p1, p3

    goto :goto_0

    .line 1310
    :cond_3
    if-ge p2, v0, :cond_1

    if-nez p4, :cond_1

    .line 1311
    add-int/2addr p1, p3

    goto :goto_0

    .line 1314
    :cond_4
    if-lt v0, p2, :cond_5

    if-nez p4, :cond_1

    if-ne p2, v0, :cond_1

    .line 1315
    :cond_5
    sub-int/2addr p1, p3

    goto :goto_0
.end method


# virtual methods
.method deltaSize()I
    .locals 1

    .prologue
    .line 1322
    const/4 v0, 0x0

    return v0
.end method

.method expanded()Z
    .locals 1

    .prologue
    .line 1320
    const/4 v0, 0x0

    return v0
.end method

.method gapChanged()I
    .locals 1

    .prologue
    .line 1321
    const/4 v0, 0x0

    return v0
.end method

.method shift(IIZ)V
    .locals 1
    .param p1, "where"    # I
    .param p2, "gapLength"    # I
    .param p3, "exclusive"    # Z

    .prologue
    .line 1294
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Branch;->pos:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Ljavassist/bytecode/CodeIterator$Branch;->pos:I

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_1

    .line 1295
    :cond_0
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Branch;->pos:I

    add-int/2addr v0, p2

    iput v0, p0, Ljavassist/bytecode/CodeIterator$Branch;->pos:I

    .line 1296
    :cond_1
    return-void
.end method

.method abstract write(I[BI[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation
.end method
