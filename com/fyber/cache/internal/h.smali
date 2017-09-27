.class public final Lcom/fyber/cache/internal/h;
.super Ljava/lang/Object;
.source "VideoEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/fyber/cache/internal/h;->a:I

    .line 17
    iput-object p2, p0, Lcom/fyber/cache/internal/h;->b:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/fyber/cache/internal/h;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fyber/cache/internal/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 35
    if-eq p1, p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/fyber/cache/internal/h;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/fyber/cache/internal/h;->a:I

    return v0
.end method
