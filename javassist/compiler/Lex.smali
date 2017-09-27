.class public Ljavassist/compiler/Lex;
.super Ljava/lang/Object;
.source "Lex.java"

# interfaces
.implements Ljavassist/compiler/TokenId;


# static fields
.field private static final equalOps:[I

.field private static final ktable:Ljavassist/compiler/KeywordTable;


# instance fields
.field private currentToken:Ljavassist/compiler/Token;

.field private input:Ljava/lang/String;

.field private lastChar:I

.field private lineNumber:I

.field private lookAheadTokens:Ljavassist/compiler/Token;

.field private maxlen:I

.field private position:I

.field private textBuffer:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 355
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljavassist/compiler/Lex;->equalOps:[I

    .line 458
    new-instance v0, Ljavassist/compiler/KeywordTable;

    invoke-direct {v0}, Ljavassist/compiler/KeywordTable;-><init>()V

    sput-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    .line 461
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "abstract"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 462
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "boolean"

    const/16 v2, 0x12d

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 463
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "break"

    const/16 v2, 0x12e

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 464
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "byte"

    const/16 v2, 0x12f

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 465
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "case"

    const/16 v2, 0x130

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 466
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "catch"

    const/16 v2, 0x131

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 467
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "char"

    const/16 v2, 0x132

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 468
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "class"

    const/16 v2, 0x133

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 469
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "const"

    const/16 v2, 0x134

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 470
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "continue"

    const/16 v2, 0x135

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 471
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "default"

    const/16 v2, 0x136

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 472
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "do"

    const/16 v2, 0x137

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 473
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "double"

    const/16 v2, 0x138

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 474
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "else"

    const/16 v2, 0x139

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 475
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "extends"

    const/16 v2, 0x13a

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 476
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "false"

    const/16 v2, 0x19b

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 477
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "final"

    const/16 v2, 0x13b

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 478
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "finally"

    const/16 v2, 0x13c

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 479
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "float"

    const/16 v2, 0x13d

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 480
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "for"

    const/16 v2, 0x13e

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 481
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "goto"

    const/16 v2, 0x13f

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 482
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "if"

    const/16 v2, 0x140

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 483
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "implements"

    const/16 v2, 0x141

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 484
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "import"

    const/16 v2, 0x142

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 485
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "instanceof"

    const/16 v2, 0x143

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 486
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "int"

    const/16 v2, 0x144

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 487
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "interface"

    const/16 v2, 0x145

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 488
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "long"

    const/16 v2, 0x146

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 489
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "native"

    const/16 v2, 0x147

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 490
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "new"

    const/16 v2, 0x148

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 491
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "null"

    const/16 v2, 0x19c

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 492
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "package"

    const/16 v2, 0x149

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 493
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "private"

    const/16 v2, 0x14a

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 494
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "protected"

    const/16 v2, 0x14b

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 495
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "public"

    const/16 v2, 0x14c

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 496
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "return"

    const/16 v2, 0x14d

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 497
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "short"

    const/16 v2, 0x14e

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 498
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "static"

    const/16 v2, 0x14f

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 499
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "strictfp"

    const/16 v2, 0x15b

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 500
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "super"

    const/16 v2, 0x150

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 501
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "switch"

    const/16 v2, 0x151

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 502
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "synchronized"

    const/16 v2, 0x152

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 503
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "this"

    const/16 v2, 0x153

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 504
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "throw"

    const/16 v2, 0x154

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 505
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "throws"

    const/16 v2, 0x155

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 506
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "transient"

    const/16 v2, 0x156

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 507
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "true"

    const/16 v2, 0x19a

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 508
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "try"

    const/16 v2, 0x157

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 509
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "void"

    const/16 v2, 0x158

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 510
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "volatile"

    const/16 v2, 0x159

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 511
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "while"

    const/16 v2, 0x15a

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    .line 512
    return-void

    .line 355
    :array_0
    .array-data 4
        0x15e
        0x0
        0x0
        0x0
        0x15f
        0x160
        0x0
        0x0
        0x0
        0x161
        0x162
        0x0
        0x163
        0x0
        0x164
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x165
        0x166
        0x167
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Ljavassist/compiler/Lex;->lastChar:I

    .line 42
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljavassist/compiler/Lex;->textBuffer:Ljava/lang/StringBuffer;

    .line 43
    new-instance v0, Ljavassist/compiler/Token;

    invoke-direct {v0}, Ljavassist/compiler/Token;-><init>()V

    iput-object v0, p0, Ljavassist/compiler/Lex;->currentToken:Ljavassist/compiler/Token;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/compiler/Lex;->lookAheadTokens:Ljavassist/compiler/Token;

    .line 46
    iput-object p1, p0, Ljavassist/compiler/Lex;->input:Ljava/lang/String;

    .line 47
    iput v1, p0, Ljavassist/compiler/Lex;->position:I

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljavassist/compiler/Lex;->maxlen:I

    .line 49
    iput v1, p0, Ljavassist/compiler/Lex;->lineNumber:I

    .line 50
    return-void
.end method

.method private get(Ljavassist/compiler/Token;)I
    .locals 2
    .param p1, "token"    # Ljavassist/compiler/Token;

    .prologue
    .line 104
    :cond_0
    invoke-direct {p0, p1}, Ljavassist/compiler/Lex;->readLine(Ljavassist/compiler/Token;)I

    move-result v0

    .line 105
    .local v0, "t":I
    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 106
    iput v0, p1, Ljavassist/compiler/Token;->tokenId:I

    .line 107
    return v0
.end method

.method private getNextNonWhiteChar()I
    .locals 5

    .prologue
    const/16 v4, 0x2a

    const/4 v3, -0x1

    const/16 v2, 0x2f

    .line 146
    :cond_0
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    .line 147
    .local v0, "c":I
    if-ne v0, v2, :cond_2

    .line 148
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    .line 149
    if-ne v0, v2, :cond_3

    .line 151
    :cond_1
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    .line 152
    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    if-ne v0, v3, :cond_1

    .line 171
    :cond_2
    :goto_0
    invoke-static {v0}, Ljavassist/compiler/Lex;->isBlank(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    return v0

    .line 153
    :cond_3
    if-ne v0, v4, :cond_6

    .line 155
    :cond_4
    :goto_1
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    .line 156
    if-eq v0, v3, :cond_2

    .line 158
    if-ne v0, v4, :cond_4

    .line 159
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 160
    const/16 v0, 0x20

    .line 161
    goto :goto_0

    .line 164
    :cond_5
    invoke-direct {p0, v0}, Ljavassist/compiler/Lex;->ungetc(I)V

    goto :goto_1

    .line 167
    :cond_6
    invoke-direct {p0, v0}, Ljavassist/compiler/Lex;->ungetc(I)V

    .line 168
    const/16 v0, 0x2f

    goto :goto_0
.end method

.method private getc()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 540
    iget v2, p0, Ljavassist/compiler/Lex;->lastChar:I

    if-gez v2, :cond_1

    .line 541
    iget v2, p0, Ljavassist/compiler/Lex;->position:I

    iget v3, p0, Ljavassist/compiler/Lex;->maxlen:I

    if-ge v2, v3, :cond_0

    .line 542
    iget-object v1, p0, Ljavassist/compiler/Lex;->input:Ljava/lang/String;

    iget v2, p0, Ljavassist/compiler/Lex;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavassist/compiler/Lex;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 548
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 544
    goto :goto_0

    .line 546
    :cond_1
    iget v0, p0, Ljavassist/compiler/Lex;->lastChar:I

    .line 547
    .local v0, "c":I
    iput v1, p0, Ljavassist/compiler/Lex;->lastChar:I

    goto :goto_0
.end method

.method private static isBlank(I)Z
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 515
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDigit(I)Z
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 520
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readCharConst(Ljavassist/compiler/Token;)I
    .locals 4
    .param p1, "token"    # Ljavassist/compiler/Token;

    .prologue
    .line 177
    const/4 v1, 0x0

    .line 178
    .local v1, "value":I
    :goto_0
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    .local v0, "c":I
    const/16 v2, 0x27

    if-eq v0, v2, :cond_3

    .line 179
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_0

    .line 180
    invoke-direct {p0}, Ljavassist/compiler/Lex;->readEscapeChar()I

    move-result v1

    goto :goto_0

    .line 181
    :cond_0
    const/16 v2, 0x20

    if-ge v0, v2, :cond_2

    .line 182
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 183
    iget v2, p0, Ljavassist/compiler/Lex;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljavassist/compiler/Lex;->lineNumber:I

    .line 185
    :cond_1
    const/16 v2, 0x1f4

    .line 191
    :goto_1
    return v2

    .line 188
    :cond_2
    move v1, v0

    goto :goto_0

    .line 190
    :cond_3
    int-to-long v2, v1

    iput-wide v2, p1, Ljavassist/compiler/Token;->longValue:J

    .line 191
    const/16 v2, 0x191

    goto :goto_1
.end method

.method private readDouble(Ljava/lang/StringBuffer;ILjavassist/compiler/Token;)I
    .locals 7
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;
    .param p2, "c"    # I
    .param p3, "token"    # Ljavassist/compiler/Token;

    .prologue
    const/16 v6, 0x64

    const/16 v5, 0x45

    const/16 v4, 0x44

    const/16 v3, 0x39

    const/16 v2, 0x30

    .line 312
    if-eq p2, v5, :cond_0

    const/16 v1, 0x65

    if-eq p2, v1, :cond_0

    if-eq p2, v4, :cond_0

    if-eq p2, v6, :cond_0

    .line 313
    int-to-char v1, p2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 315
    :goto_0
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result p2

    .line 316
    if-gt v2, p2, :cond_0

    if-gt p2, v3, :cond_0

    .line 317
    int-to-char v1, p2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 323
    :cond_0
    if-eq p2, v5, :cond_1

    const/16 v1, 0x65

    if-ne p2, v1, :cond_4

    .line 324
    :cond_1
    int-to-char v1, p2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 325
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result p2

    .line 326
    const/16 v1, 0x2b

    if-eq p2, v1, :cond_2

    const/16 v1, 0x2d

    if-ne p2, v1, :cond_3

    .line 327
    :cond_2
    int-to-char v1, p2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 328
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result p2

    .line 331
    :cond_3
    :goto_1
    if-gt v2, p2, :cond_4

    if-gt p2, v3, :cond_4

    .line 332
    int-to-char v1, p2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 333
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result p2

    goto :goto_1

    .line 338
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p3, Ljavassist/compiler/Token;->doubleValue:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    const/16 v1, 0x46

    if-eq p2, v1, :cond_5

    const/16 v1, 0x66

    if-ne p2, v1, :cond_6

    .line 345
    :cond_5
    const/16 v1, 0x194

    .line 350
    :goto_2
    return v1

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/16 v1, 0x1f4

    goto :goto_2

    .line 347
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    if-eq p2, v4, :cond_7

    if-eq p2, v6, :cond_7

    .line 348
    invoke-direct {p0, p2}, Ljavassist/compiler/Lex;->ungetc(I)V

    .line 350
    :cond_7
    const/16 v1, 0x195

    goto :goto_2
.end method

.method private readEscapeChar()I
    .locals 2

    .prologue
    .line 195
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    .line 196
    .local v0, "c":I
    const/16 v1, 0x6e

    if-ne v0, v1, :cond_1

    .line 197
    const/16 v0, 0xa

    .line 207
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    const/16 v1, 0x74

    if-ne v0, v1, :cond_2

    .line 199
    const/16 v0, 0x9

    goto :goto_0

    .line 200
    :cond_2
    const/16 v1, 0x72

    if-ne v0, v1, :cond_3

    .line 201
    const/16 v0, 0xd

    goto :goto_0

    .line 202
    :cond_3
    const/16 v1, 0x66

    if-ne v0, v1, :cond_4

    .line 203
    const/16 v0, 0xc

    goto :goto_0

    .line 204
    :cond_4
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 205
    iget v1, p0, Ljavassist/compiler/Lex;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavassist/compiler/Lex;->lineNumber:I

    goto :goto_0
.end method

.method private readIdentifier(ILjavassist/compiler/Token;)I
    .locals 4
    .param p1, "c"    # I
    .param p2, "token"    # Ljavassist/compiler/Token;

    .prologue
    .line 431
    iget-object v2, p0, Ljavassist/compiler/Lex;->textBuffer:Ljava/lang/StringBuffer;

    .line 432
    .local v2, "tbuf":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 435
    :cond_0
    int-to-char v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 436
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result p1

    .line 437
    int-to-char v3, p1

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 439
    invoke-direct {p0, p1}, Ljavassist/compiler/Lex;->ungetc(I)V

    .line 441
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "name":Ljava/lang/String;
    sget-object v3, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    invoke-virtual {v3, v0}, Ljavassist/compiler/KeywordTable;->lookup(Ljava/lang/String;)I

    move-result v1

    .line 443
    .local v1, "t":I
    if-ltz v1, :cond_1

    .line 454
    .end local v1    # "t":I
    :goto_0
    return v1

    .line 453
    .restart local v1    # "t":I
    :cond_1
    iput-object v0, p2, Ljavassist/compiler/Token;->textValue:Ljava/lang/String;

    .line 454
    const/16 v1, 0x190

    goto :goto_0
.end method

.method private readLine(Ljavassist/compiler/Token;)I
    .locals 6
    .param p1, "token"    # Ljavassist/compiler/Token;

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    const/16 v2, 0xa

    const/16 v3, 0x2e

    .line 111
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getNextNonWhiteChar()I

    move-result v0

    .line 112
    .local v0, "c":I
    if-gez v0, :cond_0

    move v2, v0

    .line 140
    :goto_0
    return v2

    .line 114
    :cond_0
    if-ne v0, v2, :cond_1

    .line 115
    iget v3, p0, Ljavassist/compiler/Lex;->lineNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljavassist/compiler/Lex;->lineNumber:I

    goto :goto_0

    .line 118
    :cond_1
    const/16 v2, 0x27

    if-ne v0, v2, :cond_2

    .line 119
    invoke-direct {p0, p1}, Ljavassist/compiler/Lex;->readCharConst(Ljavassist/compiler/Token;)I

    move-result v2

    goto :goto_0

    .line 120
    :cond_2
    const/16 v2, 0x22

    if-ne v0, v2, :cond_3

    .line 121
    invoke-direct {p0, p1}, Ljavassist/compiler/Lex;->readStringL(Ljavassist/compiler/Token;)I

    move-result v2

    goto :goto_0

    .line 122
    :cond_3
    if-gt v4, v0, :cond_4

    if-gt v0, v5, :cond_4

    .line 123
    invoke-direct {p0, v0, p1}, Ljavassist/compiler/Lex;->readNumber(ILjavassist/compiler/Token;)I

    move-result v2

    goto :goto_0

    .line 124
    :cond_4
    if-ne v0, v3, :cond_6

    .line 125
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    .line 126
    if-gt v4, v0, :cond_5

    if-gt v0, v5, :cond_5

    .line 127
    iget-object v1, p0, Ljavassist/compiler/Lex;->textBuffer:Ljava/lang/StringBuffer;

    .line 128
    .local v1, "tbuf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 129
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 130
    invoke-direct {p0, v1, v0, p1}, Ljavassist/compiler/Lex;->readDouble(Ljava/lang/StringBuffer;ILjavassist/compiler/Token;)I

    move-result v2

    goto :goto_0

    .line 133
    .end local v1    # "tbuf":Ljava/lang/StringBuffer;
    :cond_5
    invoke-direct {p0, v0}, Ljavassist/compiler/Lex;->ungetc(I)V

    .line 134
    invoke-direct {p0, v3}, Ljavassist/compiler/Lex;->readSeparator(I)I

    move-result v2

    goto :goto_0

    .line 137
    :cond_6
    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 138
    invoke-direct {p0, v0, p1}, Ljavassist/compiler/Lex;->readIdentifier(ILjavassist/compiler/Token;)I

    move-result v2

    goto :goto_0

    .line 140
    :cond_7
    invoke-direct {p0, v0}, Ljavassist/compiler/Lex;->readSeparator(I)I

    move-result v2

    goto :goto_0
.end method

.method private readNumber(ILjavassist/compiler/Token;)I
    .locals 13
    .param p1, "c"    # I
    .param p2, "token"    # Ljavassist/compiler/Token;

    .prologue
    const/16 v5, 0x193

    const/16 v4, 0x192

    const/16 v12, 0x6c

    const/16 v11, 0x4c

    const/16 v10, 0x30

    .line 245
    const-wide/16 v2, 0x0

    .line 246
    .local v2, "value":J
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    .line 247
    .local v0, "c2":I
    if-ne p1, v10, :cond_a

    .line 248
    const/16 v6, 0x58

    if-eq v0, v6, :cond_0

    const/16 v6, 0x78

    if-ne v0, v6, :cond_6

    .line 250
    :cond_0
    :goto_0
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result p1

    .line 251
    if-gt v10, p1, :cond_1

    const/16 v6, 0x39

    if-gt p1, v6, :cond_1

    .line 252
    const-wide/16 v6, 0x10

    mul-long/2addr v6, v2

    add-int/lit8 v8, p1, -0x30

    int-to-long v8, v8

    add-long v2, v6, v8

    goto :goto_0

    .line 253
    :cond_1
    const/16 v6, 0x41

    if-gt v6, p1, :cond_2

    const/16 v6, 0x46

    if-gt p1, v6, :cond_2

    .line 254
    const-wide/16 v6, 0x10

    mul-long/2addr v6, v2

    add-int/lit8 v8, p1, -0x41

    add-int/lit8 v8, v8, 0xa

    int-to-long v8, v8

    add-long v2, v6, v8

    goto :goto_0

    .line 255
    :cond_2
    const/16 v6, 0x61

    if-gt v6, p1, :cond_3

    const/16 v6, 0x66

    if-gt p1, v6, :cond_3

    .line 256
    const-wide/16 v6, 0x10

    mul-long/2addr v6, v2

    add-int/lit8 v8, p1, -0x61

    add-int/lit8 v8, v8, 0xa

    int-to-long v8, v8

    add-long v2, v6, v8

    goto :goto_0

    .line 258
    :cond_3
    iput-wide v2, p2, Ljavassist/compiler/Token;->longValue:J

    .line 259
    if-eq p1, v11, :cond_4

    if-ne p1, v12, :cond_5

    :cond_4
    move v4, v5

    .line 307
    :goto_1
    return v4

    .line 262
    :cond_5
    invoke-direct {p0, p1}, Ljavassist/compiler/Lex;->ungetc(I)V

    goto :goto_1

    .line 267
    :cond_6
    if-gt v10, v0, :cond_a

    const/16 v6, 0x37

    if-gt v0, v6, :cond_a

    .line 268
    add-int/lit8 v6, v0, -0x30

    int-to-long v2, v6

    .line 270
    :goto_2
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result p1

    .line 271
    if-gt v10, p1, :cond_7

    const/16 v6, 0x37

    if-gt p1, v6, :cond_7

    .line 272
    const-wide/16 v6, 0x8

    mul-long/2addr v6, v2

    add-int/lit8 v8, p1, -0x30

    int-to-long v8, v8

    add-long v2, v6, v8

    goto :goto_2

    .line 274
    :cond_7
    iput-wide v2, p2, Ljavassist/compiler/Token;->longValue:J

    .line 275
    if-eq p1, v11, :cond_8

    if-ne p1, v12, :cond_9

    :cond_8
    move v4, v5

    .line 276
    goto :goto_1

    .line 278
    :cond_9
    invoke-direct {p0, p1}, Ljavassist/compiler/Lex;->ungetc(I)V

    goto :goto_1

    .line 285
    :cond_a
    add-int/lit8 v6, p1, -0x30

    int-to-long v2, v6

    .line 286
    :goto_3
    if-gt v10, v0, :cond_b

    const/16 v6, 0x39

    if-gt v0, v6, :cond_b

    .line 287
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v2

    int-to-long v8, v0

    add-long/2addr v6, v8

    const-wide/16 v8, 0x30

    sub-long v2, v6, v8

    .line 288
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    goto :goto_3

    .line 291
    :cond_b
    iput-wide v2, p2, Ljavassist/compiler/Token;->longValue:J

    .line 292
    const/16 v6, 0x46

    if-eq v0, v6, :cond_c

    const/16 v6, 0x66

    if-ne v0, v6, :cond_d

    .line 293
    :cond_c
    long-to-double v4, v2

    iput-wide v4, p2, Ljavassist/compiler/Token;->doubleValue:D

    .line 294
    const/16 v4, 0x194

    goto :goto_1

    .line 296
    :cond_d
    const/16 v6, 0x45

    if-eq v0, v6, :cond_e

    const/16 v6, 0x65

    if-eq v0, v6, :cond_e

    const/16 v6, 0x44

    if-eq v0, v6, :cond_e

    const/16 v6, 0x64

    if-eq v0, v6, :cond_e

    const/16 v6, 0x2e

    if-ne v0, v6, :cond_f

    .line 298
    :cond_e
    iget-object v1, p0, Ljavassist/compiler/Lex;->textBuffer:Ljava/lang/StringBuffer;

    .line 299
    .local v1, "tbuf":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 300
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 301
    invoke-direct {p0, v1, v0, p2}, Ljavassist/compiler/Lex;->readDouble(Ljava/lang/StringBuffer;ILjavassist/compiler/Token;)I

    move-result v4

    goto :goto_1

    .line 303
    .end local v1    # "tbuf":Ljava/lang/StringBuffer;
    :cond_f
    if-eq v0, v11, :cond_10

    if-ne v0, v12, :cond_11

    :cond_10
    move v4, v5

    .line 304
    goto :goto_1

    .line 306
    :cond_11
    invoke-direct {p0, v0}, Ljavassist/compiler/Lex;->ungetc(I)V

    goto :goto_1
.end method

.method private readSeparator(I)I
    .locals 6
    .param p1, "c"    # I

    .prologue
    const/16 v4, 0x7c

    const/16 v5, 0x3d

    .line 363
    const/16 v3, 0x21

    if-gt v3, p1, :cond_8

    const/16 v3, 0x3f

    if-gt p1, v3, :cond_8

    .line 364
    sget-object v3, Ljavassist/compiler/Lex;->equalOps:[I

    add-int/lit8 v4, p1, -0x21

    aget v2, v3, v4

    .line 365
    .local v2, "t":I
    if-nez v2, :cond_1

    .line 427
    .end local v2    # "t":I
    .end local p1    # "c":I
    :cond_0
    :goto_0
    return p1

    .line 368
    .restart local v2    # "t":I
    .restart local p1    # "c":I
    :cond_1
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    .line 369
    .local v0, "c2":I
    if-ne p1, v0, :cond_7

    .line 370
    sparse-switch p1, :sswitch_data_0

    .line 426
    .end local v2    # "t":I
    :cond_2
    invoke-direct {p0, v0}, Ljavassist/compiler/Lex;->ungetc(I)V

    goto :goto_0

    .line 372
    .restart local v2    # "t":I
    :sswitch_0
    const/16 p1, 0x166

    goto :goto_0

    .line 374
    :sswitch_1
    const/16 p1, 0x16a

    goto :goto_0

    .line 376
    :sswitch_2
    const/16 p1, 0x16b

    goto :goto_0

    .line 378
    :sswitch_3
    const/16 p1, 0x171

    goto :goto_0

    .line 380
    :sswitch_4
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v1

    .line 381
    .local v1, "c3":I
    if-ne v1, v5, :cond_3

    .line 382
    const/16 p1, 0x16d

    goto :goto_0

    .line 384
    :cond_3
    invoke-direct {p0, v1}, Ljavassist/compiler/Lex;->ungetc(I)V

    .line 385
    const/16 p1, 0x16c

    goto :goto_0

    .line 388
    .end local v1    # "c3":I
    :sswitch_5
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v1

    .line 389
    .restart local v1    # "c3":I
    if-ne v1, v5, :cond_4

    .line 390
    const/16 p1, 0x16f

    goto :goto_0

    .line 391
    :cond_4
    const/16 v3, 0x3e

    if-ne v1, v3, :cond_6

    .line 392
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v1

    .line 393
    if-ne v1, v5, :cond_5

    .line 394
    const/16 p1, 0x173

    goto :goto_0

    .line 396
    :cond_5
    invoke-direct {p0, v1}, Ljavassist/compiler/Lex;->ungetc(I)V

    .line 397
    const/16 p1, 0x172

    goto :goto_0

    .line 401
    :cond_6
    invoke-direct {p0, v1}, Ljavassist/compiler/Lex;->ungetc(I)V

    .line 402
    const/16 p1, 0x16e

    goto :goto_0

    .line 407
    .end local v1    # "c3":I
    :cond_7
    if-ne v0, v5, :cond_2

    move p1, v2

    .line 408
    goto :goto_0

    .line 411
    .end local v0    # "c2":I
    .end local v2    # "t":I
    :cond_8
    const/16 v3, 0x5e

    if-ne p1, v3, :cond_9

    .line 412
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    .line 413
    .restart local v0    # "c2":I
    if-ne v0, v5, :cond_2

    .line 414
    const/16 p1, 0x168

    goto :goto_0

    .line 416
    .end local v0    # "c2":I
    :cond_9
    if-ne p1, v4, :cond_0

    .line 417
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    .line 418
    .restart local v0    # "c2":I
    if-ne v0, v5, :cond_a

    .line 419
    const/16 p1, 0x169

    goto :goto_0

    .line 420
    :cond_a
    if-ne v0, v4, :cond_2

    .line 421
    const/16 p1, 0x170

    goto :goto_0

    .line 370
    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_3
        0x2b -> :sswitch_1
        0x2d -> :sswitch_2
        0x3c -> :sswitch_4
        0x3d -> :sswitch_0
        0x3e -> :sswitch_5
    .end sparse-switch
.end method

.method private readStringL(Ljavassist/compiler/Token;)I
    .locals 5
    .param p1, "token"    # Ljavassist/compiler/Token;

    .prologue
    const/16 v4, 0x22

    const/16 v3, 0xa

    .line 212
    iget-object v1, p0, Ljavassist/compiler/Lex;->textBuffer:Ljava/lang/StringBuffer;

    .line 213
    .local v1, "tbuf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 215
    :cond_0
    :goto_0
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    .local v0, "c":I
    if-eq v0, v4, :cond_4

    .line 216
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_2

    .line 217
    invoke-direct {p0}, Ljavassist/compiler/Lex;->readEscapeChar()I

    move-result v0

    .line 223
    :cond_1
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 218
    :cond_2
    if-eq v0, v3, :cond_3

    if-gez v0, :cond_1

    .line 219
    :cond_3
    iget v2, p0, Ljavassist/compiler/Lex;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljavassist/compiler/Lex;->lineNumber:I

    .line 220
    const/16 v2, 0x1f4

    .line 241
    :goto_1
    return v2

    .line 227
    :cond_4
    :goto_2
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    .line 228
    if-ne v0, v3, :cond_5

    .line 229
    iget v2, p0, Ljavassist/compiler/Lex;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljavassist/compiler/Lex;->lineNumber:I

    goto :goto_2

    .line 230
    :cond_5
    invoke-static {v0}, Ljavassist/compiler/Lex;->isBlank(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 234
    if-eq v0, v4, :cond_0

    .line 235
    invoke-direct {p0, v0}, Ljavassist/compiler/Lex;->ungetc(I)V

    .line 240
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Ljavassist/compiler/Token;->textValue:Ljava/lang/String;

    .line 241
    const/16 v2, 0x196

    goto :goto_1
.end method

.method private ungetc(I)V
    .locals 0
    .param p1, "c"    # I

    .prologue
    .line 524
    iput p1, p0, Ljavassist/compiler/Lex;->lastChar:I

    .line 525
    return-void
.end method


# virtual methods
.method public get()I
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Ljavassist/compiler/Lex;->lookAheadTokens:Ljavassist/compiler/Token;

    if-nez v1, :cond_0

    .line 54
    iget-object v1, p0, Ljavassist/compiler/Lex;->currentToken:Ljavassist/compiler/Token;

    invoke-direct {p0, v1}, Ljavassist/compiler/Lex;->get(Ljavassist/compiler/Token;)I

    move-result v1

    .line 59
    :goto_0
    return v1

    .line 57
    :cond_0
    iget-object v0, p0, Ljavassist/compiler/Lex;->lookAheadTokens:Ljavassist/compiler/Token;

    .local v0, "t":Ljavassist/compiler/Token;
    iput-object v0, p0, Ljavassist/compiler/Lex;->currentToken:Ljavassist/compiler/Token;

    .line 58
    iget-object v1, p0, Ljavassist/compiler/Lex;->lookAheadTokens:Ljavassist/compiler/Token;

    iget-object v1, v1, Ljavassist/compiler/Token;->next:Ljavassist/compiler/Token;

    iput-object v1, p0, Ljavassist/compiler/Lex;->lookAheadTokens:Ljavassist/compiler/Token;

    .line 59
    iget v1, v0, Ljavassist/compiler/Token;->tokenId:I

    goto :goto_0
.end method

.method public getDouble()D
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Ljavassist/compiler/Lex;->currentToken:Ljavassist/compiler/Token;

    iget-wide v0, v0, Ljavassist/compiler/Token;->doubleValue:D

    return-wide v0
.end method

.method public getLong()J
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Ljavassist/compiler/Lex;->currentToken:Ljavassist/compiler/Token;

    iget-wide v0, v0, Ljavassist/compiler/Token;->longValue:J

    return-wide v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Ljavassist/compiler/Lex;->currentToken:Ljavassist/compiler/Token;

    iget-object v0, v0, Ljavassist/compiler/Token;->textValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTextAround()Ljava/lang/String;
    .locals 3

    .prologue
    .line 528
    iget v2, p0, Ljavassist/compiler/Lex;->position:I

    add-int/lit8 v0, v2, -0xa

    .line 529
    .local v0, "begin":I
    if-gez v0, :cond_0

    .line 530
    const/4 v0, 0x0

    .line 532
    :cond_0
    iget v2, p0, Ljavassist/compiler/Lex;->position:I

    add-int/lit8 v1, v2, 0xa

    .line 533
    .local v1, "end":I
    iget v2, p0, Ljavassist/compiler/Lex;->maxlen:I

    if-le v1, v2, :cond_1

    .line 534
    iget v1, p0, Ljavassist/compiler/Lex;->maxlen:I

    .line 536
    :cond_1
    iget-object v2, p0, Ljavassist/compiler/Lex;->input:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public lookAhead()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v0

    return v0
.end method

.method public lookAhead(I)I
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 71
    iget-object v1, p0, Ljavassist/compiler/Lex;->lookAheadTokens:Ljavassist/compiler/Token;

    .line 72
    .local v1, "tk":Ljavassist/compiler/Token;
    if-nez v1, :cond_0

    .line 73
    iget-object v1, p0, Ljavassist/compiler/Lex;->currentToken:Ljavassist/compiler/Token;

    iput-object v1, p0, Ljavassist/compiler/Lex;->lookAheadTokens:Ljavassist/compiler/Token;

    .line 74
    const/4 v3, 0x0

    iput-object v3, v1, Ljavassist/compiler/Token;->next:Ljavassist/compiler/Token;

    .line 75
    invoke-direct {p0, v1}, Ljavassist/compiler/Lex;->get(Ljavassist/compiler/Token;)I

    :cond_0
    move v0, p1

    .line 78
    .end local p1    # "i":I
    .local v0, "i":I
    :goto_0
    add-int/lit8 p1, v0, -0x1

    .end local v0    # "i":I
    .restart local p1    # "i":I
    if-lez v0, :cond_2

    .line 79
    iget-object v3, v1, Ljavassist/compiler/Token;->next:Ljavassist/compiler/Token;

    if-nez v3, :cond_1

    .line 81
    new-instance v2, Ljavassist/compiler/Token;

    invoke-direct {v2}, Ljavassist/compiler/Token;-><init>()V

    .local v2, "tk2":Ljavassist/compiler/Token;
    iput-object v2, v1, Ljavassist/compiler/Token;->next:Ljavassist/compiler/Token;

    .line 82
    invoke-direct {p0, v2}, Ljavassist/compiler/Lex;->get(Ljavassist/compiler/Token;)I

    .line 78
    .end local v2    # "tk2":Ljavassist/compiler/Token;
    :cond_1
    iget-object v1, v1, Ljavassist/compiler/Token;->next:Ljavassist/compiler/Token;

    move v0, p1

    .end local p1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 85
    .end local v0    # "i":I
    .restart local p1    # "i":I
    :cond_2
    iput-object v1, p0, Ljavassist/compiler/Lex;->currentToken:Ljavassist/compiler/Token;

    .line 86
    iget v3, v1, Ljavassist/compiler/Token;->tokenId:I

    return v3
.end method
