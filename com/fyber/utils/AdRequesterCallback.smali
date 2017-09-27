.class public abstract Lcom/fyber/utils/AdRequesterCallback;
.super Ljava/lang/Object;
.source "AdRequesterCallback.java"

# interfaces
.implements Lcom/fyber/requesters/RequestCallback;


# instance fields
.field protected a:Lcom/fyber/requesters/Requester;


# direct methods
.method public constructor <init>(Lcom/fyber/requesters/Requester;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/fyber/utils/AdRequesterCallback;->a:Lcom/fyber/requesters/Requester;

    .line 19
    return-void
.end method


# virtual methods
.method public onAdAvailable(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public onRequestError(Lcom/fyber/requesters/RequestError;)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
