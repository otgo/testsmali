.class public final enum Lcom/sponsorpay/user/SPUserGender;
.super Ljava/lang/Enum;
.source "SPUserGender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/user/SPUserGender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/sponsorpay/user/SPUserGender;

.field public static final enum female:Lcom/sponsorpay/user/SPUserGender;

.field public static final enum male:Lcom/sponsorpay/user/SPUserGender;

.field public static final enum other:Lcom/sponsorpay/user/SPUserGender;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/sponsorpay/user/SPUserGender;

    const-string v1, "male"

    invoke-direct {v0, v1, v2}, Lcom/sponsorpay/user/SPUserGender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/user/SPUserGender;->male:Lcom/sponsorpay/user/SPUserGender;

    .line 11
    new-instance v0, Lcom/sponsorpay/user/SPUserGender;

    const-string v1, "female"

    invoke-direct {v0, v1, v3}, Lcom/sponsorpay/user/SPUserGender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/user/SPUserGender;->female:Lcom/sponsorpay/user/SPUserGender;

    .line 12
    new-instance v0, Lcom/sponsorpay/user/SPUserGender;

    const-string v1, "other"

    invoke-direct {v0, v1, v4}, Lcom/sponsorpay/user/SPUserGender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/user/SPUserGender;->other:Lcom/sponsorpay/user/SPUserGender;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sponsorpay/user/SPUserGender;

    sget-object v1, Lcom/sponsorpay/user/SPUserGender;->male:Lcom/sponsorpay/user/SPUserGender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sponsorpay/user/SPUserGender;->female:Lcom/sponsorpay/user/SPUserGender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sponsorpay/user/SPUserGender;->other:Lcom/sponsorpay/user/SPUserGender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sponsorpay/user/SPUserGender;->a:[Lcom/sponsorpay/user/SPUserGender;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sponsorpay/user/SPUserGender;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/sponsorpay/user/SPUserGender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/user/SPUserGender;

    return-object v0
.end method

.method public static values()[Lcom/sponsorpay/user/SPUserGender;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/sponsorpay/user/SPUserGender;->a:[Lcom/sponsorpay/user/SPUserGender;

    invoke-virtual {v0}, [Lcom/sponsorpay/user/SPUserGender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sponsorpay/user/SPUserGender;

    return-object v0
.end method
