.class public final Ljavassist/convert/TransformWriteField;
.super Ljavassist/convert/TransformReadField;
.source "TransformWriteField.java"


# direct methods
.method public constructor <init>(Ljavassist/convert/Transformer;Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "next"    # Ljavassist/convert/Transformer;
    .param p2, "field"    # Ljavassist/CtField;
    .param p3, "methodClassname"    # Ljava/lang/String;
    .param p4, "methodName"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/convert/TransformReadField;-><init>(Ljavassist/convert/Transformer;Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public transform(Ljavassist/CtClass;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/ConstPool;)I
    .locals 15
    .param p1, "tclazz"    # Ljavassist/CtClass;
    .param p2, "pos"    # I
    .param p3, "iterator"    # Ljavassist/bytecode/CodeIterator;
    .param p4, "cp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .prologue
    .line 33
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v8

    .line 34
    .local v8, "c":I
    const/16 v2, 0xb5

    if-eq v8, v2, :cond_0

    const/16 v2, 0xb3

    if-ne v8, v2, :cond_3

    .line 35
    :cond_0
    add-int/lit8 v2, p2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v7

    .line 36
    .local v7, "index":I
    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v2

    iget-object v4, p0, Ljavassist/convert/TransformWriteField;->fieldClass:Ljavassist/CtClass;

    iget-object v5, p0, Ljavassist/convert/TransformWriteField;->fieldname:Ljava/lang/String;

    iget-boolean v6, p0, Ljavassist/convert/TransformWriteField;->isPrivate:Z

    move-object/from16 v3, p4

    invoke-static/range {v2 .. v7}, Ljavassist/convert/TransformWriteField;->isField(Ljavassist/ClassPool;Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v14

    .line 38
    .local v14, "typedesc":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 39
    const/16 v2, 0xb3

    if-ne v8, v2, :cond_2

    .line 40
    invoke-virtual/range {p3 .. p3}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v10

    .line 41
    .local v10, "ca":Ljavassist/bytecode/CodeAttribute;
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 42
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 43
    .local v9, "c0":C
    const/16 v2, 0x4a

    if-eq v9, v2, :cond_1

    const/16 v2, 0x44

    if-ne v9, v2, :cond_4

    .line 45
    :cond_1
    const/4 v2, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljavassist/bytecode/CodeIterator;->insertGap(I)I

    move-result p2

    .line 46
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 47
    const/16 v2, 0x5b

    add-int/lit8 v3, p2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 48
    const/16 v2, 0x57

    add-int/lit8 v3, p2, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 49
    invoke-virtual {v10}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v10, v2}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    .line 59
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result p2

    .line 62
    .end local v9    # "c0":C
    .end local v10    # "ca":Ljavassist/bytecode/CodeAttribute;
    :cond_2
    iget-object v2, p0, Ljavassist/convert/TransformWriteField;->methodClassname:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v12

    .line 63
    .local v12, "mi":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(Ljava/lang/Object;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")V"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 64
    .local v13, "type":Ljava/lang/String;
    iget-object v2, p0, Ljavassist/convert/TransformWriteField;->methodName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v2, v13}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 65
    .local v11, "methodref":I
    const/16 v2, 0xb8

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 66
    add-int/lit8 v2, p2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v2}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    .line 70
    .end local v7    # "index":I
    .end local v11    # "methodref":I
    .end local v12    # "mi":I
    .end local v13    # "type":Ljava/lang/String;
    .end local v14    # "typedesc":Ljava/lang/String;
    :cond_3
    return p2

    .line 53
    .restart local v7    # "index":I
    .restart local v9    # "c0":C
    .restart local v10    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v14    # "typedesc":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljavassist/bytecode/CodeIterator;->insertGap(I)I

    move-result p2

    .line 54
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 55
    const/16 v2, 0x5f

    add-int/lit8 v3, p2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 56
    invoke-virtual {v10}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v10, v2}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    goto :goto_0
.end method
