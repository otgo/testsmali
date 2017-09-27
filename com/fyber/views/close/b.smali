.class public final Lcom/fyber/views/close/b;
.super Lcom/fyber/views/a;
.source "CloseXButtonLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/fyber/views/a;-><init>(Landroid/content/Context;)V

    .line 21
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/fyber/views/close/b;->a(I)I

    move-result v0

    .line 23
    new-instance v1, Lcom/fyber/views/close/c;

    const/high16 v2, 0x40900000    # 4.5f

    invoke-direct {v1, p1, v2}, Lcom/fyber/views/close/c;-><init>(Landroid/content/Context;F)V

    .line 24
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 25
    const/16 v0, 0xd

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 26
    invoke-virtual {v1, v2}, Lcom/fyber/views/close/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    iget v0, p0, Lcom/fyber/views/close/b;->a:I

    iget v2, p0, Lcom/fyber/views/close/b;->a:I

    iget v3, p0, Lcom/fyber/views/close/b;->a:I

    iget v4, p0, Lcom/fyber/views/close/b;->a:I

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/fyber/views/close/b;->setPadding(IIII)V

    .line 29
    invoke-virtual {p0, v1}, Lcom/fyber/views/close/b;->addView(Landroid/view/View;)V

    .line 30
    return-void
.end method
