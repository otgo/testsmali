.class Lcom/supersonicads/sdk/controller/SupersonicWebView$6;
.super Landroid/content/BroadcastReceiver;
.source "SupersonicWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V
    .locals 0

    .prologue
    .line 3406
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$6;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3411
    const/4 v2, 0x0

    .line 3412
    .local v2, "isWifiConnected":Z
    const/4 v1, 0x0

    .line 3414
    .local v1, "isMobileConnected":Z
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3417
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 3419
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    .line 3420
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 3422
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 3424
    if-eqz v3, :cond_1

    .line 3425
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 3427
    :cond_1
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$6;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1600(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    move-result-object v4

    sget-object v5, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    if-ne v4, v5, :cond_2

    .line 3428
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$6;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v4, v2, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->deviceStatusChanged(ZZ)V

    .line 3430
    :cond_2
    return-void
.end method
