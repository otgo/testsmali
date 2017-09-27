.class public final enum Lcom/purplebrain/adbuddiz/sdk/e/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/purplebrain/adbuddiz/sdk/e/a;

.field public static final enum b:Lcom/purplebrain/adbuddiz/sdk/e/a;

.field public static final enum c:Lcom/purplebrain/adbuddiz/sdk/e/a;

.field public static final enum d:Lcom/purplebrain/adbuddiz/sdk/e/a;

.field public static final enum e:Lcom/purplebrain/adbuddiz/sdk/e/a;

.field private static final synthetic g:[Lcom/purplebrain/adbuddiz/sdk/e/a;


# instance fields
.field f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a;

    const-string v1, "IMEI"

    invoke-direct {v0, v1, v6, v3}, Lcom/purplebrain/adbuddiz/sdk/e/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a;->a:Lcom/purplebrain/adbuddiz/sdk/e/a;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a;

    const-string v1, "MacAddress"

    invoke-direct {v0, v1, v3, v4}, Lcom/purplebrain/adbuddiz/sdk/e/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a;->b:Lcom/purplebrain/adbuddiz/sdk/e/a;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a;

    const-string v1, "Geolocation"

    invoke-direct {v0, v1, v4, v5}, Lcom/purplebrain/adbuddiz/sdk/e/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a;->c:Lcom/purplebrain/adbuddiz/sdk/e/a;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a;

    const-string v1, "AndroidId"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lcom/purplebrain/adbuddiz/sdk/e/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a;->d:Lcom/purplebrain/adbuddiz/sdk/e/a;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a;

    const-string v1, "InstalledPackages"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v5, v2}, Lcom/purplebrain/adbuddiz/sdk/e/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a;->e:Lcom/purplebrain/adbuddiz/sdk/e/a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/purplebrain/adbuddiz/sdk/e/a;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/e/a;->a:Lcom/purplebrain/adbuddiz/sdk/e/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/e/a;->b:Lcom/purplebrain/adbuddiz/sdk/e/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/e/a;->c:Lcom/purplebrain/adbuddiz/sdk/e/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/e/a;->d:Lcom/purplebrain/adbuddiz/sdk/e/a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/e/a;->e:Lcom/purplebrain/adbuddiz/sdk/e/a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a;->g:[Lcom/purplebrain/adbuddiz/sdk/e/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->f:I

    return-void
.end method
