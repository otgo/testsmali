.class public abstract Lcom/purplebrain/adbuddiz/sdk/b/b;
.super Ljava/lang/Exception;


# instance fields
.field public a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

.field public b:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

.field public c:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/purplebrain/adbuddiz/sdk/b/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;)V

    return-void
.end method

.method protected constructor <init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/purplebrain/adbuddiz/sdk/b/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/b/b;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/b/b;->b:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/b/b;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/b/b;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/b/b;->b:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/b/b;->c:Ljava/lang/String;

    return-void
.end method
