.class public final enum Lcom/fyber/ads/videos/player/a;
.super Ljava/lang/Enum;
.source "NativeVideoPlayerEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fyber/ads/videos/player/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/fyber/ads/videos/player/a;

.field public static final enum b:Lcom/fyber/ads/videos/player/a;

.field public static final enum c:Lcom/fyber/ads/videos/player/a;

.field public static final enum d:Lcom/fyber/ads/videos/player/a;

.field public static final enum e:Lcom/fyber/ads/videos/player/a;

.field private static final synthetic g:[Lcom/fyber/ads/videos/player/a;


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/fyber/ads/videos/player/a;

    const-string v1, "PlayingEvent"

    const-string v2, "playing"

    invoke-direct {v0, v1, v3, v2}, Lcom/fyber/ads/videos/player/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/videos/player/a;->a:Lcom/fyber/ads/videos/player/a;

    .line 12
    new-instance v0, Lcom/fyber/ads/videos/player/a;

    const-string v1, "TimeUpdateEvent"

    const-string v2, "timeupdate"

    invoke-direct {v0, v1, v4, v2}, Lcom/fyber/ads/videos/player/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/videos/player/a;->b:Lcom/fyber/ads/videos/player/a;

    .line 13
    new-instance v0, Lcom/fyber/ads/videos/player/a;

    const-string v1, "EndedEvent"

    const-string v2, "ended"

    invoke-direct {v0, v1, v5, v2}, Lcom/fyber/ads/videos/player/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/videos/player/a;->c:Lcom/fyber/ads/videos/player/a;

    .line 14
    new-instance v0, Lcom/fyber/ads/videos/player/a;

    const-string v1, "ClickThroughEvent"

    const-string v2, "clickThrough"

    invoke-direct {v0, v1, v6, v2}, Lcom/fyber/ads/videos/player/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/videos/player/a;->d:Lcom/fyber/ads/videos/player/a;

    .line 15
    new-instance v0, Lcom/fyber/ads/videos/player/a;

    const-string v1, "CancelEvent"

    const-string v2, "cancel"

    invoke-direct {v0, v1, v7, v2}, Lcom/fyber/ads/videos/player/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/videos/player/a;->e:Lcom/fyber/ads/videos/player/a;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fyber/ads/videos/player/a;

    sget-object v1, Lcom/fyber/ads/videos/player/a;->a:Lcom/fyber/ads/videos/player/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fyber/ads/videos/player/a;->b:Lcom/fyber/ads/videos/player/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fyber/ads/videos/player/a;->c:Lcom/fyber/ads/videos/player/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fyber/ads/videos/player/a;->d:Lcom/fyber/ads/videos/player/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fyber/ads/videos/player/a;->e:Lcom/fyber/ads/videos/player/a;

    aput-object v1, v0, v7

    sput-object v0, Lcom/fyber/ads/videos/player/a;->g:[Lcom/fyber/ads/videos/player/a;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/fyber/ads/videos/player/a;->f:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/ads/videos/player/a;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/fyber/ads/videos/player/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fyber/ads/videos/player/a;

    return-object v0
.end method

.method public static values()[Lcom/fyber/ads/videos/player/a;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/fyber/ads/videos/player/a;->g:[Lcom/fyber/ads/videos/player/a;

    invoke-virtual {v0}, [Lcom/fyber/ads/videos/player/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/ads/videos/player/a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fyber/ads/videos/player/a;->f:Ljava/lang/String;

    return-object v0
.end method
