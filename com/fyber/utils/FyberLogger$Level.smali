.class public final enum Lcom/fyber/utils/FyberLogger$Level;
.super Ljava/lang/Enum;
.source "FyberLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/utils/FyberLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fyber/utils/FyberLogger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/utils/FyberLogger$Level;

.field public static final enum DEBUG:Lcom/fyber/utils/FyberLogger$Level;

.field public static final enum ERROR:Lcom/fyber/utils/FyberLogger$Level;

.field public static final enum INFO:Lcom/fyber/utils/FyberLogger$Level;

.field public static final enum VERBOSE:Lcom/fyber/utils/FyberLogger$Level;

.field public static final enum WARNING:Lcom/fyber/utils/FyberLogger$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/fyber/utils/FyberLogger$Level;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1, v2}, Lcom/fyber/utils/FyberLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/utils/FyberLogger$Level;->VERBOSE:Lcom/fyber/utils/FyberLogger$Level;

    .line 36
    new-instance v0, Lcom/fyber/utils/FyberLogger$Level;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v3}, Lcom/fyber/utils/FyberLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/utils/FyberLogger$Level;->DEBUG:Lcom/fyber/utils/FyberLogger$Level;

    .line 40
    new-instance v0, Lcom/fyber/utils/FyberLogger$Level;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v4}, Lcom/fyber/utils/FyberLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/utils/FyberLogger$Level;->INFO:Lcom/fyber/utils/FyberLogger$Level;

    .line 44
    new-instance v0, Lcom/fyber/utils/FyberLogger$Level;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v5}, Lcom/fyber/utils/FyberLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/utils/FyberLogger$Level;->WARNING:Lcom/fyber/utils/FyberLogger$Level;

    .line 48
    new-instance v0, Lcom/fyber/utils/FyberLogger$Level;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/fyber/utils/FyberLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/utils/FyberLogger$Level;->ERROR:Lcom/fyber/utils/FyberLogger$Level;

    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fyber/utils/FyberLogger$Level;

    sget-object v1, Lcom/fyber/utils/FyberLogger$Level;->VERBOSE:Lcom/fyber/utils/FyberLogger$Level;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fyber/utils/FyberLogger$Level;->DEBUG:Lcom/fyber/utils/FyberLogger$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fyber/utils/FyberLogger$Level;->INFO:Lcom/fyber/utils/FyberLogger$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fyber/utils/FyberLogger$Level;->WARNING:Lcom/fyber/utils/FyberLogger$Level;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fyber/utils/FyberLogger$Level;->ERROR:Lcom/fyber/utils/FyberLogger$Level;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fyber/utils/FyberLogger$Level;->$VALUES:[Lcom/fyber/utils/FyberLogger$Level;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/utils/FyberLogger$Level;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/fyber/utils/FyberLogger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fyber/utils/FyberLogger$Level;

    return-object v0
.end method

.method public static values()[Lcom/fyber/utils/FyberLogger$Level;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/fyber/utils/FyberLogger$Level;->$VALUES:[Lcom/fyber/utils/FyberLogger$Level;

    invoke-virtual {v0}, [Lcom/fyber/utils/FyberLogger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/utils/FyberLogger$Level;

    return-object v0
.end method
