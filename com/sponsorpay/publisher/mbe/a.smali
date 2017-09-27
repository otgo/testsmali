.class final Lcom/sponsorpay/publisher/mbe/a;
.super Ljava/lang/Object;
.source "SPBrandEngageActivity.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/a;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 59
    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/a;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;Z)Z

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/a;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;)V

    return-void
.end method
