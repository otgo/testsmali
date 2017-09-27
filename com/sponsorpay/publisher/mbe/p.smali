.class final Lcom/sponsorpay/publisher/mbe/p;
.super Ljava/lang/Object;
.source "SPBrandEngageClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/o;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/o;)V
    .locals 0

    .prologue
    .line 887
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/p;->a:Lcom/sponsorpay/publisher/mbe/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 890
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/p;->a:Lcom/sponsorpay/publisher/mbe/o;

    iget-object v0, v0, Lcom/sponsorpay/publisher/mbe/o;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Z)Z

    .line 891
    return-void
.end method
