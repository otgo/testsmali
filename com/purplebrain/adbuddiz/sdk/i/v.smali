.class public final Lcom/purplebrain/adbuddiz/sdk/i/v;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/i/v$b;,
        Lcom/purplebrain/adbuddiz/sdk/i/v$a;
    }
.end annotation


# static fields
.field private static d:Ljava/util/List;


# instance fields
.field a:Landroid/content/Context;

.field public b:Lcom/purplebrain/adbuddiz/sdk/i/v$b;

.field public c:Lcom/purplebrain/adbuddiz/sdk/i/v$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://play.google.com/store/apps/details?"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https://play.google.com/store/apps/details?"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "http://market.android.com/details?"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "https://market.android.com/details?"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/i/v;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/v;->b:Lcom/purplebrain/adbuddiz/sdk/i/v$b;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/v;->c:Lcom/purplebrain/adbuddiz/sdk/i/v$a;

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/i/v;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/i/v;)Lcom/purplebrain/adbuddiz/sdk/i/v$b;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/v;->b:Lcom/purplebrain/adbuddiz/sdk/i/v$b;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/i/v;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "market://details?"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/i/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/v$a;-><init>(Lcom/purplebrain/adbuddiz/sdk/i/v;B)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/v;->c:Lcom/purplebrain/adbuddiz/sdk/i/v$a;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/v;->c:Lcom/purplebrain/adbuddiz/sdk/i/v$a;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/i/v$a$1;

    invoke-direct {v2, v0, p1}, Lcom/purplebrain/adbuddiz/sdk/i/v$a$1;-><init>(Lcom/purplebrain/adbuddiz/sdk/i/v$a;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/i/v$a;->a:Ljava/lang/Thread;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/i/v$a;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
