.class public abstract Ljavassist/bytecode/stackmap/TypeData;
.super Ljava/lang/Object;
.source "TypeData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/stackmap/TypeData$UninitThis;,
        Ljavassist/bytecode/stackmap/TypeData$UninitData;,
        Ljavassist/bytecode/stackmap/TypeData$NullType;,
        Ljavassist/bytecode/stackmap/TypeData$ClassName;,
        Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;,
        Ljavassist/bytecode/stackmap/TypeData$ArrayElement;,
        Ljavassist/bytecode/stackmap/TypeData$ArrayType;,
        Ljavassist/bytecode/stackmap/TypeData$TypeVar;,
        Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;,
        Ljavassist/bytecode/stackmap/TypeData$BasicType;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aastore(Ljavassist/bytecode/stackmap/TypeData;Ljavassist/bytecode/stackmap/TypeData;Ljavassist/ClassPool;)V
    .locals 4
    .param p0, "array"    # Ljavassist/bytecode/stackmap/TypeData;
    .param p1, "value"    # Ljavassist/bytecode/stackmap/TypeData;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 484
    instance-of v1, p0, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    if-eqz v1, :cond_0

    .line 485
    invoke-virtual {p1}, Ljavassist/bytecode/stackmap/TypeData;->isNullType()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p0

    .line 486
    check-cast v1, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    invoke-static {p1}, Ljavassist/bytecode/stackmap/TypeData$ArrayType;->make(Ljavassist/bytecode/stackmap/TypeData;)Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;->merge(Ljavassist/bytecode/stackmap/TypeData;)V

    .line 488
    :cond_0
    instance-of v1, p1, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    if-eqz v1, :cond_1

    .line 489
    instance-of v1, p0, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    if-eqz v1, :cond_2

    .line 490
    invoke-static {p0}, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->make(Ljavassist/bytecode/stackmap/TypeData;)Ljavassist/bytecode/stackmap/TypeData;

    .line 499
    :cond_1
    :goto_0
    return-void

    .line 491
    :cond_2
    instance-of v1, p0, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    if-eqz v1, :cond_3

    .line 492
    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData;->isNullType()Z

    move-result v1

    if-nez v1, :cond_1

    .line 493
    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p1, v0, p2}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    goto :goto_0

    .line 498
    .end local v0    # "type":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljavassist/bytecode/BadBytecode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad AASTORE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static commonSuperClass(Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtClass;
    .locals 8
    .param p0, "one"    # Ljavassist/CtClass;
    .param p1, "two"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 423
    move-object v2, p0

    .line 424
    .local v2, "deep":Ljavassist/CtClass;
    move-object v5, p1

    .line 425
    .local v5, "shallow":Ljavassist/CtClass;
    move-object v1, v5

    .line 426
    .local v1, "backupShallow":Ljavassist/CtClass;
    move-object v0, v2

    .line 431
    .local v0, "backupDeep":Ljavassist/CtClass;
    :goto_0
    invoke-static {v2, v5}, Ljavassist/bytecode/stackmap/TypeData;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v3, v2

    .line 476
    .end local v2    # "deep":Ljavassist/CtClass;
    .local v3, "deep":Ljavassist/CtClass;
    :goto_1
    return-object v3

    .line 434
    .end local v3    # "deep":Ljavassist/CtClass;
    .restart local v2    # "deep":Ljavassist/CtClass;
    :cond_0
    invoke-virtual {v2}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v4

    .line 435
    .local v4, "deepSuper":Ljavassist/CtClass;
    invoke-virtual {v5}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v6

    .line 437
    .local v6, "shallowSuper":Ljavassist/CtClass;
    if-nez v6, :cond_1

    .line 439
    move-object v5, v1

    .line 460
    :goto_2
    invoke-virtual {v2}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v2

    .line 461
    if-nez v2, :cond_3

    .line 467
    move-object v2, v0

    .line 471
    :goto_3
    invoke-static {v2, v5}, Ljavassist/bytecode/stackmap/TypeData;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 472
    invoke-virtual {v2}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v2

    .line 473
    invoke-virtual {v5}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v5

    goto :goto_3

    .line 443
    :cond_1
    if-nez v4, :cond_2

    .line 445
    move-object v2, v0

    .line 446
    move-object v0, v1

    .line 447
    move-object v1, v2

    .line 449
    move-object v2, v5

    .line 450
    move-object v5, v1

    .line 451
    goto :goto_2

    .line 454
    :cond_2
    move-object v2, v4

    .line 455
    move-object v5, v6

    .line 456
    goto :goto_0

    .line 464
    :cond_3
    invoke-virtual {v0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v3, v2

    .line 476
    .end local v2    # "deep":Ljavassist/CtClass;
    .restart local v3    # "deep":Ljavassist/CtClass;
    goto :goto_1
.end method

.method public static commonSuperClassEx(Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtClass;
    .locals 6
    .param p0, "one"    # Ljavassist/CtClass;
    .param p1, "two"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 396
    if-ne p0, p1, :cond_1

    .line 415
    .end local p0    # "one":Ljavassist/CtClass;
    :cond_0
    :goto_0
    return-object p0

    .line 398
    .restart local p0    # "one":Ljavassist/CtClass;
    :cond_1
    invoke-virtual {p0}, Ljavassist/CtClass;->isArray()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Ljavassist/CtClass;->isArray()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 399
    invoke-virtual {p0}, Ljavassist/CtClass;->getComponentType()Ljavassist/CtClass;

    move-result-object v0

    .line 400
    .local v0, "ele1":Ljavassist/CtClass;
    invoke-virtual {p1}, Ljavassist/CtClass;->getComponentType()Ljavassist/CtClass;

    move-result-object v1

    .line 401
    .local v1, "ele2":Ljavassist/CtClass;
    invoke-static {v0, v1}, Ljavassist/bytecode/stackmap/TypeData;->commonSuperClassEx(Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v2

    .line 402
    .local v2, "element":Ljavassist/CtClass;
    if-eq v2, v0, :cond_0

    .line 404
    if-ne v2, v1, :cond_2

    move-object p0, p1

    .line 405
    goto :goto_0

    .line 407
    :cond_2
    invoke-virtual {p0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v4

    if-nez v2, :cond_3

    const-string v3, "java.lang.Object"

    :goto_1
    invoke-virtual {v4, v3}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p0

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "[]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 410
    .end local v0    # "ele1":Ljavassist/CtClass;
    .end local v1    # "ele2":Ljavassist/CtClass;
    .end local v2    # "element":Ljavassist/CtClass;
    :cond_4
    invoke-virtual {p0}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 411
    :cond_5
    const/4 p0, 0x0

    goto :goto_0

    .line 412
    :cond_6
    invoke-virtual {p0}, Ljavassist/CtClass;->isArray()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p1}, Ljavassist/CtClass;->isArray()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 413
    :cond_7
    invoke-virtual {p0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v3

    const-string v4, "java.lang.Object"

    invoke-virtual {v3, v4}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p0

    goto :goto_0

    .line 415
    :cond_8
    invoke-static {p0, p1}, Ljavassist/bytecode/stackmap/TypeData;->commonSuperClass(Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object p0

    goto :goto_0
.end method

.method static eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z
    .locals 2
    .param p0, "one"    # Ljavassist/CtClass;
    .param p1, "two"    # Ljavassist/CtClass;

    .prologue
    .line 480
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static make(I)[Ljavassist/bytecode/stackmap/TypeData;
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 36
    new-array v0, p0, [Ljavassist/bytecode/stackmap/TypeData;

    .line 37
    .local v0, "array":[Ljavassist/bytecode/stackmap/TypeData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 38
    sget-object v2, Ljavassist/bytecode/stackmap/TypeTag;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v2, v0, v1

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-object v0
.end method

.method private static setType(Ljavassist/bytecode/stackmap/TypeData;Ljava/lang/String;Ljavassist/ClassPool;)V
    .locals 0
    .param p0, "td"    # Ljavassist/bytecode/stackmap/TypeData;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 54
    return-void
.end method


# virtual methods
.method public constructorCalled(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 96
    return-void
.end method

.method public dfs(Ljava/util/ArrayList;ILjavassist/ClassPool;)I
    .locals 0
    .param p1, "order"    # Ljava/util/ArrayList;
    .param p2, "index"    # I
    .param p3, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 85
    return p2
.end method

.method public abstract eq(Ljavassist/bytecode/stackmap/TypeData;)Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTypeData(Ljavassist/bytecode/ConstPool;)I
.end method

.method public abstract getTypeTag()I
.end method

.method public abstract is2WordType()Z
.end method

.method public abstract isBasicType()Ljavassist/bytecode/stackmap/TypeData$BasicType;
.end method

.method public isNullType()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public isUninit()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public join()Ljavassist/bytecode/stackmap/TypeData;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;

    invoke-direct {v0, p0}, Ljavassist/bytecode/stackmap/TypeData$TypeVar;-><init>(Ljavassist/bytecode/stackmap/TypeData;)V

    return-object v0
.end method

.method public abstract setType(Ljava/lang/String;Ljavassist/ClassPool;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation
.end method

.method protected toTypeVar()Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method
