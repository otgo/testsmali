.class public final Lcom/fyber/ads/videos/c;
.super Ljava/lang/Object;
.source "RewardedVideoClient.java"

# interfaces
.implements Lcom/fyber/ads/videos/player/g$a;


# static fields
.field public static final a:Lcom/fyber/ads/videos/c;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Landroid/os/Handler;

.field private d:Lcom/fyber/ads/videos/RewardedVideoActivity;

.field private e:Landroid/content/Context;

.field private f:Landroid/webkit/WebView;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Map;
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

.field private j:Z

.field private k:Lcom/fyber/ads/videos/u;

.field private l:Lcom/fyber/requesters/VirtualCurrencyRequester;

.field private m:Lcom/fyber/ads/videos/t;

.field private n:Landroid/webkit/WebViewClient;

.field private o:Landroid/webkit/WebChromeClient;

.field private p:Lcom/fyber/ads/videos/player/g;

.field private q:Landroid/content/IntentFilter;

.field private r:Landroid/content/BroadcastReceiver;

.field private s:Lcom/fyber/ads/videos/mediation/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/fyber/ads/videos/c;

    invoke-direct {v0}, Lcom/fyber/ads/videos/c;-><init>()V

    sput-object v0, Lcom/fyber/ads/videos/c;->a:Lcom/fyber/ads/videos/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/ads/videos/c;->g:Z

    .line 132
    iput-boolean v2, p0, Lcom/fyber/ads/videos/c;->j:Z

    .line 134
    sget-object v0, Lcom/fyber/ads/videos/u;->a:Lcom/fyber/ads/videos/u;

    iput-object v0, p0, Lcom/fyber/ads/videos/c;->k:Lcom/fyber/ads/videos/u;

    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/c;->q:Landroid/content/IntentFilter;

    .line 146
    new-instance v0, Lcom/fyber/ads/videos/d;

    invoke-direct {v0, p0}, Lcom/fyber/ads/videos/d;-><init>(Lcom/fyber/ads/videos/c;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/c;->r:Landroid/content/BroadcastReceiver;

    .line 168
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RVTimer"

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 169
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 170
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/fyber/ads/videos/f;

    invoke-direct {v2, p0}, Lcom/fyber/ads/videos/f;-><init>(Lcom/fyber/ads/videos/c;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/fyber/ads/videos/c;->b:Landroid/os/Handler;

    .line 186
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/fyber/ads/videos/g;

    invoke-direct {v2, p0}, Lcom/fyber/ads/videos/g;-><init>(Lcom/fyber/ads/videos/c;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/c;->c:Landroid/os/Handler;

    .line 211
    new-instance v0, Lcom/fyber/ads/videos/mediation/d;

    invoke-direct {v0}, Lcom/fyber/ads/videos/mediation/d;-><init>()V

    iput-object v0, p0, Lcom/fyber/ads/videos/c;->s:Lcom/fyber/ads/videos/mediation/d;

    .line 212
    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/videos/c;Lcom/fyber/ads/videos/player/g;)Lcom/fyber/ads/videos/player/g;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/fyber/ads/videos/c;->p:Lcom/fyber/ads/videos/player/g;

    return-object p1
.end method

.method static synthetic a(Lcom/fyber/ads/videos/c;)Lcom/fyber/ads/videos/u;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->k:Lcom/fyber/ads/videos/u;

    return-object v0
.end method

.method static synthetic a(Lcom/fyber/ads/videos/c;I)V
    .locals 2

    .prologue
    .line 72
    .line 9364
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 9365
    if-lez p1, :cond_1

    const/4 v0, 0x1

    .line 9366
    :goto_0
    if-eqz v0, :cond_2

    .line 9367
    sget-object v1, Lcom/fyber/ads/videos/u;->c:Lcom/fyber/ads/videos/u;

    invoke-direct {p0, v1}, Lcom/fyber/ads/videos/c;->a(Lcom/fyber/ads/videos/u;)Z

    .line 9371
    :goto_1
    iget-object v1, p0, Lcom/fyber/ads/videos/c;->m:Lcom/fyber/ads/videos/t;

    if-eqz v1, :cond_0

    .line 9372
    iget-object v1, p0, Lcom/fyber/ads/videos/c;->m:Lcom/fyber/ads/videos/t;

    invoke-interface {v1, v0}, Lcom/fyber/ads/videos/t;->didReceiveOffers(Z)V

    .line 72
    :cond_0
    return-void

    .line 9365
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 9369
    :cond_2
    invoke-direct {p0}, Lcom/fyber/ads/videos/c;->f()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/fyber/ads/videos/c;Lcom/fyber/ads/videos/t$a;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/fyber/ads/videos/c;->a(Lcom/fyber/ads/videos/t$a;)V

    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/videos/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/fyber/ads/videos/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/fyber/ads/videos/t$a;)V
    .locals 3

    .prologue
    .line 496
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->m:Lcom/fyber/ads/videos/t;

    if-eqz v0, :cond_0

    .line 497
    const-string v0, "RewardedVideoClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RewardedVideoClientStatus -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->m:Lcom/fyber/ads/videos/t;

    invoke-interface {v0, p1}, Lcom/fyber/ads/videos/t;->didChangeStatus(Lcom/fyber/ads/videos/t$a;)V

    .line 500
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/videos/c;Z)Z
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/fyber/ads/videos/c;->g:Z

    return p1
.end method

.method private a(Lcom/fyber/ads/videos/u;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 589
    iget-object v1, p0, Lcom/fyber/ads/videos/c;->k:Lcom/fyber/ads/videos/u;

    if-eq v1, p1, :cond_0

    .line 590
    invoke-virtual {p1}, Lcom/fyber/ads/videos/u;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/fyber/ads/videos/c;->k:Lcom/fyber/ads/videos/u;

    invoke-virtual {v2}, Lcom/fyber/ads/videos/u;->ordinal()I

    move-result v2

    sub-int/2addr v1, v2

    .line 593
    if-gt v1, v0, :cond_0

    .line 594
    iput-object p1, p0, Lcom/fyber/ads/videos/c;->k:Lcom/fyber/ads/videos/u;

    .line 595
    const-string v1, "RewardedVideoClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RewardedVideoClient mStatus -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fyber/ads/videos/u;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/fyber/ads/videos/c;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/fyber/ads/videos/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/fyber/ads/videos/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 377
    const-string v0, "STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->b:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 379
    sget-object v0, Lcom/fyber/ads/videos/u;->d:Lcom/fyber/ads/videos/u;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/c;->a(Lcom/fyber/ads/videos/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    sget-object v0, Lcom/fyber/ads/videos/t$a;->a:Lcom/fyber/ads/videos/t$a;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/c;->a(Lcom/fyber/ads/videos/t$a;)V

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    const-string v0, "CLOSE_FINISHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4611
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->l:Lcom/fyber/requesters/VirtualCurrencyRequester;

    if-eqz v0, :cond_2

    .line 4613
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->l:Lcom/fyber/requesters/VirtualCurrencyRequester;

    invoke-static {v0}, Lcom/fyber/requesters/VirtualCurrencyRequester;->from(Lcom/fyber/requesters/Requester;)Lcom/fyber/requesters/VirtualCurrencyRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/videos/c;->h:Ljava/lang/String;

    .line 4614
    invoke-virtual {v0, v1}, Lcom/fyber/requesters/VirtualCurrencyRequester;->withPlacementId(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/requesters/VirtualCurrencyRequester;

    .line 4617
    iget-object v1, p0, Lcom/fyber/ads/videos/c;->b:Landroid/os/Handler;

    new-instance v2, Lcom/fyber/ads/videos/k;

    invoke-direct {v2, p0, v0}, Lcom/fyber/ads/videos/k;-><init>(Lcom/fyber/ads/videos/c;Lcom/fyber/requesters/VirtualCurrencyRequester;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 385
    :cond_2
    invoke-direct {p0}, Lcom/fyber/ads/videos/c;->f()V

    .line 386
    sget-object v0, Lcom/fyber/ads/videos/t$a;->b:Lcom/fyber/ads/videos/t$a;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/c;->a(Lcom/fyber/ads/videos/t$a;)V

    .line 5603
    iget-boolean v0, p0, Lcom/fyber/ads/videos/c;->j:Z

    if-eqz v0, :cond_0

    .line 5604
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->e:Landroid/content/Context;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_REWARD_NOTIFICATION:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    .line 5605
    invoke-static {v1}, Lcom/fyber/utils/r;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 5604
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 5606
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 388
    :cond_3
    const-string v0, "CLOSE_ABORTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 390
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->b:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 391
    invoke-direct {p0}, Lcom/fyber/ads/videos/c;->f()V

    .line 392
    sget-object v0, Lcom/fyber/ads/videos/t$a;->c:Lcom/fyber/ads/videos/t$a;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/c;->a(Lcom/fyber/ads/videos/t$a;)V

    goto :goto_0

    .line 393
    :cond_4
    const-string v0, "ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 394
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_MESSAGE_DEFAULT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v0}, Lcom/fyber/utils/r;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/c;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_5
    const-string v0, "USER_ENGAGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    sget-object v0, Lcom/fyber/ads/videos/u;->e:Lcom/fyber/ads/videos/u;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/c;->a(Lcom/fyber/ads/videos/u;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/fyber/ads/videos/c;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->f:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic c(Lcom/fyber/ads/videos/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/fyber/ads/videos/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 412
    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->c:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 414
    const/16 v1, 0x7b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 415
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 416
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 418
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/fyber/ads/videos/c;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/videos/c;->f:Landroid/webkit/WebView;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/fyber/ads/videos/c;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/c;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/videos/c;->g:Z

    .line 564
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/fyber/ads/videos/c;->d:Lcom/fyber/ads/videos/RewardedVideoActivity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fyber/ads/videos/c;->e:Landroid/content/Context;

    :goto_0
    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 565
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v0}, Lcom/fyber/utils/r;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v2, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_BUTTON_TITLE_DISMISS:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    .line 566
    invoke-static {v2}, Lcom/fyber/utils/r;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fyber/ads/videos/j;

    invoke-direct {v3, p0}, Lcom/fyber/ads/videos/j;-><init>(Lcom/fyber/ads/videos/c;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 576
    :try_start_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :cond_0
    :goto_1
    return-void

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->d:Lcom/fyber/ads/videos/RewardedVideoActivity;

    goto :goto_0

    .line 578
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/ads/videos/c;->g:Z

    .line 579
    const-string v0, "RewardedVideoClient"

    const-string v1, "Unable to show the dialog window"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/fyber/ads/videos/c;)Lcom/fyber/ads/videos/RewardedVideoActivity;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/videos/c;->d:Lcom/fyber/ads/videos/RewardedVideoActivity;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 401
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 402
    const-string v0, "about:blank"

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/c;->c(Ljava/lang/String;)V

    .line 405
    :cond_0
    iput-object v1, p0, Lcom/fyber/ads/videos/c;->l:Lcom/fyber/requesters/VirtualCurrencyRequester;

    .line 406
    iput-object v1, p0, Lcom/fyber/ads/videos/c;->i:Ljava/util/Map;

    .line 407
    iput-object v1, p0, Lcom/fyber/ads/videos/c;->h:Ljava/lang/String;

    .line 408
    sget-object v0, Lcom/fyber/ads/videos/u;->a:Lcom/fyber/ads/videos/u;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/c;->a(Lcom/fyber/ads/videos/u;)Z

    .line 409
    return-void
.end method

.method static synthetic f(Lcom/fyber/ads/videos/c;)V
    .locals 3

    .prologue
    .line 72
    .line 9826
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 9828
    :try_start_0
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onPause"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/videos/c;->f:Landroid/webkit/WebView;

    const/4 v2, 0x0

    .line 9829
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9832
    :cond_0
    :goto_0
    return-void

    .line 9830
    :catch_0
    move-exception v0

    .line 9831
    const-string v1, "RewardedVideoClient"

    const-string v2, "onPause error"

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/fyber/ads/videos/c;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->r:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic h(Lcom/fyber/ads/videos/c;)Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->q:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic i(Lcom/fyber/ads/videos/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/fyber/ads/videos/c;)Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 72
    .line 10775
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->o:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 10776
    new-instance v0, Lcom/fyber/ads/videos/p;

    invoke-direct {v0, p0}, Lcom/fyber/ads/videos/p;-><init>(Lcom/fyber/ads/videos/c;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/c;->o:Landroid/webkit/WebChromeClient;

    .line 10815
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->o:Landroid/webkit/WebChromeClient;

    .line 72
    return-object v0
.end method

.method static synthetic k(Lcom/fyber/ads/videos/c;)Landroid/webkit/WebViewClient;
    .locals 2

    .prologue
    .line 72
    .line 11632
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->n:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 11634
    new-instance v0, Lcom/fyber/ads/videos/l;

    iget-object v1, p0, Lcom/fyber/ads/videos/c;->d:Lcom/fyber/ads/videos/RewardedVideoActivity;

    invoke-direct {v0, p0, v1}, Lcom/fyber/ads/videos/l;-><init>(Lcom/fyber/ads/videos/c;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/c;->n:Landroid/webkit/WebViewClient;

    .line 11770
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->n:Landroid/webkit/WebViewClient;

    .line 72
    return-object v0
.end method

.method static synthetic l(Lcom/fyber/ads/videos/c;)Lcom/fyber/ads/videos/mediation/d;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->s:Lcom/fyber/ads/videos/mediation/d;

    return-object v0
.end method

.method static synthetic m(Lcom/fyber/ads/videos/c;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/fyber/ads/videos/c;->f()V

    return-void
.end method

.method static synthetic n(Lcom/fyber/ads/videos/c;)Lcom/fyber/ads/videos/RewardedVideoActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->d:Lcom/fyber/ads/videos/RewardedVideoActivity;

    return-object v0
.end method

.method static synthetic o(Lcom/fyber/ads/videos/c;)Lcom/fyber/ads/videos/player/g;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->p:Lcom/fyber/ads/videos/player/g;

    return-object v0
.end method

.method static synthetic p(Lcom/fyber/ads/videos/c;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/fyber/ads/videos/c;->g:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->k:Lcom/fyber/ads/videos/u;

    sget-object v1, Lcom/fyber/ads/videos/u;->e:Lcom/fyber/ads/videos/u;

    invoke-virtual {v0, v1}, Lcom/fyber/ads/videos/u;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/c;->k:Lcom/fyber/ads/videos/u;

    sget-object v1, Lcom/fyber/ads/videos/u;->d:Lcom/fyber/ads/videos/u;

    invoke-virtual {v0, v1}, Lcom/fyber/ads/videos/u;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->k:Lcom/fyber/ads/videos/u;

    sget-object v1, Lcom/fyber/ads/videos/u;->e:Lcom/fyber/ads/videos/u;

    if-ne v0, v1, :cond_2

    .line 327
    const-string v0, "CLOSE_FINISHED"

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/c;->b(Ljava/lang/String;)V

    .line 332
    :cond_1
    :goto_0
    return-void

    .line 329
    :cond_2
    const-string v0, "CLOSE_ABORTED"

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/c;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/webkit/ValueCallback;)V
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
    .line 503
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->s:Lcom/fyber/ads/videos/mediation/d;

    iget-object v1, p0, Lcom/fyber/ads/videos/c;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1}, Lcom/fyber/ads/videos/mediation/d;->a(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;)V

    .line 504
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 360
    iput-boolean p1, p0, Lcom/fyber/ads/videos/c;->j:Z

    .line 361
    return-void
.end method

.method public final a(Lcom/fyber/ads/videos/RewardedVideoActivity;Z)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 278
    if-eqz p1, :cond_3

    .line 3347
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->k:Lcom/fyber/ads/videos/u;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/u;->a()Z

    move-result v0

    .line 279
    if-eqz v0, :cond_2

    .line 3843
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/CacheManager;->b()Lcom/fyber/cache/internal/a;

    move-result-object v3

    .line 3844
    const-string v0, ""

    .line 3845
    if-eqz v3, :cond_0

    .line 3846
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, ", cache_config_id:\'%s\'"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/fyber/cache/internal/a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3848
    :cond_0
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "javascript:Sponsorpay.MBE.SDKInterface.do_start({cached_ad_ids:%s, downloaded_videos_count:%d%s})"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fyber/cache/CacheManager;->d()Lcom/fyber/cache/internal/e;

    invoke-static {}, Lcom/fyber/cache/internal/e;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 3849
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fyber/cache/CacheManager;->d()Lcom/fyber/cache/internal/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fyber/cache/internal/e;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v2, 0x2

    aput-object v0, v5, v2

    .line 3848
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 282
    const-string v2, "RewardedVideoClient"

    invoke-static {v2, v0}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/c;->c(Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/CacheManager;->d()Lcom/fyber/cache/internal/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/internal/e;->c()V

    .line 287
    iput-object p1, p0, Lcom/fyber/ads/videos/c;->d:Lcom/fyber/ads/videos/RewardedVideoActivity;

    .line 288
    if-nez p2, :cond_1

    .line 4306
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    new-instance v0, Lcom/fyber/ads/videos/h;

    invoke-direct {v0, p0, p1}, Lcom/fyber/ads/videos/h;-><init>(Lcom/fyber/ads/videos/c;Lcom/fyber/ads/videos/RewardedVideoActivity;)V

    invoke-static {v0}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/utils/b;)V

    .line 4421
    :cond_1
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v0, v1

    .line 302
    :goto_0
    return v0

    .line 295
    :cond_2
    const-string v0, "RewardedVideoClient"

    const-string v1, "RewardedVideoClient is not ready to show offers. Call requestOffers() and wait until your listener is called with the confirmation that offers have been received."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v0, v2

    .line 302
    goto :goto_0

    .line 300
    :cond_3
    const-string v0, "RewardedVideoClient"

    const-string v1, "The provided activity is null, RewardedVideoClient cannot start the engagement."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Lcom/fyber/ads/videos/t;)Z
    .locals 3

    .prologue
    .line 485
    .line 9351
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->k:Lcom/fyber/ads/videos/u;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/u;->b()Z

    move-result v0

    .line 486
    if-eqz v0, :cond_0

    .line 487
    iput-object p1, p0, Lcom/fyber/ads/videos/c;->m:Lcom/fyber/ads/videos/t;

    .line 492
    :goto_0
    return v0

    .line 489
    :cond_0
    const-string v1, "RewardedVideoClient"

    const-string v2, "Cannot change the status listener while a request to the server is going on or an offer is being presented to the user."

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/fyber/credentials/a;Landroid/content/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 229
    .line 1339
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->k:Lcom/fyber/ads/videos/u;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/u;->c()Z

    move-result v0

    .line 229
    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->f:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 1508
    iput-object p2, p0, Lcom/fyber/ads/videos/c;->e:Landroid/content/Context;

    .line 1525
    new-instance v0, Lcom/fyber/ads/videos/i;

    invoke-direct {v0, p0}, Lcom/fyber/ads/videos/i;-><init>(Lcom/fyber/ads/videos/c;)V

    .line 1512
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1515
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 1516
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/fyber/ads/videos/c;->f:Landroid/webkit/WebView;

    .line 2585
    :cond_0
    :goto_0
    const-string v0, "videos"

    invoke-static {v0}, Lcom/fyber/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2258
    invoke-static {v0, p1}, Lcom/fyber/utils/s;->a(Ljava/lang/String;Lcom/fyber/credentials/a;)Lcom/fyber/utils/s;

    move-result-object v0

    .line 2259
    invoke-virtual {v0}, Lcom/fyber/utils/s;->d()Lcom/fyber/utils/s;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/videos/c;->h:Ljava/lang/String;

    .line 2260
    invoke-virtual {v0, v1}, Lcom/fyber/utils/s;->a(Ljava/lang/String;)Lcom/fyber/utils/s;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/videos/c;->i:Ljava/util/Map;

    .line 2261
    invoke-virtual {v0, v1}, Lcom/fyber/utils/s;->a(Ljava/util/Map;)Lcom/fyber/utils/s;

    move-result-object v0

    const-string v1, "rewarded"

    const-string v2, "1"

    .line 2262
    invoke-virtual {v0, v1, v2}, Lcom/fyber/utils/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/s;

    move-result-object v0

    const-string v1, "ad_format"

    const-string v2, "video"

    .line 2263
    invoke-virtual {v0, v1, v2}, Lcom/fyber/utils/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/s;

    move-result-object v0

    .line 2264
    invoke-virtual {v0}, Lcom/fyber/utils/s;->a()Lcom/fyber/utils/s;

    move-result-object v0

    .line 2265
    invoke-virtual {v0}, Lcom/fyber/utils/s;->e()Ljava/lang/String;

    move-result-object v0

    .line 2248
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fyber/ads/videos/c;->i:Ljava/util/Map;

    .line 2250
    const-string v1, "RewardedVideoClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loading URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/c;->c(Ljava/lang/String;)V

    .line 2252
    sget-object v0, Lcom/fyber/ads/videos/u;->b:Lcom/fyber/ads/videos/u;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/c;->a(Lcom/fyber/ads/videos/u;)Z

    .line 2254
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 236
    const/4 v0, 0x1

    .line 241
    :goto_1
    return v0

    .line 1519
    :cond_1
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1520
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/fyber/ads/videos/c;->f:Landroid/webkit/WebView;

    goto :goto_0

    .line 238
    :cond_2
    const-string v0, "RewardedVideoClient"

    const-string v1, "RewardedVideoClient cannot request offers at this point. It might be requesting offers right now or an offer might be currently being presented to the user."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/fyber/requesters/VirtualCurrencyRequester;)Z
    .locals 2

    .prologue
    .line 443
    .line 7351
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->k:Lcom/fyber/ads/videos/u;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/u;->b()Z

    move-result v0

    .line 443
    if-eqz v0, :cond_0

    .line 444
    iput-object p1, p0, Lcom/fyber/ads/videos/c;->l:Lcom/fyber/requesters/VirtualCurrencyRequester;

    .line 445
    sget-object v0, Lcom/fyber/ads/videos/u;->a:Lcom/fyber/ads/videos/u;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/c;->a(Lcom/fyber/ads/videos/u;)Z

    .line 446
    const/4 v0, 0x1

    .line 450
    :goto_0
    return v0

    .line 448
    :cond_0
    const-string v0, "RewardedVideoClient"

    const-string v1, "Cannot change the currency ID while a request to the server is going on or an offer is being presented to the user."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 431
    .line 6351
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->k:Lcom/fyber/ads/videos/u;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/u;->b()Z

    move-result v0

    .line 431
    if-eqz v0, :cond_0

    .line 432
    iput-object p1, p0, Lcom/fyber/ads/videos/c;->h:Ljava/lang/String;

    .line 433
    sget-object v0, Lcom/fyber/ads/videos/u;->a:Lcom/fyber/ads/videos/u;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/c;->a(Lcom/fyber/ads/videos/u;)Z

    .line 434
    const/4 v0, 0x1

    .line 438
    :goto_0
    return v0

    .line 436
    :cond_0
    const-string v0, "RewardedVideoClient"

    const-string v1, "Cannot change the placement ID while a request to the server is going on or an offer is being presented to the user."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)Z
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
    .line 464
    .line 8351
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->k:Lcom/fyber/ads/videos/u;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/u;->b()Z

    move-result v0

    .line 464
    if-eqz v0, :cond_0

    .line 465
    iput-object p1, p0, Lcom/fyber/ads/videos/c;->i:Ljava/util/Map;

    .line 467
    sget-object v0, Lcom/fyber/ads/videos/u;->a:Lcom/fyber/ads/videos/u;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/c;->a(Lcom/fyber/ads/videos/u;)Z

    .line 468
    const/4 v0, 0x1

    .line 472
    :goto_0
    return v0

    .line 470
    :cond_0
    const-string v0, "RewardedVideoClient"

    const-string v1, "Cannot change custom parameters while a request to the server is going on or an offer is being presented to the user."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->k:Lcom/fyber/ads/videos/u;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/u;->c()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->k:Lcom/fyber/ads/videos/u;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/u;->a()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 820
    iget-object v0, p0, Lcom/fyber/ads/videos/c;->c:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 821
    const/16 v1, 0x20a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 822
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 823
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 839
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/videos/c;->p:Lcom/fyber/ads/videos/player/g;

    .line 840
    return-void
.end method
