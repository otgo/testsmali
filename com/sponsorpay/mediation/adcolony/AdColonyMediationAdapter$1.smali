.class Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;
.super Ljava/lang/Object;
.source "AdColonyMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;->startAdapter(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$clientOptions:Ljava/lang/String;

.field final synthetic val$tUsedZones:Ljava/util/List;

.field final synthetic val$zoneIdInterstitialList:Ljava/util/List;

.field final synthetic val$zoneIdRewardedVideoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;

    iput-object p2, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->val$clientOptions:Ljava/lang/String;

    iput-object p4, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->val$appId:Ljava/lang/String;

    iput-object p5, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->val$tUsedZones:Ljava/util/List;

    iput-object p6, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->val$zoneIdInterstitialList:Ljava/util/List;

    iput-object p7, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->val$zoneIdRewardedVideoList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;

    invoke-static {v0}, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;->access$000(Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;)V

    .line 93
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;

    invoke-static {v0}, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;->access$100(Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;)V

    .line 95
    iget-object v1, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->val$clientOptions:Ljava/lang/String;

    iget-object v3, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->val$appId:Ljava/lang/String;

    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->val$tUsedZones:Ljava/util/List;

    iget-object v4, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->val$tUsedZones:Ljava/util/List;

    .line 96
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 95
    invoke-static {v1, v2, v3, v0}, Lcom/jirbo/adcolony/AdColony;->configure(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->val$zoneIdInterstitialList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;

    new-instance v1, Lcom/sponsorpay/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    iget-object v2, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;

    iget-object v3, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->val$zoneIdInterstitialList:Ljava/util/List;

    iget-object v4, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2, v3, v4}, Lcom/sponsorpay/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;-><init>(Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;Ljava/util/List;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;->access$202(Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;Lcom/sponsorpay/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)Lcom/sponsorpay/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->val$zoneIdRewardedVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;

    new-instance v1, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;

    iget-object v2, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;

    iget-object v3, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->val$zoneIdRewardedVideoList:Ljava/util/List;

    iget-object v4, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2, v3, v4}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;-><init>(Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;Ljava/util/List;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;->access$302(Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;)Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;

    invoke-static {v0}, Lcom/jirbo/adcolony/AdColony;->addAdAvailabilityListener(Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;)V

    .line 109
    return-void
.end method
