.class public Lcom/purplebrain/adbuddiz/sdk/h/u;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/purplebrain/adbuddiz/sdk/h/u;->a:Z

    sput-object v1, Lcom/purplebrain/adbuddiz/sdk/h/u;->b:Ljava/lang/String;

    sput-object v1, Lcom/purplebrain/adbuddiz/sdk/h/u;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/h/u;->c:Ljava/lang/String;

    const-string v0, "PK"

    invoke-static {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/h/b/f;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sput-object p0, Lcom/purplebrain/adbuddiz/sdk/h/u;->b:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/purplebrain/adbuddiz/sdk/h/u;->a:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/h/u;->c:Ljava/lang/String;

    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/u;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/purplebrain/adbuddiz/sdk/h/u;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "PK"

    invoke-static {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/h/b/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/h/u;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/u;->c:Ljava/lang/String;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/h/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/h/u;->b:Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/u;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "PK"

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/h/u;->b:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/b/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/u;->b:Ljava/lang/String;

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/h/u;->c:Ljava/lang/String;

    :cond_1
    :goto_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/u;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/u;->b:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_2
    const-string v0, "PK"

    invoke-static {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/h/b/f;->c(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/h/u;->c:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/u;->c:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "PK"

    invoke-static {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/h/b/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/h/u;->c:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/h/u;->c:Ljava/lang/String;

    aput-object v1, v0, v2

    :cond_4
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/u;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/u;->c:Ljava/lang/String;

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/h/u;->b:Ljava/lang/String;

    goto :goto_1

    :cond_5
    new-array v0, v3, [Ljava/lang/Object;

    const-class v1, Lcom/purplebrain/adbuddiz/sdk/h/u;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/a/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
