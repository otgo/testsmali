.class Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent$2;
.super Ljava/lang/Object;
.source "SupersonicAdsPublisherAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->release(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent$2;->this$0:Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent$2;->this$0:Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    invoke-static {v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->access$000(Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;)Lcom/supersonicads/sdk/controller/SupersonicWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->destroy()V

    .line 233
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent$2;->this$0:Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->access$002(Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .line 234
    return-void
.end method
