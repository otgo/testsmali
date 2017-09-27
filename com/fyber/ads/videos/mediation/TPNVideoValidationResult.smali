.class public final enum Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;
.super Ljava/lang/Enum;
.source "TPNVideoValidationResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

.field public static final enum AdapterNotIntegrated:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

.field public static final enum DiskError:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

.field public static final enum Error:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

.field public static final enum NetworkError:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

.field public static final enum NoVideoAvailable:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

.field public static final enum Success:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

.field public static final enum Timeout:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    const-string v1, "AdapterNotIntegrated"

    const-string v2, "no_sdk"

    invoke-direct {v0, v1, v4, v2}, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->AdapterNotIntegrated:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    .line 12
    new-instance v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    const-string v1, "NoVideoAvailable"

    const-string v2, "no_video"

    invoke-direct {v0, v1, v5, v2}, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->NoVideoAvailable:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    .line 13
    new-instance v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    const-string v1, "Timeout"

    const-string v2, "timeout"

    invoke-direct {v0, v1, v6, v2}, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->Timeout:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    .line 14
    new-instance v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    const-string v1, "NetworkError"

    const-string v2, "network_error"

    invoke-direct {v0, v1, v7, v2}, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->NetworkError:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    .line 15
    new-instance v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    const-string v1, "DiskError"

    const-string v2, "disk_error"

    invoke-direct {v0, v1, v8, v2}, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->DiskError:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    .line 16
    new-instance v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    const-string v1, "Error"

    const/4 v2, 0x5

    const-string v3, "error"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->Error:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    .line 17
    new-instance v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    const-string v1, "Success"

    const/4 v2, 0x6

    const-string v3, "success"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->Success:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    .line 9
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->AdapterNotIntegrated:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->NoVideoAvailable:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->Timeout:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->NetworkError:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->DiskError:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->Error:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->Success:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->$VALUES:[Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->text:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    return-object v0
.end method

.method public static values()[Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->$VALUES:[Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-virtual {v0}, [Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->text:Ljava/lang/String;

    return-object v0
.end method
