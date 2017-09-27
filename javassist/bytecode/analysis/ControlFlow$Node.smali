.class public Ljavassist/bytecode/analysis/ControlFlow$Node;
.super Ljava/lang/Object;
.source "ControlFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/analysis/ControlFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# instance fields
.field private block:Ljavassist/bytecode/analysis/ControlFlow$Block;

.field private children:[Ljavassist/bytecode/analysis/ControlFlow$Node;

.field private parent:Ljavassist/bytecode/analysis/ControlFlow$Node;


# direct methods
.method constructor <init>(Ljavassist/bytecode/analysis/ControlFlow$Block;)V
    .locals 1
    .param p1, "b"    # Ljavassist/bytecode/analysis/ControlFlow$Block;

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p1, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 342
    return-void
.end method

.method static synthetic access$200(Ljavassist/bytecode/analysis/ControlFlow$Node;)Ljavassist/bytecode/analysis/ControlFlow$Block;
    .locals 1
    .param p0, "x0"    # Ljavassist/bytecode/analysis/ControlFlow$Node;

    .prologue
    .line 334
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    return-object v0
.end method

.method static synthetic access$300([Ljavassist/bytecode/analysis/ControlFlow$Node;)V
    .locals 0
    .param p0, "x0"    # [Ljavassist/bytecode/analysis/ControlFlow$Node;

    .prologue
    .line 334
    invoke-static {p0}, Ljavassist/bytecode/analysis/ControlFlow$Node;->setChildren([Ljavassist/bytecode/analysis/ControlFlow$Node;)V

    return-void
.end method

.method private static getAncestor(Ljavassist/bytecode/analysis/ControlFlow$Node;Ljavassist/bytecode/analysis/ControlFlow$Node;[I)Ljavassist/bytecode/analysis/ControlFlow$Node;
    .locals 2
    .param p0, "n1"    # Ljavassist/bytecode/analysis/ControlFlow$Node;
    .param p1, "n2"    # Ljavassist/bytecode/analysis/ControlFlow$Node;
    .param p2, "distance"    # [I

    .prologue
    .line 436
    :cond_0
    if-eq p0, p1, :cond_2

    .line 437
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget v0, v0, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    aget v0, p2, v0

    iget-object v1, p1, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget v1, v1, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    aget v1, p2, v1

    if-ge v0, v1, :cond_3

    .line 438
    iget-object p0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 442
    :goto_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    .line 443
    :cond_1
    const/4 p0, 0x0

    .line 446
    .end local p0    # "n1":Ljavassist/bytecode/analysis/ControlFlow$Node;
    :cond_2
    return-object p0

    .line 440
    .restart local p0    # "n1":Ljavassist/bytecode/analysis/ControlFlow$Node;
    :cond_3
    iget-object p1, p1, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    goto :goto_0
.end method

.method private static setChildren([Ljavassist/bytecode/analysis/ControlFlow$Node;)V
    .locals 9
    .param p0, "all"    # [Ljavassist/bytecode/analysis/ControlFlow$Node;

    .prologue
    const/4 v7, 0x0

    .line 450
    array-length v4, p0

    .line 451
    .local v4, "size":I
    new-array v2, v4, [I

    .line 452
    .local v2, "nchildren":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 453
    aput v7, v2, v0

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 455
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_2

    .line 456
    aget-object v5, p0, v0

    iget-object v3, v5, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 457
    .local v3, "p":Ljavassist/bytecode/analysis/ControlFlow$Node;
    if-eqz v3, :cond_1

    .line 458
    iget-object v5, v3, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget v5, v5, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    aget v6, v2, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v2, v5

    .line 455
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 461
    .end local v3    # "p":Ljavassist/bytecode/analysis/ControlFlow$Node;
    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_3

    .line 462
    aget-object v5, p0, v0

    aget v6, v2, v0

    new-array v6, v6, [Ljavassist/bytecode/analysis/ControlFlow$Node;

    iput-object v6, v5, Ljavassist/bytecode/analysis/ControlFlow$Node;->children:[Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 464
    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v4, :cond_4

    .line 465
    aput v7, v2, v0

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 467
    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v4, :cond_6

    .line 468
    aget-object v1, p0, v0

    .line 469
    .local v1, "n":Ljavassist/bytecode/analysis/ControlFlow$Node;
    iget-object v3, v1, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 470
    .restart local v3    # "p":Ljavassist/bytecode/analysis/ControlFlow$Node;
    if-eqz v3, :cond_5

    .line 471
    iget-object v5, v3, Ljavassist/bytecode/analysis/ControlFlow$Node;->children:[Ljavassist/bytecode/analysis/ControlFlow$Node;

    iget-object v6, v3, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget v6, v6, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    aget v7, v2, v6

    add-int/lit8 v8, v7, 0x1

    aput v8, v2, v6

    aput-object v1, v5, v7

    .line 467
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 473
    .end local v1    # "n":Ljavassist/bytecode/analysis/ControlFlow$Node;
    .end local v3    # "p":Ljavassist/bytecode/analysis/ControlFlow$Node;
    :cond_6
    return-void
.end method


# virtual methods
.method public block()Ljavassist/bytecode/analysis/ControlFlow$Block;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    return-object v0
.end method

.method public child(I)Ljavassist/bytecode/analysis/ControlFlow$Node;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 380
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->children:[Ljavassist/bytecode/analysis/ControlFlow$Node;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public children()I
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->children:[Ljavassist/bytecode/analysis/ControlFlow$Node;

    array-length v0, v0

    return v0
.end method

.method makeDepth1stTree(Ljavassist/bytecode/analysis/ControlFlow$Node;[ZI[ILjavassist/bytecode/analysis/ControlFlow$Access;)I
    .locals 10
    .param p1, "caller"    # Ljavassist/bytecode/analysis/ControlFlow$Node;
    .param p2, "visited"    # [Z
    .param p3, "counter"    # I
    .param p4, "distance"    # [I
    .param p5, "access"    # Ljavassist/bytecode/analysis/ControlFlow$Access;

    .prologue
    .line 388
    iget-object v1, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget v9, v1, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    .line 389
    .local v9, "index":I
    aget-boolean v1, p2, v9

    if-eqz v1, :cond_0

    move v6, p3

    .line 402
    .end local p3    # "counter":I
    :goto_0
    return v6

    .line 392
    .restart local p3    # "counter":I
    :cond_0
    const/4 v1, 0x1

    aput-boolean v1, p2, v9

    .line 393
    iput-object p1, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 394
    invoke-virtual {p5, p0}, Ljavassist/bytecode/analysis/ControlFlow$Access;->exits(Ljavassist/bytecode/analysis/ControlFlow$Node;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v7

    .line 395
    .local v7, "exits":[Ljavassist/bytecode/stackmap/BasicBlock;
    if-eqz v7, :cond_1

    .line 396
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v1, v7

    if-ge v8, v1, :cond_1

    .line 397
    aget-object v1, v7, v8

    invoke-virtual {p5, v1}, Ljavassist/bytecode/analysis/ControlFlow$Access;->node(Ljavassist/bytecode/stackmap/BasicBlock;)Ljavassist/bytecode/analysis/ControlFlow$Node;

    move-result-object v0

    .local v0, "n":Ljavassist/bytecode/analysis/ControlFlow$Node;
    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 398
    invoke-virtual/range {v0 .. v5}, Ljavassist/bytecode/analysis/ControlFlow$Node;->makeDepth1stTree(Ljavassist/bytecode/analysis/ControlFlow$Node;[ZI[ILjavassist/bytecode/analysis/ControlFlow$Access;)I

    move-result p3

    .line 396
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 401
    .end local v0    # "n":Ljavassist/bytecode/analysis/ControlFlow$Node;
    .end local v8    # "i":I
    :cond_1
    add-int/lit8 v6, p3, 0x1

    .end local p3    # "counter":I
    .local v6, "counter":I
    aput p3, p4, v9

    move p3, v6

    .line 402
    .end local v6    # "counter":I
    .restart local p3    # "counter":I
    goto :goto_0
.end method

.method makeDominatorTree([Z[ILjavassist/bytecode/analysis/ControlFlow$Access;)Z
    .locals 8
    .param p1, "visited"    # [Z
    .param p2, "distance"    # [I
    .param p3, "access"    # Ljavassist/bytecode/analysis/ControlFlow$Access;

    .prologue
    .line 406
    iget-object v6, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget v4, v6, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    .line 407
    .local v4, "index":I
    aget-boolean v6, p1, v4

    if-eqz v6, :cond_1

    .line 408
    const/4 v0, 0x0

    .line 432
    :cond_0
    return v0

    .line 410
    :cond_1
    const/4 v6, 0x1

    aput-boolean v6, p1, v4

    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, "changed":Z
    invoke-virtual {p3, p0}, Ljavassist/bytecode/analysis/ControlFlow$Access;->exits(Ljavassist/bytecode/analysis/ControlFlow$Node;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v2

    .line 413
    .local v2, "exits":[Ljavassist/bytecode/stackmap/BasicBlock;
    if-eqz v2, :cond_3

    .line 414
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v2

    if-ge v3, v6, :cond_3

    .line 415
    aget-object v6, v2, v3

    invoke-virtual {p3, v6}, Ljavassist/bytecode/analysis/ControlFlow$Access;->node(Ljavassist/bytecode/stackmap/BasicBlock;)Ljavassist/bytecode/analysis/ControlFlow$Node;

    move-result-object v5

    .line 416
    .local v5, "n":Ljavassist/bytecode/analysis/ControlFlow$Node;
    invoke-virtual {v5, p1, p2, p3}, Ljavassist/bytecode/analysis/ControlFlow$Node;->makeDominatorTree([Z[ILjavassist/bytecode/analysis/ControlFlow$Access;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 417
    const/4 v0, 0x1

    .line 414
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 420
    .end local v3    # "i":I
    .end local v5    # "n":Ljavassist/bytecode/analysis/ControlFlow$Node;
    :cond_3
    invoke-virtual {p3, p0}, Ljavassist/bytecode/analysis/ControlFlow$Access;->entrances(Ljavassist/bytecode/analysis/ControlFlow$Node;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v1

    .line 421
    .local v1, "entrances":[Ljavassist/bytecode/stackmap/BasicBlock;
    if-eqz v1, :cond_0

    .line 422
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    array-length v6, v1

    if-ge v3, v6, :cond_0

    .line 423
    iget-object v6, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    if-eqz v6, :cond_4

    .line 424
    iget-object v6, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    aget-object v7, v1, v3

    invoke-virtual {p3, v7}, Ljavassist/bytecode/analysis/ControlFlow$Access;->node(Ljavassist/bytecode/stackmap/BasicBlock;)Ljavassist/bytecode/analysis/ControlFlow$Node;

    move-result-object v7

    invoke-static {v6, v7, p2}, Ljavassist/bytecode/analysis/ControlFlow$Node;->getAncestor(Ljavassist/bytecode/analysis/ControlFlow$Node;Ljavassist/bytecode/analysis/ControlFlow$Node;[I)Ljavassist/bytecode/analysis/ControlFlow$Node;

    move-result-object v5

    .line 425
    .restart local v5    # "n":Ljavassist/bytecode/analysis/ControlFlow$Node;
    iget-object v6, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    if-eq v5, v6, :cond_4

    .line 426
    iput-object v5, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 427
    const/4 v0, 0x1

    .line 422
    .end local v5    # "n":Ljavassist/bytecode/analysis/ControlFlow$Node;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public parent()Ljavassist/bytecode/analysis/ControlFlow$Node;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 348
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 349
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    const-string v2, "Node[pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Ljavassist/bytecode/analysis/ControlFlow$Node;->block()Ljavassist/bytecode/analysis/ControlFlow$Block;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/bytecode/analysis/ControlFlow$Block;->position()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 350
    const-string v2, ", parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    iget-object v2, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    if-nez v2, :cond_0

    const-string v2, "*"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    const-string v2, ", children{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->children:[Ljavassist/bytecode/analysis/ControlFlow$Node;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 354
    iget-object v2, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->children:[Ljavassist/bytecode/analysis/ControlFlow$Node;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljavassist/bytecode/analysis/ControlFlow$Node;->block()Ljavassist/bytecode/analysis/ControlFlow$Block;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/bytecode/analysis/ControlFlow$Block;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 351
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    invoke-virtual {v2}, Ljavassist/bytecode/analysis/ControlFlow$Node;->block()Ljavassist/bytecode/analysis/ControlFlow$Block;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/bytecode/analysis/ControlFlow$Block;->position()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 356
    .restart local v0    # "i":I
    :cond_1
    const-string v2, "}]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
