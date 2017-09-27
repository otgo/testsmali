.class Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$15;
.super Ljava/lang/Object;
.source "SupersonicWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->onAdWindowsClosed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

.field final synthetic val$product:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2195
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$15;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

    iput-object p2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$15;->val$product:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2197
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$15;->val$product:Ljava/lang/String;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2198
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$15;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

    iget-object v0, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;->onRVAdClosed()V

    .line 2204
    :cond_0
    :goto_0
    return-void

    .line 2199
    :cond_1
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$15;->val$product:Ljava/lang/String;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2200
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$15;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

    iget-object v0, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/supersonicads/sdk/listeners/OnInterstitialListener;->onInterstitialAdClosed()V

    goto :goto_0

    .line 2201
    :cond_2
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$15;->val$product:Ljava/lang/String;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2202
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$15;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

    iget-object v0, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3100(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/supersonicads/sdk/listeners/OnOfferWallListener;->onOWAdClosed()V

    goto :goto_0
.end method
