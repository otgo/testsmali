.class Lcom/supersonic/mediationsdk/RewardedVideoManager$1;
.super Ljava/lang/Object;
.source "RewardedVideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonic/mediationsdk/RewardedVideoManager;->initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/supersonic/mediationsdk/RewardedVideoManager;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    iput-object p2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 140
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v4

    check-cast v4, Lcom/supersonic/mediationsdk/SupersonicObject;

    .line 142
    .local v4, "sso":Lcom/supersonic/mediationsdk/SupersonicObject;
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;->val$activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 143
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    const-string v6, "No Internet Connection"

    invoke-static {v6}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->access$000(Lcom/supersonic/mediationsdk/RewardedVideoManager;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    iget-object v6, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-static {v6}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->access$200(Lcom/supersonic/mediationsdk/RewardedVideoManager;)Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;->val$userId:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/supersonic/mediationsdk/SupersonicObject;->getServerResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->access$102(Lcom/supersonic/mediationsdk/RewardedVideoManager;Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    .line 150
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-static {v5}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->access$100(Lcom/supersonic/mediationsdk/RewardedVideoManager;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 152
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-static {v5}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->access$100(Lcom/supersonic/mediationsdk/RewardedVideoManager;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->isValidResponse()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 153
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-static {v5}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->access$100(Lcom/supersonic/mediationsdk/RewardedVideoManager;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getAdaptersSmartLoadAmount()I

    move-result v3

    .line 155
    .local v3, "numOfAdaptersToLoad":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 156
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-static {v5}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->access$300(Lcom/supersonic/mediationsdk/RewardedVideoManager;)Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-result-object v2

    .line 157
    .local v2, "lastLoadedAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    if-eqz v2, :cond_0

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 166
    .end local v1    # "i":I
    .end local v2    # "lastLoadedAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v3    # "numOfAdaptersToLoad":I
    :cond_2
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-static {v5}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->access$100(Lcom/supersonic/mediationsdk/RewardedVideoManager;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getReponseError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 167
    .local v0, "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    if-nez v0, :cond_3

    .line 168
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildNoConfigurationAvailableError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 170
    :cond_3
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-static {v5, v0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->access$000(Lcom/supersonic/mediationsdk/RewardedVideoManager;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0

    .line 176
    .end local v0    # "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    :cond_4
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildNoConfigurationAvailableError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 177
    .restart local v0    # "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-static {v5, v0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->access$000(Lcom/supersonic/mediationsdk/RewardedVideoManager;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method
