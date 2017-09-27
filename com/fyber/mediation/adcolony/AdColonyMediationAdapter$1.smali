.class Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;
.super Ljava/lang/Object;
.source "AdColonyMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$clientOptions:Ljava/lang/String;

.field final synthetic val$tUsedZones:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    iput-object p2, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->val$clientOptions:Ljava/lang/String;

    iput-object p4, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->val$appId:Ljava/lang/String;

    iput-object p5, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->val$tUsedZones:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->access$000(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/AdColony;->setCustomID(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->access$100(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;)V

    .line 91
    iget-object v1, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->val$clientOptions:Ljava/lang/String;

    iget-object v3, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->val$appId:Ljava/lang/String;

    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->val$tUsedZones:Ljava/util/List;

    iget-object v4, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->val$tUsedZones:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/jirbo/adcolony/AdColony;->configure(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->access$200(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    new-instance v1, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    iget-object v2, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    iget-object v3, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    invoke-static {v3}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->access$200(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2, v3, v4}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;Ljava/util/List;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->access$302(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->access$400(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    new-instance v1, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    iget-object v2, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    iget-object v3, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    invoke-static {v3}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->access$400(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    invoke-static {v4}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->access$600(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;)Z

    move-result v4

    iget-object v5, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;-><init>(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;Ljava/util/List;ZLandroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->access$502(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;)Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    invoke-static {v0}, Lcom/jirbo/adcolony/AdColony;->addAdAvailabilityListener(Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;)V

    .line 106
    return-void
.end method
