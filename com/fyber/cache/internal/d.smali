.class public final Lcom/fyber/cache/internal/d;
.super Ljava/lang/Object;
.source "CacheNetworkPolicy.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/fyber/cache/internal/d;->a:I

    .line 16
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/fyber/cache/internal/d;->a:I

    return v0
.end method
