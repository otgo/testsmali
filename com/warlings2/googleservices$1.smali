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
    .line 77
    iput-object p1, p0, Lcom/warlings2/googleservices$1;->this$0:Lcom/warlings2/googleservices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didCacheAd()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public didClick()V
    .locals 2

    .prologue
    .line 91
    sget v0, Lcom/warlings2/googleservices;->callback:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 92
    invoke-static {}, Lcom/warlings2/googleservices;->ad_closed()V

    .line 94
    :cond_0
    return-void
.end method

.method public didFailToShowAd(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;)V
    .locals 3

    .prologue
    .line 81
    const-string v0, "ADBUDDIZ"

    const-string v1, "didFailToShowAd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v0, Lcom/warlings2/googleservices;->fyber_intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    if-eqz v0, :cond_1

    .line 83
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    sget-object v1, Lcom/warlings2/googleservices;->fyber_intent:Landroid/content/Intent;

    sget v2, Lcom/warlings2/googleservices;->FYBER_INTENT_ID:I

    invoke-virtual {v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/warlings2/googleservices;->fyber_intent:Landroid/content/Intent;

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    sget v0, Lcom/warlings2/googleservices;->callback:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 86
    invoke-static {}, Lcom/warlings2/googleservices;->ad_closed()V

    goto :goto_0
.end method

.method public didHideAd()V
    .locals 2

    .prologue
    .line 97
    sget v0, Lcom/warlings2/googleservices;->callback:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 98
    invoke-static {}, Lcom/warlings2/googleservices;->ad_closed()V

    .line 100
    :cond_0
    return-void
.end method

.method public didShowAd()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
