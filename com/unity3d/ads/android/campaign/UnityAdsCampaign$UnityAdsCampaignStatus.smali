.class public final enum Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;
.super Ljava/lang/Enum;
.source "UnityAdsCampaign.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

.field public static final enum READY:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

.field public static final enum VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->READY:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    new-instance v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    const-string v1, "VIEWED"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    sget-object v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->READY:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->$VALUES:[Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->$VALUES:[Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    invoke-virtual {v0}, [Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
