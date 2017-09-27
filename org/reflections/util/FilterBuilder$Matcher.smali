.class public abstract Lorg/reflections/util/FilterBuilder$Matcher;
.super Ljava/lang/Object;
.source "FilterBuilder.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reflections/util/FilterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Matcher"
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
.field final pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/reflections/util/FilterBuilder$Matcher;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 73
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/reflections/util/FilterBuilder$Matcher;->apply(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public abstract apply(Ljava/lang/String;)Z
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/reflections/util/FilterBuilder$Matcher;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
