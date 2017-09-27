.class Lcom/warlings2/googleservices$6;
.super Ljava/lang/Object;
.source "googleservices.java"

# interfaces
.implements Lcom/supersonic/mediationsdk/sdk/OfferwallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warlings2/googleservices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/warlings2/googleservices;


# direct methods
.method constructor <init>(Lcom/warlings2/googleservices;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/warlings2/googleservices$6;->this$0:Lcom/warlings2/googleservices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetOfferwallCreditsFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 3

    .prologue
    .line 398
    const-string v0, "Supersonic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetOfferwallCreditsFail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-void
.end method

.method public onOfferwallAdCredited(IIZ)Z
    .locals 3

    .prologue
    .line 392
    const-string v0, "Supersonic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOfferwallAdCredited: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/warlings2/googleservices;->give_reward(II)V

    .line 394
    const/4 v0, 0x1

    return v0
.end method

.method public onOfferwallClosed()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method public onOfferwallInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 3

    .prologue
    .line 372
    const-string v0, "Supersonic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOfferwallInitFail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void
.end method

.method public onOfferwallInitSuccess()V
    .locals 2

    .prologue
    .line 369
    const-string v0, "Supersonic"

    const-string v1, "onOfferwallInitSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void
.end method

.method public onOfferwallOpened()V
    .locals 0

    .prologue
    .line 374
    return-void
.end method

.method public onOfferwallShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 0

    .prologue
    .line 375
    return-void
.end method
