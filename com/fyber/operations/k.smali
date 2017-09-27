.class final Lcom/fyber/operations/k;
.super Lcom/fyber/utils/b;
.source "VirtualCurrencyNetworkOperation.java"


# instance fields
.field final synthetic a:Lcom/fyber/operations/j;


# direct methods
.method constructor <init>(Lcom/fyber/operations/j;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/fyber/operations/k;->a:Lcom/fyber/operations/j;

    invoke-direct {p0}, Lcom/fyber/utils/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fyber/operations/k;->a:Lcom/fyber/operations/j;

    invoke-static {v0}, Lcom/fyber/operations/j;->a(Lcom/fyber/operations/j;)Lcom/fyber/requesters/VirtualCurrencyCallback;

    move-result-object v0

    sget-object v1, Lcom/fyber/requesters/RequestError;->CONNECTION_ERROR:Lcom/fyber/requesters/RequestError;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/VirtualCurrencyCallback;->onRequestError(Lcom/fyber/requesters/RequestError;)V

    .line 130
    return-void
.end method
