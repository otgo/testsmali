.class public Ljavassist/bytecode/SyntheticAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "SyntheticAttribute.java"


# static fields
.field public static final tag:Ljava/lang/String; = "Synthetic"


# direct methods
.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 2
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .prologue
    .line 44
    const-string v0, "Synthetic"

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {p0, p1, v0, v1}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    .line 45
    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 0
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "n"    # I
    .param p3, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    .line 36
    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 1
    .param p1, "newCp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "classnames"    # Ljava/util/Map;

    .prologue
    .line 54
    new-instance v0, Ljavassist/bytecode/SyntheticAttribute;

    invoke-direct {v0, p1}, Ljavassist/bytecode/SyntheticAttribute;-><init>(Ljavassist/bytecode/ConstPool;)V

    return-object v0
.end method
