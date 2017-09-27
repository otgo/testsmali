.class public final enum Lcom/fyber/ads/videos/mediation/TPNVideoEvent;
.super Ljava/lang/Enum;
.source "TPNVideoEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fyber/ads/videos/mediation/TPNVideoEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

.field public static final enum Aborted:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

.field public static final enum AdapterNotIntegrated:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

.field public static final enum Closed:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

.field public static final enum Error:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

.field public static final enum Finished:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

.field public static final enum NoVideo:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

.field public static final enum Started:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

.field public static final enum Timeout:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;


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
    new-instance v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    const-string v1, "Started"

    const-string v2, "started"

    invoke-direct {v0, v1, v4, v2}, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->Started:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    .line 12
    new-instance v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    const-string v1, "Aborted"

    const-string v2, "aborted"

    invoke-direct {v0, v1, v5, v2}, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->Aborted:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    .line 13
    new-instance v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    const-string v1, "Finished"

    const-string v2, "finished"

    invoke-direct {v0, v1, v6, v2}, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->Finished:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    .line 14
    new-instance v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    const-string v1, "Closed"

    const-string v2, "closed"

    invoke-direct {v0, v1, v7, v2}, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->Closed:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    .line 15
    new-instance v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    const-string v1, "NoVideo"

    const-string v2, "no_video"

    invoke-direct {v0, v1, v8, v2}, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->NoVideo:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    .line 16
    new-instance v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    const-string v1, "Timeout"

    const/4 v2, 0x5

    const-string v3, "timeout"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->Timeout:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    .line 17
    new-instance v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    const-string v1, "Error"

    const/4 v2, 0x6

    const-string v3, "error"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->Error:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    .line 18
    new-instance v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    const-string v1, "AdapterNotIntegrated"

    const/4 v2, 0x7

    const-string v3, "no_sdk"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->AdapterNotIntegrated:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    .line 9
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->Started:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->Aborted:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->Finished:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->Closed:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->NoVideo:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->Timeout:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->Error:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->AdapterNotIntegrated:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->$VALUES:[Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->text:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/ads/videos/mediation/TPNVideoEvent;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    return-object v0
.end method

.method public static values()[Lcom/fyber/ads/videos/mediation/TPNVideoEvent;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->$VALUES:[Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    invoke-virtual {v0}, [Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->text:Ljava/lang/String;

    return-object v0
.end method
