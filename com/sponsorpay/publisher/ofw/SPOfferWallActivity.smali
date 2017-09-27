.class public Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;
.super Landroid/app/Activity;
.source "SPOfferWallActivity.java"


# static fields
.field public static final EXTRA_CREDENTIALS_TOKEN_KEY:Ljava/lang/String; = "EXTRA_CREDENTIALS_TOKEN_KEY"

.field public static final EXTRA_CURRENCY_NAME_KEY:Ljava/lang/String; = "EXTRA_CURRENCY_NAME_KEY"

.field public static final EXTRA_KEYS_VALUES_MAP_KEY:Ljava/lang/String; = "EXTRA_KEY_VALUES_MAP"

.field public static final EXTRA_SHOULD_STAY_OPEN_KEY:Ljava/lang/String; = "EXTRA_SHOULD_REMAIN_OPEN_KEY"

.field public static final RESULT_CODE_NO_STATUS_CODE:I = -0xa

.field public static final TAG:Ljava/lang/String; = "SPOfferWallActivity"


# instance fields
.field private a:Z

.field private b:Landroid/app/ProgressDialog;

.field private c:Landroid/app/AlertDialog;

.field private d:Ljava/lang/String;

.field private e:Lcom/sponsorpay/credentials/SPCredentials;

.field private f:Lcom/sponsorpay/publisher/ofw/a;

.field protected mCustomKeysValues:Ljava/util/Map;
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

.field protected mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic b(Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected fetchPassedExtras()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 163
    const-string v0, "EXTRA_CREDENTIALS_TOKEN_KEY"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    :try_start_0
    invoke-static {v0}, Lcom/sponsorpay/SponsorPay;->getCredentials(Ljava/lang/String;)Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->e:Lcom/sponsorpay/credentials/SPCredentials;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    const-string v0, "EXTRA_SHOULD_REMAIN_OPEN_KEY"

    invoke-virtual {p0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->shouldStayOpenByDefault()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->a:Z

    .line 178
    const-string v0, "EXTRA_KEY_VALUES_MAP"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 179
    instance-of v2, v0, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 180
    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mCustomKeysValues:Ljava/util/Map;

    .line 183
    :cond_0
    const-string v0, "EXTRA_CURRENCY_NAME_KEY"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    iput-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->d:Ljava/lang/String;

    .line 189
    :cond_1
    return-void

    .line 171
    :catch_0
    move-exception v0

    invoke-virtual {p0, v6}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "app.id.key"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "user.id.key"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "security.token.key"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0, p0}, Lcom/sponsorpay/SponsorPay;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->e:Lcom/sponsorpay/credentials/SPCredentials;

    .line 172
    invoke-virtual {p0, v6}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-static {}, Lcom/sponsorpay/utils/HostInfo;->isDeviceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 120
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->b:Landroid/app/ProgressDialog;

    .line 121
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 122
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 123
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->b:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->LOADING_OFFERWALL:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v1}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 127
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->fetchPassedExtras()V

    .line 129
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mWebView:Landroid/webkit/WebView;

    .line 130
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 131
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->setContentView(Landroid/view/View;)V

    .line 133
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/sponsorpay/utils/i;->a(Landroid/webkit/WebSettings;)V

    .line 135
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/sponsorpay/utils/i;->a(Landroid/webkit/WebView;)V

    .line 137
    new-instance v0, Lcom/sponsorpay/publisher/ofw/a;

    iget-boolean v1, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->a:Z

    invoke-direct {v0, p0, v1}, Lcom/sponsorpay/publisher/ofw/a;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->f:Lcom/sponsorpay/publisher/ofw/a;

    .line 140
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->f:Lcom/sponsorpay/publisher/ofw/a;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 142
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/sponsorpay/publisher/ofw/b;

    invoke-direct {v1, p0}, Lcom/sponsorpay/publisher/ofw/b;-><init>(Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 157
    :goto_0
    return-void

    .line 153
    :cond_0
    const/16 v0, -0x14

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->setResult(I)V

    .line 154
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 195
    iput-object v1, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->c:Landroid/app/AlertDialog;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 199
    iput-object v1, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->b:Landroid/app/ProgressDialog;

    .line 202
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app.id.key"

    iget-object v2, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->e:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-virtual {v2}, Lcom/sponsorpay/credentials/SPCredentials;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "user.id.key"

    iget-object v2, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->e:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-virtual {v2}, Lcom/sponsorpay/credentials/SPCredentials;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "security.token.key"

    iget-object v2, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->e:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-virtual {v2}, Lcom/sponsorpay/credentials/SPCredentials;->getSecurityToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 205
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 214
    :try_start_0
    const-string v0, "ofw"

    invoke-static {v0}, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->e:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/UrlBuilder;->newBuilder(Ljava/lang/String;Lcom/sponsorpay/credentials/SPCredentials;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sponsorpay/utils/UrlBuilder;->setCurrency(Ljava/lang/String;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/utils/UrlBuilder;->addRequestId()Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mCustomKeysValues:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/sponsorpay/utils/UrlBuilder;->addExtraKeysValues(Ljava/util/Map;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/utils/UrlBuilder;->addScreenMetrics()Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/utils/UrlBuilder;->buildUrl()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Offerwall request url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-static {}, Lcom/sponsorpay/utils/d;->createUserSegmentationMapForHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "An exception occurred when launching the Offer Wall"

    invoke-static {v1, v2, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 223
    iget-object v1, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->f:Lcom/sponsorpay/publisher/ofw/a;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sponsorpay/publisher/ofw/a;->showDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldStayOpenByDefault()Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x1

    return v0
.end method
