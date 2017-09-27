.class final Lcom/sponsorpay/publisher/mbe/e;
.super Ljava/lang/Object;
.source "SPBrandEngageClient.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/view/GestureDetector;

.field final synthetic b:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Landroid/view/GestureDetector;)V
    .locals 0

    .prologue
    .line 960
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/e;->b:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    iput-object p2, p0, Lcom/sponsorpay/publisher/mbe/e;->a:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/e;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
