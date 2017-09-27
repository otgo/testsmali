.class Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$1;
.super Ljava/lang/Object;
.source "SupersonicAdsAdvertiserAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->reportAppStarted(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$1;->this$0:Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;

    iput-object p2, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 74
    iget-object v4, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$1;->this$0:Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;

    iget-object v5, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$1;->val$context:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->access$000(Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "reqParams":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/campaigns/onLoad?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "file":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-static {}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->access$300()I

    move-result v6

    invoke-direct {v2, v4, v5, v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    .local v2, "requestURL":Ljava/net/URL;
    iget-object v4, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$1;->this$0:Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;

    iget-object v5, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4, v2, v5}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->performRequest(Ljava/net/URL;Landroid/content/Context;)Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;

    move-result-object v3

    .line 86
    .local v3, "result":Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;
    invoke-virtual {v3}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 87
    iget-object v4, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$1;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper(Landroid/content/Context;)Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setReportAppStarted(Z)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v2    # "requestURL":Ljava/net/URL;
    .end local v3    # "result":Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v4

    goto :goto_0
.end method
