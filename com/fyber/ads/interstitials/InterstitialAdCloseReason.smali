.class public final enum Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;
.super Ljava/lang/Enum;
.source "InterstitialAdCloseReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

.field public static final enum ReasonError:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

.field public static final enum ReasonUnknown:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

.field public static final enum ReasonUserClickedOnAd:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

.field public static final enum ReasonUserClosedAd:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    const-string v1, "ReasonUnknown"

    invoke-direct {v0, v1, v2}, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;->ReasonUnknown:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    .line 21
    new-instance v0, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    const-string v1, "ReasonUserClickedOnAd"

    invoke-direct {v0, v1, v3}, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;->ReasonUserClickedOnAd:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    .line 25
    new-instance v0, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    const-string v1, "ReasonUserClosedAd"

    invoke-direct {v0, v1, v4}, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;->ReasonUserClosedAd:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    .line 29
    new-instance v0, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    const-string v1, "ReasonError"

    invoke-direct {v0, v1, v5}, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;->ReasonError:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    sget-object v1, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;->ReasonUnknown:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;->ReasonUserClickedOnAd:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;->ReasonUserClosedAd:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;->ReasonError:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;->$VALUES:[Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    return-object v0
.end method

.method public static values()[Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;->$VALUES:[Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    invoke-virtual {v0}, [Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    return-object v0
.end method
