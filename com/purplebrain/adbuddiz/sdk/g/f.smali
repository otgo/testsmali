.class public final enum Lcom/purplebrain/adbuddiz/sdk/g/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/purplebrain/adbuddiz/sdk/g/f;

.field public static final enum b:Lcom/purplebrain/adbuddiz/sdk/g/f;

.field public static final enum c:Lcom/purplebrain/adbuddiz/sdk/g/f;

.field public static final enum d:Lcom/purplebrain/adbuddiz/sdk/g/f;

.field public static final enum e:Lcom/purplebrain/adbuddiz/sdk/g/f;

.field private static final synthetic g:[Lcom/purplebrain/adbuddiz/sdk/g/f;


# instance fields
.field f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/g/f;

    const-string v1, "LOADING"

    const-string v2, "loading"

    invoke-direct {v0, v1, v3, v2}, Lcom/purplebrain/adbuddiz/sdk/g/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/g/f;->a:Lcom/purplebrain/adbuddiz/sdk/g/f;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/g/f;

    const-string v1, "DEFAULT"

    const-string v2, "default"

    invoke-direct {v0, v1, v4, v2}, Lcom/purplebrain/adbuddiz/sdk/g/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/g/f;->b:Lcom/purplebrain/adbuddiz/sdk/g/f;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/g/f;

    const-string v1, "EXPANDED"

    const-string v2, "expanded"

    invoke-direct {v0, v1, v5, v2}, Lcom/purplebrain/adbuddiz/sdk/g/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/g/f;->c:Lcom/purplebrain/adbuddiz/sdk/g/f;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/g/f;

    const-string v1, "RESIZED"

    const-string v2, "resized"

    invoke-direct {v0, v1, v6, v2}, Lcom/purplebrain/adbuddiz/sdk/g/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/g/f;->d:Lcom/purplebrain/adbuddiz/sdk/g/f;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/g/f;

    const-string v1, "HIDDEN"

    const-string v2, "hidden"

    invoke-direct {v0, v1, v7, v2}, Lcom/purplebrain/adbuddiz/sdk/g/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/g/f;->e:Lcom/purplebrain/adbuddiz/sdk/g/f;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/purplebrain/adbuddiz/sdk/g/f;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/g/f;->a:Lcom/purplebrain/adbuddiz/sdk/g/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/g/f;->b:Lcom/purplebrain/adbuddiz/sdk/g/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/g/f;->c:Lcom/purplebrain/adbuddiz/sdk/g/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/g/f;->d:Lcom/purplebrain/adbuddiz/sdk/g/f;

    aput-object v1, v0, v6

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/g/f;->e:Lcom/purplebrain/adbuddiz/sdk/g/f;

    aput-object v1, v0, v7

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/g/f;->g:[Lcom/purplebrain/adbuddiz/sdk/g/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/g/f;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/f;->f:Ljava/lang/String;

    return-object v0
.end method
