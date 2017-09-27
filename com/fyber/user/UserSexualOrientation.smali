.class public final enum Lcom/fyber/user/UserSexualOrientation;
.super Ljava/lang/Enum;
.source "UserSexualOrientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fyber/user/UserSexualOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/fyber/user/UserSexualOrientation;

.field public static final enum bisexual:Lcom/fyber/user/UserSexualOrientation;

.field public static final enum gay:Lcom/fyber/user/UserSexualOrientation;

.field public static final enum straight:Lcom/fyber/user/UserSexualOrientation;

.field public static final enum unknown:Lcom/fyber/user/UserSexualOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/fyber/user/UserSexualOrientation;

    const-string v1, "straight"

    invoke-direct {v0, v1, v2}, Lcom/fyber/user/UserSexualOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/user/UserSexualOrientation;->straight:Lcom/fyber/user/UserSexualOrientation;

    .line 20
    new-instance v0, Lcom/fyber/user/UserSexualOrientation;

    const-string v1, "bisexual"

    invoke-direct {v0, v1, v3}, Lcom/fyber/user/UserSexualOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/user/UserSexualOrientation;->bisexual:Lcom/fyber/user/UserSexualOrientation;

    .line 24
    new-instance v0, Lcom/fyber/user/UserSexualOrientation;

    const-string v1, "gay"

    invoke-direct {v0, v1, v4}, Lcom/fyber/user/UserSexualOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/user/UserSexualOrientation;->gay:Lcom/fyber/user/UserSexualOrientation;

    .line 28
    new-instance v0, Lcom/fyber/user/UserSexualOrientation;

    const-string v1, "unknown"

    invoke-direct {v0, v1, v5}, Lcom/fyber/user/UserSexualOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/user/UserSexualOrientation;->unknown:Lcom/fyber/user/UserSexualOrientation;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fyber/user/UserSexualOrientation;

    sget-object v1, Lcom/fyber/user/UserSexualOrientation;->straight:Lcom/fyber/user/UserSexualOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fyber/user/UserSexualOrientation;->bisexual:Lcom/fyber/user/UserSexualOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fyber/user/UserSexualOrientation;->gay:Lcom/fyber/user/UserSexualOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fyber/user/UserSexualOrientation;->unknown:Lcom/fyber/user/UserSexualOrientation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fyber/user/UserSexualOrientation;->a:[Lcom/fyber/user/UserSexualOrientation;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/user/UserSexualOrientation;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/fyber/user/UserSexualOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fyber/user/UserSexualOrientation;

    return-object v0
.end method

.method public static values()[Lcom/fyber/user/UserSexualOrientation;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/fyber/user/UserSexualOrientation;->a:[Lcom/fyber/user/UserSexualOrientation;

    invoke-virtual {v0}, [Lcom/fyber/user/UserSexualOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/user/UserSexualOrientation;

    return-object v0
.end method
