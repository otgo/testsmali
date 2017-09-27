.class public Lorg/reflections/util/FilterBuilder$Include;
.super Lorg/reflections/util/FilterBuilder$Matcher;
.source "FilterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reflections/util/FilterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Include"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "patternString"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lorg/reflections/util/FilterBuilder$Matcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 80
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/reflections/util/FilterBuilder$Include;->apply(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljava/lang/String;)Z
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/reflections/util/FilterBuilder$Include;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lorg/reflections/util/FilterBuilder$Matcher;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
