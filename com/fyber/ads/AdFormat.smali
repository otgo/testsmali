.class public final enum Lcom/fyber/ads/AdFormat;
.super Ljava/lang/Enum;
.source "AdFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fyber/ads/AdFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/ads/AdFormat;

.field public static final enum INTERSTITIAL:Lcom/fyber/ads/AdFormat;

.field public static final enum OFFER_WALL:Lcom/fyber/ads/AdFormat;

.field public static final enum REWARDED_VIDEO:Lcom/fyber/ads/AdFormat;

.field public static final enum UNKNOWN:Lcom/fyber/ads/AdFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/fyber/ads/AdFormat;

    const-string v1, "OFFER_WALL"

    invoke-direct {v0, v1, v2}, Lcom/fyber/ads/AdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/ads/AdFormat;->OFFER_WALL:Lcom/fyber/ads/AdFormat;

    .line 28
    new-instance v0, Lcom/fyber/ads/AdFormat;

    const-string v1, "REWARDED_VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/fyber/ads/AdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/ads/AdFormat;->REWARDED_VIDEO:Lcom/fyber/ads/AdFormat;

    .line 32
    new-instance v0, Lcom/fyber/ads/AdFormat;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v4}, Lcom/fyber/ads/AdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/ads/AdFormat;->INTERSTITIAL:Lcom/fyber/ads/AdFormat;

    .line 36
    new-instance v0, Lcom/fyber/ads/AdFormat;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/fyber/ads/AdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/ads/AdFormat;->UNKNOWN:Lcom/fyber/ads/AdFormat;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fyber/ads/AdFormat;

    sget-object v1, Lcom/fyber/ads/AdFormat;->OFFER_WALL:Lcom/fyber/ads/AdFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fyber/ads/AdFormat;->REWARDED_VIDEO:Lcom/fyber/ads/AdFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fyber/ads/AdFormat;->INTERSTITIAL:Lcom/fyber/ads/AdFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fyber/ads/AdFormat;->UNKNOWN:Lcom/fyber/ads/AdFormat;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fyber/ads/AdFormat;->$VALUES:[Lcom/fyber/ads/AdFormat;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/fyber/ads/AdFormat;
    .locals 1
    .param p0    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    if-eqz p0, :cond_0

    .line 47
    const-string v0, "EXTRA_AD_FORMAT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    check-cast v0, Lcom/fyber/ads/AdFormat;

    .line 53
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/fyber/ads/AdFormat;->UNKNOWN:Lcom/fyber/ads/AdFormat;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/ads/AdFormat;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/fyber/ads/AdFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fyber/ads/AdFormat;

    return-object v0
.end method

.method public static values()[Lcom/fyber/ads/AdFormat;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/fyber/ads/AdFormat;->$VALUES:[Lcom/fyber/ads/AdFormat;

    invoke-virtual {v0}, [Lcom/fyber/ads/AdFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/ads/AdFormat;

    return-object v0
.end method
