.class Lcom/applovin/impl/sdk/ar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/aq;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ar;->a:Lcom/applovin/impl/sdk/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/ar;->a:Lcom/applovin/impl/sdk/aq;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aq;->a(Lcom/applovin/impl/sdk/aq;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/ar;->a:Lcom/applovin/impl/sdk/aq;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aq;->b(Lcom/applovin/impl/sdk/aq;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/bw;->X:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/ar;->a:Lcom/applovin/impl/sdk/aq;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aq;->b(Lcom/applovin/impl/sdk/aq;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/bw;->Y:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/ar;->a:Lcom/applovin/impl/sdk/aq;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aq;->b(Lcom/applovin/impl/sdk/aq;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/bw;->Z:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v2, Lcom/applovin/impl/sdk/as;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/as;-><init>(Lcom/applovin/impl/sdk/ar;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/ar;->a:Lcom/applovin/impl/sdk/aq;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aq;->b(Lcom/applovin/impl/sdk/aq;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/bw;->aa:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v2, Lcom/applovin/impl/sdk/av;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/av;-><init>(Lcom/applovin/impl/sdk/ar;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
