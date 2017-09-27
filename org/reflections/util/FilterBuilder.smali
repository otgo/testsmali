.class public Lorg/reflections/util/FilterBuilder;
.super Ljava/lang/Object;
.source "FilterBuilder.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/reflections/util/FilterBuilder$Exclude;,
        Lorg/reflections/util/FilterBuilder$Include;,
        Lorg/reflections/util/FilterBuilder$Matcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final chain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/reflections/util/FilterBuilder;->chain:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "filters":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/base/Predicate<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/reflections/util/FilterBuilder;->chain:Ljava/util/List;

    return-void
.end method

.method private static packageNameRegex(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/reflections/util/FilterBuilder;->prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/reflections/util/FilterBuilder;
    .locals 11
    .param p0, "includeExcludeString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/base/Predicate<Ljava/lang/String;>;>;"
    invoke-static {p0}, Lorg/reflections/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 108
    const-string v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v4, v8, v6

    .line 109
    .local v4, "string":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, "trimmed":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 111
    .local v3, "prefix":C
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "pattern":Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 122
    :pswitch_0
    new-instance v6, Lorg/reflections/ReflectionsException;

    const-string v7, "includeExclude should start with either + or -"

    invoke-direct {v6, v7}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 116
    :pswitch_1
    new-instance v0, Lorg/reflections/util/FilterBuilder$Include;

    invoke-direct {v0, v2}, Lorg/reflections/util/FilterBuilder$Include;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "filter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "filter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    :pswitch_2
    new-instance v0, Lorg/reflections/util/FilterBuilder$Exclude;

    invoke-direct {v0, v2}, Lorg/reflections/util/FilterBuilder$Exclude;-><init>(Ljava/lang/String;)V

    .line 120
    .restart local v0    # "filter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    goto :goto_1

    .line 128
    .end local v0    # "filter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "prefix":C
    .end local v4    # "string":Ljava/lang/String;
    .end local v5    # "trimmed":Ljava/lang/String;
    :cond_0
    new-instance v6, Lorg/reflections/util/FilterBuilder;

    invoke-direct {v6, v1}, Lorg/reflections/util/FilterBuilder;-><init>(Ljava/lang/Iterable;)V

    .line 130
    :goto_2
    return-object v6

    :cond_1
    new-instance v6, Lorg/reflections/util/FilterBuilder;

    invoke-direct {v6}, Lorg/reflections/util/FilterBuilder;-><init>()V

    goto :goto_2

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static parsePackages(Ljava/lang/String;)Lorg/reflections/util/FilterBuilder;
    .locals 12
    .param p0, "includeExcludeString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/base/Predicate<Ljava/lang/String;>;>;"
    invoke-static {p0}, Lorg/reflections/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 149
    const-string v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_1

    aget-object v4, v8, v6

    .line 150
    .local v4, "string":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "trimmed":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 152
    .local v3, "prefix":C
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "pattern":Ljava/lang/String;
    const-string v10, "."

    invoke-virtual {v2, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 154
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    :cond_0
    invoke-static {v2}, Lorg/reflections/util/FilterBuilder;->prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    packed-switch v3, :pswitch_data_0

    .line 167
    :pswitch_0
    new-instance v6, Lorg/reflections/ReflectionsException;

    const-string v7, "includeExclude should start with either + or -"

    invoke-direct {v6, v7}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 161
    :pswitch_1
    new-instance v0, Lorg/reflections/util/FilterBuilder$Include;

    invoke-direct {v0, v2}, Lorg/reflections/util/FilterBuilder$Include;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "filter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "filter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    :pswitch_2
    new-instance v0, Lorg/reflections/util/FilterBuilder$Exclude;

    invoke-direct {v0, v2}, Lorg/reflections/util/FilterBuilder$Exclude;-><init>(Ljava/lang/String;)V

    .line 165
    .restart local v0    # "filter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    goto :goto_1

    .line 173
    .end local v0    # "filter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "prefix":C
    .end local v4    # "string":Ljava/lang/String;
    .end local v5    # "trimmed":Ljava/lang/String;
    :cond_1
    new-instance v6, Lorg/reflections/util/FilterBuilder;

    invoke-direct {v6, v1}, Lorg/reflections/util/FilterBuilder;-><init>(Ljava/lang/Iterable;)V

    .line 175
    :goto_2
    return-object v6

    :cond_2
    new-instance v6, Lorg/reflections/util/FilterBuilder;

    invoke-direct {v6}, Lorg/reflections/util/FilterBuilder;-><init>()V

    goto :goto_2

    .line 159
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static prefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    const-string v2, "\\."

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/common/base/Predicate;)Lorg/reflections/util/FilterBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/reflections/util/FilterBuilder;"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "filter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/reflections/util/FilterBuilder;->chain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/reflections/util/FilterBuilder;->apply(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljava/lang/String;)Z
    .locals 4
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 60
    iget-object v2, p0, Lorg/reflections/util/FilterBuilder;->chain:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/reflections/util/FilterBuilder;->chain:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/reflections/util/FilterBuilder;->chain:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/reflections/util/FilterBuilder$Exclude;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 62
    .local v0, "accept":Z
    :cond_1
    iget-object v2, p0, Lorg/reflections/util/FilterBuilder;->chain:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 63
    iget-object v2, p0, Lorg/reflections/util/FilterBuilder;->chain:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/Predicate;

    .line 64
    .local v1, "filter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    instance-of v3, v1, Lorg/reflections/util/FilterBuilder$Include;

    if-nez v3, :cond_2

    .line 65
    :cond_3
    if-nez v0, :cond_4

    instance-of v3, v1, Lorg/reflections/util/FilterBuilder$Exclude;

    if-nez v3, :cond_2

    .line 66
    :cond_4
    invoke-interface {v1, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    .line 67
    if-nez v0, :cond_2

    instance-of v3, v1, Lorg/reflections/util/FilterBuilder$Exclude;

    if-eqz v3, :cond_2

    .line 70
    .end local v1    # "filter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    :cond_5
    return v0
.end method

.method public exclude(Ljava/lang/String;)Lorg/reflections/util/FilterBuilder;
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Lorg/reflections/util/FilterBuilder$Exclude;

    invoke-direct {v0, p1}, Lorg/reflections/util/FilterBuilder$Exclude;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/reflections/util/FilterBuilder;->add(Lcom/google/common/base/Predicate;)Lorg/reflections/util/FilterBuilder;

    return-object p0
.end method

.method public excludePackage(Ljava/lang/Class;)Lorg/reflections/util/FilterBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/reflections/util/FilterBuilder;"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/reflections/util/FilterBuilder$Exclude;

    invoke-static {p1}, Lorg/reflections/util/FilterBuilder;->packageNameRegex(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/reflections/util/FilterBuilder$Exclude;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/reflections/util/FilterBuilder;->add(Lcom/google/common/base/Predicate;)Lorg/reflections/util/FilterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public excludePackage(Ljava/lang/String;)Lorg/reflections/util/FilterBuilder;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Lorg/reflections/util/FilterBuilder$Exclude;

    invoke-static {p1}, Lorg/reflections/util/FilterBuilder;->prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/reflections/util/FilterBuilder$Exclude;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/reflections/util/FilterBuilder;->add(Lcom/google/common/base/Predicate;)Lorg/reflections/util/FilterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public include(Ljava/lang/String;)Lorg/reflections/util/FilterBuilder;
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Lorg/reflections/util/FilterBuilder$Include;

    invoke-direct {v0, p1}, Lorg/reflections/util/FilterBuilder$Include;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/reflections/util/FilterBuilder;->add(Lcom/google/common/base/Predicate;)Lorg/reflections/util/FilterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public includePackage(Ljava/lang/Class;)Lorg/reflections/util/FilterBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/reflections/util/FilterBuilder;"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/reflections/util/FilterBuilder$Include;

    invoke-static {p1}, Lorg/reflections/util/FilterBuilder;->packageNameRegex(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/reflections/util/FilterBuilder$Include;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/reflections/util/FilterBuilder;->add(Lcom/google/common/base/Predicate;)Lorg/reflections/util/FilterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs includePackage([Ljava/lang/String;)Lorg/reflections/util/FilterBuilder;
    .locals 5
    .param p1, "prefixes"    # [Ljava/lang/String;

    .prologue
    .line 44
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 45
    .local v0, "prefix":Ljava/lang/String;
    new-instance v3, Lorg/reflections/util/FilterBuilder$Include;

    invoke-static {v0}, Lorg/reflections/util/FilterBuilder;->prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/reflections/util/FilterBuilder$Include;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/reflections/util/FilterBuilder;->add(Lcom/google/common/base/Predicate;)Lorg/reflections/util/FilterBuilder;

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    const-string v0, ", "

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    iget-object v1, p0, Lorg/reflections/util/FilterBuilder;->chain:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
