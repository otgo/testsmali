.class public final Lcom/purplebrain/adbuddiz/sdk/h/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/h/l;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getDelegate()Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/h/l;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    invoke-interface {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;->didFailToShowAd(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;)V

    return-void
.end method
