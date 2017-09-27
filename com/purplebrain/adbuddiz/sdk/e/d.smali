.class public final Lcom/purplebrain/adbuddiz/sdk/e/d;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/purplebrain/adbuddiz/sdk/e/e;


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/e/e;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p1, Lcom/purplebrain/adbuddiz/sdk/e/e;->h:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/purplebrain/adbuddiz/sdk/e/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/e/d;->c:Lcom/purplebrain/adbuddiz/sdk/e/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/e/d;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/d;->c:Lcom/purplebrain/adbuddiz/sdk/e/e;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/e/d;->a:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/d;->a:Ljava/lang/String;

    goto :goto_0
.end method
