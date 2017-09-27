.class final Lcom/fyber/requesters/InterstitialRequester$a;
.super Ljava/lang/Object;
.source "InterstitialRequester.java"

# interfaces
.implements Lcom/fyber/requesters/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/requesters/InterstitialRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/requesters/InterstitialRequester;


# direct methods
.method private constructor <init>(Lcom/fyber/requesters/InterstitialRequester;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/fyber/requesters/InterstitialRequester$a;->a:Lcom/fyber/requesters/InterstitialRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fyber/requesters/InterstitialRequester;B)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/fyber/requesters/InterstitialRequester$a;-><init>(Lcom/fyber/requesters/InterstitialRequester;)V

    return-void
.end method


# virtual methods
.method public final onAdAvailable(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/fyber/requesters/InterstitialRequester$a;->a:Lcom/fyber/requesters/InterstitialRequester;

    new-instance v1, Lcom/fyber/requesters/a;

    invoke-direct {v1, p0, p1}, Lcom/fyber/requesters/a;-><init>(Lcom/fyber/requesters/InterstitialRequester$a;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/fyber/requesters/InterstitialRequester;->a(Lcom/fyber/utils/b;)V

    .line 104
    return-void
.end method

.method public final onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/fyber/requesters/InterstitialRequester$a;->a:Lcom/fyber/requesters/InterstitialRequester;

    new-instance v1, Lcom/fyber/requesters/b;

    invoke-direct {v1, p0}, Lcom/fyber/requesters/b;-><init>(Lcom/fyber/requesters/InterstitialRequester$a;)V

    invoke-virtual {v0, v1}, Lcom/fyber/requesters/InterstitialRequester;->a(Lcom/fyber/utils/b;)V

    .line 114
    return-void
.end method

.method public final onRequestError(Lcom/fyber/requesters/RequestError;)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/fyber/requesters/InterstitialRequester$a;->a:Lcom/fyber/requesters/InterstitialRequester;

    new-instance v1, Lcom/fyber/requesters/c;

    invoke-direct {v1, p0, p1}, Lcom/fyber/requesters/c;-><init>(Lcom/fyber/requesters/InterstitialRequester$a;Lcom/fyber/requesters/RequestError;)V

    invoke-virtual {v0, v1}, Lcom/fyber/requesters/InterstitialRequester;->a(Lcom/fyber/utils/b;)V

    .line 124
    return-void
.end method
