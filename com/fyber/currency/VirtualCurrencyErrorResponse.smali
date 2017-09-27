.class public Lcom/fyber/currency/VirtualCurrencyErrorResponse;
.super Ljava/lang/Object;
.source "VirtualCurrencyErrorResponse.java"

# interfaces
.implements Lcom/fyber/operations/j$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;
    }
.end annotation


# instance fields
.field private final a:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/fyber/currency/VirtualCurrencyErrorResponse;->a:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    .line 27
    iput-object p2, p0, Lcom/fyber/currency/VirtualCurrencyErrorResponse;->b:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/fyber/currency/VirtualCurrencyErrorResponse;->c:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getError()Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fyber/currency/VirtualCurrencyErrorResponse;->a:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fyber/currency/VirtualCurrencyErrorResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fyber/currency/VirtualCurrencyErrorResponse;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/currency/VirtualCurrencyErrorResponse;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
