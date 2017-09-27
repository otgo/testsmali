.class public Lcom/sponsorpay/publisher/SponsorPayPublisher;
.super Ljava/lang/Object;
.source "SponsorPayPublisher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;
    }
.end annotation


# static fields
.field public static final PLACEMENT_KEY:Ljava/lang/String; = "placement_id"

.field public static final PREFERENCES_FILENAME:Ljava/lang/String; = "SponsorPayPublisherState"

.field private static a:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 64
    sput-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_DIALOG_TITLE:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Error"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->DISMISS_ERROR_DIALOG:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Dismiss"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->GENERIC_ERROR:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "An error happened when performing this operation"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_LOADING_OFFERWALL:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "An error happened when loading the offer wall"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_LOADING_OFFERWALL_NO_INTERNET_CONNECTION:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "An error happened when loading the offer wall (no internet connection)"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->LOADING_INTERSTITIAL:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Loading..."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->LOADING_OFFERWALL:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Loading..."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_PLAY_STORE_UNAVAILABLE:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "You don\'t have the Google Play Store application on your device to complete App Install offers."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_REWARD_NOTIFICATION:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Thanks! Your reward will be paid out shortly"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->VCS_COINS_NOTIFICATION:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Congratulations! You\'ve earned %.0f %s!"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->VCS_DEFAULT_CURRENCY:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "coins"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_ERROR_DIALOG_TITLE:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Error"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_ERROR_DIALOG_MESSAGE_DEFAULT:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "We\'re sorry, something went wrong. Please try again."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_ERROR_DIALOG_MESSAGE_OFFLINE:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Your Internet connection has been lost. Please try again later."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_ERROR_DIALOG_BUTTON_TITLE_DISMISS:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Dismiss"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_FORFEIT_DIALOG_TITLE:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_CLICKTHROUGH_HINT:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Tap anywhere to discover more about this ad"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_ALERT_DIALOG_EXIT_VIDEO_TEXT:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Exit Video"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_ALERT_DIALOG_CLOSE_VIDEO_TEXT:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Close Video"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_ALERT_DIALOG_RESUME_VIDEO_TEXT:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Resume Video"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_ALERT_DIALOG_TITLE:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Error"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_ALERT_DIALOG_MESSAGE:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "An error has occurred while trying to load the video"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_LOADING_MESSAGE:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Loading..."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 917
    if-nez p0, :cond_0

    .line 918
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 921
    :cond_0
    invoke-static {p1}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 922
    const-string p1, ""

    .line 924
    :cond_1
    const-string v0, "placement_id"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    return-object p0
.end method

.method public static displayNotificationForSuccessfullCoinRequest(Z)V
    .locals 0

    .prologue
    .line 564
    invoke-static {p0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->shouldShowToastNotification(Z)V

    .line 565
    return-void
.end method

.method public static getIntentForInterstitialActivity(Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;)Z
    .locals 2

    .prologue
    .line 792
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    .line 793
    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForInterstitialActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIntentForInterstitialActivity(Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 814
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    .line 815
    invoke-static {v0, p0, p1, p2}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForInterstitialActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIntentForInterstitialActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 835
    invoke-static {p0, p1, p2, v0, v0}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForInterstitialActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIntentForInterstitialActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 856
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForInterstitialActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIntentForInterstitialActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 878
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForInterstitialActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIntentForInterstitialActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 902
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    .line 903
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->canRequestAds()Z

    move-result v1

    .line 904
    if-eqz v1, :cond_0

    .line 906
    invoke-static {p3, p4}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 908
    invoke-static {p0}, Lcom/sponsorpay/SponsorPay;->getCredentials(Ljava/lang/String;)Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v3

    .line 909
    invoke-virtual {v0, p2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->setRequestListener(Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;)V

    .line 910
    invoke-virtual {v0, v2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->setCustomParameters(Ljava/util/Map;)Z

    .line 911
    invoke-virtual {v0, v3, p1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->requestAds(Lcom/sponsorpay/credentials/SPCredentials;Landroid/app/Activity;)Z

    .line 913
    :cond_0
    return v1
.end method

.method public static getIntentForMBEActivity(Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 586
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    .line 587
    invoke-static/range {v0 .. v5}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForMBEActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Ljava/lang/String;Ljava/util/Map;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;)Z

    move-result v0

    return v0
.end method

.method public static getIntentForMBEActivity(Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;)Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 629
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    move-object v6, v3

    move-object v7, v3

    .line 630
    invoke-static/range {v0 .. v7}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForMBEActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Ljava/lang/String;Ljava/util/Map;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIntentForMBEActivity(Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 655
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 656
    invoke-static/range {v0 .. v7}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForMBEActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Ljava/lang/String;Ljava/util/Map;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIntentForMBEActivity(Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 607
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    .line 608
    invoke-static {v0, p0, p1, p2}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForMBEActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIntentForMBEActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;)Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 677
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForMBEActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Ljava/lang/String;Ljava/util/Map;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIntentForMBEActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 698
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForMBEActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Ljava/lang/String;Ljava/util/Map;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIntentForMBEActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Ljava/lang/String;Ljava/util/Map;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 727
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-static/range {v0 .. v7}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForMBEActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Ljava/lang/String;Ljava/util/Map;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIntentForMBEActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Ljava/lang/String;Ljava/util/Map;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 755
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    .line 756
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->canRequestOffers()Z

    move-result v1

    .line 757
    if-eqz v1, :cond_0

    .line 758
    invoke-static {p4, p7}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 760
    invoke-static {p0}, Lcom/sponsorpay/SponsorPay;->getCredentials(Ljava/lang/String;)Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v3

    .line 761
    invoke-virtual {v0, p3}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->setCurrencyName(Ljava/lang/String;)Z

    .line 762
    invoke-virtual {v0, v2}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->setParametersForRequest(Ljava/util/Map;)Z

    .line 763
    invoke-virtual {v0, p5}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->setCurrencyListener(Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;)Z

    .line 764
    invoke-virtual {v0, p6}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->setCurrencyId(Ljava/lang/String;)Z

    .line 766
    new-instance v2, Lcom/sponsorpay/publisher/mbe/t;

    invoke-direct {v2, v3, p1, v0, p2}, Lcom/sponsorpay/publisher/mbe/t;-><init>(Lcom/sponsorpay/credentials/SPCredentials;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;)V

    .line 767
    invoke-virtual {v2}, Lcom/sponsorpay/publisher/mbe/t;->a()V

    .line 770
    :cond_0
    return v1
.end method

.method public static getIntentForOfferWallActivity(Landroid/content/Context;Ljava/lang/Boolean;)Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 186
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    .line 187
    invoke-static/range {v0 .. v5}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForOfferWallActivity(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getIntentForOfferWallActivity(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 218
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    .line 219
    invoke-static/range {v0 .. v5}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForOfferWallActivity(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getIntentForOfferWallActivity(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 256
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    .line 257
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForOfferWallActivity(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getIntentForOfferWallActivity(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 296
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 297
    invoke-static/range {v0 .. v5}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForOfferWallActivity(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getIntentForOfferWallActivity(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 335
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForOfferWallActivity(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getIntentForOfferWallActivity(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 374
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 375
    invoke-static {}, Lcom/sponsorpay/utils/HostInfo;->isDeviceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-static {p4, p5}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 378
    invoke-static {p0}, Lcom/sponsorpay/SponsorPay;->getCredentials(Ljava/lang/String;)Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v2

    .line 380
    const-string v3, "EXTRA_CREDENTIALS_TOKEN_KEY"

    invoke-virtual {v2}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string v2, "EXTRA_SHOULD_REMAIN_OPEN_KEY"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 382
    const-string v2, "EXTRA_CURRENCY_NAME_KEY"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string v2, "EXTRA_KEY_VALUES_MAP"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 386
    :cond_0
    return-object v1
.end method

.method public static getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static requestNewCoins(Landroid/content/Context;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;)V
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->requestNewCoins(Landroid/content/Context;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public static requestNewCoins(Landroid/content/Context;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 451
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    .line 452
    invoke-static/range {v0 .. v5}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->requestNewCoins(Ljava/lang/String;Landroid/content/Context;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method public static requestNewCoins(Landroid/content/Context;Ljava/lang/String;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;)V
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->requestNewCoins(Landroid/content/Context;Ljava/lang/String;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public static requestNewCoins(Landroid/content/Context;Ljava/lang/String;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 480
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-object v5, v3

    move-object v6, p3

    .line 481
    invoke-static/range {v0 .. v6}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->requestNewCoins(Ljava/lang/String;Landroid/content/Context;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public static requestNewCoins(Ljava/lang/String;Landroid/content/Context;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 549
    new-instance v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;

    invoke-direct {v0, p1, p0, p2}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;)V

    .line 550
    invoke-virtual {v0, p5}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->setCustomParameters(Ljava/util/Map;)Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;

    .line 551
    invoke-virtual {v0, p6}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->setCurrency(Ljava/lang/String;)Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;

    .line 552
    invoke-virtual {v0, p3, p4}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->fetchDeltaOfCoinsForCurrentUserSinceTransactionId(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method public static requestNewCoins(Ljava/lang/String;Landroid/content/Context;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 512
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->requestNewCoins(Ljava/lang/String;Landroid/content/Context;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method public static setCustomUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;ILandroid/content/Context;)V
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->setCustomUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public static setCustomUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public static setCustomUIStrings(Ljava/util/EnumMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {}, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->values()[Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 126
    invoke-virtual {p0, v4}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->setCustomUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;Ljava/lang/String;)V

    .line 125
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 130
    :cond_1
    return-void
.end method

.method public static setCustomUIStrings(Ljava/util/EnumMap;Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {}, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->values()[Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 149
    invoke-virtual {p0, v4}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v4, v0, p1}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->setCustomUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;ILandroid/content/Context;)V

    .line 148
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 153
    :cond_1
    return-void
.end method
