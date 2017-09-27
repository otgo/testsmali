.class public final Lcom/purplebrain/adbuddiz/sdk/i/x;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/i/x;->a:Ljava/lang/String;

    sput-boolean v1, Lcom/purplebrain/adbuddiz/sdk/i/x;->b:Z

    sput-boolean v1, Lcom/purplebrain/adbuddiz/sdk/i/x;->c:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/purplebrain/adbuddiz/sdk/i/x;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/i/x;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "uid"

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/i/x;->a:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/b/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/purplebrain/adbuddiz/sdk/i/x;->b:Z

    :cond_0
    return-void

    :cond_1
    const-string v0, "uid"

    invoke-static {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/i/b/d;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    sget-boolean v0, Lcom/purplebrain/adbuddiz/sdk/i/x;->c:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/x;->a(Landroid/content/Context;)V

    :cond_0
    sget-boolean v0, Lcom/purplebrain/adbuddiz/sdk/i/x;->b:Z

    if-nez v0, :cond_1

    const-string v0, "uid"

    invoke-static {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/i/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/i/x;->a:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/purplebrain/adbuddiz/sdk/i/x;->b:Z

    :cond_1
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/i/x;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "uid"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    const-string v0, "User Id must not be longer than 64 characters."

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/i/x;->a:Ljava/lang/String;

    if-eq v0, p0, :cond_0

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/i/x;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/i/x;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    sput-object p0, Lcom/purplebrain/adbuddiz/sdk/i/x;->a:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/purplebrain/adbuddiz/sdk/i/x;->c:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/purplebrain/adbuddiz/sdk/i/x;->b:Z

    goto :goto_0
.end method
