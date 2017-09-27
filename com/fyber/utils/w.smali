.class final Lcom/fyber/utils/w;
.super Ljava/lang/Object;
.source "WebClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fyber/utils/v;


# direct methods
.method constructor <init>(Lcom/fyber/utils/v;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/fyber/utils/w;->a:Lcom/fyber/utils/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 164
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 165
    iget-object v0, p0, Lcom/fyber/utils/w;->a:Lcom/fyber/utils/v;

    invoke-virtual {v0}, Lcom/fyber/utils/v;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/fyber/utils/w;->a:Lcom/fyber/utils/v;

    invoke-virtual {v0}, Lcom/fyber/utils/v;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 168
    :cond_0
    return-void
.end method
