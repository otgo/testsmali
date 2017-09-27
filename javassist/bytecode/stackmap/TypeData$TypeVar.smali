.class public Ljavassist/bytecode/stackmap/TypeData$TypeVar;
.super Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;
.source "TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/stackmap/TypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeVar"
.end annotation


# instance fields
.field protected fixedType:Ljava/lang/String;

.field private inList:Z

.field private is2WordType:Z

.field protected lowers:Ljava/util/ArrayList;

.field private smallest:I

.field protected uppers:Ljava/util/ArrayList;

.field protected usedBy:Ljava/util/ArrayList;

.field private visited:I


# direct methods
.method public constructor <init>(Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 3
    .param p1, "t"    # Ljavassist/bytecode/stackmap/TypeData;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;-><init>()V

    .line 240
    iput v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->visited:I

    .line 241
    iput v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->smallest:I

    .line 242
    iput-boolean v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->inList:Z

    .line 163
    iput-object v2, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->uppers:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->usedBy:Ljava/util/ArrayList;

    .line 166
    invoke-virtual {p0, p1}, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->merge(Ljavassist/bytecode/stackmap/TypeData;)V

    .line 167
    iput-object v2, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixedType:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result v0

    iput-boolean v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->is2WordType:Z

    .line 169
    return-void
.end method

.method private fixByUppers(Ljava/util/ArrayList;Ljavassist/ClassPool;Ljava/util/HashSet;Ljavassist/CtClass;)Ljavassist/CtClass;
    .locals 8
    .param p1, "users"    # Ljava/util/ArrayList;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .param p3, "visited"    # Ljava/util/HashSet;
    .param p4, "type"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 366
    if-nez p1, :cond_0

    move-object v6, p4

    .line 387
    .end local p4    # "type":Ljavassist/CtClass;
    .local v6, "type":Ljavassist/CtClass;
    :goto_0
    return-object v6

    .line 369
    .end local v6    # "type":Ljavassist/CtClass;
    .restart local p4    # "type":Ljavassist/CtClass;
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 370
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 371
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavassist/bytecode/stackmap/TypeData$TypeVar;

    .line 372
    .local v5, "t":Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    invoke-virtual {p3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object v6, p4

    .line 373
    .end local p4    # "type":Ljavassist/CtClass;
    .restart local v6    # "type":Ljavassist/CtClass;
    goto :goto_0

    .line 375
    .end local v6    # "type":Ljavassist/CtClass;
    .restart local p4    # "type":Ljavassist/CtClass;
    :cond_1
    iget-object v7, v5, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->uppers:Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    .line 376
    iget-object v7, v5, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->uppers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 377
    .local v3, "s":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    if-ge v2, v3, :cond_3

    .line 378
    iget-object v7, v5, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->uppers:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    .line 379
    .local v0, "cc":Ljavassist/CtClass;
    invoke-virtual {v0, p4}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 380
    move-object p4, v0

    .line 377
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 384
    .end local v0    # "cc":Ljavassist/CtClass;
    .end local v2    # "k":I
    .end local v3    # "s":I
    :cond_3
    iget-object v7, v5, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->usedBy:Ljava/util/ArrayList;

    invoke-direct {p0, v7, p2, p3, p4}, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixByUppers(Ljava/util/ArrayList;Ljavassist/ClassPool;Ljava/util/HashSet;Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object p4

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v5    # "t":Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    :cond_4
    move-object v6, p4

    .line 387
    .end local p4    # "type":Ljavassist/CtClass;
    .restart local v6    # "type":Ljavassist/CtClass;
    goto :goto_0
.end method

.method private fixTypes(Ljava/util/ArrayList;Ljavassist/ClassPool;)V
    .locals 13
    .param p1, "scc"    # Ljava/util/ArrayList;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 281
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 282
    .local v7, "lowersSet":Ljava/util/HashSet;
    const/4 v4, 0x0

    .line 283
    .local v4, "isBasicType":Z
    const/4 v6, 0x0

    .line 284
    .local v6, "kind":Ljavassist/bytecode/stackmap/TypeData;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 285
    .local v8, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_7

    .line 286
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavassist/bytecode/stackmap/TypeData$TypeVar;

    iget-object v10, v12, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/ArrayList;

    .line 287
    .local v10, "tds":Ljava/util/ArrayList;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 288
    .local v9, "size2":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v9, :cond_0

    .line 289
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/stackmap/TypeData;

    .line 290
    .local v2, "d":Ljavassist/bytecode/stackmap/TypeData;
    invoke-virtual {v2}, Ljavassist/bytecode/stackmap/TypeData;->isBasicType()Ljavassist/bytecode/stackmap/TypeData$BasicType;

    move-result-object v0

    .line 291
    .local v0, "bt":Ljavassist/bytecode/stackmap/TypeData$BasicType;
    if-nez v6, :cond_4

    .line 292
    if-nez v0, :cond_1

    .line 293
    const/4 v4, 0x0

    .line 294
    move-object v6, v2

    .line 299
    invoke-virtual {v2}, Ljavassist/bytecode/stackmap/TypeData;->isUninit()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 285
    .end local v0    # "bt":Ljavassist/bytecode/stackmap/TypeData$BasicType;
    .end local v2    # "d":Ljavassist/bytecode/stackmap/TypeData;
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 303
    .restart local v0    # "bt":Ljavassist/bytecode/stackmap/TypeData$BasicType;
    .restart local v2    # "d":Ljavassist/bytecode/stackmap/TypeData;
    :cond_1
    const/4 v4, 0x1

    .line 304
    move-object v6, v0

    .line 316
    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {v2}, Ljavassist/bytecode/stackmap/TypeData;->isNullType()Z

    move-result v12

    if-nez v12, :cond_3

    .line 317
    invoke-virtual {v2}, Ljavassist/bytecode/stackmap/TypeData;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 308
    :cond_4
    if-nez v0, :cond_5

    if-nez v4, :cond_6

    :cond_5
    if-eqz v0, :cond_2

    if-eq v6, v0, :cond_2

    .line 310
    :cond_6
    const/4 v4, 0x1

    .line 311
    sget-object v6, Ljavassist/bytecode/stackmap/TypeTag;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    .line 312
    goto :goto_2

    .line 321
    .end local v0    # "bt":Ljavassist/bytecode/stackmap/TypeData$BasicType;
    .end local v2    # "d":Ljavassist/bytecode/stackmap/TypeData;
    .end local v5    # "j":I
    .end local v9    # "size2":I
    .end local v10    # "tds":Ljava/util/ArrayList;
    :cond_7
    if-eqz v4, :cond_8

    .line 322
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v8, :cond_9

    .line 323
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/stackmap/TypeData$TypeVar;

    .line 324
    .local v1, "cv":Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    iget-object v12, v1, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 325
    iget-object v12, v1, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-virtual {v6}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result v12

    iput-boolean v12, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->is2WordType:Z

    .line 322
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 330
    .end local v1    # "cv":Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    :cond_8
    invoke-direct {p0, p1, v7, p2}, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixTypes2(Ljava/util/ArrayList;Ljava/util/HashSet;Ljavassist/ClassPool;)Ljava/lang/String;

    move-result-object v11

    .line 331
    .local v11, "typeName":Ljava/lang/String;
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v8, :cond_9

    .line 332
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/stackmap/TypeData$TypeVar;

    .line 333
    .restart local v1    # "cv":Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    iput-object v11, v1, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixedType:Ljava/lang/String;

    .line 331
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 336
    .end local v1    # "cv":Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    .end local v11    # "typeName":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method private fixTypes2(Ljava/util/ArrayList;Ljava/util/HashSet;Ljavassist/ClassPool;)Ljava/lang/String;
    .locals 4
    .param p1, "scc"    # Ljava/util/ArrayList;
    .param p2, "lowersSet"    # Ljava/util/HashSet;
    .param p3, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 340
    .local v1, "it":Ljava/util/Iterator;
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 341
    const/4 v2, 0x0

    .line 355
    :goto_0
    return-object v2

    .line 342
    :cond_0
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 343
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 345
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    .line 346
    .local v0, "cc":Ljavassist/CtClass;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 347
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v2

    invoke-static {v0, v2}, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->commonSuperClassEx(Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v0

    goto :goto_1

    .line 349
    :cond_2
    invoke-virtual {v0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->isObjectArray(Ljavassist/CtClass;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 350
    :cond_3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, p3, v2, v0}, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixByUppers(Ljava/util/ArrayList;Ljavassist/ClassPool;Ljava/util/HashSet;Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v0

    .line 352
    :cond_4
    invoke-virtual {v0}, Ljavassist/CtClass;->isArray()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 353
    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 355
    :cond_5
    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static isObjectArray(Ljavassist/CtClass;)Z
    .locals 1
    .param p0, "cc"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p0}, Ljavassist/CtClass;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavassist/CtClass;->getComponentType()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dfs(Ljava/util/ArrayList;ILjavassist/ClassPool;)I
    .locals 8
    .param p1, "preOrder"    # Ljava/util/ArrayList;
    .param p2, "index"    # I
    .param p3, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 246
    iget v6, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->visited:I

    if-lez v6, :cond_0

    move v3, p2

    .line 277
    .end local p2    # "index":I
    .local v3, "index":I
    :goto_0
    return v3

    .line 249
    .end local v3    # "index":I
    .restart local p2    # "index":I
    :cond_0
    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->smallest:I

    iput p2, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->visited:I

    .line 250
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->inList:Z

    .line 252
    iget-object v6, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 253
    .local v4, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 254
    iget-object v6, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v6}, Ljavassist/bytecode/stackmap/TypeData;->toTypeVar()Ljavassist/bytecode/stackmap/TypeData$TypeVar;

    move-result-object v0

    .line 255
    .local v0, "child":Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    if-eqz v0, :cond_1

    .line 256
    iget v6, v0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->visited:I

    if-nez v6, :cond_2

    .line 257
    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->dfs(Ljava/util/ArrayList;ILjavassist/ClassPool;)I

    move-result p2

    .line 258
    iget v6, v0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->smallest:I

    iget v7, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->smallest:I

    if-ge v6, v7, :cond_1

    .line 259
    iget v6, v0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->smallest:I

    iput v6, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->smallest:I

    .line 253
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 261
    :cond_2
    iget-boolean v6, v0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->inList:Z

    if-eqz v6, :cond_1

    .line 262
    iget v6, v0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->visited:I

    iget v7, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->smallest:I

    if-ge v6, v7, :cond_1

    .line 263
    iget v6, v0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->visited:I

    iput v6, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->smallest:I

    goto :goto_2

    .line 266
    .end local v0    # "child":Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    :cond_3
    iget v6, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->visited:I

    iget v7, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->smallest:I

    if-ne v6, v7, :cond_5

    .line 267
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v5, "scc":Ljava/util/ArrayList;
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/stackmap/TypeData$TypeVar;

    .line 271
    .local v1, "cv":Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    const/4 v6, 0x0

    iput-boolean v6, v1, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->inList:Z

    .line 272
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    if-ne v1, p0, :cond_4

    .line 274
    invoke-direct {p0, v5, p3}, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixTypes(Ljava/util/ArrayList;Ljavassist/ClassPool;)V

    .end local v1    # "cv":Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    .end local v5    # "scc":Ljava/util/ArrayList;
    :cond_5
    move v3, p2

    .line 277
    .end local p2    # "index":I
    .restart local v3    # "index":I
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixedType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData;->getName()Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixedType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTypeData(Ljavassist/bytecode/ConstPool;)I
    .locals 2
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .prologue
    .line 225
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixedType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/stackmap/TypeData;->getTypeData(Ljavassist/bytecode/ConstPool;)I

    move-result v0

    .line 228
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;->getTypeData(Ljavassist/bytecode/ConstPool;)I

    move-result v0

    goto :goto_0
.end method

.method public getTypeTag()I
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixedType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData;->getTypeTag()I

    move-result v0

    .line 221
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;->getTypeTag()I

    move-result v0

    goto :goto_0
.end method

.method public is2WordType()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixedType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 187
    iget-boolean v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->is2WordType:Z

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBasicType()Ljavassist/bytecode/stackmap/TypeData$BasicType;
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixedType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData;->isBasicType()Ljavassist/bytecode/stackmap/TypeData$BasicType;

    move-result-object v0

    .line 182
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNullType()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 195
    iget-object v1, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixedType:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 196
    iget-object v1, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData;->isNullType()Z

    move-result v0

    .line 198
    :cond_0
    return v0
.end method

.method public isUninit()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 202
    iget-object v1, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixedType:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 203
    iget-object v1, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData;->isUninit()Z

    move-result v0

    .line 205
    :cond_0
    return v0
.end method

.method public merge(Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 1
    .param p1, "t"    # Ljavassist/bytecode/stackmap/TypeData;

    .prologue
    .line 209
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    instance-of v0, p1, Ljavassist/bytecode/stackmap/TypeData$TypeVar;

    if-eqz v0, :cond_0

    .line 211
    check-cast p1, Ljavassist/bytecode/stackmap/TypeData$TypeVar;

    .end local p1    # "t":Ljavassist/bytecode/stackmap/TypeData;
    iget-object v0, p1, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->usedBy:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_0
    return-void
.end method

.method public setType(Ljava/lang/String;Ljavassist/ClassPool;)V
    .locals 1
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->uppers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->uppers:Ljava/util/ArrayList;

    .line 235
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->uppers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method protected toTypeVar()Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    .locals 0

    .prologue
    .line 238
    return-object p0
.end method
