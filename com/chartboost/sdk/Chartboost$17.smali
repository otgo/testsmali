.class final Lcom/chartboost/sdk/Chartboost$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->setLoggingLevel(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost$17;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$17;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V

    .line 886
    return-void
.end method
