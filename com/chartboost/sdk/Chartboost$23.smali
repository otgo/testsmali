.class final Lcom/chartboost/sdk/Chartboost$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V
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
    .line 207
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost$23;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 210
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->i()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 213
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost$23;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/k;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->e(Lcom/chartboost/sdk/Libraries/k;)V

    .line 215
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$23;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Chartboost;->a(Landroid/app/Activity;Z)V

    .line 219
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$23;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    .line 222
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->a()V

    .line 223
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$23;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Landroid/app/Activity;)V

    .line 226
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->k()Lcom/chartboost/sdk/impl/ay;

    move-result-object v0

    invoke-static {}, Lcom/chartboost/sdk/b;->y()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ay;->b(Landroid/content/Context;)Landroid/content/Intent;

    .line 229
    invoke-static {}, Lcom/chartboost/sdk/b;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->l()Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/m;->a()V

    .line 231
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->m()Lcom/chartboost/sdk/impl/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->f()V

    .line 232
    return-void
.end method
