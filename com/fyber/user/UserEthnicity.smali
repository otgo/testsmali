.class public final enum Lcom/fyber/user/UserEthnicity;
.super Ljava/lang/Enum;
.source "UserEthnicity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fyber/user/UserEthnicity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/fyber/user/UserEthnicity;

.field public static final enum asian:Lcom/fyber/user/UserEthnicity;

.field public static final enum black:Lcom/fyber/user/UserEthnicity;

.field public static final enum hispanic:Lcom/fyber/user/UserEthnicity;

.field public static final enum indian:Lcom/fyber/user/UserEthnicity;

.field public static final enum middle_eastern:Lcom/fyber/user/UserEthnicity;

.field public static final enum native_american:Lcom/fyber/user/UserEthnicity;

.field public static final enum other:Lcom/fyber/user/UserEthnicity;

.field public static final enum pacific_islander:Lcom/fyber/user/UserEthnicity;

.field public static final enum white:Lcom/fyber/user/UserEthnicity;


# instance fields
.field public final ethnicity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    new-instance v0, Lcom/fyber/user/UserEthnicity;

    const-string v1, "asian"

    const-string v2, "asian"

    invoke-direct {v0, v1, v4, v2}, Lcom/fyber/user/UserEthnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/user/UserEthnicity;->asian:Lcom/fyber/user/UserEthnicity;

    .line 20
    new-instance v0, Lcom/fyber/user/UserEthnicity;

    const-string v1, "black"

    const-string v2, "black"

    invoke-direct {v0, v1, v5, v2}, Lcom/fyber/user/UserEthnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/user/UserEthnicity;->black:Lcom/fyber/user/UserEthnicity;

    .line 24
    new-instance v0, Lcom/fyber/user/UserEthnicity;

    const-string v1, "hispanic"

    const-string v2, "hispanic"

    invoke-direct {v0, v1, v6, v2}, Lcom/fyber/user/UserEthnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/user/UserEthnicity;->hispanic:Lcom/fyber/user/UserEthnicity;

    .line 28
    new-instance v0, Lcom/fyber/user/UserEthnicity;

    const-string v1, "indian"

    const-string v2, "indian"

    invoke-direct {v0, v1, v7, v2}, Lcom/fyber/user/UserEthnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/user/UserEthnicity;->indian:Lcom/fyber/user/UserEthnicity;

    .line 32
    new-instance v0, Lcom/fyber/user/UserEthnicity;

    const-string v1, "middle_eastern"

    const-string v2, "middle eastern"

    invoke-direct {v0, v1, v8, v2}, Lcom/fyber/user/UserEthnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/user/UserEthnicity;->middle_eastern:Lcom/fyber/user/UserEthnicity;

    .line 36
    new-instance v0, Lcom/fyber/user/UserEthnicity;

    const-string v1, "native_american"

    const/4 v2, 0x5

    const-string v3, "native american"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/user/UserEthnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/user/UserEthnicity;->native_american:Lcom/fyber/user/UserEthnicity;

    .line 40
    new-instance v0, Lcom/fyber/user/UserEthnicity;

    const-string v1, "pacific_islander"

    const/4 v2, 0x6

    const-string v3, "pacific islander"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/user/UserEthnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/user/UserEthnicity;->pacific_islander:Lcom/fyber/user/UserEthnicity;

    .line 44
    new-instance v0, Lcom/fyber/user/UserEthnicity;

    const-string v1, "white"

    const/4 v2, 0x7

    const-string v3, "white"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/user/UserEthnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/user/UserEthnicity;->white:Lcom/fyber/user/UserEthnicity;

    .line 48
    new-instance v0, Lcom/fyber/user/UserEthnicity;

    const-string v1, "other"

    const/16 v2, 0x8

    const-string v3, "other"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/user/UserEthnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/user/UserEthnicity;->other:Lcom/fyber/user/UserEthnicity;

    .line 12
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/fyber/user/UserEthnicity;

    sget-object v1, Lcom/fyber/user/UserEthnicity;->asian:Lcom/fyber/user/UserEthnicity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fyber/user/UserEthnicity;->black:Lcom/fyber/user/UserEthnicity;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fyber/user/UserEthnicity;->hispanic:Lcom/fyber/user/UserEthnicity;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fyber/user/UserEthnicity;->indian:Lcom/fyber/user/UserEthnicity;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fyber/user/UserEthnicity;->middle_eastern:Lcom/fyber/user/UserEthnicity;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/fyber/user/UserEthnicity;->native_american:Lcom/fyber/user/UserEthnicity;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fyber/user/UserEthnicity;->pacific_islander:Lcom/fyber/user/UserEthnicity;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fyber/user/UserEthnicity;->white:Lcom/fyber/user/UserEthnicity;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fyber/user/UserEthnicity;->other:Lcom/fyber/user/UserEthnicity;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fyber/user/UserEthnicity;->a:[Lcom/fyber/user/UserEthnicity;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p3, p0, Lcom/fyber/user/UserEthnicity;->ethnicity:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/user/UserEthnicity;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/fyber/user/UserEthnicity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fyber/user/UserEthnicity;

    return-object v0
.end method

.method public static values()[Lcom/fyber/user/UserEthnicity;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/fyber/user/UserEthnicity;->a:[Lcom/fyber/user/UserEthnicity;

    invoke-virtual {v0}, [Lcom/fyber/user/UserEthnicity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/user/UserEthnicity;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fyber/user/UserEthnicity;->ethnicity:Ljava/lang/String;

    return-object v0
.end method
