.class final Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/purplebrain/adbuddiz/sdk/a/c$d;


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

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$1;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$1;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$1;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->b(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)Z

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/h/d;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/h/d;-><init>()V

    iput-object p1, v0, Lcom/purplebrain/adbuddiz/sdk/h/d;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iput-object p2, v0, Lcom/purplebrain/adbuddiz/sdk/h/d;->f:Ljava/lang/String;

    iput-boolean p3, v0, Lcom/purplebrain/adbuddiz/sdk/h/d;->g:Z

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/h/d;->f()V

    :cond_0
    return-void
.end method
