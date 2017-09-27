.class final Lcom/fyber/requesters/d;
.super Lcom/fyber/utils/b;
.source "OfferWallRequester.java"


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/fyber/requesters/OfferWallRequester;


# direct methods
.method constructor <init>(Lcom/fyber/requesters/OfferWallRequester;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/fyber/requesters/d;->b:Lcom/fyber/requesters/OfferWallRequester;

    iput-object p2, p0, Lcom/fyber/requesters/d;->a:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/fyber/utils/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fyber/requesters/d;->b:Lcom/fyber/requesters/OfferWallRequester;

    iget-object v0, v0, Lcom/fyber/requesters/OfferWallRequester;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/RequestCallback;

    iget-object v1, p0, Lcom/fyber/requesters/d;->a:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/RequestCallback;->onAdAvailable(Landroid/content/Intent;)V

    .line 78
    return-void
.end method
