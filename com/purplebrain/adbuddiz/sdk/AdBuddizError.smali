.class public final enum Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

.field public static final enum ACTIVITY_PARAMETER_IS_NULL:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

.field public static final enum AD_IS_ALREADY_ON_SCREEN:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

.field public static final enum CONFIG_EXPIRED:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

.field public static final enum CONFIG_NOT_READY:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

.field public static final enum FORBIDDEN_RECEIVED_FROM_NETWORK:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

.field public static final enum INVALID_AD:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

.field public static final enum INVALID_PUBLISHER_KEY:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

.field public static final enum MISSING_ADBUDDIZ_ACTIVITY_IN_MANIFEST:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

.field public static final enum MISSING_INTERNET_PERMISSION_IN_MANIFEST:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

.field public static final enum MISSING_PUBLISHER_KEY:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

.field public static final enum NO_MORE_AVAILABLE_ADS:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

.field public static final enum NO_MORE_AVAILABLE_CACHED_ADS:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

.field public static final enum NO_NETWORK_AVAILABLE:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

.field public static final enum PLACEMENT_BLOCKED:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

.field public static final enum PLATFORM_MISMATCH_PUBLISHER_KEY:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

.field public static final enum SHOW_AD_CALLS_TOO_CLOSE:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

.field public static final enum UNKNOWN_EXCEPTION_RAISED:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

.field public static final enum UNSUPPORTED_ANDROID_SDK:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const-string v1, "UNSUPPORTED_ANDROID_SDK"

    const-string v2, "UNSUPPORTED_ANDROID_SDK"

    invoke-direct {v0, v1, v4, v2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->UNSUPPORTED_ANDROID_SDK:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const-string v1, "ACTIVITY_PARAMETER_IS_NULL"

    const-string v2, "ACTIVITY_PARAMETER_IS_NULL"

    invoke-direct {v0, v1, v5, v2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->ACTIVITY_PARAMETER_IS_NULL:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const-string v1, "MISSING_INTERNET_PERMISSION_IN_MANIFEST"

    const-string v2, "MISSING_INTERNET_PERMISSION_IN_MANIFEST"

    invoke-direct {v0, v1, v6, v2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->MISSING_INTERNET_PERMISSION_IN_MANIFEST:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const-string v1, "MISSING_PUBLISHER_KEY"

    const-string v2, "MISSING_PUBLISHER_KEY"

    invoke-direct {v0, v1, v7, v2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->MISSING_PUBLISHER_KEY:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const-string v1, "MISSING_ADBUDDIZ_ACTIVITY_IN_MANIFEST"

    const-string v2, "MISSING_ADBUDDIZ_ACTIVITY_IN_MANIFEST"

    invoke-direct {v0, v1, v8, v2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->MISSING_ADBUDDIZ_ACTIVITY_IN_MANIFEST:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const-string v1, "CONFIG_NOT_READY"

    const/4 v2, 0x5

    const-string v3, "CONFIG_NOT_READY"

    invoke-direct {v0, v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->CONFIG_NOT_READY:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const-string v1, "CONFIG_EXPIRED"

    const/4 v2, 0x6

    const-string v3, "CONFIG_EXPIRED"

    invoke-direct {v0, v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->CONFIG_EXPIRED:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const-string v1, "INVALID_PUBLISHER_KEY"

    const/4 v2, 0x7

    const-string v3, "INVALID_PUBLISHER_KEY"

    invoke-direct {v0, v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->INVALID_PUBLISHER_KEY:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const-string v1, "PLATFORM_MISMATCH_PUBLISHER_KEY"

    const/16 v2, 0x8

    const-string v3, "PLATFORM_MISMATCH_PUBLISHER_KEY"

    invoke-direct {v0, v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->PLATFORM_MISMATCH_PUBLISHER_KEY:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const-string v1, "PLACEMENT_BLOCKED"

    const/16 v2, 0x9

    const-string v3, "PLACEMENT_BLOCKED"

    invoke-direct {v0, v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->PLACEMENT_BLOCKED:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const-string v1, "NO_NETWORK_AVAILABLE"

    const/16 v2, 0xa

    const-string v3, "NO_NETWORK_AVAILABLE"

    invoke-direct {v0, v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->NO_NETWORK_AVAILABLE:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const-string v1, "FORBIDDEN_RECEIVED_FROM_NETWORK"

    const/16 v2, 0xb

    const-string v3, "FORBIDDEN_RECEIVED_FROM_NETWORK"

    invoke-direct {v0, v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->FORBIDDEN_RECEIVED_FROM_NETWORK:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const-string v1, "NO_MORE_AVAILABLE_CACHED_ADS"

    const/16 v2, 0xc

    const-string v3, "NO_MORE_AVAILABLE_CACHED_ADS"

    invoke-direct {v0, v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->NO_MORE_AVAILABLE_CACHED_ADS:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const-string v1, "NO_MORE_AVAILABLE_ADS"

    const/16 v2, 0xd

    const-string v3, "NO_MORE_AVAILABLE_ADS"

    invoke-direct {v0, v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->NO_MORE_AVAILABLE_ADS:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const-string v1, "INVALID_AD"

    const/16 v2, 0xe

    const-string v3, "INVALID_AD"

    invoke-direct {v0, v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->INVALID_AD:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const-string v1, "SHOW_AD_CALLS_TOO_CLOSE"

    const/16 v2, 0xf

    const-string v3, "SHOW_AD_CALLS_TOO_CLOSE"

    invoke-direct {v0, v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->SHOW_AD_CALLS_TOO_CLOSE:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const-string v1, "AD_IS_ALREADY_ON_SCREEN"

    const/16 v2, 0x10

    const-string v3, "AD_IS_ALREADY_ON_SCREEN"

    invoke-direct {v0, v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->AD_IS_ALREADY_ON_SCREEN:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const-string v1, "UNKNOWN_EXCEPTION_RAISED"

    const/16 v2, 0x11

    const-string v3, "UNKNOWN_EXCEPTION_RAISED"

    invoke-direct {v0, v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->UNKNOWN_EXCEPTION_RAISED:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->UNSUPPORTED_ANDROID_SDK:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->ACTIVITY_PARAMETER_IS_NULL:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->MISSING_INTERNET_PERMISSION_IN_MANIFEST:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->MISSING_PUBLISHER_KEY:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->MISSING_ADBUDDIZ_ACTIVITY_IN_MANIFEST:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->CONFIG_NOT_READY:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->CONFIG_EXPIRED:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->INVALID_PUBLISHER_KEY:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->PLATFORM_MISMATCH_PUBLISHER_KEY:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->PLACEMENT_BLOCKED:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->NO_NETWORK_AVAILABLE:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->FORBIDDEN_RECEIVED_FROM_NETWORK:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->NO_MORE_AVAILABLE_CACHED_ADS:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->NO_MORE_AVAILABLE_ADS:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->INVALID_AD:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->SHOW_AD_CALLS_TOO_CLOSE:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->AD_IS_ALREADY_ON_SCREEN:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->UNKNOWN_EXCEPTION_RAISED:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->$VALUES:[Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;
    .locals 1

    const-class v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    return-object v0
.end method

.method public static values()[Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;
    .locals 1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->$VALUES:[Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    invoke-virtual {v0}, [Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->name:Ljava/lang/String;

    return-object v0
.end method
