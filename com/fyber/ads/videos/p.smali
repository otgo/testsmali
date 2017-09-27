.class final Lcom/fyber/ads/videos/p;
.super Landroid/webkit/WebChromeClient;
.source "RewardedVideoClient.java"


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/c;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/c;)V
    .locals 0

    .prologue
    .line 776
    iput-object p1, p0, Lcom/fyber/ads/videos/p;->a:Lcom/fyber/ads/videos/c;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 780
    const-string v0, "RewardedVideoClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "js alert - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    const-string v0, "RewardedVideoClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "js alert - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    iget-object v0, p0, Lcom/fyber/ads/videos/p;->a:Lcom/fyber/ads/videos/c;

    invoke-static {v0}, Lcom/fyber/ads/videos/c;->p(Lcom/fyber/ads/videos/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1789
    iget-object v0, p0, Lcom/fyber/ads/videos/p;->a:Lcom/fyber/ads/videos/c;

    invoke-static {v0, v4}, Lcom/fyber/ads/videos/c;->a(Lcom/fyber/ads/videos/c;Z)Z

    .line 1790
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/fyber/ads/videos/p;->a:Lcom/fyber/ads/videos/c;

    invoke-static {v0}, Lcom/fyber/ads/videos/c;->n(Lcom/fyber/ads/videos/c;)Lcom/fyber/ads/videos/RewardedVideoActivity;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fyber/ads/videos/p;->a:Lcom/fyber/ads/videos/c;

    invoke-static {v0}, Lcom/fyber/ads/videos/c;->i(Lcom/fyber/ads/videos/c;)Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1791
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_FORFEIT_DIALOG_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v0}, Lcom/fyber/utils/r;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "OK"

    new-instance v3, Lcom/fyber/ads/videos/s;

    invoke-direct {v3, p0}, Lcom/fyber/ads/videos/s;-><init>(Lcom/fyber/ads/videos/p;)V

    .line 1792
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Cancel"

    new-instance v3, Lcom/fyber/ads/videos/r;

    invoke-direct {v3, p0}, Lcom/fyber/ads/videos/r;-><init>(Lcom/fyber/ads/videos/p;)V

    .line 1798
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/fyber/ads/videos/q;

    invoke-direct {v2, p0}, Lcom/fyber/ads/videos/q;-><init>(Lcom/fyber/ads/videos/p;)V

    .line 1803
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1809
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 782
    :cond_0
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    .line 783
    return v4

    .line 1790
    :cond_1
    iget-object v0, p0, Lcom/fyber/ads/videos/p;->a:Lcom/fyber/ads/videos/c;

    invoke-static {v0}, Lcom/fyber/ads/videos/c;->n(Lcom/fyber/ads/videos/c;)Lcom/fyber/ads/videos/RewardedVideoActivity;

    move-result-object v0

    goto :goto_0
.end method
