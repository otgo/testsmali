.class public final enum Lcom/purplebrain/adbuddiz/sdk/g/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/purplebrain/adbuddiz/sdk/g/d;

.field public static final enum b:Lcom/purplebrain/adbuddiz/sdk/g/d;

.field public static final enum c:Lcom/purplebrain/adbuddiz/sdk/g/d;

.field public static final enum d:Lcom/purplebrain/adbuddiz/sdk/g/d;

.field public static final enum e:Lcom/purplebrain/adbuddiz/sdk/g/d;

.field private static final synthetic h:[Lcom/purplebrain/adbuddiz/sdk/g/d;


# instance fields
.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/g/d;

    const-string v1, "READY"

    const-string v2, "ready"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/purplebrain/adbuddiz/sdk/g/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/g/d;->a:Lcom/purplebrain/adbuddiz/sdk/g/d;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/g/d;

    const-string v1, "ERROR"

    const-string v2, "error"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/g/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/g/d;->b:Lcom/purplebrain/adbuddiz/sdk/g/d;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/g/d;

    const-string v1, "STATE_CHANGE"

    const-string v2, "stateChange"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/g/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/g/d;->c:Lcom/purplebrain/adbuddiz/sdk/g/d;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/g/d;

    const-string v1, "VIEWABLE_CHANGE"

    const-string v2, "viewableChange"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/g/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/g/d;->d:Lcom/purplebrain/adbuddiz/sdk/g/d;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/g/d;

    const-string v1, "SIZE_CHANGE"

    const-string v2, "sizeChange"

    invoke-direct {v0, v1, v7, v2, v5}, Lcom/purplebrain/adbuddiz/sdk/g/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/g/d;->e:Lcom/purplebrain/adbuddiz/sdk/g/d;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/purplebrain/adbuddiz/sdk/g/d;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/g/d;->a:Lcom/purplebrain/adbuddiz/sdk/g/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/g/d;->b:Lcom/purplebrain/adbuddiz/sdk/g/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/g/d;->c:Lcom/purplebrain/adbuddiz/sdk/g/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/g/d;->d:Lcom/purplebrain/adbuddiz/sdk/g/d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/g/d;->e:Lcom/purplebrain/adbuddiz/sdk/g/d;

    aput-object v1, v0, v7

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/g/d;->h:[Lcom/purplebrain/adbuddiz/sdk/g/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/g/d;->f:Ljava/lang/String;

    iput p4, p0, Lcom/purplebrain/adbuddiz/sdk/g/d;->g:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/d;->f:Ljava/lang/String;

    return-object v0
.end method
