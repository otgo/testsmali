.class public final Lcom/purplebrain/adbuddiz/sdk/g/a/h;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/g/a/g;
    .locals 2

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/g/a/g;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/g/a/g;-><init>()V

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/u;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/g/a/g;->a:Ljava/lang/String;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/g/a/g;->b:Ljava/lang/String;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/g/a/g;->c:Ljava/lang/String;

    return-object v0
.end method
