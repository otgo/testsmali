.class public final Lcom/purplebrain/adbuddiz/sdk/h/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/h/a/a;
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

.method public static a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/h/a/a;
    .locals 2

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/h/a/a;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/h/a/a;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/h/a/a;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/a/c;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/purplebrain/adbuddiz/sdk/h/a/a;->b:I

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/a/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/h/a/a;->c:Ljava/lang/String;

    return-object v0
.end method
