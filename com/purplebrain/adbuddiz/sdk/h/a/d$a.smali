.class public final Lcom/purplebrain/adbuddiz/sdk/h/a/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/h/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/h/a/d;
    .locals 2

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/h/a/d;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/h/a/d;-><init>()V

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/h/a/d;->a:Ljava/lang/String;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/h/a/d;->b:Ljava/lang/String;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/h/a/d;->c:Ljava/lang/String;

    return-object v0
.end method
