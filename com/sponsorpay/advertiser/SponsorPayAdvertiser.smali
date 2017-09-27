.class public Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;
.super Ljava/lang/Object;
.source "SponsorPayAdvertiser.java"


# static fields
.field private static b:Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;


# instance fields
.field private a:Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The SDK was not initialized yet. You should call SponsorPay.start method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    new-instance v0, Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;

    invoke-direct {v0, p1}, Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;->a:Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;

    .line 57
    return-void
.end method

.method private static a()V
    .locals 2

    .prologue
    .line 205
    invoke-static {}, Lcom/sponsorpay/utils/SponsorPayLogger;->isLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "SponsorPayAdvertiser"

    const-string v1, "Only devices running Android API level 10 and above are supported"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    const-string v0, "SponsorPayAdvertiser"

    const-string v1, "Only devices running Android API level 10 and above are supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static register(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;->register(Landroid/content/Context;Ljava/util/Map;)V

    .line 168
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0, p0, p1}, Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;->register(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)V

    .line 181
    return-void
.end method

.method public static register(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {}, Lcom/sponsorpay/utils/HostInfo;->isDeviceSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    sget-object v0, Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;->b:Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;

    invoke-direct {v0, p1}, Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;->b:Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;

    .line 198
    :cond_0
    sget-object v0, Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;->b:Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;

    invoke-static {p0}, Lcom/sponsorpay/SponsorPay;->getCredentials(Ljava/lang/String;)Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v1

    new-instance v2, Lcom/sponsorpay/advertiser/a;

    iget-object v0, v0, Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;->a:Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;

    invoke-direct {v2, v1, v0}, Lcom/sponsorpay/advertiser/a;-><init>(Lcom/sponsorpay/credentials/SPCredentials;Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;)V

    invoke-virtual {v2, p2}, Lcom/sponsorpay/advertiser/a;->setCustomParams(Ljava/util/Map;)V

    invoke-virtual {v2}, Lcom/sponsorpay/advertiser/a;->trigger()V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-static {}, Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;->a()V

    goto :goto_0
.end method

.method public static reportActionCompletion(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0, p0}, Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;->reportActionCompletion(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static reportActionCompletion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;->reportActionCompletion(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 124
    return-void
.end method

.method public static reportActionCompletion(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    :try_start_0
    invoke-static {p1}, Lcom/sponsorpay/utils/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sponsorpay/utils/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    invoke-static {}, Lcom/sponsorpay/utils/HostInfo;->isDeviceSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    sget-object v0, Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;->b:Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No valid credentials object was created yet.\nYou have to execute SponsorPay.start method first."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The provided Action ID is not valid. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sponsorpay/utils/f;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_0
    sget-object v0, Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;->b:Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;

    invoke-static {p0}, Lcom/sponsorpay/SponsorPay;->getCredentials(Ljava/lang/String;)Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v1

    new-instance v2, Lcom/sponsorpay/advertiser/ActionCallbackSender;

    iget-object v0, v0, Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;->a:Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;

    invoke-direct {v2, p1, v1, v0}, Lcom/sponsorpay/advertiser/ActionCallbackSender;-><init>(Ljava/lang/String;Lcom/sponsorpay/credentials/SPCredentials;Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;)V

    invoke-virtual {v2, p2}, Lcom/sponsorpay/advertiser/ActionCallbackSender;->setCustomParams(Ljava/util/Map;)V

    invoke-virtual {v2}, Lcom/sponsorpay/advertiser/ActionCallbackSender;->trigger()V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-static {}, Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;->a()V

    goto :goto_0
.end method
