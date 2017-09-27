.class LTapjoy;
.super Ljava/lang/Object;
.source "Tapjoy.java"


# static fields
.field private static final TAP_POINTS_KEY:Ljava/lang/String; = "tap_points"


# instance fields
.field private settings:Landroid/content/SharedPreferences;

.field private tap_points:I

.field private final tapjoy_notifier:Lcom/tapjoy/TapjoyNotifier;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, LTapjoy$1;

    invoke-direct {v0, p0}, LTapjoy$1;-><init>(LTapjoy;)V

    iput-object v0, p0, LTapjoy;->tapjoy_notifier:Lcom/tapjoy/TapjoyNotifier;

    return-void
.end method

.method static synthetic access$000(LTapjoy;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, LTapjoy;->tap_points:I

    return v0
.end method

.method static synthetic access$002(LTapjoy;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, LTapjoy;->tap_points:I

    return p1
.end method

.method static synthetic access$012(LTapjoy;I)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, LTapjoy;->tap_points:I

    add-int/2addr v0, p1

    iput v0, p0, LTapjoy;->tap_points:I

    return v0
.end method

.method static synthetic access$100(LTapjoy;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, LTapjoy;->settings:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(LTapjoy;)Lcom/tapjoy/TapjoyNotifier;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, LTapjoy;->tapjoy_notifier:Lcom/tapjoy/TapjoyNotifier;

    return-object v0
.end method


# virtual methods
.method public tapjoy_get_tap_points()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, LTapjoy;->tap_points:I

    return v0
.end method

.method public tapjoy_init(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 43
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v1, "com.warlings3"

    invoke-virtual {v0, v1, v4}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, LTapjoy;->settings:Landroid/content/SharedPreferences;

    .line 44
    iget-object v0, p0, LTapjoy;->settings:Landroid/content/SharedPreferences;

    const-string v1, "tap_points"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, LTapjoy;->tap_points:I

    .line 46
    new-instance v0, LTapjoy$2;

    invoke-direct {v0, p0}, LTapjoy$2;-><init>(LTapjoy;)V

    .line 55
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const/4 v2, 0x0

    new-instance v3, LTapjoy$3;

    invoke-direct {v3, p0, v0}, LTapjoy$3;-><init>(LTapjoy;Lcom/tapjoy/TapjoyEarnedPointsNotifier;)V

    invoke-static {v1, p1, p2, v2, v3}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)Z

    .line 68
    return v4
.end method

.method public tapjoy_on_pause()I
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnect;->appPause()V

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public tapjoy_show_fullscreen_ad()I
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnect;->showFullScreenAd()V

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public tapjoy_show_offers()I
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnect;->showOffers()V

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public tapjoy_update_tap_points()I
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    iget-object v1, p0, LTapjoy;->tapjoy_notifier:Lcom/tapjoy/TapjoyNotifier;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnect;->getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V

    .line 97
    const/4 v0, 0x0

    return v0
.end method
