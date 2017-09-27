.class public Ljavassist/compiler/MemberResolver;
.super Ljava/lang/Object;
.source "MemberResolver.java"

# interfaces
.implements Ljavassist/compiler/TokenId;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/compiler/MemberResolver$Method;
    }
.end annotation


# static fields
.field private static final INVALID:Ljava/lang/String; = "<invalid>"

.field private static final NO:I = -0x1

.field private static final YES:I

.field private static invalidNamesMap:Ljava/util/WeakHashMap;


# instance fields
.field private classPool:Ljavassist/ClassPool;

.field private invalidNames:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 420
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljavassist/compiler/MemberResolver;->invalidNamesMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Ljavassist/ClassPool;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/ClassPool;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/compiler/MemberResolver;->invalidNames:Ljava/util/Hashtable;

    .line 34
    iput-object p1, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    .line 35
    return-void
.end method

.method private compareSignature(Ljava/lang/String;[I[I[Ljava/lang/String;)I
    .locals 17
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "argTypes"    # [I
    .param p3, "argDims"    # [I
    .param p4, "argClassNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 188
    const/4 v13, 0x0

    .line 189
    .local v13, "result":I
    const/4 v7, 0x1

    .line 190
    .local v7, "i":I
    move-object/from16 v0, p2

    array-length v12, v0

    .line 191
    .local v12, "nArgs":I
    invoke-static/range {p1 .. p1}, Ljavassist/bytecode/Descriptor;->numOfParameters(Ljava/lang/String;)I

    move-result v15

    if-eq v12, v15, :cond_0

    .line 192
    const/4 v15, -0x1

    .line 259
    :goto_0
    return v15

    .line 194
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 195
    .local v10, "len":I
    const/4 v11, 0x0

    .local v11, "n":I
    move v8, v7

    .end local v7    # "i":I
    .local v8, "i":I
    :goto_1
    if-ge v8, v10, :cond_12

    .line 196
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i":I
    .restart local v7    # "i":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 197
    .local v2, "c":C
    const/16 v15, 0x29

    if-ne v2, v15, :cond_2

    .line 198
    if-ne v11, v12, :cond_1

    move v15, v13

    goto :goto_0

    :cond_1
    const/4 v15, -0x1

    goto :goto_0

    .line 199
    :cond_2
    if-lt v11, v12, :cond_3

    .line 200
    const/4 v15, -0x1

    goto :goto_0

    .line 202
    :cond_3
    const/4 v5, 0x0

    .local v5, "dim":I
    move v8, v7

    .line 203
    .end local v7    # "i":I
    .restart local v8    # "i":I
    :goto_2
    const/16 v15, 0x5b

    if-ne v2, v15, :cond_4

    .line 204
    add-int/lit8 v5, v5, 0x1

    .line 205
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i":I
    .restart local v7    # "i":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v8, v7

    .end local v7    # "i":I
    .restart local v8    # "i":I
    goto :goto_2

    .line 208
    :cond_4
    aget v15, p2, v11

    const/16 v16, 0x19c

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 209
    if-nez v5, :cond_5

    const/16 v15, 0x4c

    if-eq v2, v15, :cond_5

    .line 210
    const/4 v15, -0x1

    move v7, v8

    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto :goto_0

    .line 212
    .end local v7    # "i":I
    .restart local v8    # "i":I
    :cond_5
    const/16 v15, 0x4c

    if-ne v2, v15, :cond_13

    .line 213
    const/16 v15, 0x3b

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    add-int/lit8 v7, v15, 0x1

    .line 195
    .end local v8    # "i":I
    .restart local v7    # "i":I
    :cond_6
    :goto_3
    add-int/lit8 v11, v11, 0x1

    move v8, v7

    .end local v7    # "i":I
    .restart local v8    # "i":I
    goto :goto_1

    .line 215
    :cond_7
    aget v15, p3, v11

    if-eq v15, v5, :cond_a

    .line 216
    if-nez v5, :cond_8

    const/16 v15, 0x4c

    if-ne v2, v15, :cond_8

    const-string v15, "java/lang/Object;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v15

    if-nez v15, :cond_9

    .line 218
    :cond_8
    const/4 v15, -0x1

    move v7, v8

    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto :goto_0

    .line 221
    .end local v7    # "i":I
    .restart local v8    # "i":I
    :cond_9
    const/16 v15, 0x3b

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    add-int/lit8 v7, v15, 0x1

    .line 222
    .end local v8    # "i":I
    .restart local v7    # "i":I
    add-int/lit8 v13, v13, 0x1

    .line 223
    if-gtz v7, :cond_6

    .line 224
    const/4 v15, -0x1

    goto :goto_0

    .line 226
    .end local v7    # "i":I
    .restart local v8    # "i":I
    :cond_a
    const/16 v15, 0x4c

    if-ne v2, v15, :cond_f

    .line 227
    const/16 v15, 0x3b

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 228
    .local v9, "j":I
    if-ltz v9, :cond_b

    aget v15, p2, v11

    const/16 v16, 0x133

    move/from16 v0, v16

    if-eq v15, v0, :cond_c

    .line 229
    :cond_b
    const/4 v15, -0x1

    move v7, v8

    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_0

    .line 231
    .end local v7    # "i":I
    .restart local v8    # "i":I
    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "cname":Ljava/lang/String;
    aget-object v15, p4, v11

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    .line 233
    aget-object v15, p4, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljavassist/compiler/MemberResolver;->lookupClassByJvmName(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v3

    .line 235
    .local v3, "clazz":Ljavassist/CtClass;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljavassist/compiler/MemberResolver;->lookupClassByJvmName(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-eqz v15, :cond_e

    .line 236
    add-int/lit8 v13, v13, 0x1

    .line 245
    .end local v3    # "clazz":Ljavassist/CtClass;
    :cond_d
    :goto_4
    add-int/lit8 v7, v9, 0x1

    .line 246
    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto :goto_3

    .line 238
    .end local v7    # "i":I
    .restart local v3    # "clazz":Ljavassist/CtClass;
    .restart local v8    # "i":I
    :cond_e
    const/4 v15, -0x1

    move v7, v8

    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_0

    .line 240
    .end local v7    # "i":I
    .restart local v8    # "i":I
    :catch_0
    move-exception v6

    .line 241
    .local v6, "e":Ljavassist/NotFoundException;
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 248
    .end local v3    # "clazz":Ljavassist/CtClass;
    .end local v4    # "cname":Ljava/lang/String;
    .end local v6    # "e":Ljavassist/NotFoundException;
    .end local v9    # "j":I
    :cond_f
    invoke-static {v2}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result v14

    .line 249
    .local v14, "t":I
    aget v1, p2, v11

    .line 250
    .local v1, "at":I
    if-eq v14, v1, :cond_13

    .line 251
    const/16 v15, 0x144

    if-ne v14, v15, :cond_11

    const/16 v15, 0x14e

    if-eq v1, v15, :cond_10

    const/16 v15, 0x12f

    if-eq v1, v15, :cond_10

    const/16 v15, 0x132

    if-ne v1, v15, :cond_11

    .line 253
    :cond_10
    add-int/lit8 v13, v13, 0x1

    move v7, v8

    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_3

    .line 255
    .end local v7    # "i":I
    .restart local v8    # "i":I
    :cond_11
    const/4 v15, -0x1

    move v7, v8

    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_0

    .line 259
    .end local v1    # "at":I
    .end local v2    # "c":C
    .end local v5    # "dim":I
    .end local v7    # "i":I
    .end local v14    # "t":I
    .restart local v8    # "i":I
    :cond_12
    const/4 v15, -0x1

    move v7, v8

    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_0

    .end local v7    # "i":I
    .restart local v2    # "c":C
    .restart local v5    # "dim":I
    .restart local v8    # "i":I
    :cond_13
    move v7, v8

    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_3
.end method

.method public static descToType(C)I
    .locals 1
    .param p0, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    const/16 v0, 0x158

    .line 535
    packed-switch p0, :pswitch_data_0

    .line 558
    :pswitch_0
    invoke-static {}, Ljavassist/compiler/MemberResolver;->fatal()V

    .line 559
    :goto_0
    :pswitch_1
    return v0

    .line 537
    :pswitch_2
    const/16 v0, 0x12d

    goto :goto_0

    .line 539
    :pswitch_3
    const/16 v0, 0x132

    goto :goto_0

    .line 541
    :pswitch_4
    const/16 v0, 0x12f

    goto :goto_0

    .line 543
    :pswitch_5
    const/16 v0, 0x14e

    goto :goto_0

    .line 545
    :pswitch_6
    const/16 v0, 0x144

    goto :goto_0

    .line 547
    :pswitch_7
    const/16 v0, 0x146

    goto :goto_0

    .line 549
    :pswitch_8
    const/16 v0, 0x13d

    goto :goto_0

    .line 551
    :pswitch_9
    const/16 v0, 0x138

    goto :goto_0

    .line 556
    :pswitch_a
    const/16 v0, 0x133

    goto :goto_0

    .line 535
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_a
    .end packed-switch
.end method

.method private static fatal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "fatal"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInvalidMapSize()I
    .locals 1

    .prologue
    .line 424
    sget-object v0, Ljavassist/compiler/MemberResolver;->invalidNamesMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    return v0
.end method

.method private getInvalidNames()Ljava/util/Hashtable;
    .locals 8

    .prologue
    .line 427
    iget-object v1, p0, Ljavassist/compiler/MemberResolver;->invalidNames:Ljava/util/Hashtable;

    .line 428
    .local v1, "ht":Ljava/util/Hashtable;
    if-nez v1, :cond_0

    .line 429
    const-class v5, Ljavassist/compiler/MemberResolver;

    monitor-enter v5

    .line 430
    :try_start_0
    sget-object v4, Ljavassist/compiler/MemberResolver;->invalidNamesMap:Ljava/util/WeakHashMap;

    iget-object v6, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v4, v6}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 431
    .local v3, "ref":Ljava/lang/ref/WeakReference;
    if-eqz v3, :cond_2

    .line 432
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/Hashtable;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    .line 434
    .end local v1    # "ht":Ljava/util/Hashtable;
    .local v2, "ht":Ljava/util/Hashtable;
    :goto_0
    if-nez v2, :cond_1

    .line 435
    :try_start_1
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 436
    .end local v2    # "ht":Ljava/util/Hashtable;
    .restart local v1    # "ht":Ljava/util/Hashtable;
    :try_start_2
    sget-object v4, Ljavassist/compiler/MemberResolver;->invalidNamesMap:Ljava/util/WeakHashMap;

    iget-object v6, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v6, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :goto_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 440
    iput-object v1, p0, Ljavassist/compiler/MemberResolver;->invalidNames:Ljava/util/Hashtable;

    .line 443
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;
    :cond_0
    return-object v1

    .line 438
    :catchall_0
    move-exception v4

    :goto_2
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .end local v1    # "ht":Ljava/util/Hashtable;
    .restart local v2    # "ht":Ljava/util/Hashtable;
    .restart local v3    # "ref":Ljava/lang/ref/WeakReference;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "ht":Ljava/util/Hashtable;
    .restart local v1    # "ht":Ljava/util/Hashtable;
    goto :goto_2

    .end local v1    # "ht":Ljava/util/Hashtable;
    .restart local v2    # "ht":Ljava/util/Hashtable;
    :cond_1
    move-object v1, v2

    .end local v2    # "ht":Ljava/util/Hashtable;
    .restart local v1    # "ht":Ljava/util/Hashtable;
    goto :goto_1

    :cond_2
    move-object v2, v1

    .end local v1    # "ht":Ljava/util/Hashtable;
    .restart local v2    # "ht":Ljava/util/Hashtable;
    goto :goto_0
.end method

.method public static getModifiers(Ljavassist/compiler/ast/ASTList;)I
    .locals 3
    .param p0, "mods"    # Ljavassist/compiler/ast/ASTList;

    .prologue
    .line 564
    const/4 v1, 0x0

    .line 565
    .local v1, "m":I
    :goto_0
    if-eqz p0, :cond_0

    .line 566
    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/Keyword;

    .line 567
    .local v0, "k":Ljavassist/compiler/ast/Keyword;
    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p0

    .line 568
    invoke-virtual {v0}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 579
    :sswitch_0
    or-int/lit16 v1, v1, 0x400

    .line 580
    goto :goto_0

    .line 570
    :sswitch_1
    or-int/lit8 v1, v1, 0x8

    .line 571
    goto :goto_0

    .line 573
    :sswitch_2
    or-int/lit8 v1, v1, 0x10

    .line 574
    goto :goto_0

    .line 576
    :sswitch_3
    or-int/lit8 v1, v1, 0x20

    .line 577
    goto :goto_0

    .line 582
    :sswitch_4
    or-int/lit8 v1, v1, 0x1

    .line 583
    goto :goto_0

    .line 585
    :sswitch_5
    or-int/lit8 v1, v1, 0x4

    .line 586
    goto :goto_0

    .line 588
    :sswitch_6
    or-int/lit8 v1, v1, 0x2

    .line 589
    goto :goto_0

    .line 591
    :sswitch_7
    or-int/lit8 v1, v1, 0x40

    .line 592
    goto :goto_0

    .line 594
    :sswitch_8
    or-int/lit16 v1, v1, 0x80

    .line 595
    goto :goto_0

    .line 597
    :sswitch_9
    or-int/lit16 v1, v1, 0x800

    goto :goto_0

    .line 602
    .end local v0    # "k":Ljavassist/compiler/ast/Keyword;
    :cond_0
    return v1

    .line 568
    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x13b -> :sswitch_2
        0x14a -> :sswitch_6
        0x14b -> :sswitch_5
        0x14c -> :sswitch_4
        0x14f -> :sswitch_1
        0x152 -> :sswitch_3
        0x156 -> :sswitch_8
        0x159 -> :sswitch_7
        0x15b -> :sswitch_9
    .end sparse-switch
.end method

.method public static getSuperclass(Ljavassist/CtClass;)Ljavassist/CtClass;
    .locals 4
    .param p0, "c"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 517
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 518
    .local v0, "sc":Ljavassist/CtClass;
    if-eqz v0, :cond_0

    .line 519
    return-object v0

    .line 521
    .end local v0    # "sc":Ljavassist/CtClass;
    :catch_0
    move-exception v1

    .line 522
    :cond_0
    new-instance v1, Ljavassist/compiler/CompileError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find the super class of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 355
    const-string v0, ""

    .line 356
    .local v0, "cname":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 385
    invoke-static {}, Ljavassist/compiler/MemberResolver;->fatal()V

    .line 388
    :goto_0
    return-object v0

    .line 358
    :sswitch_0
    const-string v0, "boolean"

    .line 359
    goto :goto_0

    .line 361
    :sswitch_1
    const-string v0, "char"

    .line 362
    goto :goto_0

    .line 364
    :sswitch_2
    const-string v0, "byte"

    .line 365
    goto :goto_0

    .line 367
    :sswitch_3
    const-string v0, "short"

    .line 368
    goto :goto_0

    .line 370
    :sswitch_4
    const-string v0, "int"

    .line 371
    goto :goto_0

    .line 373
    :sswitch_5
    const-string v0, "long"

    .line 374
    goto :goto_0

    .line 376
    :sswitch_6
    const-string v0, "float"

    .line 377
    goto :goto_0

    .line 379
    :sswitch_7
    const-string v0, "double"

    .line 380
    goto :goto_0

    .line 382
    :sswitch_8
    const-string v0, "void"

    .line 383
    goto :goto_0

    .line 356
    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_0
        0x12f -> :sswitch_2
        0x132 -> :sswitch_1
        0x138 -> :sswitch_7
        0x13d -> :sswitch_6
        0x144 -> :sswitch_4
        0x146 -> :sswitch_5
        0x14e -> :sswitch_3
        0x158 -> :sswitch_8
    .end sparse-switch
.end method

.method public static javaToJvmName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "classname"    # Ljava/lang/String;

    .prologue
    .line 527
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "classname"    # Ljava/lang/String;

    .prologue
    .line 531
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private lookupClass0(Ljava/lang/String;Z)Ljavassist/CtClass;
    .locals 5
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "notCheckInner"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 474
    const/4 v0, 0x0

    .line 477
    .local v0, "cc":Ljavassist/CtClass;
    :cond_0
    :try_start_0
    iget-object v4, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v4, p1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 489
    :goto_0
    if-eqz v0, :cond_0

    .line 490
    return-object v0

    .line 479
    :catch_0
    move-exception v1

    .line 480
    .local v1, "e":Ljavassist/NotFoundException;
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 481
    .local v2, "i":I
    if-nez p2, :cond_1

    if-gez v2, :cond_2

    .line 482
    :cond_1
    throw v1

    .line 484
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 485
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    const/16 v4, 0x24

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 486
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private lookupMethod(Ljavassist/CtClass;Ljava/lang/String;[I[I[Ljava/lang/String;Z)Ljavassist/compiler/MemberResolver$Method;
    .locals 25
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "argTypes"    # [I
    .param p4, "argDims"    # [I
    .param p5, "argClassNames"    # [Ljava/lang/String;
    .param p6, "onlyExact"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 97
    const/16 v18, 0x0

    .line 98
    .local v18, "maybe":Ljavassist/compiler/MemberResolver$Method;
    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v13

    .line 101
    .local v13, "cf":Ljavassist/bytecode/ClassFile;
    if-eqz v13, :cond_4

    .line 102
    invoke-virtual {v13}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v17

    .line 103
    .local v17, "list":Ljava/util/List;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v21

    .line 104
    .local v21, "n":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move/from16 v0, v21

    if-ge v14, v0, :cond_4

    .line 105
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljavassist/bytecode/MethodInfo;

    .line 106
    .local v19, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual/range {v19 .. v19}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 107
    invoke-virtual/range {v19 .. v19}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v0, v4, v1, v2, v3}, Ljavassist/compiler/MemberResolver;->compareSignature(Ljava/lang/String;[I[I[Ljava/lang/String;)I

    move-result v23

    .line 109
    .local v23, "res":I
    const/4 v4, -0x1

    move/from16 v0, v23

    if-eq v0, v4, :cond_3

    .line 110
    new-instance v22, Ljavassist/compiler/MemberResolver$Method;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Ljavassist/compiler/MemberResolver$Method;-><init>(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;I)V

    .line 111
    .local v22, "r":Ljavassist/compiler/MemberResolver$Method;
    if-nez v23, :cond_1

    .line 166
    .end local v14    # "i":I
    .end local v17    # "list":Ljava/util/List;
    .end local v19    # "minfo":Ljavassist/bytecode/MethodInfo;
    .end local v21    # "n":I
    .end local v22    # "r":Ljavassist/compiler/MemberResolver$Method;
    .end local v23    # "res":I
    :cond_0
    :goto_1
    return-object v22

    .line 113
    .restart local v14    # "i":I
    .restart local v17    # "list":Ljava/util/List;
    .restart local v19    # "minfo":Ljavassist/bytecode/MethodInfo;
    .restart local v21    # "n":I
    .restart local v22    # "r":Ljavassist/compiler/MemberResolver$Method;
    .restart local v23    # "res":I
    :cond_1
    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    iget v4, v0, Ljavassist/compiler/MemberResolver$Method;->notmatch:I

    move/from16 v0, v23

    if-le v4, v0, :cond_3

    .line 114
    :cond_2
    move-object/from16 v18, v22

    .line 104
    .end local v22    # "r":Ljavassist/compiler/MemberResolver$Method;
    .end local v23    # "res":I
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 120
    .end local v14    # "i":I
    .end local v17    # "list":Ljava/util/List;
    .end local v19    # "minfo":Ljavassist/bytecode/MethodInfo;
    .end local v21    # "n":I
    :cond_4
    if-eqz p6, :cond_7

    .line 121
    const/16 v18, 0x0

    .line 125
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getModifiers()I

    move-result v20

    .line 126
    .local v20, "mod":I
    invoke-static/range {v20 .. v20}, Ljavassist/Modifier;->isInterface(I)Z

    move-result v16

    .line 129
    .local v16, "isIntf":Z
    if-nez v16, :cond_5

    .line 130
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v5

    .line 131
    .local v5, "pclazz":Ljavassist/CtClass;
    if-eqz v5, :cond_5

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    .line 132
    invoke-direct/range {v4 .. v10}, Ljavassist/compiler/MemberResolver;->lookupMethod(Ljavassist/CtClass;Ljava/lang/String;[I[I[Ljava/lang/String;Z)Ljavassist/compiler/MemberResolver$Method;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v22

    .line 134
    .restart local v22    # "r":Ljavassist/compiler/MemberResolver$Method;
    if-nez v22, :cond_0

    .line 141
    .end local v5    # "pclazz":Ljavassist/CtClass;
    .end local v22    # "r":Ljavassist/compiler/MemberResolver$Method;
    :cond_5
    :goto_3
    if-nez v16, :cond_6

    invoke-static/range {v20 .. v20}, Ljavassist/Modifier;->isAbstract(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 143
    :cond_6
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v15

    .line 144
    .local v15, "ifs":[Ljavassist/CtClass;
    array-length v0, v15

    move/from16 v24, v0

    .line 145
    .local v24, "size":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_4
    move/from16 v0, v24

    if-ge v14, v0, :cond_9

    .line 146
    aget-object v7, v15, v14

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    invoke-direct/range {v6 .. v12}, Ljavassist/compiler/MemberResolver;->lookupMethod(Ljavassist/CtClass;Ljava/lang/String;[I[I[Ljava/lang/String;Z)Ljavassist/compiler/MemberResolver$Method;

    move-result-object v22

    .line 149
    .restart local v22    # "r":Ljavassist/compiler/MemberResolver$Method;
    if-nez v22, :cond_0

    .line 145
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 123
    .end local v14    # "i":I
    .end local v15    # "ifs":[Ljavassist/CtClass;
    .end local v16    # "isIntf":Z
    .end local v20    # "mod":I
    .end local v22    # "r":Ljavassist/compiler/MemberResolver$Method;
    .end local v24    # "size":I
    :cond_7
    if-eqz v18, :cond_8

    const/16 p6, 0x1

    :goto_5
    goto :goto_2

    :cond_8
    const/16 p6, 0x0

    goto :goto_5

    .line 153
    .restart local v14    # "i":I
    .restart local v15    # "ifs":[Ljavassist/CtClass;
    .restart local v16    # "isIntf":Z
    .restart local v20    # "mod":I
    .restart local v24    # "size":I
    :cond_9
    if-eqz v16, :cond_a

    .line 155
    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v5

    .line 156
    .restart local v5    # "pclazz":Ljavassist/CtClass;
    if-eqz v5, :cond_a

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    .line 157
    invoke-direct/range {v4 .. v10}, Ljavassist/compiler/MemberResolver;->lookupMethod(Ljavassist/CtClass;Ljava/lang/String;[I[I[Ljava/lang/String;Z)Ljavassist/compiler/MemberResolver$Method;
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v22

    .line 159
    .restart local v22    # "r":Ljavassist/compiler/MemberResolver$Method;
    if-nez v22, :cond_0

    .end local v5    # "pclazz":Ljavassist/CtClass;
    .end local v14    # "i":I
    .end local v15    # "ifs":[Ljavassist/CtClass;
    .end local v22    # "r":Ljavassist/compiler/MemberResolver$Method;
    .end local v24    # "size":I
    :cond_a
    :goto_6
    move-object/from16 v22, v18

    .line 166
    goto/16 :goto_1

    .line 164
    :catch_0
    move-exception v4

    goto :goto_6

    .line 139
    :catch_1
    move-exception v4

    goto :goto_3
.end method

.method private searchImports(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 7
    .param p1, "orgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2e

    .line 449
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_1

    .line 450
    iget-object v4, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v4}, Ljavassist/ClassPool;->getImportedPackages()Ljava/util/Iterator;

    move-result-object v2

    .line 451
    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 452
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 453
    .local v3, "pac":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, "fqName":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v4, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 460
    :goto_1
    return-object v4

    .line 457
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljavassist/NotFoundException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 460
    iget-object v4, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v4, v3}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_1

    .line 467
    .end local v0    # "e":Ljavassist/NotFoundException;
    .end local v1    # "fqName":Ljava/lang/String;
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "pac":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Ljavassist/compiler/MemberResolver;->getInvalidNames()Ljava/util/Hashtable;

    move-result-object v4

    const-string v5, "<invalid>"

    invoke-virtual {v4, p1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    new-instance v4, Ljavassist/compiler/CompileError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no such class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 462
    .restart local v0    # "e":Ljavassist/NotFoundException;
    .restart local v1    # "fqName":Ljava/lang/String;
    .restart local v2    # "it":Ljava/util/Iterator;
    .restart local v3    # "pac":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public getClassPool()Ljavassist/ClassPool;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    return-object v0
.end method

.method public lookupClass(IILjava/lang/String;)Ljavassist/CtClass;
    .locals 5
    .param p1, "type"    # I
    .param p2, "dim"    # I
    .param p3, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 333
    const-string v1, ""

    .line 335
    .local v1, "cname":Ljava/lang/String;
    const/16 v3, 0x133

    if-ne p1, v3, :cond_0

    .line 336
    invoke-virtual {p0, p3}, Ljavassist/compiler/MemberResolver;->lookupClassByJvmName(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    .line 337
    .local v0, "clazz":Ljavassist/CtClass;
    if-lez p2, :cond_2

    .line 338
    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    move v2, p2

    .line 345
    .end local v0    # "clazz":Ljavassist/CtClass;
    .end local p2    # "dim":I
    .local v2, "dim":I
    :goto_0
    add-int/lit8 p2, v2, -0x1

    .end local v2    # "dim":I
    .restart local p2    # "dim":I
    if-lez v2, :cond_1

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, p2

    .end local p2    # "dim":I
    .restart local v2    # "dim":I
    goto :goto_0

    .line 343
    .end local v2    # "dim":I
    .restart local p2    # "dim":I
    :cond_0
    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->getTypeName(I)Ljava/lang/String;

    move-result-object v1

    move v2, p2

    .end local p2    # "dim":I
    .restart local v2    # "dim":I
    goto :goto_0

    .line 348
    .end local v2    # "dim":I
    .restart local p2    # "dim":I
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "notCheckInner"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 397
    invoke-direct {p0}, Ljavassist/compiler/MemberResolver;->getInvalidNames()Ljava/util/Hashtable;

    move-result-object v0

    .line 398
    .local v0, "cache":Ljava/util/Hashtable;
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 399
    .local v3, "found":Ljava/lang/Object;
    const-string v4, "<invalid>"

    if-ne v3, v4, :cond_0

    .line 400
    new-instance v4, Ljavassist/compiler/CompileError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no such class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 401
    :cond_0
    if-eqz v3, :cond_1

    .line 403
    :try_start_0
    iget-object v4, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    check-cast v3, Ljava/lang/String;

    .end local v3    # "found":Ljava/lang/Object;
    invoke-virtual {v4, v3}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 416
    :goto_0
    return-object v1

    .line 405
    :catch_0
    move-exception v4

    .line 407
    :cond_1
    const/4 v1, 0x0

    .line 409
    .local v1, "cc":Ljavassist/CtClass;
    :try_start_1
    invoke-direct {p0, p1, p2}, Ljavassist/compiler/MemberResolver;->lookupClass0(Ljava/lang/String;Z)Ljavassist/CtClass;
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 415
    :goto_1
    invoke-virtual {v1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 411
    :catch_1
    move-exception v2

    .line 412
    .local v2, "e":Ljavassist/NotFoundException;
    invoke-direct {p0, p1}, Ljavassist/compiler/MemberResolver;->searchImports(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    goto :goto_1
.end method

.method public lookupClass(Ljavassist/compiler/ast/Declarator;)Ljavassist/CtClass;
    .locals 3
    .param p1, "decl"    # Ljavassist/compiler/ast/Declarator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result v0

    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getArrayDim()I

    move-result v1

    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Ljavassist/compiler/MemberResolver;->lookupClass(IILjava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public lookupClassByJvmName(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 2
    .param p1, "jvmName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 319
    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public lookupClassByName(Ljavassist/compiler/ast/ASTList;)Ljavassist/CtClass;
    .locals 2
    .param p1, "name"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 315
    const/16 v0, 0x2e

    invoke-static {p1, v0}, Ljavassist/compiler/ast/Declarator;->astToClassName(Ljavassist/compiler/ast/ASTList;C)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public lookupField(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;)Ljavassist/CtField;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljavassist/compiler/ast/Symbol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 306
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v0

    .line 308
    .local v0, "cc":Ljavassist/CtClass;
    :try_start_0
    invoke-virtual {p2}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/CtClass;->getField(Ljava/lang/String;)Ljavassist/CtField;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 310
    :catch_0
    move-exception v1

    .line 311
    new-instance v1, Ljavassist/compiler/CompileError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public lookupFieldByJvmName(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;)Ljavassist/CtField;
    .locals 1
    .param p1, "jvmClassName"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljavassist/compiler/ast/Symbol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 297
    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljavassist/compiler/MemberResolver;->lookupField(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;)Ljavassist/CtField;

    move-result-object v0

    return-object v0
.end method

.method public lookupFieldByJvmName2(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField;
    .locals 6
    .param p1, "jvmClassName"    # Ljava/lang/String;
    .param p2, "fieldSym"    # Ljavassist/compiler/ast/Symbol;
    .param p3, "expr"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/NoFieldException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-virtual {p2}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "field":Ljava/lang/String;
    const/4 v0, 0x0

    .line 274
    .local v0, "cc":Ljavassist/CtClass;
    :try_start_0
    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 282
    :try_start_1
    invoke-virtual {v0, v2}, Ljavassist/CtClass;->getField(Ljava/lang/String;)Ljavassist/CtField;
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    return-object v3

    .line 276
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljavassist/compiler/CompileError;
    new-instance v3, Ljavassist/compiler/NoFieldException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p3}, Ljavassist/compiler/NoFieldException;-><init>(Ljava/lang/String;Ljavassist/compiler/ast/ASTree;)V

    throw v3

    .line 284
    .end local v1    # "e":Ljavassist/compiler/CompileError;
    :catch_1
    move-exception v1

    .line 286
    .local v1, "e":Ljavassist/NotFoundException;
    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 287
    new-instance v3, Ljavassist/compiler/NoFieldException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p3}, Ljavassist/compiler/NoFieldException;-><init>(Ljava/lang/String;Ljavassist/compiler/ast/ASTree;)V

    throw v3
.end method

.method public lookupMethod(Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljava/lang/String;[I[I[Ljava/lang/String;)Ljavassist/compiler/MemberResolver$Method;
    .locals 14
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "currentClass"    # Ljavassist/CtClass;
    .param p3, "current"    # Ljavassist/bytecode/MethodInfo;
    .param p4, "methodName"    # Ljava/lang/String;
    .param p5, "argTypes"    # [I
    .param p6, "argDims"    # [I
    .param p7, "argClassNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v11, 0x0

    .line 71
    .local v11, "maybe":Ljavassist/compiler/MemberResolver$Method;
    if-eqz p3, :cond_1

    move-object/from16 v0, p2

    if-ne p1, v0, :cond_1

    .line 72
    invoke-virtual/range {p3 .. p3}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    invoke-virtual/range {p3 .. p3}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-direct {p0, v3, v0, v1, v2}, Ljavassist/compiler/MemberResolver;->compareSignature(Ljava/lang/String;[I[I[Ljava/lang/String;)I

    move-result v13

    .line 75
    .local v13, "res":I
    const/4 v3, -0x1

    if-eq v13, v3, :cond_1

    .line 76
    new-instance v12, Ljavassist/compiler/MemberResolver$Method;

    move-object/from16 v0, p3

    invoke-direct {v12, p1, v0, v13}, Ljavassist/compiler/MemberResolver$Method;-><init>(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;I)V

    .line 77
    .local v12, "r":Ljavassist/compiler/MemberResolver$Method;
    if-nez v13, :cond_0

    .line 89
    .end local v12    # "r":Ljavassist/compiler/MemberResolver$Method;
    .end local v13    # "res":I
    :goto_0
    return-object v12

    .line 80
    .restart local v12    # "r":Ljavassist/compiler/MemberResolver$Method;
    .restart local v13    # "res":I
    :cond_0
    move-object v11, v12

    .line 84
    .end local v12    # "r":Ljavassist/compiler/MemberResolver$Method;
    .end local v13    # "res":I
    :cond_1
    if-eqz v11, :cond_2

    const/4 v9, 0x1

    :goto_1
    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v3 .. v9}, Ljavassist/compiler/MemberResolver;->lookupMethod(Ljavassist/CtClass;Ljava/lang/String;[I[I[Ljava/lang/String;Z)Ljavassist/compiler/MemberResolver$Method;

    move-result-object v10

    .line 86
    .local v10, "m":Ljavassist/compiler/MemberResolver$Method;
    if-eqz v10, :cond_3

    move-object v12, v10

    .line 87
    goto :goto_0

    .line 84
    .end local v10    # "m":Ljavassist/compiler/MemberResolver$Method;
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .restart local v10    # "m":Ljavassist/compiler/MemberResolver$Method;
    :cond_3
    move-object v12, v11

    .line 89
    goto :goto_0
.end method

.method public resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 499
    if-nez p1, :cond_0

    .line 500
    const/4 v0, 0x0

    .line 502
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/compiler/MemberResolver;->lookupClassByName(Ljavassist/compiler/ast/ASTList;)Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public resolveJvmClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "jvmName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .prologue
    .line 509
    if-nez p1, :cond_0

    .line 510
    const/4 v0, 0x0

    .line 512
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/compiler/MemberResolver;->lookupClassByJvmName(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
