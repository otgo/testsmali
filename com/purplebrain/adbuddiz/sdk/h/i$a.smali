.class public final enum Lcom/purplebrain/adbuddiz/sdk/h/i$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/h/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/purplebrain/adbuddiz/sdk/h/i$a;

.field public static final enum b:Lcom/purplebrain/adbuddiz/sdk/h/i$a;

.field public static final enum c:Lcom/purplebrain/adbuddiz/sdk/h/i$a;

.field public static final enum d:Lcom/purplebrain/adbuddiz/sdk/h/i$a;

.field private static final synthetic h:[Lcom/purplebrain/adbuddiz/sdk/h/i$a;


# instance fields
.field public e:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

.field public f:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    const-string v1, "UNKNOWN"

    const-string v3, "UNKNOWN"

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->NO_MORE_AVAILABLE_ADS:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    sget-object v5, Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;->NO_MORE_AVAILABLE_ADS:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    invoke-direct/range {v0 .. v5}, Lcom/purplebrain/adbuddiz/sdk/h/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/h/i$a;->a:Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    const-string v4, "NETWORK_TOO_SLOW"

    const-string v6, "NETWORK_TOO_SLOW"

    sget-object v7, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->NO_MORE_AVAILABLE_ADS:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    sget-object v8, Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;->NETWORK_TOO_SLOW:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/purplebrain/adbuddiz/sdk/h/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;)V

    sput-object v3, Lcom/purplebrain/adbuddiz/sdk/h/i$a;->b:Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    const-string v4, "UNSUPPORTED_DEVICE"

    const-string v6, "UNSUPPORTED_DEVICE"

    sget-object v7, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->NO_MORE_AVAILABLE_ADS:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    sget-object v8, Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;->UNSUPPORTED_DEVICE:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/purplebrain/adbuddiz/sdk/h/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;)V

    sput-object v3, Lcom/purplebrain/adbuddiz/sdk/h/i$a;->c:Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    const-string v4, "UNSUPPORTED_OS_VERSION"

    const-string v6, "UNSUPPORTED_OS_VERSION"

    sget-object v7, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->NO_MORE_AVAILABLE_ADS:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    sget-object v8, Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;->UNSUPPORTED_OS_VERSION:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/purplebrain/adbuddiz/sdk/h/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;)V

    sput-object v3, Lcom/purplebrain/adbuddiz/sdk/h/i$a;->d:Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/h/i$a;->a:Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/h/i$a;->b:Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    aput-object v1, v0, v9

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/h/i$a;->c:Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    aput-object v1, v0, v10

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/h/i$a;->d:Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    aput-object v1, v0, v11

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/h/i$a;->h:[Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/h/i$a;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/purplebrain/adbuddiz/sdk/h/i$a;->e:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    iput-object p5, p0, Lcom/purplebrain/adbuddiz/sdk/h/i$a;->f:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/h/i$a;
    .locals 5

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/i$a;->h:[Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    invoke-virtual {v0}, [Lcom/purplebrain/adbuddiz/sdk/h/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    array-length v3, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    iget-object v4, v1, Lcom/purplebrain/adbuddiz/sdk/h/i$a;->g:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
