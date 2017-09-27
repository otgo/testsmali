.class public Lcom/fyber/ads/ofw/OfferWallActivity;
.super Landroid/app/Activity;
.source "OfferWallActivity.java"


# static fields
.field public static final EXTRA_KEYS_VALUES_MAP_KEY:Ljava/lang/String; = "EXTRA_KEY_VALUES_MAP"

.field public static final EXTRA_PLACEMENT_ID_KEY:Ljava/lang/String; = "EXTRA_PLACEMENT_ID_KEY"

.field public static final EXTRA_SHOULD_CLOSE_ON_REDIRECT_KEY:Ljava/lang/String; = "EXTRA_SHOULD_CLOSE_ON_REDIRECT_KEY"

.field public static final RESULT_CODE_NO_STATUS_CODE:I = -0xa

.field public static final TAG:Ljava/lang/String; = "OfferWallActivity"


# instance fields
.field private a:Z

.field private b:Landroid/app/ProgressDialog;

.field private c:Landroid/app/AlertDialog;

.field private d:Lcom/fyber/credentials/a;

.field private e:Lcom/fyber/ads/ofw/internal/a;

.field private f:Ljava/lang/String;

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

.method static synthetic a(Lcom/fyber/ads/ofw/OfferWallActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic b(Lcom/fyber/ads/ofw/OfferWallActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected fetchPassedExtras()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/fyber/ads/ofw/OfferWallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 179
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1274
    invoke-virtual {p0, v6}, Lcom/fyber/ads/ofw/OfferWallActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1275
    const-string v2, "app.id.key"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1276
    const-string v3, "user.id.key"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1277
    const-string v4, "security.token.key"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1278
    const-string v5, "precaching.enabled"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1279
    invoke-static {v2, p0}, Lcom/fyber/Fyber;->with(Ljava/lang/String;Landroid/app/Activity;)Lcom/fyber/Fyber;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/fyber/Fyber;->withUserId(Ljava/lang/String;)Lcom/fyber/Fyber;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/fyber/Fyber;->withSecurityToken(Ljava/lang/String;)Lcom/fyber/Fyber;

    move-result-object v2

    .line 1280
    if-eqz v0, :cond_0

    .line 1281
    invoke-virtual {v2}, Lcom/fyber/Fyber;->withManualPrecaching()Lcom/fyber/Fyber;

    .line 1283
    :cond_0
    invoke-virtual {v2}, Lcom/fyber/Fyber;->start()Lcom/fyber/Fyber$Settings;

    .line 1284
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/credentials/a;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->d:Lcom/fyber/credentials/a;

    .line 2268
    invoke-virtual {p0, v6}, Lcom/fyber/ads/ofw/OfferWallActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2269
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2270
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 186
    :cond_1
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/credentials/a;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->d:Lcom/fyber/credentials/a;

    .line 188
    const-string v0, "EXTRA_SHOULD_CLOSE_ON_REDIRECT_KEY"

    .line 189
    invoke-virtual {p0}, Lcom/fyber/ads/ofw/OfferWallActivity;->shouldCloseOnRedirectDefault()Z

    move-result v2

    .line 188
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->a:Z

    .line 191
    const-string v0, "EXTRA_KEY_VALUES_MAP"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 192
    instance-of v2, v0, Ljava/util/HashMap;

    if-eqz v2, :cond_2

    .line 193
    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->mCustomKeysValues:Ljava/util/Map;

    .line 196
    :cond_2
    const-string v0, "EXTRA_PLACEMENT_ID_KEY"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_3

    .line 199
    iput-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->f:Ljava/lang/String;

    .line 201
    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-static {}, Lcom/fyber/utils/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/fyber/ads/ofw/OfferWallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 135
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->b:Landroid/app/ProgressDialog;

    .line 136
    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 137
    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 138
    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->b:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->LOADING_OFFERWALL:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    .line 139
    invoke-static {v1}, Lcom/fyber/utils/r;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 142
    invoke-virtual {p0}, Lcom/fyber/ads/ofw/OfferWallActivity;->fetchPassedExtras()V

    .line 144
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/fyber/ads/ofw/OfferWallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    .line 145
    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 146
    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/ofw/OfferWallActivity;->setContentView(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/fyber/utils/x;->a(Landroid/webkit/WebSettings;)V

    .line 150
    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/fyber/utils/x;->a(Landroid/webkit/WebView;)V

    .line 152
    new-instance v0, Lcom/fyber/ads/ofw/internal/a;

    iget-boolean v1, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->a:Z

    invoke-direct {v0, p0, v1}, Lcom/fyber/ads/ofw/internal/a;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->e:Lcom/fyber/ads/ofw/internal/a;

    .line 155
    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->e:Lcom/fyber/ads/ofw/internal/a;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 157
    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/fyber/ads/ofw/a;

    invoke-direct {v1, p0}, Lcom/fyber/ads/ofw/a;-><init>(Lcom/fyber/ads/ofw/OfferWallActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 172
    :goto_0
    return-void

    .line 168
    :cond_0
    const/16 v0, -0x14

    invoke-virtual {p0, v0}, Lcom/fyber/ads/ofw/OfferWallActivity;->setResult(I)V

    .line 169
    invoke-virtual {p0}, Lcom/fyber/ads/ofw/OfferWallActivity;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 207
    iput-object v1, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->c:Landroid/app/AlertDialog;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 211
    iput-object v1, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->b:Landroid/app/ProgressDialog;

    .line 3259
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fyber/ads/ofw/OfferWallActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app.id.key"

    iget-object v2, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->d:Lcom/fyber/credentials/a;

    .line 3260
    invoke-virtual {v2}, Lcom/fyber/credentials/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user.id.key"

    iget-object v2, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->d:Lcom/fyber/credentials/a;

    .line 3261
    invoke-virtual {v2}, Lcom/fyber/credentials/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "security.token.key"

    iget-object v2, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->d:Lcom/fyber/credentials/a;

    .line 3262
    invoke-virtual {v2}, Lcom/fyber/credentials/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "precaching.enabled"

    .line 3263
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fyber/cache/CacheManager;->e()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3264
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 217
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 4240
    :try_start_0
    const-string v0, "ofw"

    invoke-static {v0}, Lcom/fyber/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4241
    iget-object v1, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->d:Lcom/fyber/credentials/a;

    invoke-static {v0, v1}, Lcom/fyber/utils/s;->a(Ljava/lang/String;Lcom/fyber/credentials/a;)Lcom/fyber/utils/s;

    move-result-object v0

    .line 4242
    invoke-virtual {v0}, Lcom/fyber/utils/s;->d()Lcom/fyber/utils/s;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->f:Ljava/lang/String;

    .line 4243
    invoke-virtual {v0, v1}, Lcom/fyber/utils/s;->a(Ljava/lang/String;)Lcom/fyber/utils/s;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->mCustomKeysValues:Ljava/util/Map;

    .line 4244
    invoke-virtual {v0, v1}, Lcom/fyber/utils/s;->a(Ljava/util/Map;)Lcom/fyber/utils/s;

    move-result-object v0

    .line 4245
    invoke-virtual {v0}, Lcom/fyber/utils/s;->a()Lcom/fyber/utils/s;

    move-result-object v0

    .line 4246
    invoke-virtual {v0}, Lcom/fyber/utils/s;->e()Ljava/lang/String;

    move-result-object v0

    .line 228
    const-string v1, "OfferWallActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Offer Wall request url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-static {}, Lcom/fyber/utils/j;->d()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    const-string v1, "OfferWallActivity"

    const-string v2, "An exception occurred when launching the Offer Wall"

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 235
    iget-object v1, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->e:Lcom/fyber/ads/ofw/internal/a;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fyber/ads/ofw/internal/a;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldCloseOnRedirectDefault()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method
