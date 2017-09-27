.class final Lcom/fyber/cache/internal/f$a;
.super Ljava/lang/Object;
.source "CacheStore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/cache/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/fyber/cache/internal/c;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/fyber/cache/internal/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 212
    check-cast p1, Lcom/fyber/cache/internal/c;

    check-cast p2, Lcom/fyber/cache/internal/c;

    .line 1215
    invoke-virtual {p1}, Lcom/fyber/cache/internal/c;->g()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/fyber/cache/internal/c;->g()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1216
    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 1217
    const/4 v0, -0x1

    .line 1219
    :goto_0
    return v0

    .line 1218
    :cond_0
    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 1219
    const/4 v0, 0x1

    goto :goto_0

    .line 1221
    :cond_1
    const/4 v0, 0x0

    .line 212
    goto :goto_0
.end method
