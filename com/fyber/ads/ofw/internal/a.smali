.class public final Lcom/fyber/ads/ofw/internal/a;
.super Lcom/fyber/utils/v;
.source "ActivityOfferWebClient.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/fyber/utils/v;-><init>(Landroid/app/Activity;)V

    .line 33
    iput-boolean p2, p0, Lcom/fyber/ads/ofw/internal/a;->a:Z

    .line 34
    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/fyber/ads/ofw/internal/a;->a()Landroid/app/Activity;

    move-result-object v1

    .line 40
    if-nez v1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {v1, p1}, Landroid/app/Activity;->setResult(I)V

    .line 47
    if-nez p2, :cond_3

    .line 48
    const/4 v0, 0x1

    .line 56
    :cond_2
    const-string v2, "ActivityOfferWebClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Should close: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/fyber/ads/ofw/internal/a;->a:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", will close activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 50
    :cond_3
    iget-boolean v0, p0, Lcom/fyber/ads/ofw/internal/a;->a:Z

    .line 51
    invoke-virtual {p0, p2}, Lcom/fyber/ads/ofw/internal/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 77
    const-string v0, "ActivityOfferWebClient"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "OfferWall WebView triggered an error. Error code: %d, error description: %s. Failing URL: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 80
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    .line 77
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sparse-switch p2, :sswitch_data_0

    .line 90
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->ERROR_LOADING_OFFERWALL:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    .line 93
    :goto_0
    invoke-static {v0}, Lcom/fyber/utils/r;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fyber/ads/ofw/internal/a;->b(Ljava/lang/String;)V

    .line 94
    return-void

    .line 87
    :sswitch_0
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->ERROR_LOADING_OFFERWALL_NO_INTERNET_CONNECTION:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    goto :goto_0

    .line 84
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_0
        -0x2 -> :sswitch_0
    .end sparse-switch
.end method
