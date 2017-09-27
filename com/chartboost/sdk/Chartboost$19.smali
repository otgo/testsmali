.class final Lcom/chartboost/sdk/Chartboost$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->setAutoCacheAds(Z)V
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
    .line 926
    iput-boolean p1, p0, Lcom/chartboost/sdk/Chartboost$19;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 929
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost$19;->a:Z

    invoke-static {v0}, Lcom/chartboost/sdk/b;->b(Z)V

    .line 930
    return-void
.end method
