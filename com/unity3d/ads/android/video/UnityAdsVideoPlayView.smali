.class public Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;
.super Landroid/widget/RelativeLayout;
.source "UnityAdsVideoPlayView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:J

.field private c:J

.field private d:F

.field private final e:Ljava/util/Map;

.field private f:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

.field private g:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

.field private h:Landroid/widget/LinearLayout;

.field private i:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

.field private j:Ljava/util/Timer;

.field private k:Landroid/media/MediaPlayer;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Landroid/widget/RelativeLayout;

.field private q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/TextView;

    .line 37
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:J

    .line 38
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:J

    .line 39
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:F

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e:Ljava/util/Map;

    .line 42
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    .line 43
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    .line 44
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/LinearLayout;

    .line 47
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:Ljava/util/Timer;

    .line 48
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->k:Landroid/media/MediaPlayer;

    .line 50
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->l:Z

    .line 51
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Z

    .line 52
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Z

    .line 53
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->o:Z

    .line 55
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Landroid/widget/RelativeLayout;

    .line 56
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    .line 57
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Landroid/widget/TextView;

    .line 58
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->s:Landroid/widget/TextView;

    .line 62
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/TextView;

    .line 37
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:J

    .line 38
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:J

    .line 39
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:F

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e:Ljava/util/Map;

    .line 42
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    .line 43
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    .line 44
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/LinearLayout;

    .line 47
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:Ljava/util/Timer;

    .line 48
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->k:Landroid/media/MediaPlayer;

    .line 50
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->l:Z

    .line 51
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Z

    .line 52
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Z

    .line 53
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->o:Z

    .line 55
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Landroid/widget/RelativeLayout;

    .line 56
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    .line 57
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Landroid/widget/TextView;

    .line 58
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->s:Landroid/widget/TextView;

    .line 67
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/TextView;

    .line 37
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:J

    .line 38
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:J

    .line 39
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:F

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e:Ljava/util/Map;

    .line 42
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    .line 43
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    .line 44
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/LinearLayout;

    .line 47
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:Ljava/util/Timer;

    .line 48
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->k:Landroid/media/MediaPlayer;

    .line 50
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->l:Z

    .line 51
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Z

    .line 52
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Z

    .line 53
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->o:Z

    .line 55
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Landroid/widget/RelativeLayout;

    .line 56
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    .line 57
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Landroid/widget/TextView;

    .line 58
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->s:Landroid/widget/TextView;

    .line 73
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e()V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->k:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private a(J)V
    .locals 5

    .prologue
    .line 338
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Landroid/widget/RelativeLayout;

    sget v1, Lcom/unity3d/ads/android/R$id;->unityAdsVideoSkipText:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Landroid/widget/TextView;

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/unity3d/ads/android/R$string;->skip_video_prefix:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/unity3d/ads/android/R$string;->skip_video_suffix:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    return-void
.end method

.method static synthetic a(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;IZZ)V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/unity3d/ads/android/video/i;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/unity3d/ads/android/video/i;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;IZZ)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;J)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a(J)V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;J)J
    .locals 1

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:J

    return-wide p1
.end method

.method static synthetic b(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/UnityAdsVideoView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->l:Z

    .line 196
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d()V

    .line 197
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    invoke-interface {v0}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onVideoPlaybackError()V

    .line 199
    :cond_0
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x1f4

    .line 202
    new-instance v0, Lcom/unity3d/ads/android/video/c;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/video/c;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 209
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:Ljava/util/Timer;

    .line 211
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:Ljava/util/Timer;

    new-instance v1, Lcom/unity3d/ads/android/video/j;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/unity3d/ads/android/video/j;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;B)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 213
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 33
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    invoke-virtual {p0, v1, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 218
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:Ljava/util/Timer;

    .line 221
    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x2

    .line 224
    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 225
    sget v1, Lcom/unity3d/ads/android/R$layout;->unityads_view_video_play:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Landroid/widget/RelativeLayout;

    .line 227
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->muteVideoSounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Z

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Landroid/widget/RelativeLayout;

    sget v1, Lcom/unity3d/ads/android/R$id;->unityAdsVideoView:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    .line 233
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    invoke-virtual {v0, v2}, Lcom/unity3d/ads/android/video/UnityAdsVideoView;->setClickable(Z)V

    .line 234
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    new-instance v1, Lcom/unity3d/ads/android/video/d;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/android/video/d;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 240
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    new-instance v1, Lcom/unity3d/ads/android/video/e;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/android/video/e;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 255
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Landroid/widget/RelativeLayout;

    sget v1, Lcom/unity3d/ads/android/R$id;->unityAdsVideoBufferingText:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->s:Landroid/widget/TextView;

    .line 256
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Landroid/widget/RelativeLayout;

    sget v1, Lcom/unity3d/ads/android/R$id;->unityAdsVideoCountDown:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/LinearLayout;

    .line 257
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Landroid/widget/RelativeLayout;

    sget v1, Lcom/unity3d/ads/android/R$id;->unityAdsVideoTimeLeftText:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/TextView;

    .line 258
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/TextView;

    sget v1, Lcom/unity3d/ads/android/R$string;->default_video_length_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 259
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Landroid/widget/RelativeLayout;

    sget v1, Lcom/unity3d/ads/android/R$id;->unityAdsVideoSkipText:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Landroid/widget/TextView;

    .line 260
    new-instance v0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    .line 261
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Landroid/widget/RelativeLayout;

    sget v2, Lcom/unity3d/ads/android/R$id;->unityAdsAudioToggleView:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->setLayout(Landroid/widget/RelativeLayout;)V

    .line 263
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Z

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->Muted:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->setState(Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;)V

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Landroid/widget/RelativeLayout;

    sget v1, Lcom/unity3d/ads/android/R$id;->unityAdsAudioToggleView:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/unity3d/ads/android/video/f;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/android/video/f;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_DEVELOPER_INTERNAL_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 288
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 289
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 290
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 291
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 294
    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 295
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 296
    const-string v2, "INTERNAL UNITY TEST BUILD\nDO NOT USE IN PRODUCTION"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 299
    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->addView(Landroid/view/View;)V

    .line 302
    :cond_2
    invoke-static {}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 303
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getSkipDuration()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a(J)V

    .line 306
    :cond_3
    new-instance v0, Lcom/unity3d/ads/android/video/g;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/video/g;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    return-void
.end method

.method static synthetic e(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Z

    return v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 346
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Landroid/widget/RelativeLayout;

    sget v1, Lcom/unity3d/ads/android/R$id;->unityAdsVideoTimeLeftText:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/TextView;

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/video/UnityAdsVideoView;->getDuration()I

    move-result v2

    iget-object v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    invoke-virtual {v3}, Lcom/unity3d/ads/android/video/UnityAdsVideoView;->getCurrentPosition()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit16 v2, v2, 0x3e8

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    return-void
.end method

.method static synthetic f(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 5

    .prologue
    const/4 v2, 0x3

    .line 33
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v3, v0

    div-float/2addr v2, v3

    int-to-float v3, v1

    mul-float/2addr v3, v2

    iput v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:F

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Storing volume: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->k:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private static g()Z
    .locals 4

    .prologue
    .line 365
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->allowVideoSkipInSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSkipDuration()J
    .locals 2

    .prologue
    .line 370
    invoke-static {}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->allowVideoSkipInSeconds()J

    move-result-wide v0

    .line 375
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 382
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->o:Z

    return v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->removeView(Landroid/view/View;)V

    .line 391
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->o:Z

    return v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h()V

    .line 396
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Z

    return v0
.end method

.method static synthetic k(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    return-object v0
.end method

.method static synthetic l(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:F

    return v0
.end method

.method static synthetic m(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i()V

    return-void
.end method

.method static synthetic n(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c()V

    return-void
.end method

.method static synthetic o(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getSkipDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic r(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Landroid/widget/RelativeLayout;

    sget v1, Lcom/unity3d/ads/android/R$id;->unityAdsVideoSkipText:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Landroid/widget/TextView;

    sget v1, Lcom/unity3d/ads/android/R$string;->skip_video_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Landroid/widget/TextView;

    new-instance v1, Lcom/unity3d/ads/android/video/h;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/android/video/h;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method static synthetic s(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h()V

    return-void
.end method

.method static synthetic t(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j()V

    return-void
.end method

.method static synthetic u(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic v(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d()V

    return-void
.end method

.method static synthetic w(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f()V

    return-void
.end method

.method static synthetic x(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic y(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:J

    return-wide v0
.end method

.method static synthetic z(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Z

    return v0
.end method


# virtual methods
.method public clearVideoPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setKeepScreenOn(Z)V

    .line 149
    invoke-virtual {p0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-virtual {p0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 152
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j()V

    .line 153
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/unity3d/ads/android/view/UnityAdsViewUtils;->removeViewFromParent(Landroid/view/View;)V

    .line 154
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i()V

    .line 155
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d()V

    .line 156
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoView;->stopPlayback()V

    .line 157
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 158
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 159
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 161
    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->removeAllViews()V

    .line 162
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoView;->getCurrentPosition()I

    move-result v0

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecondsUntilBackButtonAllowed()I
    .locals 8

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    .line 165
    .line 167
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->disableBackButtonForSeconds()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 169
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->disableBackButtonForSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-float v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 170
    if-gez v1, :cond_2

    .line 177
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->allowVideoSkipInSeconds()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-wide v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 174
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d()V

    .line 130
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Lcom/unity3d/ads/android/video/b;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/video/b;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 140
    :cond_0
    return-void
.end method

.method public playVideo(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    if-nez p1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->o:Z

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Playing video from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    new-instance v1, Lcom/unity3d/ads/android/video/a;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/android/video/a;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 96
    if-eqz p2, :cond_2

    .line 97
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    .line 99
    if-nez v0, :cond_2

    const-string v0, "COULD NOT SET FILE READABLE"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 103
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    invoke-virtual {v0, p1}, Lcom/unity3d/ads/android/video/UnityAdsVideoView;->setVideoPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->l:Z

    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f()V

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:J

    .line 114
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c()V

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    const-string v0, "For some reason the device failed to play the video, a crash was prevented."

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b()V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    invoke-virtual {v0, p1}, Lcom/unity3d/ads/android/video/UnityAdsVideoView;->seekTo(I)V

    .line 125
    :cond_0
    return-void
.end method

.method public setListener(Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    .line 78
    return-void
.end method
