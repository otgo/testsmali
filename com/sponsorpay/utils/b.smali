.class final Lcom/sponsorpay/utils/b;
.super Ljava/lang/Thread;
.source "HostInfo.java"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/sponsorpay/utils/HostInfo;


# direct methods
.method constructor <init>(Lcom/sponsorpay/utils/HostInfo;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sponsorpay/utils/b;->b:Lcom/sponsorpay/utils/HostInfo;

    iput-object p3, p0, Lcom/sponsorpay/utils/b;->a:Landroid/content/Context;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sponsorpay/utils/b;->b:Lcom/sponsorpay/utils/HostInfo;

    iget-object v1, p0, Lcom/sponsorpay/utils/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sponsorpay/utils/HostInfo;->retrieveAdvertisingId(Landroid/content/Context;)V

    .line 120
    return-void
.end method
