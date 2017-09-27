.class public final enum Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

.field public static final enum Error:Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

.field public static final enum Info:Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

.field public static final enum Silent:Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    const-string v1, "Info"

    invoke-direct {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;->Info:Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    const-string v1, "Error"

    invoke-direct {v0, v1, v3}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;->Error:Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    const-string v1, "Silent"

    invoke-direct {v0, v1, v4}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;->Silent:Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;->Info:Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;->Error:Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;->Silent:Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;->$VALUES:[Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;
    .locals 1

    const-class v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    return-object v0
.end method

.method public static values()[Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;
    .locals 1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;->$VALUES:[Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    invoke-virtual {v0}, [Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    return-object v0
.end method
