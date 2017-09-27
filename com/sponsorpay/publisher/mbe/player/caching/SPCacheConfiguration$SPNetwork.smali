.class public final enum Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;
.super Ljava/lang/Enum;
.source "SPCacheConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SPNetwork"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CELLULAR:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;

.field public static final enum WIFI:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;

.field private static final synthetic a:[Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v2}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;->WIFI:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;

    .line 18
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;

    const-string v1, "CELLULAR"

    invoke-direct {v0, v1, v3}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;->CELLULAR:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;

    sget-object v1, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;->WIFI:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;->CELLULAR:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;->a:[Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;

    return-object v0
.end method

.method public static values()[Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;->a:[Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;

    invoke-virtual {v0}, [Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;

    return-object v0
.end method
