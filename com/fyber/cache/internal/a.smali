.class public final Lcom/fyber/cache/internal/a;
.super Ljava/lang/Object;
.source "CacheConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/cache/internal/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:[Lcom/fyber/cache/internal/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    .prologue
    const/16 v1, 0x12c

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/fyber/cache/internal/a$a;->values()[Lcom/fyber/cache/internal/a$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/fyber/cache/internal/d;

    iput-object v0, p0, Lcom/fyber/cache/internal/a;->c:[Lcom/fyber/cache/internal/d;

    .line 26
    iput-object p1, p0, Lcom/fyber/cache/internal/a;->a:Ljava/lang/String;

    .line 1039
    if-nez p2, :cond_1

    .line 1040
    const/16 v0, 0xe10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1044
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/fyber/cache/internal/a;->b:Ljava/lang/Integer;

    .line 28
    return-void

    .line 1041
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 1042
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/fyber/cache/internal/a$a;)Lcom/fyber/cache/internal/d;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fyber/cache/internal/a;->c:[Lcom/fyber/cache/internal/d;

    invoke-virtual {p1}, Lcom/fyber/cache/internal/a$a;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fyber/cache/internal/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/fyber/cache/internal/a$a;Lcom/fyber/cache/internal/d;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fyber/cache/internal/a;->c:[Lcom/fyber/cache/internal/d;

    invoke-virtual {p1}, Lcom/fyber/cache/internal/a$a;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    .line 53
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fyber/cache/internal/a;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fyber/cache/internal/a;->c:[Lcom/fyber/cache/internal/d;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/fyber/cache/internal/d;->a()I

    move-result v0

    iget-object v1, p0, Lcom/fyber/cache/internal/a;->c:[Lcom/fyber/cache/internal/d;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/fyber/cache/internal/d;->a()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
