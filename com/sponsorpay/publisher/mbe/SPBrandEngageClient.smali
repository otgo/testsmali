.class public Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;
.super Ljava/lang/Object;
.source "SPBrandEngageClient.java"

# interfaces
.implements Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView$SPBrandEngageVideoPlayerListener;


# static fields
.field public static final INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

.field public static final SP_ENGAGEMENT_STATUS:Ljava/lang/String; = "ENGAGEMENT_STATUS"

.field public static final SP_REQUEST_STATUS_PARAMETER_ABORTED_VALUE:Ljava/lang/String; = "CLOSE_ABORTED"

.field public static final SP_REQUEST_STATUS_PARAMETER_ERROR:Ljava/lang/String; = "ERROR"

.field public static final SP_REQUEST_STATUS_PARAMETER_FINISHED_VALUE:Ljava/lang/String; = "CLOSE_FINISHED"

.field public static final TIMEOUT:I = 0x2710


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/os/Handler;

.field private c:Landroid/app/Activity;

.field private d:Landroid/content/Context;

.field private e:Landroid/webkit/WebView;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

.field private n:Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

.field private o:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener;

.field private p:Landroid/webkit/WebViewClient;

.field private q:Landroid/webkit/WebChromeClient;

.field private r:Landroid/view/View$OnTouchListener;

.field private s:Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;

.field private t:Landroid/content/IntentFilter;

.field private u:Landroid/content/BroadcastReceiver;

.field private v:Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-direct {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;-><init>()V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->f:Z

    .line 172
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->g:Z

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->l:Z

    .line 180
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->MUST_QUERY_SERVER_FOR_OFFERS:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->m:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    .line 191
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->t:Landroid/content/IntentFilter;

    .line 192
    new-instance v0, Lcom/sponsorpay/publisher/mbe/b;

    invoke-direct {v0, p0}, Lcom/sponsorpay/publisher/mbe/b;-><init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->u:Landroid/content/BroadcastReceiver;

    .line 214
    new-instance v0, Lcom/sponsorpay/publisher/mbe/f;

    invoke-direct {v0, p0}, Lcom/sponsorpay/publisher/mbe/f;-><init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a:Landroid/os/Handler;

    .line 230
    new-instance v0, Lcom/sponsorpay/publisher/mbe/g;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sponsorpay/publisher/mbe/g;-><init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->b:Landroid/os/Handler;

    .line 254
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;

    invoke-direct {v0}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->v:Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;

    .line 255
    return-void
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->m:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    return-object v0
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;)Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->s:Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;

    return-object p1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 465
    const-string v0, "about:blank"

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->b(Ljava/lang/String;)V

    .line 467
    :cond_0
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->MUST_QUERY_SERVER_FOR_OFFERS:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;)Z

    .line 468
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 429
    if-lez p1, :cond_1

    const/4 v0, 0x1

    .line 430
    :goto_0
    if-eqz v0, :cond_2

    .line 431
    sget-object v1, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->READY_TO_SHOW_OFFERS:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    invoke-direct {p0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;)Z

    .line 435
    :goto_1
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->o:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener;

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->o:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener;

    invoke-interface {v1, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener;->didReceiveOffers(Z)V

    .line 438
    :cond_0
    return-void

    .line 429
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 433
    :cond_2
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;I)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;)V

    return-void
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;)V
    .locals 3

    .prologue
    .line 601
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->o:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener;

    if-eqz v0, :cond_0

    .line 602
    const-string v0, "SPBrandEngageClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SPBrandEngageClientStatus -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->o:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener;

    invoke-interface {v0, p1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener;->didChangeStatus(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;)V

    .line 605
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 441
    const-string v0, "STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 443
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->SHOWING_OFFERS:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->STARTED:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;)V

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    const-string v0, "CLOSE_FINISHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 447
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a()V

    .line 448
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->CLOSE_FINISHED:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;)V

    .line 449
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->l:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->d:Landroid/content/Context;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_REWARD_NOTIFICATION:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v1}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 450
    :cond_2
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->n:Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a:Landroid/os/Handler;

    new-instance v1, Lcom/sponsorpay/publisher/mbe/j;

    invoke-direct {v1, p0}, Lcom/sponsorpay/publisher/mbe/j;-><init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 451
    :cond_3
    const-string v0, "CLOSE_ABORTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 453
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 454
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a()V

    .line 455
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->CLOSE_ABORTED:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;)V

    goto :goto_0

    .line 456
    :cond_4
    const-string v0, "ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 457
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_ERROR_DIALOG_MESSAGE_DEFAULT:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v0}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :cond_5
    const-string v0, "USER_ENGAGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->USER_ENGAGED:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Z)Z
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->f:Z

    return p1
.end method

.method private a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 674
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->m:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    if-eq v1, p1, :cond_0

    .line 675
    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->m:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    invoke-virtual {v2}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->ordinal()I

    move-result v2

    sub-int/2addr v1, v2

    .line 678
    if-gt v1, v0, :cond_0

    .line 679
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->m:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    .line 680
    const-string v1, "SPBrandEngageClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SPBrandEngageClient mStatus -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 471
    invoke-static {p1}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->b:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 473
    const/16 v1, 0x7b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 474
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 475
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 477
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->e:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic c(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->b(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->f:Z

    .line 649
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->c:Landroid/app/Activity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->d:Landroid/content/Context;

    :goto_0
    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 650
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_ERROR_DIALOG_TITLE:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v0}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v2, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_ERROR_DIALOG_BUTTON_TITLE_DISMISS:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v2}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sponsorpay/publisher/mbe/i;

    invoke-direct {v3, p0}, Lcom/sponsorpay/publisher/mbe/i;-><init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 661
    :try_start_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :cond_0
    :goto_1
    return-void

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->c:Landroid/app/Activity;

    goto :goto_0

    .line 663
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->f:Z

    .line 664
    const-string v0, "SPBrandEngageClient"

    const-string v1, "Unable to show the dialog window"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->e:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic e(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onPause"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->e:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SPBrandEngageClient"

    const-string v2, "onPause error"

    invoke-static {v1, v2, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic h(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->u:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic i(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->t:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic j(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->g:Z

    return v0
.end method

.method static synthetic l(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a()V

    return-void
.end method

.method static synthetic m(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->n:Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    return-object v0
.end method

.method static synthetic n(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->s:Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;

    return-object v0
.end method

.method static synthetic q(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->f:Z

    return v0
.end method


# virtual methods
.method public canRequestOffers()Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->m:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->c()Z

    move-result v0

    return v0
.end method

.method public canStartEngagement()Z
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->m:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->a()Z

    move-result v0

    return v0
.end method

.method public closeEngagement()V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->m:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    sget-object v1, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->USER_ENGAGED:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->m:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    sget-object v1, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->SHOWING_OFFERS:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->d:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->g:Z

    if-eqz v0, :cond_1

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->g:Z

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->m:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    sget-object v1, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->USER_ENGAGED:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    if-ne v0, v1, :cond_3

    .line 380
    const-string v0, "CLOSE_FINISHED"

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Ljava/lang/String;)V

    .line 385
    :cond_2
    :goto_1
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    const-string v1, "SPBrandEngageClient"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 382
    :cond_3
    const-string v0, "CLOSE_ABORTED"

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 974
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->b:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 975
    const/16 v1, 0x20a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 976
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 977
    return-void
.end method

.method public playThroughMediation(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 608
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->v:Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;->a(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;)V

    .line 609
    return-void
.end method

.method public playerClosed()V
    .locals 1

    .prologue
    .line 993
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->s:Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;

    .line 994
    return-void
.end method

.method public requestOffers(Lcom/sponsorpay/credentials/SPCredentials;Landroid/app/Activity;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 272
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->canRequestOffers()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 273
    invoke-static {}, Lcom/sponsorpay/utils/HostInfo;->isDeviceSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 275
    invoke-direct {p0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(I)V

    .line 287
    :goto_0
    return v0

    .line 277
    :cond_0
    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->e:Landroid/webkit/WebView;

    if-nez v2, :cond_5

    .line 278
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_6

    :goto_1
    iput-object p2, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->d:Landroid/content/Context;

    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->e:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->e:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-static {v2}, Lcom/sponsorpay/utils/i;->a(Landroid/webkit/WebSettings;)V

    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->e:Landroid/webkit/WebView;

    invoke-static {v3}, Lcom/sponsorpay/utils/i;->a(Landroid/webkit/WebView;)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->e:Landroid/webkit/WebView;

    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_1

    const-string v3, "Mozilla/5.0 (X11; CrOS i686 4319.74.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36 (Sponsorpay SDK)"

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->e:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->e:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->q:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_2

    new-instance v2, Lcom/sponsorpay/publisher/mbe/o;

    invoke-direct {v2, p0}, Lcom/sponsorpay/publisher/mbe/o;-><init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)V

    iput-object v2, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->q:Landroid/webkit/WebChromeClient;

    :cond_2
    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->q:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->e:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->p:Landroid/webkit/WebViewClient;

    if-nez v2, :cond_3

    new-instance v2, Lcom/sponsorpay/publisher/mbe/k;

    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->c:Landroid/app/Activity;

    invoke-direct {v2, p0, v3}, Lcom/sponsorpay/publisher/mbe/k;-><init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->p:Landroid/webkit/WebViewClient;

    :cond_3
    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->p:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->e:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->r:Landroid/view/View$OnTouchListener;

    if-nez v2, :cond_4

    new-instance v2, Lcom/sponsorpay/publisher/mbe/s;

    invoke-direct {v2, p0}, Lcom/sponsorpay/publisher/mbe/s;-><init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)V

    new-instance v3, Landroid/view/GestureDetector;

    iget-object v4, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->d:Landroid/content/Context;

    new-instance v5, Lcom/sponsorpay/publisher/mbe/d;

    invoke-direct {v5, p0}, Lcom/sponsorpay/publisher/mbe/d;-><init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)V

    invoke-direct {v3, v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-virtual {v3, v2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    new-instance v2, Lcom/sponsorpay/publisher/mbe/e;

    invoke-direct {v2, p0, v3}, Lcom/sponsorpay/publisher/mbe/e;-><init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Landroid/view/GestureDetector;)V

    iput-object v2, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->r:Landroid/view/View$OnTouchListener;

    :cond_4
    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->r:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->e:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->v:Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;

    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->v:Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "SynchJS"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    :cond_5
    const-string v1, "mbe"

    invoke-static {v1}, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sponsorpay/utils/UrlBuilder;->newBuilder(Ljava/lang/String;Lcom/sponsorpay/credentials/SPCredentials;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sponsorpay/utils/UrlBuilder;->setCurrency(Ljava/lang/String;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sponsorpay/utils/UrlBuilder;->addRequestId()Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->j:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/sponsorpay/utils/UrlBuilder;->addExtraKeysValues(Ljava/util/Map;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->k:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/sponsorpay/utils/UrlBuilder;->addExtraKeysValues(Ljava/util/Map;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v1

    const-string v2, "rewarded"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/sponsorpay/utils/UrlBuilder;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v1

    const-string v2, "ad_format"

    const-string v3, "video"

    invoke-virtual {v1, v2, v3}, Lcom/sponsorpay/utils/UrlBuilder;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sponsorpay/utils/UrlBuilder;->addScreenMetrics()Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sponsorpay/utils/UrlBuilder;->buildUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPBrandEngageClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loading URL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->QUERYING_SERVER_FOR_OFFERS:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    invoke-direct {p0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;)Z

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a:Landroid/os/Handler;

    const/4 v2, 0x2

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 278
    :cond_6
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    goto/16 :goto_1

    .line 284
    :cond_7
    const-string v0, "SPBrandEngageClient"

    const-string v2, "SPBrandEngageClient cannot request offers at this point. It might be requesting offers right now or an offer might be currently being presented to the user."

    invoke-static {v0, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 287
    goto/16 :goto_0
.end method

.method public setCurrencyId(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->m:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->i:Ljava/lang/String;

    .line 510
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->MUST_QUERY_SERVER_FOR_OFFERS:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;)Z

    .line 511
    const/4 v0, 0x1

    .line 515
    :goto_0
    return v0

    .line 513
    :cond_0
    const-string v0, "SPBrandEngageClient"

    const-string v1, "Cannot change the currency ID while a request to the server is going on or an offer is being presented to the user."

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrencyListener(Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;)Z
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->m:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->n:Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    .line 572
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->MUST_QUERY_SERVER_FOR_OFFERS:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;)Z

    .line 573
    const/4 v0, 0x1

    .line 577
    :goto_0
    return v0

    .line 575
    :cond_0
    const-string v0, "SPBrandEngageClient"

    const-string v1, "Cannot change the currency listener while a request to the server is going on or an offer is being presented to the user."

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrencyName(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->m:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->h:Ljava/lang/String;

    .line 492
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->MUST_QUERY_SERVER_FOR_OFFERS:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;)Z

    .line 493
    const/4 v0, 0x1

    .line 497
    :goto_0
    return v0

    .line 495
    :cond_0
    const-string v0, "SPBrandEngageClient"

    const-string v1, "Cannot change the currency name while a request to the server is going on or an offer is being presented to the user."

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCustomParameters(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->m:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->j:Ljava/util/Map;

    .line 529
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->MUST_QUERY_SERVER_FOR_OFFERS:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;)Z

    .line 530
    const/4 v0, 0x1

    .line 534
    :goto_0
    return v0

    .line 532
    :cond_0
    const-string v0, "SPBrandEngageClient"

    const-string v1, "Cannot change custom parameters while a request to the server is going on or an offer is being presented to the user."

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setParametersForRequest(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 549
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->m:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->k:Ljava/util/Map;

    .line 552
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->MUST_QUERY_SERVER_FOR_OFFERS:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;)Z

    .line 553
    const/4 v0, 0x1

    .line 557
    :goto_0
    return v0

    .line 555
    :cond_0
    const-string v0, "SPBrandEngageClient"

    const-string v1, "Cannot change custom parameters while a request to the server is going on or an offer is being presented to the user."

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowRewardsNotification(Z)V
    .locals 0

    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->l:Z

    .line 425
    return-void
.end method

.method public setStatusListener(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener;)Z
    .locals 3

    .prologue
    .line 590
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->m:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->b()Z

    move-result v0

    .line 591
    if-eqz v0, :cond_0

    .line 592
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->o:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener;

    .line 597
    :goto_0
    return v0

    .line 594
    :cond_0
    const-string v1, "SPBrandEngageClient"

    const-string v2, "Cannot change the status listener while a request to the server is going on or an offer is being presented to the user."

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldShowRewardsNotification()Z
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->l:Z

    return v0
.end method

.method public startEngagement(Landroid/app/Activity;Z)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 323
    if-eqz p1, :cond_3

    .line 324
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->canStartEngagement()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->b()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration;

    move-result-object v3

    const-string v0, ""

    if-eqz v3, :cond_0

    const-string v0, ", cache_config_id:\'%s\'"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration;->getUid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "javascript:Sponsorpay.MBE.SDKInterface.do_start({cached_ad_ids:%s, downloaded_videos_count:%d%s})"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->d()Lcom/sponsorpay/publisher/mbe/player/caching/d;

    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->d()Lcom/sponsorpay/publisher/mbe/player/caching/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v2, 0x2

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 327
    const-string v2, "SPBrandEngageClient"

    invoke-static {v2, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->b(Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->d()Lcom/sponsorpay/publisher/mbe/player/caching/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->c()V

    .line 332
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->c:Landroid/app/Activity;

    .line 333
    if-nez p2, :cond_1

    .line 334
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->c:Landroid/app/Activity;

    new-instance v2, Lcom/sponsorpay/publisher/mbe/h;

    invoke-direct {v2, p0}, Lcom/sponsorpay/publisher/mbe/h;-><init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v0, v1

    .line 347
    :goto_0
    return v0

    .line 340
    :cond_2
    const-string v0, "SPBrandEngageClient"

    const-string v1, "SPBrandEngageClient is not ready to show offers. Call requestOffers() and wait until your listener is called with the confirmation that offers have been received."

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v0, v2

    .line 347
    goto :goto_0

    .line 345
    :cond_3
    const-string v0, "SPBrandEngageClient"

    const-string v1, "The provided activity is null, SPBrandEngageClient cannot start the engagement."

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
