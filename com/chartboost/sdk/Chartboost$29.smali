.class final Lcom/chartboost/sdk/Chartboost$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->forwardTouchEventsAIR(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 1293
    iput-boolean p1, p0, Lcom/chartboost/sdk/Chartboost$29;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1296
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->o()Lcom/chartboost/sdk/CBImpressionActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1297
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost$29;->a:Z

    if-eqz v0, :cond_1

    .line 1298
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->o()Lcom/chartboost/sdk/CBImpressionActivity;

    move-result-object v0

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBImpressionActivity;->forwardTouchEvents(Landroid/app/Activity;)V

    .line 1305
    :cond_0
    :goto_0
    return-void

    .line 1302
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->o()Lcom/chartboost/sdk/CBImpressionActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBImpressionActivity;->forwardTouchEvents(Landroid/app/Activity;)V

    goto :goto_0
.end method
