.class LTapjoy$3;
.super Ljava/lang/Object;
.source "Tapjoy.java"

# interfaces
.implements Lcom/tapjoy/TapjoyConnectNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTapjoy;->tapjoy_init(Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LTapjoy;

.field final synthetic val$earned_points_notifier:Lcom/tapjoy/TapjoyEarnedPointsNotifier;


# direct methods
.method constructor <init>(LTapjoy;Lcom/tapjoy/TapjoyEarnedPointsNotifier;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, LTapjoy$3;->this$0:LTapjoy;

    iput-object p2, p0, LTapjoy$3;->val$earned_points_notifier:Lcom/tapjoy/TapjoyEarnedPointsNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectFail()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public connectSuccess()V
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    iget-object v1, p0, LTapjoy$3;->val$earned_points_notifier:Lcom/tapjoy/TapjoyEarnedPointsNotifier;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnect;->setEarnedPointsNotifier(Lcom/tapjoy/TapjoyEarnedPointsNotifier;)V

    .line 59
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    iget-object v1, p0, LTapjoy$3;->this$0:LTapjoy;

    invoke-static {v1}, LTapjoy;->access$200(LTapjoy;)Lcom/tapjoy/TapjoyNotifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnect;->getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V

    .line 60
    return-void
.end method
