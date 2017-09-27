.class final Lcom/fyber/requesters/c;
.super Lcom/fyber/utils/b;
.source "InterstitialRequester.java"


# instance fields
.field final synthetic a:Lcom/fyber/requesters/RequestError;

.field final synthetic b:Lcom/fyber/requesters/InterstitialRequester$a;


# direct methods
.method constructor <init>(Lcom/fyber/requesters/InterstitialRequester$a;Lcom/fyber/requesters/RequestError;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/fyber/requesters/c;->b:Lcom/fyber/requesters/InterstitialRequester$a;

    iput-object p2, p0, Lcom/fyber/requesters/c;->a:Lcom/fyber/requesters/RequestError;

    invoke-direct {p0}, Lcom/fyber/utils/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fyber/requesters/c;->b:Lcom/fyber/requesters/InterstitialRequester$a;

    iget-object v0, v0, Lcom/fyber/requesters/InterstitialRequester$a;->a:Lcom/fyber/requesters/InterstitialRequester;

    iget-object v0, v0, Lcom/fyber/requesters/InterstitialRequester;->a:Lcom/fyber/requesters/Callback;

    iget-object v1, p0, Lcom/fyber/requesters/c;->a:Lcom/fyber/requesters/RequestError;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/Callback;->onRequestError(Lcom/fyber/requesters/RequestError;)V

    .line 122
    return-void
.end method
