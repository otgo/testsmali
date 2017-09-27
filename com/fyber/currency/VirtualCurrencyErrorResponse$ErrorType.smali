.class public final enum Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;
.super Ljava/lang/Enum;
.source "VirtualCurrencyErrorResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/currency/VirtualCurrencyErrorResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

.field public static final enum ERROR_INVALID_RESPONSE:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

.field public static final enum ERROR_INVALID_RESPONSE_SIGNATURE:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

.field public static final enum ERROR_OTHER:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

.field public static final enum SERVER_RETURNED_ERROR:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    const-string v1, "ERROR_INVALID_RESPONSE"

    invoke-direct {v0, v1, v2}, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;->ERROR_INVALID_RESPONSE:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    .line 68
    new-instance v0, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    const-string v1, "ERROR_INVALID_RESPONSE_SIGNATURE"

    invoke-direct {v0, v1, v3}, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;->ERROR_INVALID_RESPONSE_SIGNATURE:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    .line 75
    new-instance v0, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    const-string v1, "SERVER_RETURNED_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;->SERVER_RETURNED_ERROR:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    .line 80
    new-instance v0, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    const-string v1, "ERROR_OTHER"

    invoke-direct {v0, v1, v5}, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;->ERROR_OTHER:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    sget-object v1, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;->ERROR_INVALID_RESPONSE:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;->ERROR_INVALID_RESPONSE_SIGNATURE:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;->SERVER_RETURNED_ERROR:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;->ERROR_OTHER:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;->$VALUES:[Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;->$VALUES:[Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    invoke-virtual {v0}, [Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    return-object v0
.end method
