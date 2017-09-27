.class Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$2;
.super Ljava/lang/Object;
.source "AdColonyInterstitialMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->checkForAds(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$2;->this$0:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$2;->this$0:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->access$000(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)V

    .line 86
    return-void
.end method
