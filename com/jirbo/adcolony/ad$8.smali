.class Lcom/jirbo/adcolony/ad$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/ad;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/jirbo/adcolony/ad;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ad;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1389
    iput-object p1, p0, Lcom/jirbo/adcolony/ad$8;->b:Lcom/jirbo/adcolony/ad;

    iput-object p2, p0, Lcom/jirbo/adcolony/ad$8;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/jirbo/adcolony/ad$8;->b:Lcom/jirbo/adcolony/ad;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ad$8;->b:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->Q:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1393
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ad$8;->b:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad$8;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1394
    return-void
.end method
