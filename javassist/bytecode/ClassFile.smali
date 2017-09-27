.class public final Ljavassist/bytecode/ClassFile;
.super Ljava/lang/Object;
.source "ClassFile.java"


# static fields
.field public static final JAVA_1:I = 0x2d

.field public static final JAVA_2:I = 0x2e

.field public static final JAVA_3:I = 0x2f

.field public static final JAVA_4:I = 0x30

.field public static final JAVA_5:I = 0x31

.field public static final JAVA_6:I = 0x32

.field public static final JAVA_7:I = 0x33

.field public static final JAVA_8:I = 0x34

.field public static MAJOR_VERSION:I


# instance fields
.field accessFlags:I

.field attributes:Ljava/util/ArrayList;

.field cachedInterfaces:[Ljava/lang/String;

.field cachedSuperclass:Ljava/lang/String;

.field constPool:Ljavassist/bytecode/ConstPool;

.field fields:Ljava/util/ArrayList;

.field interfaces:[I

.field major:I

.field methods:Ljava/util/ArrayList;

.field minor:I

.field superClass:I

.field thisClass:I

.field thisclassname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const/16 v0, 0x2f

    sput v0, Ljavassist/bytecode/ClassFile;->MAJOR_VERSION:I

    .line 110
    :try_start_0
    const-string v0, "java.lang.StringBuilder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 111
    const/16 v0, 0x31

    sput v0, Ljavassist/bytecode/ClassFile;->MAJOR_VERSION:I

    .line 112
    const-string v0, "java.util.zip.DeflaterInputStream"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 113
    const/16 v0, 0x32

    sput v0, Ljavassist/bytecode/ClassFile;->MAJOR_VERSION:I

    .line 114
    const-string v0, "java.lang.invoke.CallSite"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 115
    const/16 v0, 0x33

    sput v0, Ljavassist/bytecode/ClassFile;->MAJOR_VERSION:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-direct {p0, p1}, Ljavassist/bytecode/ClassFile;->read(Ljava/io/DataInputStream;)V

    .line 125
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "isInterface"    # Z
    .param p2, "classname"    # Ljava/lang/String;
    .param p3, "superclass"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    sget v0, Ljavassist/bytecode/ClassFile;->MAJOR_VERSION:I

    iput v0, p0, Ljavassist/bytecode/ClassFile;->major:I

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/bytecode/ClassFile;->minor:I

    .line 140
    new-instance v0, Ljavassist/bytecode/ConstPool;

    invoke-direct {v0, p2}, Ljavassist/bytecode/ConstPool;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    .line 141
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0}, Ljavassist/bytecode/ConstPool;->getThisClassInfo()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/ClassFile;->thisClass:I

    .line 142
    if-eqz p1, :cond_0

    .line 143
    const/16 v0, 0x600

    iput v0, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    .line 147
    :goto_0
    invoke-direct {p0, p3}, Ljavassist/bytecode/ClassFile;->initSuperclass(Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/ArrayList;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    .line 151
    iput-object p2, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    .line 154
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    new-instance v1, Ljavassist/bytecode/SourceFileAttribute;

    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    invoke-static {v3}, Ljavassist/bytecode/ClassFile;->getSourcefileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavassist/bytecode/SourceFileAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    return-void

    .line 145
    :cond_0
    const/16 v0, 0x20

    iput v0, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    goto :goto_0
.end method

.method private compact0()Ljavassist/bytecode/ConstPool;
    .locals 7

    .prologue
    .line 203
    new-instance v0, Ljavassist/bytecode/ConstPool;

    iget-object v4, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljavassist/bytecode/ConstPool;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {v0}, Ljavassist/bytecode/ConstPool;->getThisClassInfo()I

    move-result v4

    iput v4, p0, Ljavassist/bytecode/ClassFile;->thisClass:I

    .line 205
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getSuperclass()Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "sc":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 207
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getSuperclass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    .line 209
    :cond_0
    iget-object v4, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    if-eqz v4, :cond_1

    .line 210
    iget-object v4, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    array-length v2, v4

    .line 211
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 212
    iget-object v4, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    iget-object v5, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    iget-object v6, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return-object v0
.end method

.method private static getSourcefileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "qname"    # Ljava/lang/String;

    .prologue
    .line 170
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 171
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 172
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 174
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".java"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initSuperclass(Ljava/lang/String;)V
    .locals 2
    .param p1, "superclass"    # Ljava/lang/String;

    .prologue
    .line 159
    if-eqz p1, :cond_0

    .line 160
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    .line 161
    iput-object p1, p0, Ljavassist/bytecode/ClassFile;->cachedSuperclass:Ljava/lang/String;

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    const-string v1, "java.lang.Object"

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    .line 165
    const-string v0, "java.lang.Object"

    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->cachedSuperclass:Ljava/lang/String;

    goto :goto_0
.end method

.method private static isDuplicated(Ljavassist/bytecode/MethodInfo;Ljava/lang/String;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;Ljava/util/ListIterator;)Z
    .locals 3
    .param p0, "newMethod"    # Ljavassist/bytecode/MethodInfo;
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "newDesc"    # Ljava/lang/String;
    .param p3, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .param p4, "it"    # Ljava/util/ListIterator;

    .prologue
    const/4 v1, 0x0

    .line 688
    invoke-virtual {p3}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 706
    :cond_0
    :goto_0
    return v1

    .line 691
    :cond_1
    invoke-virtual {p3}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, "desc":Ljava/lang/String;
    invoke-static {v0, p2}, Ljavassist/bytecode/Descriptor;->eqParamTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 696
    invoke-static {p3}, Ljavassist/bytecode/ClassFile;->notBridgeMethod(Ljavassist/bytecode/MethodInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 697
    const/4 v1, 0x1

    goto :goto_0

    .line 701
    :cond_2
    invoke-interface {p4}, Ljava/util/ListIterator;->remove()V

    goto :goto_0
.end method

.method private static notBridgeMethod(Ljavassist/bytecode/MethodInfo;)Z
    .locals 1
    .param p0, "minfo"    # Ljavassist/bytecode/MethodInfo;

    .prologue
    .line 713
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private read(Ljava/io/DataInputStream;)V
    .locals 7
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 777
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 778
    .local v2, "magic":I
    const v4, -0x35014542    # -8346975.0f

    if-eq v2, v4, :cond_0

    .line 779
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad magic number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 781
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    iput v4, p0, Ljavassist/bytecode/ClassFile;->minor:I

    .line 782
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    iput v4, p0, Ljavassist/bytecode/ClassFile;->major:I

    .line 783
    new-instance v4, Ljavassist/bytecode/ConstPool;

    invoke-direct {v4, p1}, Ljavassist/bytecode/ConstPool;-><init>(Ljava/io/DataInputStream;)V

    iput-object v4, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    .line 784
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    iput v4, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    .line 785
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    iput v4, p0, Ljavassist/bytecode/ClassFile;->thisClass:I

    .line 786
    iget-object v4, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    iget v5, p0, Ljavassist/bytecode/ClassFile;->thisClass:I

    invoke-virtual {v4, v5}, Ljavassist/bytecode/ConstPool;->setThisClassInfo(I)V

    .line 787
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    iput v4, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    .line 788
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 789
    .local v3, "n":I
    if-nez v3, :cond_2

    .line 790
    const/4 v4, 0x0

    iput-object v4, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    .line 797
    :cond_1
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    .line 798
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 799
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/ArrayList;

    .line 800
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 801
    new-instance v4, Ljavassist/bytecode/FieldInfo;

    invoke-direct {v4, v0, p1}, Ljavassist/bytecode/FieldInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)V

    invoke-virtual {p0, v4}, Ljavassist/bytecode/ClassFile;->addField2(Ljavassist/bytecode/FieldInfo;)V

    .line 800
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 792
    .end local v0    # "cp":Ljavassist/bytecode/ConstPool;
    .end local v1    # "i":I
    :cond_2
    new-array v4, v3, [I

    iput-object v4, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    .line 793
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 794
    iget-object v4, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    aput v5, v4, v1

    .line 793
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 803
    .restart local v0    # "cp":Ljavassist/bytecode/ConstPool;
    :cond_3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 804
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    .line 805
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_4

    .line 806
    new-instance v4, Ljavassist/bytecode/MethodInfo;

    invoke-direct {v4, v0, p1}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)V

    invoke-virtual {p0, v4}, Ljavassist/bytecode/ClassFile;->addMethod2(Ljavassist/bytecode/MethodInfo;)V

    .line 805
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 808
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    .line 809
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 810
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_5

    .line 811
    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->read(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljavassist/bytecode/ClassFile;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 810
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 813
    :cond_5
    iget-object v4, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    iget v5, p0, Ljavassist/bytecode/ClassFile;->thisClass:I

    invoke-virtual {v4, v5}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    .line 814
    return-void
.end method

.method private testExistingField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/DuplicateMemberException;
        }
    .end annotation

    .prologue
    .line 604
    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 605
    .local v0, "it":Ljava/util/ListIterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 606
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/FieldInfo;

    .line 607
    .local v1, "minfo":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v1}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 608
    new-instance v2, Ljavassist/bytecode/DuplicateMemberException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duplicate field: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavassist/bytecode/DuplicateMemberException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 610
    .end local v1    # "minfo":Ljavassist/bytecode/FieldInfo;
    :cond_1
    return-void
.end method

.method private testExistingMethod(Ljavassist/bytecode/MethodInfo;)V
    .locals 6
    .param p1, "newMinfo"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/DuplicateMemberException;
        }
    .end annotation

    .prologue
    .line 675
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 676
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "descriptor":Ljava/lang/String;
    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 678
    .local v1, "it":Ljava/util/ListIterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 679
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/MethodInfo;

    invoke-static {p1, v2, v0, v3, v1}, Ljavassist/bytecode/ClassFile;->isDuplicated(Ljavassist/bytecode/MethodInfo;Ljava/lang/String;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;Ljava/util/ListIterator;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 680
    new-instance v3, Ljavassist/bytecode/DuplicateMemberException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicate method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavassist/bytecode/DuplicateMemberException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 682
    :cond_1
    return-void
.end method


# virtual methods
.method public addAttribute(Ljavassist/bytecode/AttributeInfo;)V
    .locals 2
    .param p1, "info"    # Ljavassist/bytecode/AttributeInfo;

    .prologue
    .line 757
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljavassist/bytecode/AttributeInfo;->remove(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    return-void
.end method

.method public addField(Ljavassist/bytecode/FieldInfo;)V
    .locals 2
    .param p1, "finfo"    # Ljavassist/bytecode/FieldInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/DuplicateMemberException;
        }
    .end annotation

    .prologue
    .line 586
    invoke-virtual {p1}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljavassist/bytecode/ClassFile;->testExistingField(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    return-void
.end method

.method public final addField2(Ljavassist/bytecode/FieldInfo;)V
    .locals 1
    .param p1, "finfo"    # Ljavassist/bytecode/FieldInfo;

    .prologue
    .line 599
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    return-void
.end method

.method public addInterface(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 555
    const/4 v3, 0x0

    iput-object v3, p0, Ljavassist/bytecode/ClassFile;->cachedInterfaces:[Ljava/lang/String;

    .line 556
    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v3, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    .line 557
    .local v0, "info":I
    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    if-nez v3, :cond_0

    .line 558
    const/4 v3, 0x1

    new-array v3, v3, [I

    iput-object v3, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    .line 559
    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    aput v0, v3, v4

    .line 568
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    array-length v1, v3

    .line 563
    .local v1, "n":I
    add-int/lit8 v3, v1, 0x1

    new-array v2, v3, [I

    .line 564
    .local v2, "newarray":[I
    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 565
    aput v0, v2, v1

    .line 566
    iput-object v2, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    goto :goto_0
.end method

.method public addMethod(Ljavassist/bytecode/MethodInfo;)V
    .locals 1
    .param p1, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/DuplicateMemberException;
        }
    .end annotation

    .prologue
    .line 656
    invoke-direct {p0, p1}, Ljavassist/bytecode/ClassFile;->testExistingMethod(Ljavassist/bytecode/MethodInfo;)V

    .line 657
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    return-void
.end method

.method public final addMethod2(Ljavassist/bytecode/MethodInfo;)V
    .locals 1
    .param p1, "minfo"    # Ljavassist/bytecode/MethodInfo;

    .prologue
    .line 669
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    return-void
.end method

.method public compact()V
    .locals 7

    .prologue
    .line 183
    invoke-direct {p0}, Ljavassist/bytecode/ClassFile;->compact0()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 184
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    .line 185
    .local v3, "list":Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 186
    .local v5, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 187
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/MethodInfo;

    .line 188
    .local v4, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v4, v0}, Ljavassist/bytecode/MethodInfo;->compact(Ljavassist/bytecode/ConstPool;)V

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    .end local v4    # "minfo":Ljavassist/bytecode/MethodInfo;
    :cond_0
    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/ArrayList;

    .line 192
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 193
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    .line 194
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/FieldInfo;

    .line 195
    .local v1, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v1, v0}, Ljavassist/bytecode/FieldInfo;->compact(Ljavassist/bytecode/ConstPool;)V

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 198
    .end local v1    # "finfo":Ljavassist/bytecode/FieldInfo;
    :cond_1
    iget-object v6, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    invoke-static {v6, v0}, Ljavassist/bytecode/AttributeInfo;->copyAll(Ljava/util/ArrayList;Ljavassist/bytecode/ConstPool;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    .line 199
    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    .line 200
    return-void
.end method

.method public getAccessFlags()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    return v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 739
    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    .line 740
    .local v2, "list":Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 741
    .local v3, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 742
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AttributeInfo;

    .line 743
    .local v0, "ai":Ljavassist/bytecode/AttributeInfo;
    invoke-virtual {v0}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 747
    .end local v0    # "ai":Ljavassist/bytecode/AttributeInfo;
    :goto_1
    return-object v0

    .line 741
    .restart local v0    # "ai":Ljavassist/bytecode/AttributeInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 747
    .end local v0    # "ai":Ljavassist/bytecode/AttributeInfo;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getConstPool()Ljavassist/bytecode/ConstPool;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInnerAccessFlags()I
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 325
    const-string v5, "InnerClasses"

    invoke-virtual {p0, v5}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/InnerClassesAttribute;

    .line 327
    .local v1, "ica":Ljavassist/bytecode/InnerClassesAttribute;
    if-nez v1, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v4

    .line 330
    :cond_1
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v3

    .line 331
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljavassist/bytecode/InnerClassesAttribute;->tableLength()I

    move-result v2

    .line 332
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 333
    invoke-virtual {v1, v0}, Ljavassist/bytecode/InnerClassesAttribute;->innerClass(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 334
    invoke-virtual {v1, v0}, Ljavassist/bytecode/InnerClassesAttribute;->accessFlags(I)I

    move-result v4

    goto :goto_0

    .line 332
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getInterfaces()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 516
    iget-object v4, p0, Ljavassist/bytecode/ClassFile;->cachedInterfaces:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 517
    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->cachedInterfaces:[Ljava/lang/String;

    .line 532
    :goto_0
    return-object v3

    .line 519
    :cond_0
    const/4 v3, 0x0

    .line 520
    .local v3, "rtn":[Ljava/lang/String;
    iget-object v4, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    if-nez v4, :cond_1

    .line 521
    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/String;

    .line 531
    :goto_1
    iput-object v3, p0, Ljavassist/bytecode/ClassFile;->cachedInterfaces:[Ljava/lang/String;

    goto :goto_0

    .line 523
    :cond_1
    iget-object v4, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    array-length v2, v4

    .line 524
    .local v2, "n":I
    new-array v1, v2, [Ljava/lang/String;

    .line 525
    .local v1, "list":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_2

    .line 526
    iget-object v4, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    iget-object v5, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 528
    :cond_2
    move-object v3, v1

    goto :goto_1
.end method

.method public getMajorVersion()I
    .locals 1

    .prologue
    .line 865
    iget v0, p0, Ljavassist/bytecode/ClassFile;->major:I

    return v0
.end method

.method public getMethod(Ljava/lang/String;)Ljavassist/bytecode/MethodInfo;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 629
    iget-object v1, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    .line 630
    .local v1, "list":Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 631
    .local v3, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 632
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/MethodInfo;

    .line 633
    .local v2, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v2}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 637
    .end local v2    # "minfo":Ljavassist/bytecode/MethodInfo;
    :goto_1
    return-object v2

    .line 631
    .restart local v2    # "minfo":Ljavassist/bytecode/MethodInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    .end local v2    # "minfo":Ljavassist/bytecode/MethodInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMethods()Ljava/util/List;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMinorVersion()I
    .locals 1

    .prologue
    .line 884
    iget v0, p0, Ljavassist/bytecode/ClassFile;->minor:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefClasses(Ljava/util/Map;)V
    .locals 7
    .param p1, "classnames"    # Ljava/util/Map;

    .prologue
    .line 489
    iget-object v6, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v6, p1}, Ljavassist/bytecode/ConstPool;->renameClass(Ljava/util/Map;)V

    .line 491
    iget-object v6, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    invoke-static {v6, p1}, Ljavassist/bytecode/AttributeInfo;->getRefClasses(Ljava/util/List;Ljava/util/Map;)V

    .line 492
    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    .line 493
    .local v3, "list":Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 494
    .local v5, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 495
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/MethodInfo;

    .line 496
    .local v4, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "desc":Ljava/lang/String;
    invoke-static {v0, p1}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 498
    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getAttributes()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, p1}, Ljavassist/bytecode/AttributeInfo;->getRefClasses(Ljava/util/List;Ljava/util/Map;)V

    .line 494
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 501
    .end local v0    # "desc":Ljava/lang/String;
    .end local v4    # "minfo":Ljavassist/bytecode/MethodInfo;
    :cond_0
    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/ArrayList;

    .line 502
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 503
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    .line 504
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/FieldInfo;

    .line 505
    .local v1, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v1}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 506
    .restart local v0    # "desc":Ljava/lang/String;
    invoke-static {v0, p1}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 507
    invoke-virtual {v1}, Ljavassist/bytecode/FieldInfo;->getAttributes()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, p1}, Ljavassist/bytecode/AttributeInfo;->getRefClasses(Ljava/util/List;Ljava/util/Map;)V

    .line 503
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 509
    .end local v0    # "desc":Ljava/lang/String;
    .end local v1    # "finfo":Ljavassist/bytecode/FieldInfo;
    :cond_1
    return-void
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 767
    const-string v1, "SourceFile"

    invoke-virtual {p0, v1}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/SourceFileAttribute;

    .line 769
    .local v0, "sf":Ljavassist/bytecode/SourceFileAttribute;
    if-nez v0, :cond_0

    .line 770
    const/4 v1, 0x0

    .line 772
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/SourceFileAttribute;->getFileName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getStaticInitializer()Ljavassist/bytecode/MethodInfo;
    .locals 1

    .prologue
    .line 645
    const-string v0, "<clinit>"

    invoke-virtual {p0, v0}, Ljavassist/bytecode/ClassFile;->getMethod(Ljava/lang/String;)Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSuperclass()Ljava/lang/String;
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->cachedSuperclass:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->cachedSuperclass:Ljava/lang/String;

    .line 361
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->cachedSuperclass:Ljava/lang/String;

    return-object v0
.end method

.method public getSuperclassId()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    return v0
.end method

.method public isAbstract()Z
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinal()Z
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInterface()Z
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prune()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 226
    invoke-direct {p0}, Ljavassist/bytecode/ClassFile;->compact0()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 227
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v7, "newAttributes":Ljava/util/ArrayList;
    const-string v10, "RuntimeInvisibleAnnotations"

    invoke-virtual {p0, v10}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v3

    .line 230
    .local v3, "invisibleAnnotations":Ljavassist/bytecode/AttributeInfo;
    if-eqz v3, :cond_0

    .line 231
    invoke-virtual {v3, v0, v11}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v3

    .line 232
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_0
    const-string v10, "RuntimeVisibleAnnotations"

    invoke-virtual {p0, v10}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v9

    .line 237
    .local v9, "visibleAnnotations":Ljavassist/bytecode/AttributeInfo;
    if-eqz v9, :cond_1

    .line 238
    invoke-virtual {v9, v0, v11}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v9

    .line 239
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_1
    const-string v10, "Signature"

    invoke-virtual {p0, v10}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v8

    .line 244
    .local v8, "signature":Ljavassist/bytecode/AttributeInfo;
    if-eqz v8, :cond_2

    .line 245
    invoke-virtual {v8, v0, v11}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v8

    .line 246
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_2
    iget-object v4, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    .line 250
    .local v4, "list":Ljava/util/ArrayList;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 251
    .local v6, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_3

    .line 252
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavassist/bytecode/MethodInfo;

    .line 253
    .local v5, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v5, v0}, Ljavassist/bytecode/MethodInfo;->prune(Ljavassist/bytecode/ConstPool;)V

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    .end local v5    # "minfo":Ljavassist/bytecode/MethodInfo;
    :cond_3
    iget-object v4, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/ArrayList;

    .line 257
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 258
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_4

    .line 259
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/FieldInfo;

    .line 260
    .local v1, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v1, v0}, Ljavassist/bytecode/FieldInfo;->prune(Ljavassist/bytecode/ConstPool;)V

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 263
    .end local v1    # "finfo":Ljavassist/bytecode/FieldInfo;
    :cond_4
    iput-object v7, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    .line 264
    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    .line 265
    return-void
.end method

.method public final renameClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;

    .prologue
    .line 417
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 445
    :cond_0
    return-void

    .line 420
    :cond_1
    iget-object v6, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 421
    iput-object p2, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    .line 423
    :cond_2
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 424
    invoke-static {p2}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 425
    iget-object v6, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v6, p1, p2}, Ljavassist/bytecode/ConstPool;->renameClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v6, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    invoke-static {v6, p1, p2}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    .line 429
    .local v3, "list":Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 430
    .local v5, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_3

    .line 431
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/MethodInfo;

    .line 432
    .local v4, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "desc":Ljava/lang/String;
    invoke-static {v0, p1, p2}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljavassist/bytecode/MethodInfo;->setDescriptor(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getAttributes()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, p1, p2}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    .end local v0    # "desc":Ljava/lang/String;
    .end local v4    # "minfo":Ljavassist/bytecode/MethodInfo;
    :cond_3
    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/ArrayList;

    .line 438
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 439
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_0

    .line 440
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/FieldInfo;

    .line 441
    .local v1, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v1}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 442
    .restart local v0    # "desc":Ljava/lang/String;
    invoke-static {v0, p1, p2}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljavassist/bytecode/FieldInfo;->setDescriptor(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v1}, Ljavassist/bytecode/FieldInfo;->getAttributes()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, p1, p2}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final renameClass(Ljava/util/Map;)V
    .locals 8
    .param p1, "classnames"    # Ljava/util/Map;

    .prologue
    .line 457
    iget-object v7, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    invoke-static {v7}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 459
    .local v3, "jvmNewThisName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 460
    invoke-static {v3}, Ljavassist/bytecode/Descriptor;->toJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    .line 462
    :cond_0
    iget-object v7, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v7, p1}, Ljavassist/bytecode/ConstPool;->renameClass(Ljava/util/Map;)V

    .line 464
    iget-object v7, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    invoke-static {v7, p1}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/List;Ljava/util/Map;)V

    .line 465
    iget-object v4, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    .line 466
    .local v4, "list":Ljava/util/ArrayList;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 467
    .local v6, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_1

    .line 468
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavassist/bytecode/MethodInfo;

    .line 469
    .local v5, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v5}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "desc":Ljava/lang/String;
    invoke-static {v0, p1}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljavassist/bytecode/MethodInfo;->setDescriptor(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v5}, Ljavassist/bytecode/MethodInfo;->getAttributes()Ljava/util/List;

    move-result-object v7

    invoke-static {v7, p1}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/List;Ljava/util/Map;)V

    .line 467
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 474
    .end local v0    # "desc":Ljava/lang/String;
    .end local v5    # "minfo":Ljavassist/bytecode/MethodInfo;
    :cond_1
    iget-object v4, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/ArrayList;

    .line 475
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 476
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_2

    .line 477
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/FieldInfo;

    .line 478
    .local v1, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v1}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 479
    .restart local v0    # "desc":Ljava/lang/String;
    invoke-static {v0, p1}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljavassist/bytecode/FieldInfo;->setDescriptor(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v1}, Ljavassist/bytecode/FieldInfo;->getAttributes()Ljava/util/List;

    move-result-object v7

    invoke-static {v7, p1}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/List;Ljava/util/Map;)V

    .line 476
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 482
    .end local v0    # "desc":Ljava/lang/String;
    .end local v1    # "finfo":Ljavassist/bytecode/FieldInfo;
    :cond_2
    return-void
.end method

.method public setAccessFlags(I)V
    .locals 1
    .param p1, "acc"    # I

    .prologue
    .line 310
    and-int/lit16 v0, p1, 0x200

    if-nez v0, :cond_0

    .line 311
    or-int/lit8 p1, p1, 0x20

    .line 313
    :cond_0
    iput p1, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    .line 314
    return-void
.end method

.method public setInterfaces([Ljava/lang/String;)V
    .locals 5
    .param p1, "nameList"    # [Ljava/lang/String;

    .prologue
    .line 542
    const/4 v2, 0x0

    iput-object v2, p0, Ljavassist/bytecode/ClassFile;->cachedInterfaces:[Ljava/lang/String;

    .line 543
    if-eqz p1, :cond_0

    .line 544
    array-length v1, p1

    .line 545
    .local v1, "n":I
    new-array v2, v1, [I

    iput-object v2, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    .line 546
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 547
    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method public setMajorVersion(I)V
    .locals 0
    .param p1, "major"    # I

    .prologue
    .line 875
    iput p1, p0, Ljavassist/bytecode/ClassFile;->major:I

    .line 876
    return-void
.end method

.method public setMinorVersion(I)V
    .locals 0
    .param p1, "minor"    # I

    .prologue
    .line 894
    iput p1, p0, Ljavassist/bytecode/ClassFile;->minor:I

    .line 895
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 351
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/ClassFile;->renameClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public setSuperclass(Ljava/lang/String;)V
    .locals 6
    .param p1, "superclass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 381
    if-nez p1, :cond_0

    .line 382
    const-string p1, "java.lang.Object"

    .line 385
    :cond_0
    :try_start_0
    iget-object v5, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v5, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    .line 386
    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    .line 387
    .local v2, "list":Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 388
    .local v4, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 389
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/MethodInfo;

    .line 390
    .local v3, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v3, p1}, Ljavassist/bytecode/MethodInfo;->setSuperclass(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;
    .end local v3    # "minfo":Ljavassist/bytecode/MethodInfo;
    .end local v4    # "n":I
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v5, Ljavassist/CannotCompileException;

    invoke-direct {v5, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 396
    .end local v0    # "e":Ljavassist/bytecode/BadBytecode;
    .restart local v1    # "i":I
    .restart local v2    # "list":Ljava/util/ArrayList;
    .restart local v4    # "n":I
    :cond_1
    iput-object p1, p0, Ljavassist/bytecode/ClassFile;->cachedSuperclass:Ljava/lang/String;

    .line 397
    return-void
.end method

.method public setVersionToJava5()V
    .locals 1

    .prologue
    .line 905
    const/16 v0, 0x31

    iput v0, p0, Ljavassist/bytecode/ClassFile;->major:I

    .line 906
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/bytecode/ClassFile;->minor:I

    .line 907
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 822
    const v5, -0x35014542    # -8346975.0f

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 823
    iget v5, p0, Ljavassist/bytecode/ClassFile;->minor:I

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 824
    iget v5, p0, Ljavassist/bytecode/ClassFile;->major:I

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 825
    iget-object v5, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v5, p1}, Ljavassist/bytecode/ConstPool;->write(Ljava/io/DataOutputStream;)V

    .line 826
    iget v5, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 827
    iget v5, p0, Ljavassist/bytecode/ClassFile;->thisClass:I

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 828
    iget v5, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 830
    iget-object v5, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    if-nez v5, :cond_0

    .line 831
    const/4 v4, 0x0

    .line 835
    .local v4, "n":I
    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 836
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 837
    iget-object v5, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    aget v5, v5, v1

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 836
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 833
    .end local v1    # "i":I
    .end local v4    # "n":I
    :cond_0
    iget-object v5, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    array-length v4, v5

    .restart local v4    # "n":I
    goto :goto_0

    .line 839
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/ArrayList;

    .line 840
    .local v2, "list":Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 841
    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 842
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_2

    .line 843
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/FieldInfo;

    .line 844
    .local v0, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v0, p1}, Ljavassist/bytecode/FieldInfo;->write(Ljava/io/DataOutputStream;)V

    .line 842
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 847
    .end local v0    # "finfo":Ljavassist/bytecode/FieldInfo;
    :cond_2
    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/ArrayList;

    .line 848
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 849
    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 850
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_3

    .line 851
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/MethodInfo;

    .line 852
    .local v3, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v3, p1}, Ljavassist/bytecode/MethodInfo;->write(Ljava/io/DataOutputStream;)V

    .line 850
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 855
    .end local v3    # "minfo":Ljavassist/bytecode/MethodInfo;
    :cond_3
    iget-object v5, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 856
    iget-object v5, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/ArrayList;

    invoke-static {v5, p1}, Ljavassist/bytecode/AttributeInfo;->writeAll(Ljava/util/ArrayList;Ljava/io/DataOutputStream;)V

    .line 857
    return-void
.end method
