.class final Lcom/fyber/requesters/e;
.super Lcom/fyber/utils/b;
.source "Requester.java"


# instance fields
.field final synthetic a:Lcom/fyber/requesters/RequestError;

.field final synthetic b:Lcom/fyber/requesters/Requester;


# direct methods
.method constructor <init>(Lcom/fyber/requesters/Requester;Lcom/fyber/requesters/RequestError;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/fyber/requesters/e;->b:Lcom/fyber/requesters/Requester;

    iput-object p2, p0, Lcom/fyber/requesters/e;->a:Lcom/fyber/requesters/RequestError;

    invoke-direct {p0}, Lcom/fyber/utils/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/fyber/requesters/e;->b:Lcom/fyber/requesters/Requester;

    iget-object v0, v0, Lcom/fyber/requesters/Requester;->a:Lcom/fyber/requesters/Callback;

    iget-object v1, p0, Lcom/fyber/requesters/e;->a:Lcom/fyber/requesters/RequestError;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/Callback;->onRequestError(Lcom/fyber/requesters/RequestError;)V

    .line 233
    return-void
.end method
