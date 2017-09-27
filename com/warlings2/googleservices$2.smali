.class final Lcom/warlings2/googleservices$2;
.super Ljava/lang/Object;
.source "googleservices.java"

# interfaces
.implements Lcom/fyber/requesters/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warlings2/googleservices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdAvailable(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 143
    const-string v0, "Fyber"

    const-string v1, "Got intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/warlings2/googleservices;->access$002(Z)Z

    .line 145
    invoke-static {}, Lcom/warlings2/googleservices;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const/16 v1, 0x162e

    invoke-virtual {v0, p1, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    sput-object p1, Lcom/warlings2/googleservices;->fyber_intent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V
    .locals 2

    .prologue
    .line 154
    const-string v0, "Fyber"

    const-string v1, "onAdNotAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/warlings2/googleservices;->access$002(Z)Z

    .line 156
    return-void
.end method

.method public onRequestError(Lcom/fyber/requesters/RequestError;)V
    .locals 3

    .prologue
    .line 160
    const-string v0, "Fyber"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/warlings2/googleservices;->access$002(Z)Z

    .line 162
    return-void
.end method
