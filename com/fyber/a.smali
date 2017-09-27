.class final Lcom/fyber/a;
.super Ljava/lang/Object;
.source "Fyber.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 487
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 494
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 489
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/fyber/utils/b;

    invoke-virtual {v0}, Lcom/fyber/utils/b;->a()V

    .line 490
    const/4 v0, 0x1

    goto :goto_0

    .line 487
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
