.class Lcom/sponsorpay/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$1;
.super Ljava/lang/Object;
.source "AdColonyInterstitialMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;-><init>(Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;Ljava/util/List;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;


# direct methods
.method constructor <init>(Lcom/sponsorpay/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sponsorpay/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sponsorpay/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$1;->this$0:Lcom/sponsorpay/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$1;->this$0:Lcom/sponsorpay/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    invoke-static {v0}, Lcom/sponsorpay/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->access$000(Lcom/sponsorpay/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)V

    .line 58
    return-void
.end method
