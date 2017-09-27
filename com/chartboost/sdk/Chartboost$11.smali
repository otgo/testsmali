.class final Lcom/chartboost/sdk/Chartboost$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->setMediation(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 791
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost$11;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/chartboost/sdk/Chartboost$11;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 794
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$11;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost$11;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    return-void
.end method
