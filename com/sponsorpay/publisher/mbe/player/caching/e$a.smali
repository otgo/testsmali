.class final Lcom/sponsorpay/publisher/mbe/player/caching/e$a;
.super Ljava/lang/Object;
.source "SPCacheStore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sponsorpay/publisher/mbe/player/caching/e;
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
        "Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 249
    check-cast p1, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;

    check-cast p2, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->getCreatedAt()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->getCreatedAt()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
