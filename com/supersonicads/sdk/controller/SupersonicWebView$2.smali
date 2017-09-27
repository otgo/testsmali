.class Lcom/supersonicads/sdk/controller/SupersonicWebView$2;
.super Landroid/os/CountDownTimer;
.source "SupersonicWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView;->load(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

.field final synthetic val$loadAttemp:I


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;JJI)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 2302
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iput p6, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->val$loadAttemp:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 2311
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Loading Controller Timer Finish"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    iget v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->val$loadAttemp:I

    if-ne v0, v2, :cond_4

    .line 2315
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2318
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2319
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 2322
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2323
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 2326
    :cond_1
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2327
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 2330
    :cond_2
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2331
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 2339
    :cond_3
    :goto_0
    return-void

    .line 2337
    :cond_4
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->load(I)V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 3
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$2;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading Controller Timer Tick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    return-void
.end method
