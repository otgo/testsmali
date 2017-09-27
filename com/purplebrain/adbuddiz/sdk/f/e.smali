.class public final enum Lcom/purplebrain/adbuddiz/sdk/f/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/purplebrain/adbuddiz/sdk/f/e;

.field public static final enum b:Lcom/purplebrain/adbuddiz/sdk/f/e;

.field public static final enum c:Lcom/purplebrain/adbuddiz/sdk/f/e;

.field private static final synthetic f:[Lcom/purplebrain/adbuddiz/sdk/f/e;


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/e;

    const-string v1, "PORT"

    const-string v2, "PORT"

    const-string v3, "Portrait"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/f/e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/f/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/e;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/e;

    const-string v1, "LAND"

    const-string v2, "LAND"

    const-string v3, "Landscape"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/f/e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/f/e;->b:Lcom/purplebrain/adbuddiz/sdk/f/e;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/e;

    const-string v1, "BOTH"

    const-string v2, "BOTH"

    const-string v3, "Both"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/f/e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/f/e;->c:Lcom/purplebrain/adbuddiz/sdk/f/e;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/purplebrain/adbuddiz/sdk/f/e;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/e;->b:Lcom/purplebrain/adbuddiz/sdk/f/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/e;->c:Lcom/purplebrain/adbuddiz/sdk/f/e;

    aput-object v1, v0, v6

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/f/e;->f:[Lcom/purplebrain/adbuddiz/sdk/f/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/f/e;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/purplebrain/adbuddiz/sdk/f/e;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/f/e;
    .locals 5

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/f/e;->a()[Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget-object v4, v3, Lcom/purplebrain/adbuddiz/sdk/f/e;->d:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid orientation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()[Lcom/purplebrain/adbuddiz/sdk/f/e;
    .locals 1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/f/e;->f:[Lcom/purplebrain/adbuddiz/sdk/f/e;

    invoke-virtual {v0}, [Lcom/purplebrain/adbuddiz/sdk/f/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/purplebrain/adbuddiz/sdk/f/e;

    return-object v0
.end method

.method public static b(Lcom/purplebrain/adbuddiz/sdk/f/e;)Lcom/purplebrain/adbuddiz/sdk/f/e;
    .locals 1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/f/e;->b:Lcom/purplebrain/adbuddiz/sdk/f/e;

    invoke-virtual {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/f/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/f/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/e;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/f/e;->b:Lcom/purplebrain/adbuddiz/sdk/f/e;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/e;)Z
    .locals 1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/f/e;->c:Lcom/purplebrain/adbuddiz/sdk/f/e;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/f/e;->c:Lcom/purplebrain/adbuddiz/sdk/f/e;

    if-ne p0, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/f/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
