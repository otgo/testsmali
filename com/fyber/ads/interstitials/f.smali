.class public final enum Lcom/fyber/ads/interstitials/f;
.super Ljava/lang/Enum;
.source "InterstitialEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fyber/ads/interstitials/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/fyber/ads/interstitials/f;

.field public static final enum b:Lcom/fyber/ads/interstitials/f;

.field public static final enum c:Lcom/fyber/ads/interstitials/f;

.field public static final enum d:Lcom/fyber/ads/interstitials/f;

.field public static final enum e:Lcom/fyber/ads/interstitials/f;

.field public static final enum f:Lcom/fyber/ads/interstitials/f;

.field public static final enum g:Lcom/fyber/ads/interstitials/f;

.field public static final enum h:Lcom/fyber/ads/interstitials/f;

.field public static final enum i:Lcom/fyber/ads/interstitials/f;

.field private static final synthetic k:[Lcom/fyber/ads/interstitials/f;


# instance fields
.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    new-instance v0, Lcom/fyber/ads/interstitials/f;

    const-string v1, "ValidationRequest"

    const-string v2, "request"

    invoke-direct {v0, v1, v4, v2}, Lcom/fyber/ads/interstitials/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/interstitials/f;->a:Lcom/fyber/ads/interstitials/f;

    .line 20
    new-instance v0, Lcom/fyber/ads/interstitials/f;

    const-string v1, "ValidationFill"

    const-string v2, "fill"

    invoke-direct {v0, v1, v5, v2}, Lcom/fyber/ads/interstitials/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/interstitials/f;->b:Lcom/fyber/ads/interstitials/f;

    .line 24
    new-instance v0, Lcom/fyber/ads/interstitials/f;

    const-string v1, "ValidationNoFill"

    const-string v2, "no_fill"

    invoke-direct {v0, v1, v6, v2}, Lcom/fyber/ads/interstitials/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/interstitials/f;->c:Lcom/fyber/ads/interstitials/f;

    .line 28
    new-instance v0, Lcom/fyber/ads/interstitials/f;

    const-string v1, "ValidationError"

    const-string v2, "error"

    invoke-direct {v0, v1, v7, v2}, Lcom/fyber/ads/interstitials/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/interstitials/f;->d:Lcom/fyber/ads/interstitials/f;

    .line 32
    new-instance v0, Lcom/fyber/ads/interstitials/f;

    const-string v1, "ShowImpression"

    const-string v2, "impression"

    invoke-direct {v0, v1, v8, v2}, Lcom/fyber/ads/interstitials/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/interstitials/f;->e:Lcom/fyber/ads/interstitials/f;

    .line 36
    new-instance v0, Lcom/fyber/ads/interstitials/f;

    const-string v1, "ShowClick"

    const/4 v2, 0x5

    const-string v3, "click"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/ads/interstitials/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/interstitials/f;->f:Lcom/fyber/ads/interstitials/f;

    .line 40
    new-instance v0, Lcom/fyber/ads/interstitials/f;

    const-string v1, "ShowClose"

    const/4 v2, 0x6

    const-string v3, "close"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/ads/interstitials/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/interstitials/f;->g:Lcom/fyber/ads/interstitials/f;

    .line 44
    new-instance v0, Lcom/fyber/ads/interstitials/f;

    const-string v1, "ShowError"

    const/4 v2, 0x7

    const-string v3, "error"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/ads/interstitials/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/interstitials/f;->h:Lcom/fyber/ads/interstitials/f;

    .line 48
    new-instance v0, Lcom/fyber/ads/interstitials/f;

    const-string v1, "NotIntegrated"

    const/16 v2, 0x8

    const-string v3, "no_sdk"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/ads/interstitials/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/interstitials/f;->i:Lcom/fyber/ads/interstitials/f;

    .line 12
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/fyber/ads/interstitials/f;

    sget-object v1, Lcom/fyber/ads/interstitials/f;->a:Lcom/fyber/ads/interstitials/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fyber/ads/interstitials/f;->b:Lcom/fyber/ads/interstitials/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fyber/ads/interstitials/f;->c:Lcom/fyber/ads/interstitials/f;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fyber/ads/interstitials/f;->d:Lcom/fyber/ads/interstitials/f;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fyber/ads/interstitials/f;->e:Lcom/fyber/ads/interstitials/f;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/fyber/ads/interstitials/f;->f:Lcom/fyber/ads/interstitials/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fyber/ads/interstitials/f;->g:Lcom/fyber/ads/interstitials/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fyber/ads/interstitials/f;->h:Lcom/fyber/ads/interstitials/f;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fyber/ads/interstitials/f;->i:Lcom/fyber/ads/interstitials/f;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fyber/ads/interstitials/f;->k:[Lcom/fyber/ads/interstitials/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p3, p0, Lcom/fyber/ads/interstitials/f;->j:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/ads/interstitials/f;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/fyber/ads/interstitials/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fyber/ads/interstitials/f;

    return-object v0
.end method

.method public static values()[Lcom/fyber/ads/interstitials/f;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/fyber/ads/interstitials/f;->k:[Lcom/fyber/ads/interstitials/f;

    invoke-virtual {v0}, [Lcom/fyber/ads/interstitials/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/ads/interstitials/f;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fyber/ads/interstitials/f;->j:Ljava/lang/String;

    return-object v0
.end method
