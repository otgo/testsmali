.class final Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/purplebrain/adbuddiz/sdk/a/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$3;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    .locals 4

    iget-boolean v0, p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/i;->a()V

    :cond_0
    iget-boolean v0, p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$3;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/r;->a()V

    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b:Z

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/p;->a(Z)Lcom/purplebrain/adbuddiz/sdk/i/p;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/i/p;->a:Ljava/lang/Long;

    return-void

    :cond_2
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/r;->b()V

    goto :goto_0
.end method
