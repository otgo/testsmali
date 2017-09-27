.class public Ljavassist/util/proxy/RuntimeSupport;
.super Ljava/lang/Object;
.source "RuntimeSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/util/proxy/RuntimeSupport$DefaultMethodHandler;
    }
.end annotation


# static fields
.field public static default_interceptor:Ljavassist/util/proxy/MethodHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljavassist/util/proxy/RuntimeSupport$DefaultMethodHandler;

    invoke-direct {v0}, Ljavassist/util/proxy/RuntimeSupport$DefaultMethodHandler;-><init>()V

    sput-object v0, Ljavassist/util/proxy/RuntimeSupport;->default_interceptor:Ljavassist/util/proxy/MethodHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private static error(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 138
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static find2Methods(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/reflect/Method;)V
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "superMethod"    # Ljava/lang/String;
    .param p2, "thisMethod"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "methods"    # [Ljava/lang/reflect/Method;

    .prologue
    .line 53
    add-int/lit8 v1, p3, 0x1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    aput-object v0, p5, v1

    .line 55
    invoke-static {p0, p1, p4}, Ljavassist/util/proxy/RuntimeSupport;->findSuperClassMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    aput-object v0, p5, p3

    .line 56
    return-void

    .line 53
    :cond_0
    invoke-static {p0, p2, p4}, Ljavassist/util/proxy/RuntimeSupport;->findMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0
.end method

.method public static find2Methods(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/reflect/Method;)V
    .locals 2
    .param p0, "self"    # Ljava/lang/Object;
    .param p1, "superMethod"    # Ljava/lang/String;
    .param p2, "thisMethod"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "methods"    # [Ljava/lang/reflect/Method;

    .prologue
    .line 72
    add-int/lit8 v1, p3, 0x1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    aput-object v0, p5, v1

    .line 74
    invoke-static {p0, p1, p4}, Ljavassist/util/proxy/RuntimeSupport;->findSuperMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    aput-object v0, p5, p3

    .line 75
    return-void

    .line 72
    :cond_0
    invoke-static {p0, p2, p4}, Ljavassist/util/proxy/RuntimeSupport;->findMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0
.end method

.method public static findMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {p0, p1, p2}, Ljavassist/util/proxy/RuntimeSupport;->findMethod2(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 102
    .local v0, "m":Ljava/lang/reflect/Method;
    if-nez v0, :cond_0

    .line 103
    invoke-static {p0, p1, p2}, Ljavassist/util/proxy/RuntimeSupport;->error(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    return-object v0
.end method

.method public static findMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "self"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1, p2}, Ljavassist/util/proxy/RuntimeSupport;->findMethod2(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 88
    .local v0, "m":Ljava/lang/reflect/Method;
    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1, p2}, Ljavassist/util/proxy/RuntimeSupport;->error(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    return-object v0
.end method

.method private static findMethod2(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-static {p0}, Ljavassist/util/proxy/SecurityActions;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 171
    .local v1, "methods":[Ljava/lang/reflect/Method;
    array-length v2, v1

    .line 172
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 173
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Ljavassist/util/proxy/RuntimeSupport;->makeDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    aget-object v3, v1, v0

    .line 177
    :goto_1
    return-object v3

    .line 172
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static findSuperClassMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1, p2}, Ljavassist/util/proxy/RuntimeSupport;->findSuperMethod2(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 128
    .local v0, "m":Ljava/lang/reflect/Method;
    if-nez v0, :cond_0

    .line 129
    invoke-static {p0, p1, p2}, Ljavassist/util/proxy/RuntimeSupport;->searchInterfaces(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 131
    :cond_0
    if-nez v0, :cond_1

    .line 132
    invoke-static {p0, p1, p2}, Ljavassist/util/proxy/RuntimeSupport;->error(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_1
    return-object v0
.end method

.method public static findSuperMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "self"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 117
    .local v0, "clazz":Ljava/lang/Class;
    invoke-static {v0, p1, p2}, Ljavassist/util/proxy/RuntimeSupport;->findSuperClassMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    return-object v1
.end method

.method private static findSuperMethod2(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-static {p0, p1, p2}, Ljavassist/util/proxy/RuntimeSupport;->findMethod2(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 144
    .local v0, "m":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 154
    :goto_0
    return-object v2

    .line 147
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 148
    .local v1, "superClass":Ljava/lang/Class;
    if-eqz v1, :cond_1

    .line 149
    invoke-static {v1, p1, p2}, Ljavassist/util/proxy/RuntimeSupport;->findSuperMethod2(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_1

    move-object v2, v0

    .line 151
    goto :goto_0

    .line 154
    :cond_1
    invoke-static {p0, p1, p2}, Ljavassist/util/proxy/RuntimeSupport;->searchInterfaces(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    goto :goto_0
.end method

.method private static makeDesc(Ljava/lang/StringBuffer;Ljava/lang/Class;)V
    .locals 4
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 220
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Ljavassist/util/proxy/RuntimeSupport;->makeDesc(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    .line 249
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 225
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 226
    const/16 v0, 0x56

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 227
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 228
    const/16 v0, 0x49

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 229
    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 230
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 231
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    .line 232
    const/16 v0, 0x4a

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 233
    :cond_4
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    .line 234
    const/16 v0, 0x44

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 235
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    .line 236
    const/16 v0, 0x46

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 237
    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    .line 238
    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 239
    :cond_7
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_8

    .line 240
    const/16 v0, 0x53

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 241
    :cond_8
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_9

    .line 242
    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 244
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_a
    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method public static makeDescriptor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p0, "params"    # Ljava/lang/String;
    .param p1, "retType"    # Ljava/lang/Class;

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-static {v0, p1}, Ljavassist/util/proxy/RuntimeSupport;->makeDesc(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static makeDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 2
    .param p0, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 184
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 185
    .local v0, "params":[Ljava/lang/Class;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljavassist/util/proxy/RuntimeSupport;->makeDescriptor([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static makeDescriptor([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .param p0, "params"    # [Ljava/lang/Class;
    .param p1, "retType"    # Ljava/lang/Class;

    .prologue
    .line 195
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 198
    aget-object v2, p0, v0

    invoke-static {v1, v2}, Ljavassist/util/proxy/RuntimeSupport;->makeDesc(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 201
    if-eqz p1, :cond_1

    .line 202
    invoke-static {v1, p1}, Ljavassist/util/proxy/RuntimeSupport;->makeDesc(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    .line 204
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static makeSerializedProxy(Ljava/lang/Object;)Ljavassist/util/proxy/SerializedProxy;
    .locals 4
    .param p0, "proxy"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 263
    .local v0, "clazz":Ljava/lang/Class;
    const/4 v1, 0x0

    .line 264
    .local v1, "methodHandler":Ljavassist/util/proxy/MethodHandler;
    instance-of v2, p0, Ljavassist/util/proxy/ProxyObject;

    if-eqz v2, :cond_1

    .line 265
    check-cast p0, Ljavassist/util/proxy/ProxyObject;

    .end local p0    # "proxy":Ljava/lang/Object;
    invoke-interface {p0}, Ljavassist/util/proxy/ProxyObject;->getHandler()Ljavassist/util/proxy/MethodHandler;

    move-result-object v1

    .line 269
    :cond_0
    :goto_0
    new-instance v2, Ljavassist/util/proxy/SerializedProxy;

    invoke-static {v0}, Ljavassist/util/proxy/ProxyFactory;->getFilterSignature(Ljava/lang/Class;)[B

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Ljavassist/util/proxy/SerializedProxy;-><init>(Ljava/lang/Class;[BLjavassist/util/proxy/MethodHandler;)V

    return-object v2

    .line 266
    .restart local p0    # "proxy":Ljava/lang/Object;
    :cond_1
    instance-of v2, p0, Ljavassist/util/proxy/Proxy;

    if-eqz v2, :cond_0

    .line 267
    check-cast p0, Ljavassist/util/proxy/Proxy;

    .end local p0    # "proxy":Ljava/lang/Object;
    invoke-static {p0}, Ljavassist/util/proxy/ProxyFactory;->getHandler(Ljavassist/util/proxy/Proxy;)Ljavassist/util/proxy/MethodHandler;

    move-result-object v1

    goto :goto_0
.end method

.method private static searchInterfaces(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v2, 0x0

    .line 159
    .local v2, "m":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 160
    .local v1, "interfaces":[Ljava/lang/Class;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 161
    aget-object v4, v1, v0

    invoke-static {v4, p1, p2}, Ljavassist/util/proxy/RuntimeSupport;->findSuperMethod2(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 162
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 166
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .local v3, "m":Ljava/lang/reflect/Method;
    :goto_1
    return-object v3

    .line 160
    .end local v3    # "m":Ljava/lang/reflect/Method;
    .restart local v2    # "m":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 166
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .restart local v3    # "m":Ljava/lang/reflect/Method;
    goto :goto_1
.end method
