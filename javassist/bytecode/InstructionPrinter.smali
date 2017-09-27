.class public Ljavassist/bytecode/InstructionPrinter;
.super Ljava/lang/Object;
.source "InstructionPrinter.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;


# static fields
.field private static final opcodes:[Ljava/lang/String;


# instance fields
.field private final stream:Ljava/io/PrintStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Ljavassist/bytecode/Mnemonic;->OPCODE:[Ljava/lang/String;

    sput-object v0, Ljavassist/bytecode/InstructionPrinter;->opcodes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/PrintStream;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Ljavassist/bytecode/InstructionPrinter;->stream:Ljava/io/PrintStream;

    .line 37
    return-void
.end method

.method private static arrayInfo(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 186
    packed-switch p0, :pswitch_data_0

    .line 204
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid array type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :pswitch_0
    const-string v0, "boolean"

    .line 202
    :goto_0
    return-object v0

    .line 190
    :pswitch_1
    const-string v0, "char"

    goto :goto_0

    .line 192
    :pswitch_2
    const-string v0, "byte"

    goto :goto_0

    .line 194
    :pswitch_3
    const-string v0, "short"

    goto :goto_0

    .line 196
    :pswitch_4
    const-string v0, "int"

    goto :goto_0

    .line 198
    :pswitch_5
    const-string v0, "long"

    goto :goto_0

    .line 200
    :pswitch_6
    const-string v0, "float"

    goto :goto_0

    .line 202
    :pswitch_7
    const-string v0, "double"

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static classInfo(Ljavassist/bytecode/ConstPool;I)Ljava/lang/String;
    .locals 2
    .param p0, "pool"    # Ljavassist/bytecode/ConstPool;
    .param p1, "index"    # I

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static fieldInfo(Ljavassist/bytecode/ConstPool;I)Ljava/lang/String;
    .locals 2
    .param p0, "pool"    # Ljavassist/bytecode/ConstPool;
    .param p1, "index"    # I

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = Field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getFieldrefClassName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getFieldrefName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getFieldrefType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static instructionString(Ljavassist/bytecode/CodeIterator;ILjavassist/bytecode/ConstPool;)Ljava/lang/String;
    .locals 5
    .param p0, "iter"    # Ljavassist/bytecode/CodeIterator;
    .param p1, "pos"    # I
    .param p2, "pool"    # Ljavassist/bytecode/ConstPool;

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    .line 76
    .local v0, "opcode":I
    sget-object v2, Ljavassist/bytecode/InstructionPrinter;->opcodes:[Ljava/lang/String;

    array-length v2, v2

    if-gt v0, v2, :cond_0

    if-gez v0, :cond_1

    .line 77
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid opcode, opcode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_1
    sget-object v2, Ljavassist/bytecode/InstructionPrinter;->opcodes:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 80
    .local v1, "opstring":Ljava/lang/String;
    sparse-switch v0, :sswitch_data_0

    .line 157
    .end local v1    # "opstring":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 82
    .restart local v1    # "opstring":Ljava/lang/String;
    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 84
    :sswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->s16bitAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 86
    :sswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v3

    invoke-static {p2, v3}, Ljavassist/bytecode/InstructionPrinter;->ldc(Ljavassist/bytecode/ConstPool;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 89
    :sswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v3

    invoke-static {p2, v3}, Ljavassist/bytecode/InstructionPrinter;->ldc(Ljavassist/bytecode/ConstPool;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 100
    :sswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 117
    :sswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->s16bitAt(I)I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 119
    :sswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 122
    :sswitch_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->s16bitAt(I)I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 124
    :sswitch_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 126
    :sswitch_9
    invoke-static {p0, p1}, Ljavassist/bytecode/InstructionPrinter;->tableSwitch(Ljavassist/bytecode/CodeIterator;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 128
    :sswitch_a
    invoke-static {p0, p1}, Ljavassist/bytecode/InstructionPrinter;->lookupSwitch(Ljavassist/bytecode/CodeIterator;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 133
    :sswitch_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v3

    invoke-static {p2, v3}, Ljavassist/bytecode/InstructionPrinter;->fieldInfo(Ljavassist/bytecode/ConstPool;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 137
    :sswitch_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v3

    invoke-static {p2, v3}, Ljavassist/bytecode/InstructionPrinter;->methodInfo(Ljavassist/bytecode/ConstPool;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 139
    :sswitch_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v3

    invoke-static {p2, v3}, Ljavassist/bytecode/InstructionPrinter;->interfaceMethodInfo(Ljavassist/bytecode/ConstPool;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 141
    :sswitch_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 143
    :sswitch_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v3

    invoke-static {p2, v3}, Ljavassist/bytecode/InstructionPrinter;->classInfo(Ljavassist/bytecode/ConstPool;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 145
    :sswitch_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v3

    invoke-static {v3}, Ljavassist/bytecode/InstructionPrinter;->arrayInfo(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 148
    :sswitch_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v3

    invoke-static {p2, v3}, Ljavassist/bytecode/InstructionPrinter;->classInfo(Ljavassist/bytecode/ConstPool;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 150
    :sswitch_12
    invoke-static {p0, p1}, Ljavassist/bytecode/InstructionPrinter;->wide(Ljavassist/bytecode/CodeIterator;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 152
    :sswitch_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v3

    invoke-static {p2, v3}, Ljavassist/bytecode/InstructionPrinter;->classInfo(Ljavassist/bytecode/ConstPool;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 155
    :sswitch_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 80
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x11 -> :sswitch_1
        0x12 -> :sswitch_2
        0x13 -> :sswitch_3
        0x14 -> :sswitch_3
        0x15 -> :sswitch_4
        0x16 -> :sswitch_4
        0x17 -> :sswitch_4
        0x18 -> :sswitch_4
        0x19 -> :sswitch_4
        0x36 -> :sswitch_4
        0x37 -> :sswitch_4
        0x38 -> :sswitch_4
        0x39 -> :sswitch_4
        0x3a -> :sswitch_4
        0x84 -> :sswitch_6
        0x99 -> :sswitch_5
        0x9a -> :sswitch_5
        0x9b -> :sswitch_5
        0x9c -> :sswitch_5
        0x9d -> :sswitch_5
        0x9e -> :sswitch_5
        0x9f -> :sswitch_5
        0xa0 -> :sswitch_5
        0xa1 -> :sswitch_5
        0xa2 -> :sswitch_5
        0xa3 -> :sswitch_5
        0xa4 -> :sswitch_5
        0xa5 -> :sswitch_5
        0xa6 -> :sswitch_5
        0xa7 -> :sswitch_7
        0xa8 -> :sswitch_7
        0xa9 -> :sswitch_8
        0xaa -> :sswitch_9
        0xab -> :sswitch_a
        0xb2 -> :sswitch_b
        0xb3 -> :sswitch_b
        0xb4 -> :sswitch_b
        0xb5 -> :sswitch_b
        0xb6 -> :sswitch_c
        0xb7 -> :sswitch_c
        0xb8 -> :sswitch_c
        0xb9 -> :sswitch_d
        0xba -> :sswitch_e
        0xbb -> :sswitch_f
        0xbc -> :sswitch_10
        0xbd -> :sswitch_11
        0xc0 -> :sswitch_11
        0xc4 -> :sswitch_12
        0xc5 -> :sswitch_13
        0xc6 -> :sswitch_5
        0xc7 -> :sswitch_5
        0xc8 -> :sswitch_14
        0xc9 -> :sswitch_14
    .end sparse-switch
.end method

.method private static interfaceMethodInfo(Ljavassist/bytecode/ConstPool;I)Ljava/lang/String;
    .locals 2
    .param p0, "pool"    # Ljavassist/bytecode/ConstPool;
    .param p1, "index"    # I

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = Method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefClassName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ldc(Ljavassist/bytecode/ConstPool;I)Ljava/lang/String;
    .locals 4
    .param p0, "pool"    # Ljavassist/bytecode/ConstPool;
    .param p1, "index"    # I

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getTag(I)I

    move-result v0

    .line 278
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_0

    .line 292
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad LDC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getStringInfo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    :goto_0
    return-object v1

    .line 282
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = int "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getIntegerInfo(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 284
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = float "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getFloatInfo(I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 286
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = long "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getLongInfo(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 288
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = int "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getDoubleInfo(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 290
    :pswitch_5
    invoke-static {p0, p1}, Ljavassist/bytecode/InstructionPrinter;->classInfo(Ljavassist/bytecode/ConstPool;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private static lookupSwitch(Ljavassist/bytecode/CodeIterator;I)Ljava/lang/String;
    .locals 8
    .param p0, "iter"    # Ljavassist/bytecode/CodeIterator;
    .param p1, "pos"    # I

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v6, "lookupswitch {\n"

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, "buffer":Ljava/lang/StringBuffer;
    and-int/lit8 v6, p1, -0x4

    add-int/lit8 v2, v6, 0x4

    .line 241
    .local v2, "index":I
    const-string v6, "\t\tdefault: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0, v2}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v7

    add-int/2addr v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p0, v2}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v4

    .line 243
    .local v4, "npairs":I
    mul-int/lit8 v6, v4, 0x8

    add-int/lit8 v2, v2, 0x4

    add-int v1, v6, v2

    .line 245
    .local v1, "end":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 246
    invoke-virtual {p0, v2}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v3

    .line 247
    .local v3, "match":I
    add-int/lit8 v6, v2, 0x4

    invoke-virtual {p0, v6}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v6

    add-int v5, v6, p1

    .line 248
    .local v5, "target":I
    const-string v6, "\t\t"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    .line 251
    .end local v3    # "match":I
    .end local v5    # "target":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/16 v7, 0x7d

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static methodInfo(Ljavassist/bytecode/ConstPool;I)Ljava/lang/String;
    .locals 2
    .param p0, "pool"    # Ljavassist/bytecode/ConstPool;
    .param p1, "index"    # I

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = Method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getMethodrefClassName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getMethodrefName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getMethodrefType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static print(Ljavassist/CtMethod;Ljava/io/PrintStream;)V
    .locals 1
    .param p0, "method"    # Ljavassist/CtMethod;
    .param p1, "stream"    # Ljava/io/PrintStream;

    .prologue
    .line 43
    new-instance v0, Ljavassist/bytecode/InstructionPrinter;

    invoke-direct {v0, p1}, Ljavassist/bytecode/InstructionPrinter;-><init>(Ljava/io/PrintStream;)V

    invoke-virtual {v0, p0}, Ljavassist/bytecode/InstructionPrinter;->print(Ljavassist/CtMethod;)V

    .line 44
    return-void
.end method

.method private static tableSwitch(Ljavassist/bytecode/CodeIterator;I)Ljava/lang/String;
    .locals 9
    .param p0, "iter"    # Ljavassist/bytecode/CodeIterator;
    .param p1, "pos"    # I

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v7, "tableswitch {\n"

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "buffer":Ljava/lang/StringBuffer;
    and-int/lit8 v7, p1, -0x4

    add-int/lit8 v3, v7, 0x4

    .line 260
    .local v3, "index":I
    const-string v7, "\t\tdefault: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v8

    add-int/2addr v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    add-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v5

    .line 262
    .local v5, "low":I
    add-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v2

    .line 263
    .local v2, "high":I
    sub-int v7, v2, v5

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v7, v7, 0x4

    add-int/lit8 v3, v3, 0x4

    add-int v1, v7, v3

    .line 266
    .local v1, "end":I
    move v4, v5

    .local v4, "key":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 267
    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v7

    add-int v6, v7, p1

    .line 268
    .local v6, "target":I
    const-string v7, "\t\t"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 271
    .end local v6    # "target":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    const/16 v8, 0x7d

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static wide(Ljavassist/bytecode/CodeIterator;I)Ljava/lang/String;
    .locals 4
    .param p0, "iter"    # Ljavassist/bytecode/CodeIterator;
    .param p1, "pos"    # I

    .prologue
    .line 163
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v1

    .line 164
    .local v1, "opcode":I
    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v0

    .line 165
    .local v0, "index":I
    sparse-switch v1, :sswitch_data_0

    .line 180
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid WIDE operand"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 178
    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljavassist/bytecode/InstructionPrinter;->opcodes:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 165
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3a -> :sswitch_0
        0x84 -> :sswitch_0
        0xa9 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public print(Ljavassist/CtMethod;)V
    .locals 9
    .param p1, "method"    # Ljavassist/CtMethod;

    .prologue
    .line 50
    invoke-virtual {p1}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v2

    .line 51
    .local v2, "info":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v2}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v4

    .line 52
    .local v4, "pool":Ljavassist/bytecode/ConstPool;
    invoke-virtual {v2}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    .line 53
    .local v0, "code":Ljavassist/bytecode/CodeAttribute;
    if-nez v0, :cond_1

    .line 67
    :cond_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v3

    .line 57
    .local v3, "iterator":Ljavassist/bytecode/CodeIterator;
    :goto_0
    invoke-virtual {v3}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 60
    :try_start_0
    invoke-virtual {v3}, Ljavassist/bytecode/CodeIterator;->next()I
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 65
    .local v5, "pos":I
    iget-object v6, p0, Ljavassist/bytecode/InstructionPrinter;->stream:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3, v5, v4}, Ljavassist/bytecode/InstructionPrinter;->instructionString(Ljavassist/bytecode/CodeIterator;ILjavassist/bytecode/ConstPool;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v5    # "pos":I
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method
