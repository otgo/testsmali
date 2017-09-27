.class Lorg/reflections/Reflections$3;
.super Ljava/lang/Object;
.source "Reflections.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/Reflections;->getResources(Ljava/util/regex/Pattern;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lorg/reflections/Reflections;

.field final synthetic val$pattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Lorg/reflections/Reflections;Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "this$0"    # Lorg/reflections/Reflections;

    .prologue
    .line 540
    iput-object p1, p0, Lorg/reflections/Reflections$3;->this$0:Lorg/reflections/Reflections;

    iput-object p2, p0, Lorg/reflections/Reflections$3;->val$pattern:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 540
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/reflections/Reflections$3;->apply(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljava/lang/String;)Z
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 542
    iget-object v0, p0, Lorg/reflections/Reflections$3;->val$pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
