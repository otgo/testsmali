.class final Lcom/chartboost/sdk/Chartboost$32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->onResume(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost$32;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$32;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v0

    .line 381
    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->d(Lcom/chartboost/sdk/Libraries/k;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Libraries/k;)V

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Lcom/chartboost/sdk/Chartboost$CBFramework;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Lcom/chartboost/sdk/Chartboost$CBFramework;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBFramework;->ordinal()I

    move-result v0

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkUnity:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost$CBFramework;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 387
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->a()V

    goto :goto_0
.end method
