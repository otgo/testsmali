.class public final enum Lcom/purplebrain/adbuddiz/sdk/f/a/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/purplebrain/adbuddiz/sdk/f/a/e;

.field public static final enum b:Lcom/purplebrain/adbuddiz/sdk/f/a/e;

.field public static final enum c:Lcom/purplebrain/adbuddiz/sdk/f/a/e;

.field private static final synthetic g:[Lcom/purplebrain/adbuddiz/sdk/f/a/e;


# instance fields
.field d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    const-string v1, "ADBUDDIZ"

    const-string v3, "ADBUDDIZ"

    const-string v4, "I"

    invoke-direct/range {v0 .. v5}, Lcom/purplebrain/adbuddiz/sdk/f/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    const-string v4, "ADBUDDIZ_VIDEO"

    const-string v6, "ADBUDDIZ_VIDEO"

    const-string v7, "V"

    move v8, v5

    invoke-direct/range {v3 .. v8}, Lcom/purplebrain/adbuddiz/sdk/f/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v3, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    new-instance v6, Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    const-string v7, "RTB"

    const-string v9, "RTB"

    const-string v10, "R"

    move v8, v12

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/purplebrain/adbuddiz/sdk/f/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v6, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->c:Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->c:Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    aput-object v1, v0, v12

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->g:[Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->e:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->f:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/f/a/e;
    .locals 5

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->a()[Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget-object v4, v3, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->d:Ljava/lang/String;

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

.method public static a()[Lcom/purplebrain/adbuddiz/sdk/f/a/e;
    .locals 1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->g:[Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    invoke-virtual {v0}, [Lcom/purplebrain/adbuddiz/sdk/f/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    return-object v0
.end method
