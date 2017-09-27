.class public Ljavassist/bytecode/Descriptor;
.super Ljava/lang/Object;
.source "Descriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/Descriptor$Iterator;,
        Ljavassist/bytecode/Descriptor$PrettyPrinter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 796
    return-void
.end method

.method public static appendParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "classname"    # Ljava/lang/String;
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 329
    const/16 v2, 0x29

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 330
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 339
    .end local p1    # "desc":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 333
    .restart local p1    # "desc":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 334
    .local v1, "newdesc":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    const/16 v2, 0x4c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 336
    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 338
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static appendParameter(Ljavassist/CtClass;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Ljavassist/CtClass;
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 370
    const/16 v2, 0x29

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 371
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 378
    .end local p1    # "descriptor":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 374
    .restart local p1    # "descriptor":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 375
    .local v1, "newdesc":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    invoke-static {v1, p0}, Ljavassist/bytecode/Descriptor;->toDescriptor(Ljava/lang/StringBuffer;Ljavassist/CtClass;)V

    .line 377
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static arrayDimension(Ljava/lang/String;)I
    .locals 3
    .param p0, "desc"    # Ljava/lang/String;

    .prologue
    .line 640
    const/4 v0, 0x0

    .line 641
    .local v0, "dim":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 644
    :cond_0
    return v0
.end method

.method public static changeReturnType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "classname"    # Ljava/lang/String;
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 407
    const/16 v2, 0x29

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 408
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 416
    .end local p1    # "desc":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 411
    .restart local p1    # "desc":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 412
    .local v1, "newdesc":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    const/16 v2, 0x4c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 414
    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 416
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static dataSize(Ljava/lang/String;)I
    .locals 1
    .param p0, "desc"    # Ljava/lang/String;

    .prologue
    .line 672
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private static dataSize(Ljava/lang/String;Z)I
    .locals 7
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "withRet"    # Z

    .prologue
    const/16 v6, 0x4a

    const/16 v5, 0x44

    .line 689
    const/4 v3, 0x0

    .line 690
    .local v3, "n":I
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 691
    .local v1, "c":C
    const/16 v4, 0x28

    if-ne v1, v4, :cond_0

    .line 692
    const/4 v2, 0x1

    .line 694
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 695
    const/16 v4, 0x29

    if-ne v1, v4, :cond_3

    .line 696
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 721
    .end local v2    # "i":I
    :cond_0
    if-eqz p1, :cond_2

    .line 722
    if-eq v1, v6, :cond_1

    if-ne v1, v5, :cond_9

    .line 723
    :cond_1
    add-int/lit8 v3, v3, 0x2

    .line 727
    :cond_2
    :goto_1
    return v3

    .line 700
    .restart local v2    # "i":I
    :cond_3
    const/4 v0, 0x0

    .line 701
    .local v0, "array":Z
    :goto_2
    const/16 v4, 0x5b

    if-ne v1, v4, :cond_4

    .line 702
    const/4 v0, 0x1

    .line 703
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2

    .line 706
    :cond_4
    const/16 v4, 0x4c

    if-ne v1, v4, :cond_5

    .line 707
    const/16 v4, 0x3b

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 708
    if-gtz v2, :cond_6

    .line 709
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    const-string v5, "bad descriptor"

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 712
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 714
    :cond_6
    if-nez v0, :cond_8

    if-eq v1, v6, :cond_7

    if-ne v1, v5, :cond_8

    .line 715
    :cond_7
    add-int/lit8 v3, v3, -0x2

    goto :goto_0

    .line 717
    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 724
    .end local v0    # "array":Z
    .end local v2    # "i":I
    :cond_9
    const/16 v4, 0x56

    if-eq v1, v4, :cond_2

    .line 725
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static eqParamTypes(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "desc1"    # Ljava/lang/String;
    .param p1, "desc2"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 451
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x28

    if-eq v3, v4, :cond_1

    .line 460
    :cond_0
    :goto_0
    return v2

    .line 454
    :cond_1
    const/4 v1, 0x0

    .line 455
    .local v1, "i":I
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 456
    .local v0, "c":C
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v0, v3, :cond_0

    .line 459
    const/16 v3, 0x29

    if-ne v0, v3, :cond_2

    .line 460
    const/4 v2, 0x1

    goto :goto_0

    .line 454
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getParamDescriptor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "decl"    # Ljava/lang/String;

    .prologue
    .line 470
    const/4 v0, 0x0

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getParameterTypes(Ljava/lang/String;Ljavassist/ClassPool;)[Ljavassist/CtClass;
    .locals 7
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 431
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-eq v5, v6, :cond_1

    .line 432
    const/4 v0, 0x0

    .line 441
    :cond_0
    return-object v0

    .line 434
    :cond_1
    invoke-static {p0}, Ljavassist/bytecode/Descriptor;->numOfParameters(Ljava/lang/String;)I

    move-result v4

    .line 435
    .local v4, "num":I
    new-array v0, v4, [Ljavassist/CtClass;

    .line 436
    .local v0, "args":[Ljavassist/CtClass;
    const/4 v2, 0x0

    .line 437
    .local v2, "n":I
    const/4 v1, 0x1

    .line 439
    .local v1, "i":I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "n":I
    .local v3, "n":I
    invoke-static {p1, p0, v1, v0, v2}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljavassist/ClassPool;Ljava/lang/String;I[Ljavassist/CtClass;I)I

    move-result v1

    .line 440
    if-lez v1, :cond_0

    move v2, v3

    .end local v3    # "n":I
    .restart local v2    # "n":I
    goto :goto_0
.end method

.method public static getReturnType(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;
    .locals 4
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 484
    const/16 v2, 0x29

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 485
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 486
    const/4 v2, 0x0

    .line 490
    :goto_0
    return-object v2

    .line 488
    :cond_0
    const/4 v2, 0x1

    new-array v1, v2, [Ljavassist/CtClass;

    .line 489
    .local v1, "type":[Ljavassist/CtClass;
    add-int/lit8 v2, v0, 0x1

    invoke-static {p1, p0, v2, v1, v3}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljavassist/ClassPool;Ljava/lang/String;I[Ljavassist/CtClass;I)I

    .line 490
    aget-object v2, v1, v3

    goto :goto_0
.end method

.method public static insertParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "classname"    # Ljava/lang/String;
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 357
    .end local p1    # "desc":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "desc":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static insertParameter(Ljavassist/CtClass;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Ljavassist/CtClass;
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 395
    .end local p1    # "descriptor":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "descriptor":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static numOfParameters(Ljava/lang/String;)I
    .locals 5
    .param p0, "desc"    # Ljava/lang/String;

    .prologue
    .line 501
    const/4 v2, 0x0

    .line 502
    .local v2, "n":I
    const/4 v1, 0x1

    .line 504
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 505
    .local v0, "c":C
    const/16 v3, 0x29

    if-ne v0, v3, :cond_0

    .line 522
    return v2

    .line 508
    :cond_0
    :goto_1
    const/16 v3, 0x5b

    if-ne v0, v3, :cond_1

    .line 509
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 511
    :cond_1
    const/16 v3, 0x4c

    if-ne v0, v3, :cond_2

    .line 512
    const/16 v3, 0x3b

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 513
    if-gtz v1, :cond_3

    .line 514
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string v4, "bad descriptor"

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 517
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 519
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 520
    goto :goto_0
.end method

.method public static of(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "classname"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string v0, "void"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "V"

    .line 145
    :goto_0
    return-object v0

    .line 128
    :cond_0
    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    const-string v0, "I"

    goto :goto_0

    .line 130
    :cond_1
    const-string v0, "byte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    const-string v0, "B"

    goto :goto_0

    .line 132
    :cond_2
    const-string v0, "long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    const-string v0, "J"

    goto :goto_0

    .line 134
    :cond_3
    const-string v0, "double"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    const-string v0, "D"

    goto :goto_0

    .line 136
    :cond_4
    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 137
    const-string v0, "F"

    goto :goto_0

    .line 138
    :cond_5
    const-string v0, "char"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 139
    const-string v0, "C"

    goto :goto_0

    .line 140
    :cond_6
    const-string v0, "short"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 141
    const-string v0, "S"

    goto :goto_0

    .line 142
    :cond_7
    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 143
    const-string v0, "Z"

    goto :goto_0

    .line 145
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static of(Ljavassist/CtClass;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Ljavassist/CtClass;

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 247
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-static {v0, p0}, Ljavassist/bytecode/Descriptor;->toDescriptor(Ljava/lang/StringBuffer;Ljavassist/CtClass;)V

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static ofConstructor([Ljavassist/CtClass;)Ljava/lang/String;
    .locals 1
    .param p0, "paramTypes"    # [Ljavassist/CtClass;

    .prologue
    .line 282
    sget-object v0, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    invoke-static {v0, p0}, Ljavassist/bytecode/Descriptor;->ofMethod(Ljavassist/CtClass;[Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ofMethod(Ljavassist/CtClass;[Ljavassist/CtClass;)Ljava/lang/String;
    .locals 4
    .param p0, "returnType"    # Ljavassist/CtClass;
    .param p1, "paramTypes"    # [Ljavassist/CtClass;

    .prologue
    .line 293
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 294
    .local v0, "desc":Ljava/lang/StringBuffer;
    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 295
    if-eqz p1, :cond_0

    .line 296
    array-length v2, p1

    .line 297
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 298
    aget-object v3, p1, v1

    invoke-static {v0, v3}, Ljavassist/bytecode/Descriptor;->toDescriptor(Ljava/lang/StringBuffer;Ljavassist/CtClass;)V

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_0
    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 302
    if-eqz p0, :cond_1

    .line 303
    invoke-static {v0, p0}, Ljavassist/bytecode/Descriptor;->toDescriptor(Ljava/lang/StringBuffer;Ljavassist/CtClass;)V

    .line 305
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static ofParameters([Ljavassist/CtClass;)Ljava/lang/String;
    .locals 1
    .param p0, "paramTypes"    # [Ljavassist/CtClass;

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljavassist/bytecode/Descriptor;->ofMethod(Ljavassist/CtClass;[Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static paramSize(Ljava/lang/String;)I
    .locals 1
    .param p0, "desc"    # Ljava/lang/String;

    .prologue
    .line 685
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;Z)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public static rename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x4c

    const/16 v6, 0x3b

    .line 159
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_1

    .line 191
    .end local p0    # "desc":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 162
    .restart local p0    # "desc":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 163
    .local v4, "newdesc":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 164
    .local v0, "head":I
    const/4 v1, 0x0

    .line 166
    .local v1, "i":I
    :cond_2
    :goto_1
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 167
    .local v2, "j":I
    if-gez v2, :cond_4

    .line 184
    :goto_2
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 188
    .local v3, "len":I
    if-ge v0, v3, :cond_3

    .line 189
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 169
    .end local v3    # "len":I
    :cond_4
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_5

    .line 171
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 173
    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    add-int/lit8 v1, v5, 0x2

    move v0, v1

    goto :goto_1

    .line 178
    :cond_5
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 179
    const/4 v5, 0x1

    if-ge v1, v5, :cond_2

    goto :goto_2
.end method

.method public static rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 11
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    const/16 v10, 0x4c

    const/16 v9, 0x3b

    .line 204
    if-nez p1, :cond_1

    .line 238
    .end local p0    # "desc":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 207
    .restart local p0    # "desc":Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 208
    .local v7, "newdesc":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 209
    .local v0, "head":I
    const/4 v1, 0x0

    .line 211
    .local v1, "i":I
    :cond_2
    :goto_1
    invoke-virtual {p0, v10, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 212
    .local v2, "j":I
    if-gez v2, :cond_5

    .line 231
    :cond_3
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 235
    .local v4, "len":I
    if-ge v0, v4, :cond_4

    .line 236
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 215
    .end local v4    # "len":I
    :cond_5
    invoke-virtual {p0, v9, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 216
    .local v3, "k":I
    if-ltz v3, :cond_3

    .line 219
    add-int/lit8 v1, v3, 0x1

    .line 220
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, "name":Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 222
    .local v6, "name2":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 223
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 225
    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 227
    move v0, v1

    goto :goto_1
.end method

.method public static toArrayComponent(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "dim"    # I

    .prologue
    .line 657
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "arrayDim":I
    const/4 v2, 0x0

    .line 74
    .local v2, "i":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, "c":C
    move v3, v2

    .line 75
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    const/16 v7, 0x5b

    if-ne v1, v7, :cond_0

    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 77
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 81
    :cond_0
    const/16 v7, 0x4c

    if-ne v1, v7, :cond_1

    .line 82
    const/16 v7, 0x3b

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 83
    .local v4, "i2":I
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2f

    const/16 v9, 0x2e

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "name":Ljava/lang/String;
    move v2, v4

    .line 107
    .end local v4    # "i2":I
    :goto_1
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v7, v8, :cond_b

    .line 108
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "multiple descriptors?: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 86
    .end local v2    # "i":I
    .end local v5    # "name":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_1
    const/16 v7, 0x56

    if-ne v1, v7, :cond_2

    .line 87
    const-string v5, "void"

    .restart local v5    # "name":Ljava/lang/String;
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 88
    .end local v2    # "i":I
    .end local v5    # "name":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_2
    const/16 v7, 0x49

    if-ne v1, v7, :cond_3

    .line 89
    const-string v5, "int"

    .restart local v5    # "name":Ljava/lang/String;
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 90
    .end local v2    # "i":I
    .end local v5    # "name":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_3
    const/16 v7, 0x42

    if-ne v1, v7, :cond_4

    .line 91
    const-string v5, "byte"

    .restart local v5    # "name":Ljava/lang/String;
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 92
    .end local v2    # "i":I
    .end local v5    # "name":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_4
    const/16 v7, 0x4a

    if-ne v1, v7, :cond_5

    .line 93
    const-string v5, "long"

    .restart local v5    # "name":Ljava/lang/String;
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 94
    .end local v2    # "i":I
    .end local v5    # "name":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_5
    const/16 v7, 0x44

    if-ne v1, v7, :cond_6

    .line 95
    const-string v5, "double"

    .restart local v5    # "name":Ljava/lang/String;
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 96
    .end local v2    # "i":I
    .end local v5    # "name":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_6
    const/16 v7, 0x46

    if-ne v1, v7, :cond_7

    .line 97
    const-string v5, "float"

    .restart local v5    # "name":Ljava/lang/String;
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 98
    .end local v2    # "i":I
    .end local v5    # "name":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_7
    const/16 v7, 0x43

    if-ne v1, v7, :cond_8

    .line 99
    const-string v5, "char"

    .restart local v5    # "name":Ljava/lang/String;
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 100
    .end local v2    # "i":I
    .end local v5    # "name":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_8
    const/16 v7, 0x53

    if-ne v1, v7, :cond_9

    .line 101
    const-string v5, "short"

    .restart local v5    # "name":Ljava/lang/String;
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 102
    .end local v2    # "i":I
    .end local v5    # "name":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_9
    const/16 v7, 0x5a

    if-ne v1, v7, :cond_a

    .line 103
    const-string v5, "boolean"

    .restart local v5    # "name":Ljava/lang/String;
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 105
    .end local v2    # "i":I
    .end local v5    # "name":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_a
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad descriptor: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 110
    .end local v3    # "i":I
    .restart local v2    # "i":I
    .restart local v5    # "name":Ljava/lang/String;
    :cond_b
    if-nez v0, :cond_c

    .line 118
    .end local v5    # "name":Ljava/lang/String;
    :goto_2
    return-object v5

    .line 113
    .restart local v5    # "name":Ljava/lang/String;
    :cond_c
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 115
    .local v6, "sbuf":Ljava/lang/StringBuffer;
    :cond_d
    const-string v7, "[]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_d

    .line 118
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method private static toCtClass(Ljavassist/ClassPool;Ljava/lang/String;I[Ljavassist/CtClass;I)I
    .locals 11
    .param p0, "cp"    # Ljavassist/ClassPool;
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "args"    # [Ljavassist/CtClass;
    .param p4, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, "arrayDim":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 561
    .local v2, "c":C
    :goto_0
    const/16 v8, 0x5b

    if-ne v2, v8, :cond_0

    .line 562
    add-int/lit8 v0, v0, 0x1

    .line 563
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    .line 566
    :cond_0
    const/16 v8, 0x4c

    if-ne v2, v8, :cond_1

    .line 567
    const/16 v8, 0x3b

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, v8, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 568
    .local v3, "i2":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i2":I
    .local v4, "i2":I
    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2f

    const/16 v10, 0x2e

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .local v5, "name":Ljava/lang/String;
    move v3, v4

    .line 584
    .end local v4    # "i2":I
    .restart local v3    # "i2":I
    :goto_1
    if-lez v0, :cond_5

    .line 585
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .local v6, "sbuf":Ljava/lang/StringBuffer;
    move v1, v0

    .line 586
    .end local v0    # "arrayDim":I
    .local v1, "arrayDim":I
    :goto_2
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "arrayDim":I
    .restart local v0    # "arrayDim":I
    if-lez v1, :cond_4

    .line 587
    const-string v8, "[]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    .end local v0    # "arrayDim":I
    .restart local v1    # "arrayDim":I
    goto :goto_2

    .line 571
    .end local v1    # "arrayDim":I
    .end local v3    # "i2":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "sbuf":Ljava/lang/StringBuffer;
    .restart local v0    # "arrayDim":I
    :cond_1
    invoke-static {v2}, Ljavassist/bytecode/Descriptor;->toPrimitiveClass(C)Ljavassist/CtClass;

    move-result-object v7

    .line 572
    .local v7, "type":Ljavassist/CtClass;
    if-nez v7, :cond_2

    .line 573
    const/4 v3, -0x1

    .line 593
    .end local v7    # "type":Ljavassist/CtClass;
    :goto_3
    return v3

    .line 575
    .restart local v7    # "type":Ljavassist/CtClass;
    :cond_2
    add-int/lit8 v3, p2, 0x1

    .line 576
    .restart local v3    # "i2":I
    if-nez v0, :cond_3

    .line 577
    aput-object v7, p3, p4

    goto :goto_3

    .line 581
    :cond_3
    invoke-virtual {v7}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "name":Ljava/lang/String;
    goto :goto_1

    .line 589
    .end local v7    # "type":Ljavassist/CtClass;
    .restart local v6    # "sbuf":Ljava/lang/StringBuffer;
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 592
    .end local v6    # "sbuf":Ljava/lang/StringBuffer;
    :cond_5
    invoke-virtual {p0, v5}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v8

    aput-object v8, p3, p4

    goto :goto_3
.end method

.method public static toCtClass(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;
    .locals 4
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 541
    const/4 v2, 0x1

    new-array v0, v2, [Ljavassist/CtClass;

    .line 542
    .local v0, "clazz":[Ljavassist/CtClass;
    invoke-static {p1, p0, v3, v0, v3}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljavassist/ClassPool;Ljava/lang/String;I[Ljavassist/CtClass;I)I

    move-result v1

    .line 543
    .local v1, "res":I
    if-ltz v1, :cond_0

    .line 544
    aget-object v2, v0, v3

    .line 548
    :goto_0
    return-object v2

    :cond_0
    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v2

    goto :goto_0
.end method

.method private static toDescriptor(Ljava/lang/StringBuffer;Ljavassist/CtClass;)V
    .locals 7
    .param p0, "desc"    # Ljava/lang/StringBuffer;
    .param p1, "type"    # Ljavassist/CtClass;

    .prologue
    const/16 v4, 0x4c

    const/16 v6, 0x3b

    .line 252
    invoke-virtual {p1}, Ljavassist/CtClass;->isArray()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    const/16 v3, 0x5b

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 255
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getComponentType()Ljavassist/CtClass;

    move-result-object v3

    invoke-static {p0, v3}, Ljavassist/bytecode/Descriptor;->toDescriptor(Ljava/lang/StringBuffer;Ljavassist/CtClass;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljavassist/NotFoundException;
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 259
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "name":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 264
    .end local v0    # "e":Ljavassist/NotFoundException;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 265
    check-cast v2, Ljavassist/CtPrimitiveType;

    .line 266
    .local v2, "pt":Ljavassist/CtPrimitiveType;
    invoke-virtual {v2}, Ljavassist/CtPrimitiveType;->getDescriptor()C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 269
    .end local v2    # "pt":Ljavassist/CtPrimitiveType;
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 270
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static toJavaName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "classname"    # Ljava/lang/String;

    .prologue
    .line 52
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toJvmName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "classname"    # Ljava/lang/String;

    .prologue
    .line 39
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toJvmName(Ljavassist/CtClass;)Ljava/lang/String;
    .locals 1
    .param p0, "clazz"    # Ljavassist/CtClass;

    .prologue
    .line 60
    invoke-virtual {p0}, Ljavassist/CtClass;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p0}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static toPrimitiveClass(C)Ljavassist/CtClass;
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, "type":Ljavassist/CtClass;
    sparse-switch p0, :sswitch_data_0

    .line 628
    :goto_0
    return-object v0

    .line 600
    :sswitch_0
    sget-object v0, Ljavassist/CtClass;->booleanType:Ljavassist/CtClass;

    .line 601
    goto :goto_0

    .line 603
    :sswitch_1
    sget-object v0, Ljavassist/CtClass;->charType:Ljavassist/CtClass;

    .line 604
    goto :goto_0

    .line 606
    :sswitch_2
    sget-object v0, Ljavassist/CtClass;->byteType:Ljavassist/CtClass;

    .line 607
    goto :goto_0

    .line 609
    :sswitch_3
    sget-object v0, Ljavassist/CtClass;->shortType:Ljavassist/CtClass;

    .line 610
    goto :goto_0

    .line 612
    :sswitch_4
    sget-object v0, Ljavassist/CtClass;->intType:Ljavassist/CtClass;

    .line 613
    goto :goto_0

    .line 615
    :sswitch_5
    sget-object v0, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    .line 616
    goto :goto_0

    .line 618
    :sswitch_6
    sget-object v0, Ljavassist/CtClass;->floatType:Ljavassist/CtClass;

    .line 619
    goto :goto_0

    .line 621
    :sswitch_7
    sget-object v0, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    .line 622
    goto :goto_0

    .line 624
    :sswitch_8
    sget-object v0, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    goto :goto_0

    .line 598
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x43 -> :sswitch_1
        0x44 -> :sswitch_7
        0x46 -> :sswitch_6
        0x49 -> :sswitch_4
        0x4a -> :sswitch_5
        0x53 -> :sswitch_3
        0x56 -> :sswitch_8
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public static toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "desc"    # Ljava/lang/String;

    .prologue
    .line 738
    invoke-static {p0}, Ljavassist/bytecode/Descriptor$PrettyPrinter;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
