.class public final Lcom/purplebrain/adbuddiz/sdk/i/a/b;
.super Ljava/lang/Exception;


# instance fields
.field public a:Lcom/purplebrain/adbuddiz/sdk/i/a/a;

.field public b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/i/a/a;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/a/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/i/a/a;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/i/a/a;Lcom/purplebrain/adbuddiz/sdk/i/b/a/a;)V
    .locals 1

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/a/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/i/a/a;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/i/a/a;Ljava/lang/Throwable;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/purplebrain/adbuddiz/sdk/i/a/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/i/a/a;Ljava/util/List;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/i/a/a;Ljava/util/List;)V
    .locals 4

    const-string v0, "VAST Error: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Lcom/purplebrain/adbuddiz/sdk/i/a/a;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/a/b;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/i/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/i/a/a;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/a/b;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private constructor <init>(Lcom/purplebrain/adbuddiz/sdk/i/a/a;Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "VAST Error: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Lcom/purplebrain/adbuddiz/sdk/i/a/a;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/a/b;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/i/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/i/a/a;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/a/b;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
