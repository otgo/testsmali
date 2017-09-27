.class final Lcom/chartboost/sdk/Chartboost$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->setShouldPrefetchVideoContent(Z)V
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
    .line 972
    iput-boolean p1, p0, Lcom/chartboost/sdk/Chartboost$22;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 975
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost$22;->a:Z

    invoke-static {v0}, Lcom/chartboost/sdk/b;->h(Z)V

    .line 976
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost$22;->a:Z

    if-eqz v0, :cond_0

    .line 977
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->b()V

    .line 980
    :goto_0
    return-void

    .line 979
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->d()V

    goto :goto_0
.end method
