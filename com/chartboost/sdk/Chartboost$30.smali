.class final Lcom/chartboost/sdk/Chartboost$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Chartboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 314
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->c()V

    .line 318
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Z)Z

    .line 319
    return-void
.end method
