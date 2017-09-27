.class public Ljavassist/runtime/Desc;
.super Ljava/lang/Object;
.source "Desc.java"


# static fields
.field public static useContextClassLoader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Ljavassist/runtime/Desc;->useContextClassLoader:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getClassObject(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 40
    sget-boolean v0, Ljavassist/runtime/Desc;->useContextClassLoader:Z

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method private static getClassType(Ljava/lang/String;III)[Ljava/lang/Class;
    .locals 7
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "descLen"    # I
    .param p2, "start"    # I
    .param p3, "num"    # I

    .prologue
    const/16 v6, 0x4c

    .line 134
    move v2, p2

    .line 135
    .local v2, "end":I
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_0

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_1

    .line 139
    const/16 v4, 0x3b

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 140
    if-gez v2, :cond_1

    .line 141
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    const-string v5, "bad descriptor"

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 145
    :cond_1
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_2

    .line 146
    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "cname":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, p3, 0x1

    invoke-static {p0, p1, v4, v5}, Ljavassist/runtime/Desc;->getType(Ljava/lang/String;III)[Ljava/lang/Class;

    move-result-object v3

    .line 152
    .local v3, "result":[Ljava/lang/Class;
    const/16 v4, 0x2f

    const/16 v5, 0x2e

    :try_start_0
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavassist/runtime/Desc;->getClassObject(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, p3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    return-object v3

    .line 148
    .end local v0    # "cname":Ljava/lang/String;
    .end local v3    # "result":[Ljava/lang/Class;
    :cond_2
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, p2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "cname":Ljava/lang/String;
    goto :goto_1

    .line 154
    .restart local v3    # "result":[Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getClazz(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    :try_start_0
    invoke-static {p0}, Ljavassist/runtime/Desc;->getClassObject(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$class: internal error, could not find class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' (Desc.useContextClassLoader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Ljavassist/runtime/Desc;->useContextClassLoader:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getParams(Ljava/lang/String;)[Ljava/lang/Class;
    .locals 3
    .param p0, "desc"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "$sig: internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v2}, Ljavassist/runtime/Desc;->getType(Ljava/lang/String;III)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p0, "desc"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v1, v3, v3}, Ljavassist/runtime/Desc;->getType(Ljava/lang/String;III)[Ljava/lang/Class;

    move-result-object v0

    .line 79
    .local v0, "result":[Ljava/lang/Class;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 80
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "$type: internal error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_1
    aget-object v1, v0, v3

    return-object v1
.end method

.method private static getType(Ljava/lang/String;III)[Ljava/lang/Class;
    .locals 5
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "descLen"    # I
    .param p2, "start"    # I
    .param p3, "num"    # I

    .prologue
    .line 88
    if-lt p2, p1, :cond_0

    .line 89
    new-array v2, p3, [Ljava/lang/Class;

    .line 129
    :goto_0
    return-object v2

    .line 91
    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 92
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 124
    :pswitch_0
    new-array v2, p3, [Ljava/lang/Class;

    goto :goto_0

    .line 94
    :pswitch_1
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 127
    .local v1, "clazz":Ljava/lang/Class;
    :goto_1
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x1

    invoke-static {p0, p1, v3, v4}, Ljavassist/runtime/Desc;->getType(Ljava/lang/String;III)[Ljava/lang/Class;

    move-result-object v2

    .line 128
    .local v2, "result":[Ljava/lang/Class;
    aput-object v1, v2, p3

    goto :goto_0

    .line 97
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v2    # "result":[Ljava/lang/Class;
    :pswitch_2
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 98
    .restart local v1    # "clazz":Ljava/lang/Class;
    goto :goto_1

    .line 100
    .end local v1    # "clazz":Ljava/lang/Class;
    :pswitch_3
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 101
    .restart local v1    # "clazz":Ljava/lang/Class;
    goto :goto_1

    .line 103
    .end local v1    # "clazz":Ljava/lang/Class;
    :pswitch_4
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 104
    .restart local v1    # "clazz":Ljava/lang/Class;
    goto :goto_1

    .line 106
    .end local v1    # "clazz":Ljava/lang/Class;
    :pswitch_5
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 107
    .restart local v1    # "clazz":Ljava/lang/Class;
    goto :goto_1

    .line 109
    .end local v1    # "clazz":Ljava/lang/Class;
    :pswitch_6
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 110
    .restart local v1    # "clazz":Ljava/lang/Class;
    goto :goto_1

    .line 112
    .end local v1    # "clazz":Ljava/lang/Class;
    :pswitch_7
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 113
    .restart local v1    # "clazz":Ljava/lang/Class;
    goto :goto_1

    .line 115
    .end local v1    # "clazz":Ljava/lang/Class;
    :pswitch_8
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 116
    .restart local v1    # "clazz":Ljava/lang/Class;
    goto :goto_1

    .line 118
    .end local v1    # "clazz":Ljava/lang/Class;
    :pswitch_9
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 119
    .restart local v1    # "clazz":Ljava/lang/Class;
    goto :goto_1

    .line 122
    .end local v1    # "clazz":Ljava/lang/Class;
    :pswitch_a
    invoke-static {p0, p1, p2, p3}, Ljavassist/runtime/Desc;->getClassType(Ljava/lang/String;III)[Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_a
    .end packed-switch
.end method
