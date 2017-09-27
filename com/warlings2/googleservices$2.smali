.class final Lcom/warlings2/googleservices$2;
.super Ljava/lang/Object;
.source "googleservices.java"

# interfaces
.implements Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;


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
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSPInterstitialAdAvailable(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 116
    const-string v0, "Fyber"

    const-string v1, "Got intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sput-object p1, Lcom/warlings2/googleservices;->fyber_intent:Landroid/content/Intent;

    .line 118
    return-void
.end method

.method public onSPInterstitialAdError(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 127
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Fyber] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public onSPInterstitialAdNotAvailable()V
    .locals 2

    .prologue
    .line 122
    const-string v0, "Fyber"

    const-string v1, "onSPInterstitialAdNotAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method
