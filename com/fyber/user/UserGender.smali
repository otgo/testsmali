.class public final enum Lcom/fyber/user/UserGender;
.super Ljava/lang/Enum;
.source "UserGender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fyber/user/UserGender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/fyber/user/UserGender;

.field public static final enum female:Lcom/fyber/user/UserGender;

.field public static final enum male:Lcom/fyber/user/UserGender;

.field public static final enum other:Lcom/fyber/user/UserGender;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/fyber/user/UserGender;

    const-string v1, "male"

    invoke-direct {v0, v1, v2}, Lcom/fyber/user/UserGender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/user/UserGender;->male:Lcom/fyber/user/UserGender;

    .line 20
    new-instance v0, Lcom/fyber/user/UserGender;

    const-string v1, "female"

    invoke-direct {v0, v1, v3}, Lcom/fyber/user/UserGender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/user/UserGender;->female:Lcom/fyber/user/UserGender;

    .line 24
    new-instance v0, Lcom/fyber/user/UserGender;

    const-string v1, "other"

    invoke-direct {v0, v1, v4}, Lcom/fyber/user/UserGender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/user/UserGender;->other:Lcom/fyber/user/UserGender;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fyber/user/UserGender;

    sget-object v1, Lcom/fyber/user/UserGender;->male:Lcom/fyber/user/UserGender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fyber/user/UserGender;->female:Lcom/fyber/user/UserGender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fyber/user/UserGender;->other:Lcom/fyber/user/UserGender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fyber/user/UserGender;->a:[Lcom/fyber/user/UserGender;

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

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/user/UserGender;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/fyber/user/UserGender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fyber/user/UserGender;

    return-object v0
.end method

.method public static values()[Lcom/fyber/user/UserGender;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/fyber/user/UserGender;->a:[Lcom/fyber/user/UserGender;

    invoke-virtual {v0}, [Lcom/fyber/user/UserGender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/user/UserGender;

    return-object v0
.end method
