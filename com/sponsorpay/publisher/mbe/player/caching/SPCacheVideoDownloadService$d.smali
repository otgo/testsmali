.class final Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$d;
.super Ljava/lang/Enum;
.source "SPCacheVideoDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field private static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 71
    sput v3, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$d;->a:I

    .line 72
    sput v4, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$d;->b:I

    .line 73
    sput v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$d;->c:I

    .line 70
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$d;->a:I

    aput v2, v0, v1

    sget v1, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$d;->b:I

    aput v1, v0, v3

    sget v1, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$d;->c:I

    aput v1, v0, v4

    sput-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$d;->d:[I

    return-void
.end method
