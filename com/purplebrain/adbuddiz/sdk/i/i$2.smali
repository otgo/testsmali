.class public final Lcom/purplebrain/adbuddiz/sdk/i/i$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/i/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getDelegate()Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;->didCacheAd()V

    return-void
.end method
