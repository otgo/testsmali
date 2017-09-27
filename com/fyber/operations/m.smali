.class final Lcom/fyber/operations/m;
.super Lcom/fyber/utils/b;
.source "VirtualCurrencyNetworkOperation.java"


# instance fields
.field final synthetic a:Lcom/fyber/currency/VirtualCurrencyErrorResponse;

.field final synthetic b:Lcom/fyber/operations/j;


# direct methods
.method constructor <init>(Lcom/fyber/operations/j;Lcom/fyber/currency/VirtualCurrencyErrorResponse;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/fyber/operations/m;->b:Lcom/fyber/operations/j;

    iput-object p2, p0, Lcom/fyber/operations/m;->a:Lcom/fyber/currency/VirtualCurrencyErrorResponse;

    invoke-direct {p0}, Lcom/fyber/utils/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/fyber/operations/m;->b:Lcom/fyber/operations/j;

    invoke-static {v0}, Lcom/fyber/operations/j;->a(Lcom/fyber/operations/j;)Lcom/fyber/requesters/VirtualCurrencyCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/operations/m;->a:Lcom/fyber/currency/VirtualCurrencyErrorResponse;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/VirtualCurrencyCallback;->onError(Lcom/fyber/currency/VirtualCurrencyErrorResponse;)V

    .line 330
    return-void
.end method
