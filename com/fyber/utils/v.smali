.class public abstract Lcom/fyber/utils/v;
.super Landroid/webkit/WebViewClient;
.source "WebClient.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fyber/utils/v;->a:Ljava/lang/ref/WeakReference;

    .line 47
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fyber/utils/v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method protected abstract a(ILjava/lang/String;)V
.end method

.method protected abstract a(Ljava/lang/String;Landroid/net/Uri;)V
.end method

.method protected final a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/fyber/utils/v;->a()Landroid/app/Activity;

    move-result-object v2

    .line 114
    if-nez v2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    if-eqz p1, :cond_0

    .line 121
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 122
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 124
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 126
    :try_start_0
    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 127
    invoke-virtual {p0}, Lcom/fyber/utils/v;->b()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 139
    goto :goto_0

    .line 129
    :catch_0
    move-exception v2

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "market"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/fyber/utils/v;->a()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "market://search?q=pname:com.google"

    .line 132
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3023
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3024
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3025
    if-eqz v4, :cond_2

    .line 3026
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3028
    :cond_2
    const/high16 v3, 0x10000

    .line 3029
    invoke-virtual {v2, v5, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 3031
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 129
    :goto_1
    if-nez v1, :cond_0

    .line 133
    const-string v1, "WebClient"

    const-string v2, "Play Store is not installed on this device..."

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/fyber/utils/v;->c()V

    goto :goto_0

    :cond_3
    move v1, v0

    .line 3031
    goto :goto_1
.end method

.method protected abstract b()V
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 153
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->ERROR_DIALOG_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    .line 154
    invoke-static {v0}, Lcom/fyber/utils/r;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 155
    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->DISMISS_ERROR_DIALOG:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    .line 156
    invoke-static {v1}, Lcom/fyber/utils/r;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 158
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/fyber/utils/v;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 160
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 161
    new-instance v0, Lcom/fyber/utils/w;

    invoke-direct {v0, p0}, Lcom/fyber/utils/w;-><init>(Lcom/fyber/utils/v;)V

    invoke-virtual {v2, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 170
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 171
    invoke-virtual {p0}, Lcom/fyber/utils/v;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 173
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    const-string v1, "WebClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t show error dialog. Not displayed error message is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->ERROR_PLAY_STORE_UNAVAILABLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v0}, Lcom/fyber/utils/r;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fyber/utils/v;->b(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".*StartCom Ltd.*"

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 189
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 78
    const-string v0, "WebClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shouldOverrideUrlLoading called with url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "sponsorpay://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 83
    const-string v2, "exit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 86
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 1062
    :cond_0
    const-string v0, "status"

    invoke-static {p2, v0}, Lcom/fyber/utils/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1064
    if-eqz v0, :cond_2

    .line 1065
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2054
    :goto_0
    const-string v1, "url"

    invoke-static {p2, v1}, Lcom/fyber/utils/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    const-string v2, "WebClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Overriding. Target Url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    const-string v2, "tracking_url"

    invoke-static {p2, v2}, Lcom/fyber/utils/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-static {v2}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    const-string v3, "WebClient"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Overriding. Tracking Url: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {v2}, Lcom/fyber/operations/g;->a(Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 100
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/v;->a(ILjava/lang/String;)V

    .line 105
    :goto_1
    const/4 v0, 0x1

    .line 108
    :goto_2
    return v0

    .line 1067
    :cond_2
    const/16 v0, -0xa

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {p0, v1, v0}, Lcom/fyber/utils/v;->a(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    .line 107
    :cond_4
    const-string v0, "WebClient"

    const-string v1, "Not overriding"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    goto :goto_2
.end method
