.class public final Lcom/purplebrain/adbuddiz/sdk/i/o;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;->Info:Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/i/o;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    return-void
.end method

.method public static a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;)V
    .locals 0

    sput-object p0, Lcom/purplebrain/adbuddiz/sdk/i/o;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;->Info:Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/i/o;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdBuddiz"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;->Silent:Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/i/o;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AdBuddiz"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;->Silent:Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/i/o;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AdBuddiz"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
