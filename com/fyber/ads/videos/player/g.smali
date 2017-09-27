.class public final Lcom/fyber/ads/videos/player/g;
.super Landroid/widget/FrameLayout;
.source "RewardedVideoPlayerView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/fyber/ads/videos/player/utils/a$a;
.implements Lcom/fyber/mediation/MediationUserActivityListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/ads/videos/player/g$a;,
        Lcom/fyber/ads/videos/player/g$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:Lcom/fyber/ads/videos/player/utils/a;

.field private D:Lcom/fyber/ads/videos/player/g$a;

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Landroid/widget/FrameLayout;

.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/VideoView;

.field private d:Landroid/media/MediaPlayer;

.field private e:J

.field private f:D

.field private g:Lcom/fyber/views/spinner/b;

.field private h:Lcom/fyber/views/close/a;

.field private i:Ljava/lang/Integer;

.field private j:Lcom/fyber/views/countdowntimer/b;

.field private k:J

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Landroid/widget/TextView;

.field private volatile o:Z

.field private volatile p:J

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Lcom/fyber/ads/videos/player/c;

.field private t:I

.field private u:Ljava/util/concurrent/ScheduledExecutorService;

.field private v:Lcom/fyber/ads/videos/player/b;

.field private final w:Lcom/fyber/ads/videos/player/g$b;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/fyber/ads/videos/player/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/high16 v7, -0x1000000

    const/16 v6, 0x11

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 103
    iput-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->l:Z

    .line 111
    iput-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->o:Z

    .line 121
    iput v4, p0, Lcom/fyber/ads/videos/player/g;->t:I

    .line 127
    iput-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->x:Z

    .line 128
    iput-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->y:Z

    .line 129
    iput-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->z:Z

    .line 132
    iput v0, p0, Lcom/fyber/ads/videos/player/g;->A:I

    .line 142
    iput-boolean v5, p0, Lcom/fyber/ads/videos/player/g;->E:Z

    .line 143
    iput-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->F:Z

    .line 144
    iput-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->G:Z

    .line 151
    iput-object p1, p0, Lcom/fyber/ads/videos/player/g;->a:Landroid/app/Activity;

    .line 153
    iput-object p2, p0, Lcom/fyber/ads/videos/player/g;->v:Lcom/fyber/ads/videos/player/b;

    .line 154
    iput-object p3, p0, Lcom/fyber/ads/videos/player/g;->b:Ljava/lang/String;

    .line 155
    iput-object p4, p0, Lcom/fyber/ads/videos/player/g;->m:Ljava/lang/String;

    .line 156
    iput-object p5, p0, Lcom/fyber/ads/videos/player/g;->r:Ljava/lang/String;

    .line 158
    iput-boolean v5, p0, Lcom/fyber/ads/videos/player/g;->q:Z

    .line 159
    invoke-static {p6}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {p6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->q:Z

    .line 1179
    :cond_0
    new-instance v0, Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/fyber/ads/videos/player/g;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/player/g;->c:Landroid/widget/VideoView;

    .line 1180
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->c:Landroid/widget/VideoView;

    const-string v1, "videoPlayer"

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1182
    new-instance v0, Lcom/fyber/views/close/a;

    iget-object v1, p0, Lcom/fyber/ads/videos/player/g;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/fyber/views/close/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/player/g;->h:Lcom/fyber/views/close/a;

    .line 1183
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->h:Lcom/fyber/views/close/a;

    invoke-virtual {v0}, Lcom/fyber/views/close/a;->a()I

    move-result v0

    .line 1184
    iget-object v1, p0, Lcom/fyber/ads/videos/player/g;->h:Lcom/fyber/views/close/a;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x35

    invoke-direct {v2, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/fyber/views/close/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1187
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->h:Lcom/fyber/views/close/a;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/views/close/a;->setTag(Ljava/lang/Object;)V

    .line 1189
    new-instance v0, Lcom/fyber/views/spinner/b;

    iget-object v1, p0, Lcom/fyber/ads/videos/player/g;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/fyber/views/spinner/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/player/g;->g:Lcom/fyber/views/spinner/b;

    .line 1190
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1191
    iget-object v1, p0, Lcom/fyber/ads/videos/player/g;->g:Lcom/fyber/views/spinner/b;

    invoke-virtual {v1, v0}, Lcom/fyber/views/spinner/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1192
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->g:Lcom/fyber/views/spinner/b;

    invoke-virtual {v0}, Lcom/fyber/views/spinner/b;->a()V

    .line 1195
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1196
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1197
    iget-object v1, p0, Lcom/fyber/ads/videos/player/g;->c:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1201
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fyber/ads/videos/player/g;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/player/g;->H:Landroid/widget/FrameLayout;

    .line 1202
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->H:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1203
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->H:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1204
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->H:Landroid/widget/FrameLayout;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1207
    invoke-virtual {p0, v7}, Lcom/fyber/ads/videos/player/g;->setBackgroundColor(I)V

    .line 1209
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->c:Landroid/widget/VideoView;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/player/g;->addView(Landroid/view/View;)V

    .line 1210
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->H:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/player/g;->addView(Landroid/view/View;)V

    .line 1211
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->g:Lcom/fyber/views/spinner/b;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/player/g;->addView(Landroid/view/View;)V

    .line 1281
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1282
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fyber/ads/videos/player/g;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/player/g;->n:Landroid/widget/TextView;

    .line 1284
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->n:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1285
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1287
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x41f00000    # 30.0f

    .line 1288
    invoke-virtual {p0}, Lcom/fyber/ads/videos/player/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    const/16 v2, 0x50

    invoke-direct {v0, v4, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1289
    iget-object v1, p0, Lcom/fyber/ads/videos/player/g;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1290
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->n:Landroid/widget/TextView;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_CLICKTHROUGH_HINT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v1}, Lcom/fyber/utils/r;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1291
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->n:Landroid/widget/TextView;

    const v1, -0x4dc1c1c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1292
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1293
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->n:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1294
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->n:Landroid/widget/TextView;

    const-string v1, "clickThroughHint"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->c:Landroid/widget/VideoView;

    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/ads/videos/player/g;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/fyber/ads/videos/player/g;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fyber/cache/CacheManager;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 167
    new-instance v0, Lcom/fyber/ads/videos/player/utils/a;

    invoke-direct {v0, p0}, Lcom/fyber/ads/videos/player/utils/a;-><init>(Lcom/fyber/ads/videos/player/utils/a$a;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/player/g;->C:Lcom/fyber/ads/videos/player/utils/a;

    .line 169
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 171
    new-instance v0, Lcom/fyber/ads/videos/player/g$b;

    invoke-direct {v0, p0}, Lcom/fyber/ads/videos/player/g$b;-><init>(Lcom/fyber/ads/videos/player/g;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/player/g;->w:Lcom/fyber/ads/videos/player/g$b;

    .line 173
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->w:Lcom/fyber/ads/videos/player/g$b;

    sget v1, Lcom/fyber/ads/videos/player/f;->g:I

    add-int/lit8 v1, v1, -0x1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/fyber/ads/videos/player/g$b;->sendEmptyMessageDelayed(IJ)Z

    .line 2218
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 2219
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2220
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 2221
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2222
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->h:Lcom/fyber/views/close/a;

    invoke-virtual {v0, p0}, Lcom/fyber/views/close/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2224
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/fyber/ads/videos/RewardedVideoActivity;

    if-eqz v0, :cond_2

    .line 2225
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->a:Landroid/app/Activity;

    check-cast v0, Lcom/fyber/ads/videos/RewardedVideoActivity;

    invoke-virtual {v0, p0}, Lcom/fyber/ads/videos/RewardedVideoActivity;->setRewardedVideoListener(Lcom/fyber/mediation/MediationUserActivityListener;)V

    .line 176
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/videos/player/g;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Lcom/fyber/ads/videos/player/a;JLjava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 605
    sget-object v0, Lcom/fyber/ads/videos/player/i;->a:[I

    invoke-virtual {p1}, Lcom/fyber/ads/videos/player/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 618
    const-string v0, "%s(\'play\', {tpn:\'%s\', result:\'%s\', id:\'%s\'})"

    new-array v1, v10, [Ljava/lang/Object;

    const-string v2, "javascript:Sponsorpay.MBE.SDKInterface.notify"

    aput-object v2, v1, v6

    const-string v2, "local"

    aput-object v2, v1, v7

    aput-object p1, v1, v8

    .line 619
    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    .line 618
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 621
    :goto_0
    return-object v0

    .line 607
    :pswitch_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s(\'play\', {tpn:\'%s\', result:\'%s\', duration:\'%.2f\', id:\'%s\'})"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "javascript:Sponsorpay.MBE.SDKInterface.notify"

    aput-object v3, v2, v6

    const-string v3, "local"

    aput-object v3, v2, v7

    aput-object p1, v2, v8

    iget-wide v4, p0, Lcom/fyber/ads/videos/player/g;->f:D

    .line 608
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    .line 607
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 612
    :pswitch_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-double v0, v0

    .line 613
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%s(\'play\', {tpn:\'%s\', result:\'%s\', currentTime:\'%.3f\', duration:\'%.2f\', id:\'%s\'})"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "javascript:Sponsorpay.MBE.SDKInterface.notify"

    aput-object v5, v4, v6

    const-string v5, "local"

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    .line 614
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v9

    iget-wide v0, p0, Lcom/fyber/ads/videos/player/g;->f:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v10

    const/4 v0, 0x5

    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 613
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 605
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->u:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->u:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->u:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 485
    :cond_0
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fyber/ads/videos/player/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/cache/CacheManager;->b(Landroid/content/Context;)V

    .line 486
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->w:Lcom/fyber/ads/videos/player/g$b;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/fyber/ads/videos/player/g$b;->sendEmptyMessage(I)Z

    .line 758
    return-void
.end method

.method private static a(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 765
    if-eqz p0, :cond_0

    .line 766
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 768
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/videos/player/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fyber/ads/videos/player/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->y:Z

    if-nez v0, :cond_0

    .line 561
    sget-object v0, Lcom/fyber/ads/videos/player/a;->e:Lcom/fyber/ads/videos/player/a;

    const-wide/16 v2, -0x1

    iget-object v1, p0, Lcom/fyber/ads/videos/player/g;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/fyber/ads/videos/player/g;->a(Lcom/fyber/ads/videos/player/a;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    const-string v1, "RewardedVideoPlayerView"

    invoke-static {v1, p1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/fyber/ads/videos/player/g;->v:Lcom/fyber/ads/videos/player/b;

    invoke-interface {v1, v0}, Lcom/fyber/ads/videos/player/b;->a(Ljava/lang/String;)V

    .line 566
    invoke-direct {p0}, Lcom/fyber/ads/videos/player/g;->a()V

    .line 567
    invoke-direct {p0}, Lcom/fyber/ads/videos/player/g;->b()V

    .line 569
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 735
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/fyber/ads/videos/player/g;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 737
    invoke-static {p4}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 738
    invoke-virtual {v0, p4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 743
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 744
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 745
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 746
    invoke-virtual {v0, p3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 747
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 748
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 750
    :cond_1
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->z:Z

    .line 574
    invoke-virtual {p0}, Lcom/fyber/ads/videos/player/g;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 575
    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->g:Lcom/fyber/views/spinner/b;

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->g:Lcom/fyber/views/spinner/b;

    invoke-virtual {v0}, Lcom/fyber/views/spinner/b;->b()V

    .line 583
    :cond_1
    iput-object v1, p0, Lcom/fyber/ads/videos/player/g;->c:Landroid/widget/VideoView;

    .line 584
    iput-object v1, p0, Lcom/fyber/ads/videos/player/g;->n:Landroid/widget/TextView;

    .line 585
    iput-object v1, p0, Lcom/fyber/ads/videos/player/g;->h:Lcom/fyber/views/close/a;

    .line 586
    iput-object v1, p0, Lcom/fyber/ads/videos/player/g;->j:Lcom/fyber/views/countdowntimer/b;

    .line 587
    iput-object v1, p0, Lcom/fyber/ads/videos/player/g;->d:Landroid/media/MediaPlayer;

    .line 588
    iput-object v1, p0, Lcom/fyber/ads/videos/player/g;->g:Lcom/fyber/views/spinner/b;

    .line 589
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->s:Lcom/fyber/ads/videos/player/c;

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->s:Lcom/fyber/ads/videos/player/c;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/player/c;->a()V

    .line 591
    iput-object v1, p0, Lcom/fyber/ads/videos/player/g;->s:Lcom/fyber/ads/videos/player/c;

    .line 594
    :cond_2
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->D:Lcom/fyber/ads/videos/player/g$a;

    if-eqz v0, :cond_3

    .line 595
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->D:Lcom/fyber/ads/videos/player/g$a;

    invoke-interface {v0}, Lcom/fyber/ads/videos/player/g$a;->e()V

    .line 596
    iput-object v1, p0, Lcom/fyber/ads/videos/player/g;->D:Lcom/fyber/ads/videos/player/g$a;

    .line 598
    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/fyber/ads/videos/player/g;)V
    .locals 1

    .prologue
    .line 67
    .line 2630
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->H:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/player/g;->removeView(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->h:Lcom/fyber/views/close/a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/views/close/a;->setTag(Ljava/lang/Object;)V

    .line 636
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->h:Lcom/fyber/views/close/a;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/player/g;->addView(Landroid/view/View;)V

    .line 637
    return-void
.end method

.method static synthetic c(Lcom/fyber/ads/videos/player/g;)V
    .locals 2

    .prologue
    .line 67
    .line 2681
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->g:Lcom/fyber/views/spinner/b;

    if-eqz v0, :cond_0

    .line 2682
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->g:Lcom/fyber/views/spinner/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fyber/views/spinner/b;->setVisibility(I)V

    .line 67
    :cond_0
    return-void
.end method

.method private d()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 641
    :try_start_0
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/fyber/ads/videos/player/g;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 642
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 644
    const-string v2, "FybVideoPlayerOptionCloseButtonDelay"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 646
    const-string v2, "RewardedVideoPlayerView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Delay for close button - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 649
    if-ltz v0, :cond_0

    .line 654
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 649
    goto :goto_0

    .line 651
    :catch_0
    move-exception v0

    .line 652
    :goto_1
    const-string v2, "RewardedVideoPlayerView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to load meta-data from Manifest: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 654
    goto :goto_0

    .line 651
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic d(Lcom/fyber/ads/videos/player/g;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/fyber/ads/videos/player/g;->e()V

    return-void
.end method

.method static synthetic e(Lcom/fyber/ads/videos/player/g;)Lcom/fyber/views/countdowntimer/b;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->j:Lcom/fyber/views/countdowntimer/b;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->g:Lcom/fyber/views/spinner/b;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->g:Lcom/fyber/views/spinner/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fyber/views/spinner/b;->setVisibility(I)V

    .line 690
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/fyber/ads/videos/player/g;)J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/fyber/ads/videos/player/g;->p:J

    return-wide v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 695
    iget-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->q:Z

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 698
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->F:Z

    .line 700
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_EXIT_VIDEO_TEXT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v0}, Lcom/fyber/utils/r;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/videos/player/g;->r:Ljava/lang/String;

    sget-object v2, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_CLOSE_VIDEO_TEXT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    .line 701
    invoke-static {v2}, Lcom/fyber/utils/r;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_RESUME_VIDEO_TEXT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    .line 702
    invoke-static {v3}, Lcom/fyber/utils/r;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v3

    .line 700
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/fyber/ads/videos/player/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    :goto_0
    return-void

    .line 704
    :cond_0
    const-string v0, "displayCloseAlertDialog without alert"

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/player/g;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 753
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->w:Lcom/fyber/ads/videos/player/g$b;

    sget v1, Lcom/fyber/ads/videos/player/f;->g:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/fyber/ads/videos/player/g$b;->removeMessages(I)V

    .line 754
    return-void
.end method

.method static synthetic g(Lcom/fyber/ads/videos/player/g;)Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->x:Z

    return v0
.end method

.method static synthetic h(Lcom/fyber/ads/videos/player/g;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/fyber/ads/videos/player/g;->c()V

    return-void
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->F:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/fyber/ads/videos/player/g;)V
    .locals 4

    .prologue
    .line 67
    .line 3659
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->n:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3661
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3662
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3663
    new-instance v1, Lcom/fyber/ads/videos/player/h;

    invoke-direct {v1, p0}, Lcom/fyber/ads/videos/player/h;-><init>(Lcom/fyber/ads/videos/player/g;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3677
    iget-object v1, p0, Lcom/fyber/ads/videos/player/g;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 67
    return-void
.end method

.method static synthetic j(Lcom/fyber/ads/videos/player/g;)Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->o:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/fyber/ads/videos/player/g$a;)V
    .locals 0

    .prologue
    .line 831
    iput-object p1, p0, Lcom/fyber/ads/videos/player/g;->D:Lcom/fyber/ads/videos/player/g$a;

    .line 832
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    const/16 v3, 0x15

    .line 711
    const-string v0, "RewardedVideoPlayerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBufferingStateChanged - state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    if-eqz p1, :cond_1

    .line 713
    sget v0, Lcom/fyber/ads/videos/player/f;->b:I

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/player/g;->a(I)V

    .line 715
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    .line 716
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 717
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->E:Z

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    sget v0, Lcom/fyber/ads/videos/player/f;->a:I

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/player/g;->a(I)V

    .line 722
    invoke-direct {p0}, Lcom/fyber/ads/videos/player/g;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 723
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 726
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    .line 727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->E:Z

    goto :goto_0
.end method

.method public final notifyOnBackPressed()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 419
    iget-boolean v2, p0, Lcom/fyber/ads/videos/player/g;->z:Z

    if-nez v2, :cond_1

    .line 420
    iget-boolean v2, p0, Lcom/fyber/ads/videos/player/g;->l:Z

    if-nez v2, :cond_3

    .line 421
    iget-boolean v2, p0, Lcom/fyber/ads/videos/player/g;->x:Z

    if-eqz v2, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/fyber/ads/videos/player/g;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/fyber/ads/videos/player/g;->d:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    .line 424
    invoke-direct {p0}, Lcom/fyber/ads/videos/player/g;->f()V

    :cond_0
    :goto_0
    move v0, v1

    .line 462
    :cond_1
    :goto_1
    return v0

    .line 430
    :cond_2
    const-string v1, "notifyOnBackPressed()"

    invoke-direct {p0, v1}, Lcom/fyber/ads/videos/player/g;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 436
    :cond_3
    iget-object v2, p0, Lcom/fyber/ads/videos/player/g;->s:Lcom/fyber/ads/videos/player/c;

    invoke-virtual {v2}, Lcom/fyber/ads/videos/player/c;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/fyber/ads/videos/player/g;->s:Lcom/fyber/ads/videos/player/c;

    invoke-virtual {v2}, Lcom/fyber/ads/videos/player/c;->b()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 437
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->s:Lcom/fyber/ads/videos/player/c;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/player/c;->b()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 441
    :cond_4
    iget-object v2, p0, Lcom/fyber/ads/videos/player/g;->s:Lcom/fyber/ads/videos/player/c;

    if-eqz v2, :cond_5

    .line 443
    iget-object v2, p0, Lcom/fyber/ads/videos/player/g;->s:Lcom/fyber/ads/videos/player/c;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/fyber/ads/videos/player/c;->setVisibility(I)V

    .line 446
    :cond_5
    iget-object v2, p0, Lcom/fyber/ads/videos/player/g;->d:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_6

    .line 448
    iget-object v2, p0, Lcom/fyber/ads/videos/player/g;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 451
    :cond_6
    iget-object v2, p0, Lcom/fyber/ads/videos/player/g;->s:Lcom/fyber/ads/videos/player/c;

    invoke-virtual {v2}, Lcom/fyber/ads/videos/player/c;->c()V

    .line 452
    iget-object v2, p0, Lcom/fyber/ads/videos/player/g;->s:Lcom/fyber/ads/videos/player/c;

    invoke-virtual {v2}, Lcom/fyber/ads/videos/player/c;->e()V

    .line 455
    iget-object v2, p0, Lcom/fyber/ads/videos/player/g;->h:Lcom/fyber/views/close/a;

    invoke-static {v2, v1}, Lcom/fyber/ads/videos/player/g;->a(Landroid/view/View;Z)V

    .line 457
    iput-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->l:Z

    goto :goto_0
.end method

.method public final notifyOnHomePressed()V
    .locals 1

    .prologue
    .line 414
    const-string v0, "notifyOnHomePressed()"

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/player/g;->a(Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 396
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 398
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->F:Z

    .line 402
    iget-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->E:Z

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    const-string v0, "displayCloseAlertDialog(): Close Video"

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/player/g;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->l:Z

    if-nez v0, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/fyber/ads/videos/player/g;->f()V

    .line 389
    :cond_0
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 304
    const-string v0, "RewardedVideoPlayerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCompletion() - mediaPlayer = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 307
    invoke-direct {p0}, Lcom/fyber/ads/videos/player/g;->b()V

    .line 308
    invoke-direct {p0}, Lcom/fyber/ads/videos/player/g;->a()V

    .line 311
    if-eqz p1, :cond_0

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->y:Z

    .line 314
    sget-object v0, Lcom/fyber/ads/videos/player/a;->c:Lcom/fyber/ads/videos/player/a;

    const-wide/16 v2, -0x1

    iget-object v1, p0, Lcom/fyber/ads/videos/player/g;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/fyber/ads/videos/player/g;->a(Lcom/fyber/ads/videos/player/a;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    iget-object v1, p0, Lcom/fyber/ads/videos/player/g;->v:Lcom/fyber/ads/videos/player/b;

    invoke-interface {v1, v0}, Lcom/fyber/ads/videos/player/b;->a(Ljava/lang/String;)V

    .line 320
    :goto_0
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->y:Z

    .line 318
    const-string v0, "onCompletion - video playing more than total duration"

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/player/g;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 328
    const-string v0, "RewardedVideoPlayerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An error occurred, error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 332
    invoke-direct {p0}, Lcom/fyber/ads/videos/player/g;->g()V

    .line 333
    sget v0, Lcom/fyber/ads/videos/player/f;->f:I

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/player/g;->a(I)V

    .line 334
    iput-boolean v3, p0, Lcom/fyber/ads/videos/player/g;->G:Z

    .line 336
    return v3
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 231
    const-string v0, "RewardedVideoPlayerView"

    const-string v1, "onPrepared()"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-direct {p0}, Lcom/fyber/ads/videos/player/g;->g()V

    .line 238
    iget-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->o:Z

    if-nez v0, :cond_1

    .line 240
    iput-object p1, p0, Lcom/fyber/ads/videos/player/g;->d:Landroid/media/MediaPlayer;

    .line 242
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 243
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->C:Lcom/fyber/ads/videos/player/utils/a;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/player/utils/a;->a()V

    .line 246
    invoke-direct {p0}, Lcom/fyber/ads/videos/player/g;->e()V

    .line 248
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/fyber/ads/videos/player/g;->e:J

    .line 249
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/fyber/ads/videos/player/g;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/fyber/ads/videos/player/g;->f:D

    .line 250
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->C:Lcom/fyber/ads/videos/player/utils/a;

    iget-wide v2, p0, Lcom/fyber/ads/videos/player/g;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/fyber/ads/videos/player/utils/a;->a(J)V

    .line 252
    new-instance v0, Lcom/fyber/views/countdowntimer/b;

    iget-object v1, p0, Lcom/fyber/ads/videos/player/g;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/fyber/ads/videos/player/g;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/fyber/views/countdowntimer/b;-><init>(Landroid/content/Context;Ljava/lang/Long;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/player/g;->j:Lcom/fyber/views/countdowntimer/b;

    .line 253
    const/high16 v0, 0x42700000    # 60.0f

    invoke-virtual {p0}, Lcom/fyber/ads/videos/player/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 254
    iget-object v1, p0, Lcom/fyber/ads/videos/player/g;->j:Lcom/fyber/views/countdowntimer/b;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x33

    invoke-direct {v2, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/fyber/views/countdowntimer/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    sget-object v0, Lcom/fyber/ads/videos/player/a;->a:Lcom/fyber/ads/videos/player/a;

    iget-wide v2, p0, Lcom/fyber/ads/videos/player/g;->e:J

    iget-object v1, p0, Lcom/fyber/ads/videos/player/g;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/fyber/ads/videos/player/g;->a(Lcom/fyber/ads/videos/player/a;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/fyber/ads/videos/player/g;->v:Lcom/fyber/ads/videos/player/b;

    invoke-interface {v1, v0}, Lcom/fyber/ads/videos/player/b;->a(Ljava/lang/String;)V

    .line 259
    iget-wide v0, p0, Lcom/fyber/ads/videos/player/g;->e:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v0, v2

    const-wide v2, 0x40cd4c0000000000L    # 15000.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/fyber/ads/videos/player/g;->k:J

    .line 262
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->j:Lcom/fyber/views/countdowntimer/b;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/player/g;->addView(Landroid/view/View;)V

    .line 265
    invoke-direct {p0}, Lcom/fyber/ads/videos/player/g;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/ads/videos/player/g;->i:Ljava/lang/Integer;

    .line 266
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/fyber/ads/videos/player/g;->c()V

    .line 268
    iput-boolean v4, p0, Lcom/fyber/ads/videos/player/g;->x:Z

    .line 2470
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/ads/videos/player/g;->u:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2472
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->u:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 273
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->n:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/player/g;->addView(Landroid/view/View;)V

    .line 277
    :cond_1
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 341
    const-string v0, "RewardedVideoPlayerView"

    const-string v3, "onTouch()"

    invoke-static {v0, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->l:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->g:Lcom/fyber/views/spinner/b;

    .line 344
    invoke-virtual {v0}, Lcom/fyber/views/spinner/b;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 346
    iput-boolean v1, p0, Lcom/fyber/ads/videos/player/g;->l:Z

    .line 349
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 351
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->n:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 353
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->s:Lcom/fyber/ads/videos/player/c;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->s:Lcom/fyber/ads/videos/player/c;

    invoke-virtual {v0, v2}, Lcom/fyber/ads/videos/player/c;->setVisibility(I)V

    .line 368
    :goto_0
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->h:Lcom/fyber/views/close/a;

    invoke-static {v0, v2}, Lcom/fyber/ads/videos/player/g;->a(Landroid/view/View;Z)V

    .line 370
    sget-object v0, Lcom/fyber/ads/videos/player/a;->d:Lcom/fyber/ads/videos/player/a;

    const-wide/16 v2, -0x1

    iget-object v4, p0, Lcom/fyber/ads/videos/player/g;->m:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/fyber/ads/videos/player/g;->a(Lcom/fyber/ads/videos/player/a;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    iget-object v2, p0, Lcom/fyber/ads/videos/player/g;->v:Lcom/fyber/ads/videos/player/b;

    invoke-interface {v2, v0}, Lcom/fyber/ads/videos/player/b;->a(Ljava/lang/String;)V

    move v0, v1

    .line 375
    :goto_1
    return v0

    .line 363
    :cond_1
    new-instance v0, Lcom/fyber/ads/videos/player/c;

    iget-object v3, p0, Lcom/fyber/ads/videos/player/g;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/fyber/ads/videos/player/g;->m:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/fyber/ads/videos/player/c;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/player/g;->s:Lcom/fyber/ads/videos/player/c;

    .line 364
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/fyber/ads/videos/player/g;->s:Lcom/fyber/ads/videos/player/c;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 375
    goto :goto_1
.end method

.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 491
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    .line 492
    iget v1, p0, Lcom/fyber/ads/videos/player/g;->B:I

    if-eq v1, v0, :cond_1

    .line 493
    iget v1, p0, Lcom/fyber/ads/videos/player/g;->A:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fyber/ads/videos/player/g;->A:I

    .line 495
    iget v1, p0, Lcom/fyber/ads/videos/player/g;->A:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 496
    iput v6, p0, Lcom/fyber/ads/videos/player/g;->A:I

    .line 497
    iput v0, p0, Lcom/fyber/ads/videos/player/g;->B:I

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iget-boolean v0, p0, Lcom/fyber/ads/videos/player/g;->G:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 509
    :cond_2
    iget-wide v0, p0, Lcom/fyber/ads/videos/player/g;->p:J

    iget-wide v2, p0, Lcom/fyber/ads/videos/player/g;->e:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 510
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/player/g;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 513
    :cond_3
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/fyber/ads/videos/player/g;->p:J

    .line 518
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->H:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/fyber/ads/videos/player/g;->p:J

    const-wide/16 v2, 0x78

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 519
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->H:Landroid/widget/FrameLayout;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 520
    sget v0, Lcom/fyber/ads/videos/player/f;->h:I

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/player/g;->a(I)V

    .line 526
    :cond_4
    iget v0, p0, Lcom/fyber/ads/videos/player/g;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fyber/ads/videos/player/g;->t:I

    .line 527
    iget v0, p0, Lcom/fyber/ads/videos/player/g;->t:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_5

    .line 528
    iput v6, p0, Lcom/fyber/ads/videos/player/g;->t:I

    .line 531
    :cond_5
    iget v0, p0, Lcom/fyber/ads/videos/player/g;->t:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/fyber/ads/videos/player/g;->t:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_7

    .line 533
    :cond_6
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->C:Lcom/fyber/ads/videos/player/utils/a;

    iget-wide v2, p0, Lcom/fyber/ads/videos/player/g;->p:J

    iget-boolean v1, p0, Lcom/fyber/ads/videos/player/g;->E:Z

    invoke-direct {p0}, Lcom/fyber/ads/videos/player/g;->h()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/fyber/ads/videos/player/utils/a;->a(JZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    :cond_7
    sget v0, Lcom/fyber/ads/videos/player/f;->c:I

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/player/g;->a(I)V

    .line 539
    iget v0, p0, Lcom/fyber/ads/videos/player/g;->t:I

    if-nez v0, :cond_8

    .line 540
    sget-object v0, Lcom/fyber/ads/videos/player/a;->b:Lcom/fyber/ads/videos/player/a;

    iget-wide v2, p0, Lcom/fyber/ads/videos/player/g;->p:J

    iget-object v1, p0, Lcom/fyber/ads/videos/player/g;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/fyber/ads/videos/player/g;->a(Lcom/fyber/ads/videos/player/a;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 541
    iget-object v1, p0, Lcom/fyber/ads/videos/player/g;->v:Lcom/fyber/ads/videos/player/b;

    invoke-interface {v1, v0}, Lcom/fyber/ads/videos/player/b;->a(Ljava/lang/String;)V

    .line 544
    :cond_8
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lcom/fyber/ads/videos/player/g;->p:J

    iget-wide v2, p0, Lcom/fyber/ads/videos/player/g;->k:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_9

    .line 545
    sget v0, Lcom/fyber/ads/videos/player/f;->e:I

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/player/g;->a(I)V

    .line 548
    :cond_9
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->h:Lcom/fyber/views/close/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/player/g;->h:Lcom/fyber/views/close/a;

    invoke-virtual {v0}, Lcom/fyber/views/close/a;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/fyber/ads/videos/player/g;->p:J

    iget-object v2, p0, Lcom/fyber/ads/videos/player/g;->i:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 549
    sget v0, Lcom/fyber/ads/videos/player/f;->d:I

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/player/g;->a(I)V

    goto/16 :goto_0
.end method
