.class public final Lcom/purplebrain/adbuddiz/sdk/h/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

    invoke-interface {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;->didClick()V

    return-void
.end method
