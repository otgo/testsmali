.class public final enum Lcom/purplebrain/adbuddiz/sdk/e/a/h;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/purplebrain/adbuddiz/sdk/e/a/h;

.field public static final enum b:Lcom/purplebrain/adbuddiz/sdk/e/a/h;

.field private static final synthetic d:[Lcom/purplebrain/adbuddiz/sdk/e/a/h;


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    const-string v1, "ADBUDDIZ"

    const-string v2, "ADBUDDIZ"

    invoke-direct {v0, v1, v3, v2}, Lcom/purplebrain/adbuddiz/sdk/e/a/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a/h;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    const-string v1, "RTB"

    const-string v2, "RTB"

    invoke-direct {v0, v1, v4, v2}, Lcom/purplebrain/adbuddiz/sdk/e/a/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a/h;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/e/a/h;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/e/a/h;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    aput-object v1, v0, v4

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a/h;->d:[Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/h;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/e/a/h;
    .locals 5

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/a/h;->a()[Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget-object v4, v3, Lcom/purplebrain/adbuddiz/sdk/e/a/h;->c:Ljava/lang/String;

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

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a valid ad type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()[Lcom/purplebrain/adbuddiz/sdk/e/a/h;
    .locals 1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a/h;->d:[Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    invoke-virtual {v0}, [Lcom/purplebrain/adbuddiz/sdk/e/a/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    return-object v0
.end method
