.class Lcom/warlings2/googleservices$1;
.super Ljava/lang/Object;
.source "googleservices.java"

# interfaces
.implements Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warlings2/googleservices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/warlings2/googleservices;


# direct methods
.method constructor <init>(Lcom/warlings2/googleservices;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/warlings2/googleservices$1;->this$0:Lcom/warlings2/googleservices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didCacheAd()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public didClick()V
    .locals 2

    .prologue
    .line 117
    sget v0, Lcom/warlings2/googleservices;->callback:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 118
    invoke-static {}, Lcom/warlings2/googleservices;->ad_closed()V

    .line 120
    :cond_0
    return-void
.end method

.method public didFailToShowAd(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 104
    const-string v0, "ADBUDDIZ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "didFailToShowAd, fyber_intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/warlings2/googleservices;->fyber_intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v0, Lcom/warlings2/googleservices;->fyber_intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "ADBUDDIZ"

    const-string v1, "startActivityForResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    sget-object v1, Lcom/warlings2/googleservices;->fyber_intent:Landroid/content/Intent;

    const/16 v2, 0x162e

    invoke-virtual {v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/warlings2/googleservices;->fyber_intent:Landroid/content/Intent;

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_0
    sget v0, Lcom/warlings2/googleservices;->callback:I

    if-ne v0, v3, :cond_1

    .line 110
    invoke-static {}, Lcom/warlings2/googleservices;->ad_closed()V

    goto :goto_0

    .line 112
    :cond_1
    invoke-static {v3}, Lcom/warlings2/googleservices;->access$002(Z)Z

    goto :goto_0
.end method

.method public didHideAd()V
    .locals 2

    .prologue
    .line 123
    sget v0, Lcom/warlings2/googleservices;->callback:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 124
    invoke-static {}, Lcom/warlings2/googleservices;->ad_closed()V

    .line 126
    :cond_0
    return-void
.end method

.method public didShowAd()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method
