.class final Lcom/unity3d/ads/android/video/j;
.super Ljava/util/TimerTask;
.source "UnityAdsVideoPlayView.java"


# instance fields
.field final synthetic a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

.field private b:Ljava/lang/Float;

.field private c:Ljava/lang/Float;

.field private d:Ljava/lang/Float;

.field private e:I

.field private f:Z

.field private g:Z


# direct methods
.method private constructor <init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 429
    iput-object p1, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 430
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/video/j;->b:Ljava/lang/Float;

    .line 431
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/video/j;->c:Ljava/lang/Float;

    .line 432
    const v0, 0x3c23d70a    # 0.01f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/video/j;->d:Ljava/lang/Float;

    .line 433
    const/4 v0, 0x1

    iput v0, p0, Lcom/unity3d/ads/android/video/j;->e:I

    .line 434
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/j;->f:Z

    .line 435
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/j;->g:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;B)V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/unity3d/ads/android/video/j;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/ads/android/video/j;)Z
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/j;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/unity3d/ads/android/video/j;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->b:Ljava/lang/Float;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x1

    .line 439
    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->u(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_2

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->v(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    .line 569
    :cond_1
    :goto_0
    return-void

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->b:Ljava/lang/Float;

    iput-object v0, p0, Lcom/unity3d/ads/android/video/j;->c:Ljava/lang/Float;

    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoView;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/video/j;->b:Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 462
    :try_start_1
    iget-object v1, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoView;->getDuration()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 469
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 470
    iput v1, p0, Lcom/unity3d/ads/android/video/j;->e:I

    .line 472
    :cond_3
    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->b:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/unity3d/ads/android/video/j;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 474
    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->b:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v4, p0, Lcom/unity3d/ads/android/video/j;->c:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_c

    .line 475
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/j;->f:Z

    .line 476
    iput-boolean v3, p0, Lcom/unity3d/ads/android/video/j;->g:Z

    .line 477
    iget-object v4, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    const/4 v5, 0x4

    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a()Z

    move-result v6

    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->d:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_b

    move v0, v2

    :goto_3
    invoke-static {v4, v5, v6, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;IZZ)V

    .line 483
    :goto_4
    new-instance v0, Lcom/unity3d/ads/android/video/k;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/video/k;-><init>(Lcom/unity3d/ads/android/video/j;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 490
    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->d:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_e

    iget v0, p0, Lcom/unity3d/ads/android/video/j;->e:I

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_e

    .line 491
    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    long-to-float v0, v4

    iget-object v3, p0, Lcom/unity3d/ads/android/video/j;->b:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/video/j;->d:Ljava/lang/Float;

    .line 493
    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->d:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v0, v8

    if-gez v0, :cond_4

    .line 494
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/video/j;->d:Ljava/lang/Float;

    .line 496
    :cond_4
    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->d:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v8

    if-nez v0, :cond_d

    .line 497
    new-instance v0, Lcom/unity3d/ads/android/video/l;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/video/l;-><init>(Lcom/unity3d/ads/android/video/j;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 525
    :cond_5
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v4, v0

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    cmpl-double v0, v4, v6

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->x(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;

    move-result-object v0

    sget-object v3, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->FirstQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 526
    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    move-result-object v0

    sget-object v3, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->FirstQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-interface {v0, v3}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onEventPositionReached(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)V

    .line 527
    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->x(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;

    move-result-object v0

    sget-object v3, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->FirstQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v4, v6

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->x(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;

    move-result-object v0

    sget-object v3, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->MidPoint:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 530
    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    move-result-object v0

    sget-object v3, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->MidPoint:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-interface {v0, v3}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onEventPositionReached(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)V

    .line 531
    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->x(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;

    move-result-object v0

    sget-object v3, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->MidPoint:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    cmpl-double v0, v0, v4

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->x(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->ThirdQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 534
    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->ThirdQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-interface {v0, v1}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onEventPositionReached(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)V

    .line 535
    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->x(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->ThirdQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    :cond_8
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/j;->f:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->y(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-lez v0, :cond_9

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v2}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->y(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_9

    .line 540
    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/j;->cancel()Z

    .line 541
    new-instance v0, Lcom/unity3d/ads/android/video/o;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/video/o;-><init>(Lcom/unity3d/ads/android/video/j;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 550
    :cond_9
    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/j;->f:Z

    if-eqz v0, :cond_1

    .line 551
    new-instance v0, Lcom/unity3d/ads/android/video/p;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/video/p;-><init>(Lcom/unity3d/ads/android/video/j;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 450
    :catch_0
    move-exception v0

    const-string v0, "Could not get videoView currentPosition"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->c:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_a

    .line 452
    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->c:Ljava/lang/Float;

    iput-object v0, p0, Lcom/unity3d/ads/android/video/j;->b:Ljava/lang/Float;

    goto/16 :goto_1

    .line 454
    :cond_a
    const v0, 0x3c23d70a    # 0.01f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/video/j;->b:Ljava/lang/Float;

    goto/16 :goto_1

    .line 465
    :catch_1
    move-exception v0

    const-string v0, "Could not get videoView duration"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 466
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move v1, v2

    goto/16 :goto_2

    :cond_b
    move v0, v3

    .line 477
    goto/16 :goto_3

    .line 479
    :cond_c
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/j;->g:Z

    .line 480
    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0, v3, v2, v2}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;IZZ)V

    goto/16 :goto_4

    .line 505
    :cond_d
    new-instance v0, Lcom/unity3d/ads/android/video/m;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/video/m;-><init>(Lcom/unity3d/ads/android/video/j;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 516
    :cond_e
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/j;->f:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/unity3d/ads/android/video/j;->e:I

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_5

    .line 517
    new-instance v0, Lcom/unity3d/ads/android/video/n;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/video/n;-><init>(Lcom/unity3d/ads/android/video/j;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5
.end method
