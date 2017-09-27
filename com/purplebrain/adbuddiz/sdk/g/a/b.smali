.class public final Lcom/purplebrain/adbuddiz/sdk/g/a/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/g/a/a;
    .locals 2

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/g/a/a;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/g/a/a;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/g/a/a;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/a/c;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/purplebrain/adbuddiz/sdk/g/a/a;->b:I

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/a/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/g/a/a;->c:Ljava/lang/String;

    return-object v0
.end method
