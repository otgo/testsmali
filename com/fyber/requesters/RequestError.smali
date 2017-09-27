.class public final enum Lcom/fyber/requesters/RequestError;
.super Ljava/lang/Enum;
.source "RequestError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fyber/requesters/RequestError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONNECTION_ERROR:Lcom/fyber/requesters/RequestError;

.field public static final enum DEVICE_NOT_SUPPORTED:Lcom/fyber/requesters/RequestError;

.field public static final enum ERROR_REQUESTING_ADS:Lcom/fyber/requesters/RequestError;

.field public static final enum MISMATCH_CALLBACK_TYPE:Lcom/fyber/requesters/RequestError;

.field public static final enum NULL_CONTEXT_REFERENCE:Lcom/fyber/requesters/RequestError;

.field public static final enum SDK_NOT_STARTED:Lcom/fyber/requesters/RequestError;

.field public static final enum SECURITY_TOKEN_NOT_PROVIDED:Lcom/fyber/requesters/RequestError;

.field public static final enum UNABLE_TO_REQUEST_ADS:Lcom/fyber/requesters/RequestError;

.field public static final enum UNKNOWN_ERROR:Lcom/fyber/requesters/RequestError;

.field private static final synthetic b:[Lcom/fyber/requesters/RequestError;


# instance fields
.field private a:Ljava/lang/String;


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
    new-instance v0, Lcom/fyber/requesters/RequestError;

    const-string v1, "DEVICE_NOT_SUPPORTED"

    const-string v2, "Only devices running Android API level 10 and above are supported"

    invoke-direct {v0, v1, v4, v2}, Lcom/fyber/requesters/RequestError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/requesters/RequestError;->DEVICE_NOT_SUPPORTED:Lcom/fyber/requesters/RequestError;

    .line 20
    new-instance v0, Lcom/fyber/requesters/RequestError;

    const-string v1, "CONNECTION_ERROR"

    const-string v2, "Internet connection error"

    invoke-direct {v0, v1, v5, v2}, Lcom/fyber/requesters/RequestError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/requesters/RequestError;->CONNECTION_ERROR:Lcom/fyber/requesters/RequestError;

    .line 24
    new-instance v0, Lcom/fyber/requesters/RequestError;

    const-string v1, "UNKNOWN_ERROR"

    const-string v2, "An unknown error occurred"

    invoke-direct {v0, v1, v6, v2}, Lcom/fyber/requesters/RequestError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/requesters/RequestError;->UNKNOWN_ERROR:Lcom/fyber/requesters/RequestError;

    .line 28
    new-instance v0, Lcom/fyber/requesters/RequestError;

    const-string v1, "SDK_NOT_STARTED"

    const-string v2, "You need to start the SDK"

    invoke-direct {v0, v1, v7, v2}, Lcom/fyber/requesters/RequestError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/requesters/RequestError;->SDK_NOT_STARTED:Lcom/fyber/requesters/RequestError;

    .line 32
    new-instance v0, Lcom/fyber/requesters/RequestError;

    const-string v1, "MISMATCH_CALLBACK_TYPE"

    const-string v2, "You need to provide the correct callback for the requester"

    invoke-direct {v0, v1, v8, v2}, Lcom/fyber/requesters/RequestError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/requesters/RequestError;->MISMATCH_CALLBACK_TYPE:Lcom/fyber/requesters/RequestError;

    .line 36
    new-instance v0, Lcom/fyber/requesters/RequestError;

    const-string v1, "NULL_CONTEXT_REFERENCE"

    const/4 v2, 0x5

    const-string v3, "The context reference cannot be null"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/requesters/RequestError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/requesters/RequestError;->NULL_CONTEXT_REFERENCE:Lcom/fyber/requesters/RequestError;

    .line 40
    new-instance v0, Lcom/fyber/requesters/RequestError;

    const-string v1, "SECURITY_TOKEN_NOT_PROVIDED"

    const/4 v2, 0x6

    const-string v3, "The security token was not provided when starting the SDK."

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/requesters/RequestError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/requesters/RequestError;->SECURITY_TOKEN_NOT_PROVIDED:Lcom/fyber/requesters/RequestError;

    .line 44
    new-instance v0, Lcom/fyber/requesters/RequestError;

    const-string v1, "ERROR_REQUESTING_ADS"

    const/4 v2, 0x7

    const-string v3, "An error happened while trying to retrieve ads"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/requesters/RequestError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/requesters/RequestError;->ERROR_REQUESTING_ADS:Lcom/fyber/requesters/RequestError;

    .line 48
    new-instance v0, Lcom/fyber/requesters/RequestError;

    const-string v1, "UNABLE_TO_REQUEST_ADS"

    const/16 v2, 0x8

    const-string v3, "The SDK is unable to request right now because it is either already performing a request or showing an ad"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/requesters/RequestError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/requesters/RequestError;->UNABLE_TO_REQUEST_ADS:Lcom/fyber/requesters/RequestError;

    .line 11
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/fyber/requesters/RequestError;

    sget-object v1, Lcom/fyber/requesters/RequestError;->DEVICE_NOT_SUPPORTED:Lcom/fyber/requesters/RequestError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fyber/requesters/RequestError;->CONNECTION_ERROR:Lcom/fyber/requesters/RequestError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fyber/requesters/RequestError;->UNKNOWN_ERROR:Lcom/fyber/requesters/RequestError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fyber/requesters/RequestError;->SDK_NOT_STARTED:Lcom/fyber/requesters/RequestError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fyber/requesters/RequestError;->MISMATCH_CALLBACK_TYPE:Lcom/fyber/requesters/RequestError;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/fyber/requesters/RequestError;->NULL_CONTEXT_REFERENCE:Lcom/fyber/requesters/RequestError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fyber/requesters/RequestError;->SECURITY_TOKEN_NOT_PROVIDED:Lcom/fyber/requesters/RequestError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fyber/requesters/RequestError;->ERROR_REQUESTING_ADS:Lcom/fyber/requesters/RequestError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fyber/requesters/RequestError;->UNABLE_TO_REQUEST_ADS:Lcom/fyber/requesters/RequestError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fyber/requesters/RequestError;->b:[Lcom/fyber/requesters/RequestError;

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
    iput-object p3, p0, Lcom/fyber/requesters/RequestError;->a:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/requesters/RequestError;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/fyber/requesters/RequestError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fyber/requesters/RequestError;

    return-object v0
.end method

.method public static values()[Lcom/fyber/requesters/RequestError;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/fyber/requesters/RequestError;->b:[Lcom/fyber/requesters/RequestError;

    invoke-virtual {v0}, [Lcom/fyber/requesters/RequestError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/requesters/RequestError;

    return-object v0
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fyber/requesters/RequestError;->a:Ljava/lang/String;

    return-object v0
.end method
