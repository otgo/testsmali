.class public final Lcom/purplebrain/adbuddiz/sdk/c/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/c/a$4;
    }
.end annotation


# static fields
.field private static c:Lcom/purplebrain/adbuddiz/sdk/c/a;

.field private static d:Ljava/lang/Boolean;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/c/a;->c:Lcom/purplebrain/adbuddiz/sdk/c/a;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/c/a;->d:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/c/a;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/c/a;->b:Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;

    return-void
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/c/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/c/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lcom/purplebrain/adbuddiz/sdk/c/a;
    .locals 2

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/c/a;->d:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/c/a;->c:Lcom/purplebrain/adbuddiz/sdk/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/c/a;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/c/a;-><init>()V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/c/a;->c:Lcom/purplebrain/adbuddiz/sdk/c/a;

    :cond_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/c/a;->c:Lcom/purplebrain/adbuddiz/sdk/c/a;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t show Ad: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;ZZ)V
    .locals 4

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/c/a$4;->a:[I

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "didFailToShowAd "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/i/i$5;

    invoke-direct {v0, p1}, Lcom/purplebrain/adbuddiz/sdk/i/i$5;-><init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;)V

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/i;->a(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->c()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v1

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/f/d;->c:Lcom/purplebrain/adbuddiz/sdk/f/d$a;

    if-eqz v2, :cond_1

    sget-object v3, Lcom/purplebrain/adbuddiz/sdk/c/a$4;->b:[I

    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/f/d$a;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_1

    :goto_1
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/h/g;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/h/g;-><init>()V

    invoke-virtual {v0, p1}, Lcom/purplebrain/adbuddiz/sdk/h/g;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;)V

    iput-object p0, v0, Lcom/purplebrain/adbuddiz/sdk/h/g;->i:Lcom/purplebrain/adbuddiz/sdk/f/d;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/h/g;->f()V
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    return-void

    :pswitch_0
    const-string v0, "AdBuddiz only shows ads for Android SDK >= 2.1 - Eclair."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "showAd() activity parameter is null."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "Add <uses-permission android:name=\"android.permission.INTERNET\" /> in AndroidManifest.xml."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "Add AdBuddiz.setPublisherKey(); call before calling cacheAds();"

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v0, ""

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    const-string v0, " ---------------------------------------------------------------------- "

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    const-string v0, " Missing AdBuddizActivity in Manifest, add this :                       "

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    const-string v0, " <activity android:name=\"com.purplebrain.adbuddiz.sdk.AdBuddizActivity\" "

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    const-string v0, "           android:theme=\"@android:style/Theme.Translucent\" />          "

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    const-string v0, " ---------------------------------------------------------------------- "

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "AdBuddiz Config isn\'t ready yet. Did you call cacheAds ? Please wait for cache initialization..."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "AdBuddiz Config is expired. Currently updating..."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "Check Publisher Key value in AdBuddiz.setPublisherKey(); call."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "Check Publisher Key value in AdBuddiz.setPublisherKey(); call. That key can only work with an iOS application."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    const-string v0, "This placement is blocked, no Ad will be shown."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    const-string v0, "Connect device to Internet."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    const-string v0, ""

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    const-string v0, "Server request responded HTTP \'403 Forbidden\'."

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    const-string v0, "You may be behind a proxy blocking all communications from the SDK."

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    const-string v0, "Try to open to www.adbuddiz.com on the browser of your device to check if our service is reachable."

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    const-string v0, "Currently caching ads..."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d
    const-string v0, "No ad inventory is currently available for your parameters (Country, Device, OS...)."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad was already shown less than "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/p;->a(Z)Lcom/purplebrain/adbuddiz/sdk/i/p;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/p;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms ago. Please wait between calls."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f
    const-string v0, "Ad is already displayed on screen."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10
    const-string v0, ""

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11
    :try_start_1
    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/f/b;->B:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :pswitch_12
    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/f/b;->A:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;)Z
    .locals 1

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/c/a;->b(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;)Z

    move-result v0

    return v0
.end method

.method private static b(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->CONFIG_NOT_READY:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    if-eq v2, p0, :cond_0

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->CONFIG_EXPIRED:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    if-ne v2, p0, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a()Lcom/purplebrain/adbuddiz/sdk/e/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Z)Lcom/purplebrain/adbuddiz/sdk/f/a/a;
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/q; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic c(Landroid/content/Context;Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;
    .locals 1

    invoke-static {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/c/a;->e(Landroid/content/Context;Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    move-result-object v0

    return-object v0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/a;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/a;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/v;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/v;-><init>()V

    throw v0

    :cond_1
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->isAdOnScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/d;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/d;-><init>()V

    throw v0

    :cond_2
    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/a/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/r;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/r;-><init>()V

    throw v0

    :cond_3
    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->c()V
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/r; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/j; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/p;->a(Z)Lcom/purplebrain/adbuddiz/sdk/i/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/p;->e()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/p;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/u;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/u;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/e/b;->e()V

    throw v0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/e/b;->e()V

    throw v0

    :cond_5
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/t;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/t;-><init>()V

    throw v0

    :cond_6
    return-void
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/c/a;->d(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/b/b;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "cacheAds"

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v0, "Can\'t cache ads: cacheAds() context parameter is null."

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/c/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/j;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "Can\'t cache ads: no Publisher Key set. Call AdBuddiz.setPublisherKey(); before calling cacheAds();"

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/d$a;->a:Lcom/purplebrain/adbuddiz/sdk/f/d$a;

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Lcom/purplebrain/adbuddiz/sdk/f/d$a;Ljava/lang/Throwable;)V

    const-string v1, "AdBuddiz.cacheAds() Exception : "

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/a/e;->f(Landroid/content/Context;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/b/b;->a()Z

    move-result v0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/b/b;->b()Z

    move-result v1

    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    const-string v2, "Configuration changed."

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Landroid/content/Context;)V

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a()Lcom/purplebrain/adbuddiz/sdk/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/e/a;->b()V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/e/b;->g()V

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/q;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/b/b;->c()V

    :cond_4
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/e/b;->d()V

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/e;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/d;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a()Lcom/purplebrain/adbuddiz/sdk/e/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Landroid/content/Context;)V

    iget-object v3, v2, Lcom/purplebrain/adbuddiz/sdk/e/a;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    invoke-virtual {v2, p1, v3}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;)V

    if-nez v0, :cond_5

    if-eqz v1, :cond_0

    :cond_5
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a()Lcom/purplebrain/adbuddiz/sdk/e/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/e/a;->b(Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v4, Lcom/purplebrain/adbuddiz/sdk/f/d;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/d$a;->c:Lcom/purplebrain/adbuddiz/sdk/f/d$a;

    invoke-direct {v4, v1, p2}, Lcom/purplebrain/adbuddiz/sdk/f/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/d$a;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/p;->a(Z)Lcom/purplebrain/adbuddiz/sdk/i/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    :try_start_1
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/c/a;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, " ----------------------------------------------------------------- "

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    const-string v1, " WARNING - cacheAds wasn\'t called! You MUST call cacheAds before   "

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    const-string v1, " isReadyToShowAd.                                                  "

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    const-string v1, " isReadyToShowAd will ALWAYS return false.                         "

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    const-string v1, " ----------------------------------------------------------------- "

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_2
    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/c/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/j;->a(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/i/p;->g()Z
    :try_end_2
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    move v3, v0

    :goto_1
    :try_start_3
    const-string v1, "isReadyToShowAd"

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/purplebrain/adbuddiz/sdk/c/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a()Lcom/purplebrain/adbuddiz/sdk/e/a;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Z)Lcom/purplebrain/adbuddiz/sdk/f/a/a;
    :try_end_3
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v2

    :goto_2
    :try_start_4
    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/i/p;->d()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    :goto_3
    :try_start_5
    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/b/b;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const/4 v3, 0x0

    invoke-static {v4, v1, v3, v2}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;ZZ)V

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_4
    sget-object v3, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->UNKNOWN_EXCEPTION_RAISED:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const/4 v6, 0x0

    invoke-static {v4, v3, v6, v2}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;ZZ)V

    const-string v2, "AdBuddiz.isReadyToShowAd() Exception : "

    invoke-static {v2, v1}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v1

    move v2, v3

    goto :goto_4

    :catch_3
    move-exception v1

    move v2, v3

    goto :goto_3

    :cond_1
    move v3, v2

    goto :goto_1
.end method

.method public final declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/f/d;

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/f/d$a;->b:Lcom/purplebrain/adbuddiz/sdk/f/d$a;

    invoke-direct {v3, v0, p2}, Lcom/purplebrain/adbuddiz/sdk/f/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/d$a;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/c/a;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->ACTIVITY_PARAMETER_IS_NULL:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v3, v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;ZZ)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v0, " ----------------------------------------------------------------- "

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    const-string v0, " WARNING - cacheAds wasn\'t called! You MUST call cacheAds before   "

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    const-string v0, " showAd.                                                           "

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    const-string v0, " cacheAds will be called automatically. showAd will be delayed.    "

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    const-string v0, " ----------------------------------------------------------------- "

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Landroid/content/Context;)V

    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_3

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->ACTIVITY_PARAMETER_IS_NULL:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v3, v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;ZZ)V

    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/c/a$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/purplebrain/adbuddiz/sdk/c/a$1;-><init>(Lcom/purplebrain/adbuddiz/sdk/c/a;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->MISSING_ADBUDDIZ_ACTIVITY_IN_MANIFEST:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v3, v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_4
    const-string v0, "showAd"

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x0

    :try_start_5
    invoke-static {p1, p2}, Lcom/purplebrain/adbuddiz/sdk/c/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/c/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/j;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a()Lcom/purplebrain/adbuddiz/sdk/e/a;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Landroid/content/Context;Z)Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/purplebrain/adbuddiz/sdk/i/p;->a(Z)Lcom/purplebrain/adbuddiz/sdk/i/p;

    move-result-object v5

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/i/p;->c()V

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/i/a;

    iget-object v6, p0, Lcom/purplebrain/adbuddiz/sdk/c/a;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/purplebrain/adbuddiz/sdk/i/a;-><init>(Landroid/content/Context;)V

    iput-object v4, v5, Lcom/purplebrain/adbuddiz/sdk/i/a;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iput-object p2, v5, Lcom/purplebrain/adbuddiz/sdk/i/a;->b:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/i/a;->a()Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/purplebrain/adbuddiz/sdk/c/a;->a:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Lcom/purplebrain/adbuddiz/sdk/b/p; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/i/i$3;

    invoke-direct {v2}, Lcom/purplebrain/adbuddiz/sdk/i/i$3;-><init>()V

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/i/i;->a(Ljava/lang/Runnable;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/c/a$3;

    invoke-direct {v5, p0, v4}, Lcom/purplebrain/adbuddiz/sdk/c/a$3;-><init>(Lcom/purplebrain/adbuddiz/sdk/c/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    invoke-direct {v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_6
    .catch Lcom/purplebrain/adbuddiz/sdk/b/p; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    if-nez v1, :cond_0

    :try_start_7
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/e/b;->f()Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-static {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/h;->a(Ljava/lang/Long;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/c/a;->b(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/c/a$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/purplebrain/adbuddiz/sdk/c/a$2;-><init>(Lcom/purplebrain/adbuddiz/sdk/c/a;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_8
    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->UNKNOWN_EXCEPTION_RAISED:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const/4 v2, 0x1

    const/4 v4, 0x1

    invoke-static {v3, v1, v2, v4}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;ZZ)V

    const-string v1, "AdBuddiz.showAd() Exception : "

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move v1, v2

    :goto_2
    :try_start_9
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a()Lcom/purplebrain/adbuddiz/sdk/e/a;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/purplebrain/adbuddiz/sdk/e/a;->b(Z)V

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/b/b;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v3, v2, v4, v5}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;ZZ)V

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/b/b;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_3
    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/b/b;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v3, v1, v4, v5}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;ZZ)V

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/b/b;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;
    :try_end_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move v1, v2

    goto :goto_1

    :catch_4
    move-exception v0

    move v2, v1

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2
.end method
