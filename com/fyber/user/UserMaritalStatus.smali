.class public final enum Lcom/fyber/user/UserMaritalStatus;
.super Ljava/lang/Enum;
.source "UserMaritalStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fyber/user/UserMaritalStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/fyber/user/UserMaritalStatus;

.field public static final enum divorced:Lcom/fyber/user/UserMaritalStatus;

.field public static final enum engaged:Lcom/fyber/user/UserMaritalStatus;

.field public static final enum married:Lcom/fyber/user/UserMaritalStatus;

.field public static final enum relationship:Lcom/fyber/user/UserMaritalStatus;

.field public static final enum single:Lcom/fyber/user/UserMaritalStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/fyber/user/UserMaritalStatus;

    const-string v1, "single"

    invoke-direct {v0, v1, v2}, Lcom/fyber/user/UserMaritalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/user/UserMaritalStatus;->single:Lcom/fyber/user/UserMaritalStatus;

    .line 20
    new-instance v0, Lcom/fyber/user/UserMaritalStatus;

    const-string v1, "relationship"

    invoke-direct {v0, v1, v3}, Lcom/fyber/user/UserMaritalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/user/UserMaritalStatus;->relationship:Lcom/fyber/user/UserMaritalStatus;

    .line 24
    new-instance v0, Lcom/fyber/user/UserMaritalStatus;

    const-string v1, "married"

    invoke-direct {v0, v1, v4}, Lcom/fyber/user/UserMaritalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/user/UserMaritalStatus;->married:Lcom/fyber/user/UserMaritalStatus;

    .line 28
    new-instance v0, Lcom/fyber/user/UserMaritalStatus;

    const-string v1, "divorced"

    invoke-direct {v0, v1, v5}, Lcom/fyber/user/UserMaritalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/user/UserMaritalStatus;->divorced:Lcom/fyber/user/UserMaritalStatus;

    .line 32
    new-instance v0, Lcom/fyber/user/UserMaritalStatus;

    const-string v1, "engaged"

    invoke-direct {v0, v1, v6}, Lcom/fyber/user/UserMaritalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/user/UserMaritalStatus;->engaged:Lcom/fyber/user/UserMaritalStatus;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fyber/user/UserMaritalStatus;

    sget-object v1, Lcom/fyber/user/UserMaritalStatus;->single:Lcom/fyber/user/UserMaritalStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fyber/user/UserMaritalStatus;->relationship:Lcom/fyber/user/UserMaritalStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fyber/user/UserMaritalStatus;->married:Lcom/fyber/user/UserMaritalStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fyber/user/UserMaritalStatus;->divorced:Lcom/fyber/user/UserMaritalStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fyber/user/UserMaritalStatus;->engaged:Lcom/fyber/user/UserMaritalStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fyber/user/UserMaritalStatus;->a:[Lcom/fyber/user/UserMaritalStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/user/UserMaritalStatus;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/fyber/user/UserMaritalStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fyber/user/UserMaritalStatus;

    return-object v0
.end method

.method public static values()[Lcom/fyber/user/UserMaritalStatus;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/fyber/user/UserMaritalStatus;->a:[Lcom/fyber/user/UserMaritalStatus;

    invoke-virtual {v0}, [Lcom/fyber/user/UserMaritalStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/user/UserMaritalStatus;

    return-object v0
.end method
