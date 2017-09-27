.class public final enum Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;
.super Ljava/lang/Enum;
.source "SPCurrencyServerRequestErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ERROR_INVALID_RESPONSE:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

.field public static final enum ERROR_INVALID_RESPONSE_SIGNATURE:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

.field public static final enum ERROR_NO_INTERNET_CONNECTION:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

.field public static final enum ERROR_OTHER:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

.field public static final enum SERVER_RETURNED_ERROR:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

.field private static final synthetic a:[Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    const-string v1, "ERROR_NO_INTERNET_CONNECTION"

    invoke-direct {v0, v1, v2}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->ERROR_NO_INTERNET_CONNECTION:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    .line 20
    new-instance v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    const-string v1, "ERROR_INVALID_RESPONSE"

    invoke-direct {v0, v1, v3}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->ERROR_INVALID_RESPONSE:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    .line 25
    new-instance v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    const-string v1, "ERROR_INVALID_RESPONSE_SIGNATURE"

    invoke-direct {v0, v1, v4}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->ERROR_INVALID_RESPONSE_SIGNATURE:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    .line 32
    new-instance v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    const-string v1, "SERVER_RETURNED_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->SERVER_RETURNED_ERROR:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    .line 37
    new-instance v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    const-string v1, "ERROR_OTHER"

    invoke-direct {v0, v1, v6}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->ERROR_OTHER:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    .line 11
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    sget-object v1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->ERROR_NO_INTERNET_CONNECTION:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->ERROR_INVALID_RESPONSE:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->ERROR_INVALID_RESPONSE_SIGNATURE:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->SERVER_RETURNED_ERROR:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->ERROR_OTHER:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->a:[Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    return-object v0
.end method

.method public static values()[Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->a:[Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    invoke-virtual {v0}, [Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    return-object v0
.end method
