.class final Lcom/sponsorpay/publisher/mbe/c;
.super Ljava/lang/Object;
.source "SPBrandEngageClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/b;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/b;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/c;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/c;->a:Lcom/sponsorpay/publisher/mbe/b;

    iget-object v0, v0, Lcom/sponsorpay/publisher/mbe/b;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_ERROR_DIALOG_MESSAGE_OFFLINE:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v1}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Ljava/lang/String;)V

    .line 205
    return-void
.end method
