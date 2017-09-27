.class public final enum Lcom/sponsorpay/mediation/SPMediationAdFormat;
.super Ljava/lang/Enum;
.source "SPMediationAdFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/mediation/SPMediationAdFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Interstitial:Lcom/sponsorpay/mediation/SPMediationAdFormat;

.field public static final enum RewardedVideo:Lcom/sponsorpay/mediation/SPMediationAdFormat;

.field private static final synthetic a:[Lcom/sponsorpay/mediation/SPMediationAdFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/sponsorpay/mediation/SPMediationAdFormat;

    const-string v1, "RewardedVideo"

    invoke-direct {v0, v1, v2}, Lcom/sponsorpay/mediation/SPMediationAdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/mediation/SPMediationAdFormat;->RewardedVideo:Lcom/sponsorpay/mediation/SPMediationAdFormat;

    .line 12
    new-instance v0, Lcom/sponsorpay/mediation/SPMediationAdFormat;

    const-string v1, "Interstitial"

    invoke-direct {v0, v1, v3}, Lcom/sponsorpay/mediation/SPMediationAdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/mediation/SPMediationAdFormat;->Interstitial:Lcom/sponsorpay/mediation/SPMediationAdFormat;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sponsorpay/mediation/SPMediationAdFormat;

    sget-object v1, Lcom/sponsorpay/mediation/SPMediationAdFormat;->RewardedVideo:Lcom/sponsorpay/mediation/SPMediationAdFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sponsorpay/mediation/SPMediationAdFormat;->Interstitial:Lcom/sponsorpay/mediation/SPMediationAdFormat;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sponsorpay/mediation/SPMediationAdFormat;->a:[Lcom/sponsorpay/mediation/SPMediationAdFormat;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sponsorpay/mediation/SPMediationAdFormat;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/sponsorpay/mediation/SPMediationAdFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/mediation/SPMediationAdFormat;

    return-object v0
.end method

.method public static values()[Lcom/sponsorpay/mediation/SPMediationAdFormat;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/sponsorpay/mediation/SPMediationAdFormat;->a:[Lcom/sponsorpay/mediation/SPMediationAdFormat;

    invoke-virtual {v0}, [Lcom/sponsorpay/mediation/SPMediationAdFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sponsorpay/mediation/SPMediationAdFormat;

    return-object v0
.end method
