.class public Lcom/sponsorpay/SponsorPay;
.super Ljava/lang/Object;
.source "SponsorPay.java"


# static fields
.field public static final BUGFIX_RELEASE_NUMBER:I = 0x6

.field protected static INSTANCE:Lcom/sponsorpay/SponsorPay; = null

.field public static final MAJOR_RELEASE_NUMBER:I = 0x7

.field public static final MINOR_RELEASE_NUMBER:I = 0x2

.field public static final RELEASE_VERSION_STRING:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "SponsorPay"


# instance fields
.field private currentCredentials:Lcom/sponsorpay/credentials/SPCredentials;

.field private tokensMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sponsorpay/credentials/SPCredentials;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 50
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%d.%d.%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sponsorpay/SponsorPay;->RELEASE_VERSION_STRING:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/sponsorpay/SponsorPay;

    invoke-direct {v0}, Lcom/sponsorpay/SponsorPay;-><init>()V

    sput-object v0, Lcom/sponsorpay/SponsorPay;->INSTANCE:Lcom/sponsorpay/SponsorPay;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/SponsorPay;->tokensMap:Ljava/util/HashMap;

    .line 62
    new-instance v0, Lcom/sponsorpay/utils/c;

    invoke-direct {v0}, Lcom/sponsorpay/utils/c;-><init>()V

    invoke-static {v0}, Lcom/sponsorpay/utils/SponsorPayParametersProvider;->addParametersProvider(Lcom/sponsorpay/utils/SPParametersProvider;)Z

    .line 63
    return-void
.end method

.method public static getAllCredentials()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    sget-object v0, Lcom/sponsorpay/SponsorPay;->INSTANCE:Lcom/sponsorpay/SponsorPay;

    iget-object v0, v0, Lcom/sponsorpay/SponsorPay;->tokensMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getCredentials(Ljava/lang/String;)Lcom/sponsorpay/credentials/SPCredentials;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/sponsorpay/SponsorPay;->INSTANCE:Lcom/sponsorpay/SponsorPay;

    invoke-direct {v0, p0}, Lcom/sponsorpay/SponsorPay;->getCredentialsFromToken(Ljava/lang/String;)Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    return-object v0
.end method

.method private getCredentialsFromToken(Ljava/lang/String;)Lcom/sponsorpay/credentials/SPCredentials;
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sponsorpay/SponsorPay;->tokensMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/credentials/SPCredentials;

    .line 67
    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "There are no credentials identified by "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nYou have to execute SponsorPay.start method first."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    return-object v0
.end method

.method public static getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/sponsorpay/SponsorPay;->INSTANCE:Lcom/sponsorpay/SponsorPay;

    iget-object v0, v0, Lcom/sponsorpay/SponsorPay;->currentCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please start the SDK before accessing any of its resources.\nYou have to execute SponsorPay.start method first."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    sget-object v0, Lcom/sponsorpay/SponsorPay;->INSTANCE:Lcom/sponsorpay/SponsorPay;

    iget-object v0, v0, Lcom/sponsorpay/SponsorPay;->currentCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    return-object v0
.end method

.method public static start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getAllCredentials()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 141
    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 143
    sget-object v2, Lcom/sponsorpay/SponsorPay;->INSTANCE:Lcom/sponsorpay/SponsorPay;

    invoke-virtual {v2, p0, p1, p2, v1}, Lcom/sponsorpay/SponsorPay;->getCredentialsToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {}, Lcom/sponsorpay/utils/HostInfo;->isDeviceSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 146
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    invoke-static {v1}, Lcom/sponsorpay/utils/HostInfo;->getHostInfo(Landroid/content/Context;)Lcom/sponsorpay/utils/HostInfo;

    .line 148
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_0

    .line 149
    invoke-static {p3}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 151
    :cond_0
    new-instance v3, Lcom/sponsorpay/utils/cookies/a;

    invoke-direct {v3, p3}, Lcom/sponsorpay/utils/cookies/a;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-static {v3}, Lcom/sponsorpay/utils/d;->setCookieStore(Ljava/net/CookieStore;)V

    .line 153
    invoke-static {p2}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 154
    sget-object v3, Lcom/sponsorpay/SponsorPay;->INSTANCE:Lcom/sponsorpay/SponsorPay;

    iget-object v3, v3, Lcom/sponsorpay/SponsorPay;->currentCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-static {v3, p3}, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->requestConfig(Lcom/sponsorpay/credentials/SPCredentials;Landroid/app/Activity;)V

    .line 160
    :goto_0
    sget-object v3, Lcom/sponsorpay/SponsorPay;->INSTANCE:Lcom/sponsorpay/SponsorPay;

    iget-object v3, v3, Lcom/sponsorpay/SponsorPay;->currentCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-virtual {v3}, Lcom/sponsorpay/credentials/SPCredentials;->isAdvertisingID()Z

    move-result v3

    if-nez v3, :cond_1

    .line 161
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a(Landroid/content/Context;)V

    .line 164
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 165
    invoke-static {v1}, Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;->register(Landroid/content/Context;)V

    .line 176
    :cond_2
    :goto_1
    return-object v2

    .line 157
    :cond_3
    sget-object v3, Lcom/sponsorpay/mediation/SPMediationCoordinator;->INSTANCE:Lcom/sponsorpay/mediation/SPMediationCoordinator;

    invoke-virtual {v3, p3}, Lcom/sponsorpay/mediation/SPMediationCoordinator;->startMediationAdapters(Landroid/app/Activity;)V

    goto :goto_0

    .line 169
    :cond_4
    invoke-static {}, Lcom/sponsorpay/utils/SponsorPayLogger;->isLogging()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 170
    const-string v0, "SponsorPay"

    const-string v1, "Only devices running Android API level 10 and above are supported"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 172
    :cond_5
    const-string v0, "SponsorPay"

    const-string v1, "Only devices running Android API level 10 and above are supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected getCredentialsToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sponsorpay/SponsorPay;->tokensMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/credentials/SPCredentials;

    .line 78
    if-nez v0, :cond_1

    .line 79
    new-instance v0, Lcom/sponsorpay/credentials/SPCredentials;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sponsorpay/credentials/SPCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 80
    iget-object v1, p0, Lcom/sponsorpay/SponsorPay;->tokensMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/sponsorpay/SponsorPay;->currentCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    .line 85
    iget-object v0, p0, Lcom/sponsorpay/SponsorPay;->currentCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 81
    :cond_1
    invoke-static {p3}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v0, p3}, Lcom/sponsorpay/credentials/SPCredentials;->setSecurityToken(Ljava/lang/String;)V

    goto :goto_0
.end method
