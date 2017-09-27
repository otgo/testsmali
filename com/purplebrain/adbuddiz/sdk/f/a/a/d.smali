.class public final enum Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

.field public static final enum b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

.field public static final enum c:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

.field private static final synthetic f:[Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;


# instance fields
.field d:Ljava/lang/String;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    const-string v1, "META_DATA"

    const-string v2, "D"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    const-string v1, "MEDIA"

    const-string v2, "M"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    const-string v1, "ASSET"

    const-string v2, "A"

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->c:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->c:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    aput-object v1, v0, v5

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->f:[Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->e:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;
    .locals 5

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->f:[Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    invoke-virtual {v0}, [Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget-object v4, v3, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->d:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid resource type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
