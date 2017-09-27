.class public final enum Lcom/purplebrain/adbuddiz/sdk/e/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/purplebrain/adbuddiz/sdk/e/f;

.field public static final enum b:Lcom/purplebrain/adbuddiz/sdk/e/f;

.field public static final enum c:Lcom/purplebrain/adbuddiz/sdk/e/f;

.field private static final synthetic f:[Lcom/purplebrain/adbuddiz/sdk/e/f;


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/f;

    const-string v1, "PORT"

    const-string v2, "PORT"

    const-string v3, "Portrait"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/e/f;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/e/f;->a:Lcom/purplebrain/adbuddiz/sdk/e/f;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/f;

    const-string v1, "LAND"

    const-string v2, "LAND"

    const-string v3, "Landscape"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/e/f;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/e/f;->b:Lcom/purplebrain/adbuddiz/sdk/e/f;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/f;

    const-string v1, "BOTH"

    const-string v2, "BOTH"

    const-string v3, "Both"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/e/f;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/e/f;->c:Lcom/purplebrain/adbuddiz/sdk/e/f;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/purplebrain/adbuddiz/sdk/e/f;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/e/f;->a:Lcom/purplebrain/adbuddiz/sdk/e/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/e/f;->b:Lcom/purplebrain/adbuddiz/sdk/e/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/e/f;->c:Lcom/purplebrain/adbuddiz/sdk/e/f;

    aput-object v1, v0, v6

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/e/f;->f:[Lcom/purplebrain/adbuddiz/sdk/e/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/e/f;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/purplebrain/adbuddiz/sdk/e/f;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/e/f;
    .locals 5

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/f;->f:[Lcom/purplebrain/adbuddiz/sdk/e/f;

    invoke-virtual {v0}, [Lcom/purplebrain/adbuddiz/sdk/e/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/purplebrain/adbuddiz/sdk/e/f;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget-object v4, v3, Lcom/purplebrain/adbuddiz/sdk/e/f;->d:Ljava/lang/String;

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

    const-string v2, " is not a valid orientation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lcom/purplebrain/adbuddiz/sdk/e/f;)Lcom/purplebrain/adbuddiz/sdk/e/f;
    .locals 1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/f;->b:Lcom/purplebrain/adbuddiz/sdk/e/f;

    invoke-virtual {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/e/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/f;->a:Lcom/purplebrain/adbuddiz/sdk/e/f;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/f;->b:Lcom/purplebrain/adbuddiz/sdk/e/f;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/e/f;)Z
    .locals 1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/f;->c:Lcom/purplebrain/adbuddiz/sdk/e/f;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/f;->c:Lcom/purplebrain/adbuddiz/sdk/e/f;

    if-ne p0, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
