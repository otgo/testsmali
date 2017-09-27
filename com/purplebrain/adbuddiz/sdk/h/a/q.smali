.class public final enum Lcom/purplebrain/adbuddiz/sdk/h/a/q;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/purplebrain/adbuddiz/sdk/h/a/q;

.field public static final enum b:Lcom/purplebrain/adbuddiz/sdk/h/a/q;

.field private static final synthetic d:[Lcom/purplebrain/adbuddiz/sdk/h/a/q;


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/h/a/q;

    const-string v1, "PHONE"

    const-string v2, "P"

    invoke-direct {v0, v1, v3, v2}, Lcom/purplebrain/adbuddiz/sdk/h/a/q;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/h/a/q;->a:Lcom/purplebrain/adbuddiz/sdk/h/a/q;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/h/a/q;

    const-string v1, "TABLET"

    const-string v2, "T"

    invoke-direct {v0, v1, v4, v2}, Lcom/purplebrain/adbuddiz/sdk/h/a/q;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/h/a/q;->b:Lcom/purplebrain/adbuddiz/sdk/h/a/q;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/purplebrain/adbuddiz/sdk/h/a/q;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/h/a/q;->a:Lcom/purplebrain/adbuddiz/sdk/h/a/q;

    aput-object v1, v0, v3

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/h/a/q;->b:Lcom/purplebrain/adbuddiz/sdk/h/a/q;

    aput-object v1, v0, v4

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/h/a/q;->d:[Lcom/purplebrain/adbuddiz/sdk/h/a/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/h/a/q;->c:Ljava/lang/String;

    return-void
.end method
