.class public Ljavassist/bytecode/analysis/MultiType;
.super Ljavassist/bytecode/analysis/Type;
.source "MultiType.java"


# instance fields
.field private changed:Z

.field private interfaces:Ljava/util/Map;

.field private mergeSource:Ljavassist/bytecode/analysis/MultiType;

.field private potentialClass:Ljavassist/bytecode/analysis/Type;

.field private resolved:Ljavassist/bytecode/analysis/Type;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1, "interfaces"    # Ljava/util/Map;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/analysis/MultiType;-><init>(Ljava/util/Map;Ljavassist/bytecode/analysis/Type;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljavassist/bytecode/analysis/Type;)V
    .locals 1
    .param p1, "interfaces"    # Ljava/util/Map;
    .param p2, "potentialClass"    # Ljavassist/bytecode/analysis/Type;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavassist/bytecode/analysis/MultiType;->changed:Z

    .line 62
    iput-object p1, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    .line 63
    iput-object p2, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    .line 64
    return-void
.end method

.method private getAllMultiInterfaces(Ljavassist/bytecode/analysis/MultiType;)Ljava/util/Map;
    .locals 4
    .param p1, "type"    # Ljavassist/bytecode/analysis/MultiType;

    .prologue
    .line 176
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 178
    .local v2, "map":Ljava/util/Map;
    iget-object v3, p1, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 179
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/CtClass;

    .line 181
    .local v0, "intf":Ljavassist/CtClass;
    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {p0, v0, v2}, Ljavassist/bytecode/analysis/MultiType;->getAllInterfaces(Ljavassist/CtClass;Ljava/util/Map;)Ljava/util/Map;

    goto :goto_0

    .line 185
    .end local v0    # "intf":Ljavassist/CtClass;
    :cond_0
    return-object v2
.end method

.method private inMergeSource(Ljavassist/bytecode/analysis/MultiType;)Z
    .locals 1
    .param p1, "source"    # Ljavassist/bytecode/analysis/MultiType;

    .prologue
    .line 204
    :goto_0
    if-eqz p1, :cond_1

    .line 205
    if-ne p1, p0, :cond_0

    .line 206
    const/4 v0, 0x1

    .line 211
    :goto_1
    return v0

    .line 208
    :cond_0
    iget-object p1, p1, Ljavassist/bytecode/analysis/MultiType;->mergeSource:Ljavassist/bytecode/analysis/MultiType;

    goto :goto_0

    .line 211
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private mergeMultiAndSingle(Ljavassist/bytecode/analysis/MultiType;Ljavassist/bytecode/analysis/Type;)Ljava/util/Map;
    .locals 4
    .param p1, "multi"    # Ljavassist/bytecode/analysis/MultiType;
    .param p2, "single"    # Ljavassist/bytecode/analysis/Type;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/MultiType;->getAllMultiInterfaces(Ljavassist/bytecode/analysis/MultiType;)Ljava/util/Map;

    move-result-object v0

    .line 198
    .local v0, "map1":Ljava/util/Map;
    invoke-virtual {p2}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Ljavassist/bytecode/analysis/MultiType;->getAllInterfaces(Ljavassist/CtClass;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 200
    .local v1, "map2":Ljava/util/Map;
    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/analysis/MultiType;->findCommonInterfaces(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method private mergeMultiInterfaces(Ljavassist/bytecode/analysis/MultiType;Ljavassist/bytecode/analysis/MultiType;)Ljava/util/Map;
    .locals 3
    .param p1, "type1"    # Ljavassist/bytecode/analysis/MultiType;
    .param p2, "type2"    # Ljavassist/bytecode/analysis/MultiType;

    .prologue
    .line 190
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/MultiType;->getAllMultiInterfaces(Ljavassist/bytecode/analysis/MultiType;)Ljava/util/Map;

    move-result-object v0

    .line 191
    .local v0, "map1":Ljava/util/Map;
    invoke-direct {p0, p2}, Ljavassist/bytecode/analysis/MultiType;->getAllMultiInterfaces(Ljavassist/bytecode/analysis/MultiType;)Ljava/util/Map;

    move-result-object v1

    .line 193
    .local v1, "map2":Ljava/util/Map;
    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/analysis/MultiType;->findCommonInterfaces(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method private propogateResolved()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->mergeSource:Ljavassist/bytecode/analysis/MultiType;

    .line 160
    .local v0, "source":Ljavassist/bytecode/analysis/MultiType;
    :goto_0
    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    iput-object v1, v0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    .line 162
    iget-object v0, v0, Ljavassist/bytecode/analysis/MultiType;->mergeSource:Ljavassist/bytecode/analysis/MultiType;

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method private propogateState()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->mergeSource:Ljavassist/bytecode/analysis/MultiType;

    .line 151
    .local v0, "source":Ljavassist/bytecode/analysis/MultiType;
    :goto_0
    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    iput-object v1, v0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    .line 153
    iget-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    iput-object v1, v0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    .line 154
    iget-object v0, v0, Ljavassist/bytecode/analysis/MultiType;->mergeSource:Ljavassist/bytecode/analysis/MultiType;

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 286
    instance-of v2, p1, Ljavassist/bytecode/analysis/MultiType;

    if-nez v2, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 289
    check-cast v0, Ljavassist/bytecode/analysis/MultiType;

    .line 290
    .local v0, "multi":Ljavassist/bytecode/analysis/MultiType;
    iget-object v2, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    if-eqz v2, :cond_2

    .line 291
    iget-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    iget-object v2, v0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v1, v2}, Ljavassist/bytecode/analysis/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 292
    :cond_2
    iget-object v2, v0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    if-nez v2, :cond_0

    .line 295
    iget-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, v0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getComponent()Ljavassist/bytecode/analysis/Type;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCtClass()Ljavassist/CtClass;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v0

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public isArray()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public isAssignableFrom(Ljavassist/bytecode/analysis/Type;)Z
    .locals 2
    .param p1, "type"    # Ljavassist/bytecode/analysis/Type;

    .prologue
    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAssignableTo(Ljavassist/bytecode/analysis/Type;)Z
    .locals 3
    .param p1, "type"    # Ljavassist/bytecode/analysis/Type;

    .prologue
    const/4 v2, 0x1

    .line 112
    iget-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p1, v1}, Ljavassist/bytecode/analysis/Type;->isAssignableFrom(Ljavassist/bytecode/analysis/Type;)Z

    move-result v1

    .line 146
    :goto_0
    return v1

    .line 115
    :cond_0
    sget-object v1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v1, p1}, Ljavassist/bytecode/analysis/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 116
    goto :goto_0

    .line 118
    :cond_1
    iget-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p1, v1}, Ljavassist/bytecode/analysis/Type;->isAssignableFrom(Ljavassist/bytecode/analysis/Type;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 119
    const/4 v1, 0x0

    iput-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    .line 121
    :cond_2
    invoke-direct {p0, p0, p1}, Ljavassist/bytecode/analysis/MultiType;->mergeMultiAndSingle(Ljavassist/bytecode/analysis/MultiType;Ljavassist/bytecode/analysis/Type;)Ljava/util/Map;

    move-result-object v0

    .line 123
    .local v0, "map":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    if-nez v1, :cond_3

    .line 125
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/CtClass;

    invoke-static {v1}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    iput-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    .line 126
    invoke-direct {p0}, Ljavassist/bytecode/analysis/MultiType;->propogateResolved()V

    move v1, v2

    .line 128
    goto :goto_0

    .line 132
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lt v1, v2, :cond_4

    .line 133
    iput-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    .line 134
    invoke-direct {p0}, Ljavassist/bytecode/analysis/MultiType;->propogateState()V

    move v1, v2

    .line 136
    goto :goto_0

    .line 139
    :cond_4
    iget-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    if-eqz v1, :cond_5

    .line 140
    iget-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    iput-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    .line 141
    invoke-direct {p0}, Ljavassist/bytecode/analysis/MultiType;->propogateResolved()V

    move v1, v2

    .line 143
    goto :goto_0

    .line 146
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isReference()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public merge(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;
    .locals 7
    .param p1, "type"    # Ljavassist/bytecode/analysis/Type;

    .prologue
    const/4 v6, 0x1

    .line 215
    if-ne p0, p1, :cond_1

    .line 282
    .end local p0    # "this":Ljavassist/bytecode/analysis/MultiType;
    :cond_0
    :goto_0
    return-object p0

    .line 218
    .restart local p0    # "this":Ljavassist/bytecode/analysis/MultiType;
    :cond_1
    sget-object v4, Ljavassist/bytecode/analysis/MultiType;->UNINIT:Ljavassist/bytecode/analysis/Type;

    if-eq p1, v4, :cond_0

    .line 221
    sget-object v4, Ljavassist/bytecode/analysis/MultiType;->BOGUS:Ljavassist/bytecode/analysis/Type;

    if-ne p1, v4, :cond_2

    .line 222
    sget-object p0, Ljavassist/bytecode/analysis/MultiType;->BOGUS:Ljavassist/bytecode/analysis/Type;

    goto :goto_0

    .line 224
    :cond_2
    if-eqz p1, :cond_0

    .line 227
    iget-object v4, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    if-eqz v4, :cond_3

    .line 228
    iget-object v4, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v4, p1}, Ljavassist/bytecode/analysis/Type;->merge(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object p0

    goto :goto_0

    .line 230
    :cond_3
    iget-object v4, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    if-eqz v4, :cond_6

    .line 231
    iget-object v4, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v4, p1}, Ljavassist/bytecode/analysis/Type;->merge(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    .line 232
    .local v1, "mergePotential":Ljavassist/bytecode/analysis/Type;
    iget-object v4, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v1, v4}, Ljavassist/bytecode/analysis/Type;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Ljavassist/bytecode/analysis/Type;->popChanged()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 233
    :cond_4
    sget-object v4, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v4, v1}, Ljavassist/bytecode/analysis/Type;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v1, 0x0

    .end local v1    # "mergePotential":Ljavassist/bytecode/analysis/Type;
    :cond_5
    iput-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    .line 234
    iput-boolean v6, p0, Ljavassist/bytecode/analysis/MultiType;->changed:Z

    .line 240
    :cond_6
    instance-of v4, p1, Ljavassist/bytecode/analysis/MultiType;

    if-eqz v4, :cond_b

    move-object v3, p1

    .line 241
    check-cast v3, Ljavassist/bytecode/analysis/MultiType;

    .line 243
    .local v3, "multi":Ljavassist/bytecode/analysis/MultiType;
    iget-object v4, v3, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    if-eqz v4, :cond_a

    .line 244
    iget-object v4, v3, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p0, v4}, Ljavassist/bytecode/analysis/MultiType;->mergeMultiAndSingle(Ljavassist/bytecode/analysis/MultiType;Ljavassist/bytecode/analysis/Type;)Ljava/util/Map;

    move-result-object v2

    .line 255
    .end local v3    # "multi":Ljavassist/bytecode/analysis/MultiType;
    .local v2, "merged":Ljava/util/Map;
    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-gt v4, v6, :cond_8

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-ne v4, v6, :cond_e

    iget-object v4, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    if-eqz v4, :cond_e

    .line 257
    :cond_8
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    iget-object v5, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-eq v4, v5, :cond_c

    .line 258
    iput-boolean v6, p0, Ljavassist/bytecode/analysis/MultiType;->changed:Z

    .line 266
    :cond_9
    iput-object v2, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    .line 267
    invoke-direct {p0}, Ljavassist/bytecode/analysis/MultiType;->propogateState()V

    goto :goto_0

    .line 246
    .end local v2    # "merged":Ljava/util/Map;
    .restart local v3    # "multi":Ljavassist/bytecode/analysis/MultiType;
    :cond_a
    invoke-direct {p0, v3, p0}, Ljavassist/bytecode/analysis/MultiType;->mergeMultiInterfaces(Ljavassist/bytecode/analysis/MultiType;Ljavassist/bytecode/analysis/MultiType;)Ljava/util/Map;

    move-result-object v2

    .line 247
    .restart local v2    # "merged":Ljava/util/Map;
    invoke-direct {p0, v3}, Ljavassist/bytecode/analysis/MultiType;->inMergeSource(Ljavassist/bytecode/analysis/MultiType;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 248
    iput-object v3, p0, Ljavassist/bytecode/analysis/MultiType;->mergeSource:Ljavassist/bytecode/analysis/MultiType;

    goto :goto_1

    .line 251
    .end local v2    # "merged":Ljava/util/Map;
    .end local v3    # "multi":Ljavassist/bytecode/analysis/MultiType;
    :cond_b
    invoke-direct {p0, p0, p1}, Ljavassist/bytecode/analysis/MultiType;->mergeMultiAndSingle(Ljavassist/bytecode/analysis/MultiType;Ljavassist/bytecode/analysis/Type;)Ljava/util/Map;

    move-result-object v2

    .restart local v2    # "merged":Ljava/util/Map;
    goto :goto_1

    .line 259
    :cond_c
    iget-boolean v4, p0, Ljavassist/bytecode/analysis/MultiType;->changed:Z

    if-nez v4, :cond_9

    .line 260
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 261
    .local v0, "iter":Ljava/util/Iterator;
    :cond_d
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 262
    iget-object v4, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 263
    iput-boolean v6, p0, Ljavassist/bytecode/analysis/MultiType;->changed:Z

    goto :goto_2

    .line 272
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-ne v4, v6, :cond_f

    .line 273
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/CtClass;

    invoke-static {v4}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object v4

    iput-object v4, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    .line 280
    :goto_3
    invoke-direct {p0}, Ljavassist/bytecode/analysis/MultiType;->propogateResolved()V

    .line 282
    iget-object p0, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    goto/16 :goto_0

    .line 274
    :cond_f
    iget-object v4, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    if-eqz v4, :cond_10

    .line 275
    iget-object v4, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    iput-object v4, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    goto :goto_3

    .line 277
    :cond_10
    sget-object v4, Ljavassist/bytecode/analysis/MultiType;->OBJECT:Ljavassist/bytecode/analysis/Type;

    iput-object v4, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    goto :goto_3
.end method

.method popChanged()Z
    .locals 2

    .prologue
    .line 102
    iget-boolean v0, p0, Ljavassist/bytecode/analysis/MultiType;->changed:Z

    .line 103
    .local v0, "changed":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavassist/bytecode/analysis/MultiType;->changed:Z

    .line 104
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 299
    iget-object v2, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v2}, Ljavassist/bytecode/analysis/Type;->toString()Ljava/lang/String;

    move-result-object v2

    .line 312
    :goto_0
    return-object v2

    .line 302
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "{"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v2, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 304
    .local v1, "iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 306
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 308
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 309
    iget-object v2, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    if-eqz v2, :cond_2

    .line 310
    const-string v2, ", *"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v3}, Ljavassist/bytecode/analysis/Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    :cond_2
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
