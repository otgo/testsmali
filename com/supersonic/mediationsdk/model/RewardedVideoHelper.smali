.class public Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;
.super Ljava/lang/Object;
.source "RewardedVideoHelper.java"


# instance fields
.field private mCurrentVideosPresented:I

.field private mMaxVideosPerSession:I

.field private mPlacementName:Ljava/lang/String;

.field private mVideoAvailability:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->initState()V

    .line 16
    return-void
.end method

.method private initState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->mVideoAvailability:Ljava/lang/Boolean;

    .line 24
    iput v1, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->mCurrentVideosPresented:I

    .line 25
    iput v1, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->mMaxVideosPerSession:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->mPlacementName:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public canShowVideoInCurrentSession()Z
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->mCurrentVideosPresented:I

    iget v1, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->mMaxVideosPerSession:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlacementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->mPlacementName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized increaseCurrentVideo()Z
    .locals 3

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->mCurrentVideosPresented:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->mCurrentVideosPresented:I

    .line 72
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->canShowVideoInCurrentSession()Z

    move-result v0

    .line 74
    .local v0, "canShowMore":Z
    invoke-virtual {p0, v0}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->setVideoAvailability(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 77
    .local v1, "result":Z
    monitor-exit p0

    return v1

    .line 69
    .end local v0    # "canShowMore":Z
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized isVideoAvailable()Z
    .locals 2

    .prologue
    .line 86
    monitor-enter p0

    const/4 v0, 0x0

    .line 88
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->mVideoAvailability:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->mVideoAvailability:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 92
    :cond_0
    monitor-exit p0

    return v0

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->initState()V

    .line 52
    return-void
.end method

.method public setMaxVideo(I)V
    .locals 0
    .param p1, "maxVideo"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->mMaxVideosPerSession:I

    .line 61
    return-void
.end method

.method public setPlacementName(Ljava/lang/String;)V
    .locals 0
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->mPlacementName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public declared-synchronized setVideoAvailability(Z)Z
    .locals 2
    .param p1, "availability"    # Z

    .prologue
    .line 102
    monitor-enter p0

    const/4 v0, 0x0

    .line 104
    .local v0, "shouldNotify":Z
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->canShowVideoInCurrentSession()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->mVideoAvailability:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->mVideoAvailability:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 107
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->mVideoAvailability:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    const/4 v0, 0x1

    .line 111
    :cond_1
    monitor-exit p0

    return v0

    .line 104
    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
