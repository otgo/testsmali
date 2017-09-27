.class public Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;
.super Landroid/widget/RelativeLayout;
.source "UnityAdsVideoPlayView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/TextView;

.field private e:J

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/RelativeLayout;

.field private i:J

.field private j:J

.field private k:J

.field private l:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

.field private m:Ljava/util/Timer;

.field private n:Landroid/widget/VideoView;

.field private o:Ljava/lang/String;

.field private p:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

.field private q:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

.field private r:Z

.field private s:Ljava/util/Map;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Landroid/media/MediaPlayer;

.field private x:Z

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    .line 38
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:Landroid/widget/TextView;

    .line 40
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    .line 41
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:Landroid/widget/TextView;

    .line 42
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e:J

    .line 43
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Landroid/widget/RelativeLayout;

    .line 44
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Landroid/widget/TextView;

    .line 46
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/RelativeLayout;

    .line 48
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i:J

    .line 49
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:J

    .line 50
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->k:J

    .line 53
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Ljava/util/Timer;

    .line 54
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    .line 55
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->o:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    .line 57
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    .line 58
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Z

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->s:Ljava/util/Map;

    .line 60
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->t:Z

    .line 61
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->u:Z

    .line 62
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->v:Z

    .line 63
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->w:Landroid/media/MediaPlayer;

    .line 64
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->x:Z

    .line 65
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->y:F

    .line 75
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e()V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    .line 38
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:Landroid/widget/TextView;

    .line 40
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    .line 41
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:Landroid/widget/TextView;

    .line 42
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e:J

    .line 43
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Landroid/widget/RelativeLayout;

    .line 44
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Landroid/widget/TextView;

    .line 46
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/RelativeLayout;

    .line 48
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i:J

    .line 49
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:J

    .line 50
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->k:J

    .line 53
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Ljava/util/Timer;

    .line 54
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    .line 55
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->o:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    .line 57
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    .line 58
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Z

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->s:Ljava/util/Map;

    .line 60
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->t:Z

    .line 61
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->u:Z

    .line 62
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->v:Z

    .line 63
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->w:Landroid/media/MediaPlayer;

    .line 64
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->x:Z

    .line 65
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->y:F

    .line 81
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    .line 38
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:Landroid/widget/TextView;

    .line 40
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    .line 41
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:Landroid/widget/TextView;

    .line 42
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e:J

    .line 43
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Landroid/widget/RelativeLayout;

    .line 44
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Landroid/widget/TextView;

    .line 46
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/RelativeLayout;

    .line 48
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i:J

    .line 49
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:J

    .line 50
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->k:J

    .line 53
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Ljava/util/Timer;

    .line 54
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    .line 55
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->o:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    .line 57
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    .line 58
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Z

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->s:Ljava/util/Map;

    .line 60
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->t:Z

    .line 61
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->u:Z

    .line 62
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->v:Z

    .line 63
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->w:Landroid/media/MediaPlayer;

    .line 64
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->x:Z

    .line 65
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->y:F

    .line 69
    iput-object p2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->l:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    .line 70
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e()V

    .line 71
    return-void
.end method

.method static synthetic A(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->s:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic B(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i:J

    return-wide v0
.end method

.method static synthetic C(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->t:Z

    return v0
.end method

.method static synthetic a(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;J)J
    .locals 1

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:J

    return-wide p1
.end method

.method static synthetic a(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->w:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;IZZ)V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/unity3d/ads/android/video/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/unity3d/ads/android/video/c;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;IZZ)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->x:Z

    return p1
.end method

.method static synthetic b(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;J)J
    .locals 1

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->k:J

    return-wide p1
.end method

.method static synthetic b(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->u:Z

    .line 207
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d()V

    .line 208
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->l:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->l:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    invoke-interface {v0}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onVideoPlaybackError()V

    .line 210
    :cond_0
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x1f4

    .line 214
    new-instance v0, Lcom/unity3d/ads/android/video/e;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/video/e;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 222
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Ljava/util/Timer;

    .line 224
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Ljava/util/Timer;

    new-instance v1, Lcom/unity3d/ads/android/video/l;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/unity3d/ads/android/video/l;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;B)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 226
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 34
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    invoke-virtual {p0, v1, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 231
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Ljava/util/Timer;

    .line 234
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->v:Z

    return v0
.end method

.method static synthetic e(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->l:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    return-object v0
.end method

.method private e()V
    .locals 7

    .prologue
    const/high16 v6, -0x1000000

    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 237
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->muteVideoSounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iput-boolean v5, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->x:Z

    .line 242
    :cond_0
    const-string v0, "Creating custom view"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0, v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setBackgroundColor(I)V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->v:Z

    .line 247
    new-instance v0, Lcom/unity3d/ads/android/video/f;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/unity3d/ads/android/video/f;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    .line 257
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    const/16 v1, 0xbb9

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setId(I)V

    .line 258
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 259
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 260
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    invoke-virtual {p0, v1, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    invoke-virtual {v0, v5}, Landroid/widget/VideoView;->setClickable(Z)V

    .line 263
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    new-instance v1, Lcom/unity3d/ads/android/video/g;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/android/video/g;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 270
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    new-instance v1, Lcom/unity3d/ads/android/video/h;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/android/video/h;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 285
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/RelativeLayout;

    .line 286
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/RelativeLayout;

    const/16 v1, 0xc1c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 287
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 288
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 289
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 290
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 291
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 292
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 295
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 296
    const-string v1, "Buffering..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    const/16 v1, 0xc1f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 299
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 300
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->addView(Landroid/view/View;)V

    .line 302
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    .line 303
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0xbba

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 304
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 305
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 306
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 307
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 308
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 309
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 312
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 313
    const-string v1, "This video ends in "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 316
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:Landroid/widget/TextView;

    .line 317
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 318
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:Landroid/widget/TextView;

    const-string v2, "00"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:Landroid/widget/TextView;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 320
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 321
    const/16 v2, 0x2711

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 322
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 323
    iget-object v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 326
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 327
    const-string v2, "seconds."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 329
    const/16 v3, 0x2712

    invoke-virtual {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 330
    const/4 v3, 0x4

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 331
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    iget-object v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 334
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 335
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 337
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->addView(Landroid/view/View;)V

    .line 339
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_DEVELOPER_INTERNAL_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Landroid/widget/RelativeLayout;

    .line 341
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 342
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 343
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 344
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Landroid/widget/TextView;

    .line 347
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 349
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Landroid/widget/TextView;

    const-string v1, "INTERNAL UNITY TEST BUILD\nDO NOT USE IN PRODUCTION"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 352
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->addView(Landroid/view/View;)V

    .line 355
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getSkipDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e:J

    .line 357
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g()V

    .line 360
    :cond_2
    new-instance v0, Lcom/unity3d/ads/android/video/i;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/video/i;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    new-instance v0, Lcom/unity3d/ads/android/video/j;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/video/j;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 379
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    invoke-virtual {v1, v0}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->x:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->Muted:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->setState(Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;)V

    :cond_3
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    new-instance v1, Lcom/unity3d/ads/android/video/k;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/android/video/k;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->addView(Landroid/view/View;)V

    .line 380
    return-void
.end method

.method private static f()Z
    .locals 4

    .prologue
    .line 428
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 429
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

.method static synthetic f(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->v:Z

    return v0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, -0x2

    .line 442
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    .line 443
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    const/16 v1, 0xbc2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 444
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 445
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 446
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 447
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 448
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 449
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/unity3d/ads/android/video/b;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/android/video/b;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:Landroid/widget/TextView;

    .line 459
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 460
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "You can skip this video in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:Landroid/widget/TextView;

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 463
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 465
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->addView(Landroid/view/View;)V

    .line 466
    return-void
.end method

.method static synthetic g(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->x:Z

    return v0
.end method

.method private getSkipDuration()J
    .locals 2

    .prologue
    .line 433
    invoke-static {}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->allowVideoSkipInSeconds()J

    move-result-wide v0

    .line 438
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 492
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 5

    .prologue
    const/4 v2, 0x3

    .line 34
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

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

    iput v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->y:F

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

    iget v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->w:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->removeView(Landroid/view/View;)V

    .line 504
    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h()V

    .line 509
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 511
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Z

    return v0
.end method

.method static synthetic k(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i()V

    return-void
.end method

.method static synthetic l(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c()V

    return-void
.end method

.method static synthetic m(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Z

    return v0
.end method

.method static synthetic n(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->t:Z

    return v0
.end method

.method static synthetic o(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    return-object v0
.end method

.method static synthetic p(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->y:F

    return v0
.end method

.method static synthetic q(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic r(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic s(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g()V

    return-void
.end method

.method static synthetic t(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 34
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    const v1, 0x1ffffff

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:Landroid/widget/TextView;

    const-string v1, "Skip video"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_0
    return-void
.end method

.method static synthetic u(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h()V

    return-void
.end method

.method static synthetic v(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j()V

    return-void
.end method

.method static synthetic w(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic x(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d()V

    return-void
.end method

.method static synthetic y(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e:J

    return-wide v0
.end method

.method static synthetic z(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public clearVideoPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setKeepScreenOn(Z)V

    .line 138
    invoke-virtual {p0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {p0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 141
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j()V

    .line 142
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->removeView(Landroid/view/View;)V

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i()V

    .line 144
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d()V

    .line 146
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 147
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 148
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 149
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 151
    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->removeAllViews()V

    .line 153
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    .line 154
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:Landroid/widget/TextView;

    .line 156
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/RelativeLayout;

    .line 158
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    .line 159
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:Landroid/widget/TextView;

    .line 161
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Landroid/widget/TextView;

    .line 162
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Landroid/widget/RelativeLayout;

    .line 163
    return-void
.end method

.method public getBufferingDuration()J
    .locals 4

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:J

    .line 170
    :cond_0
    iget-wide v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:J

    iget-wide v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getSecondsUntilBackButtonAllowed()I
    .locals 8

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    .line 174
    .line 176
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->disableBackButtonForSeconds()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->k:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 178
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->disableBackButtonForSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->k:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-float v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 179
    if-gez v1, :cond_2

    .line 186
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->allowVideoSkipInSeconds()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-wide v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->k:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 183
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hideVideo()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d()V

    .line 133
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 565
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 566
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i()V

    .line 567
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 542
    packed-switch p1, :pswitch_data_0

    .line 560
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 546
    :pswitch_0
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 548
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 549
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->disableBackButtonForSeconds()J

    move-result-wide v0

    .line 550
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getSecondsUntilBackButtonAllowed()I

    move-result v0

    if-nez v0, :cond_1

    .line 551
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->clearVideoPlayer()V

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->l:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    if-eqz v0, :cond_2

    .line 555
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->l:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    invoke-interface {v0, p0}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onBackButtonClicked(Landroid/view/View;)V

    .line 557
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 542
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d()V

    .line 119
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Lcom/unity3d/ads/android/video/d;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/video/d;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 129
    :cond_0
    return-void
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 85
    if-nez p1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Z

    .line 88
    iput-object p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->o:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Playing video from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    new-instance v1, Lcom/unity3d/ads/android/video/a;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/android/video/a;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->u:Z

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

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

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i:J

    .line 112
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c()V

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    const-string v0, "For some reason the device failed to play the video, a crash was prevented."

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b()V

    goto :goto_0
.end method
