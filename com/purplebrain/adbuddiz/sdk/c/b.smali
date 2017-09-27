.class public final Lcom/purplebrain/adbuddiz/sdk/c/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/c/b$4;
    }
.end annotation


# static fields
.field private static c:Lcom/purplebrain/adbuddiz/sdk/c/b;

.field private static d:Ljava/lang/Boolean;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/c/b;->c:Lcom/purplebrain/adbuddiz/sdk/c/b;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/c/b;->d:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/c/b;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/c/b;->b:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoDelegate;

    return-void
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/c/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/c/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lcom/purplebrain/adbuddiz/sdk/c/b;
    .locals 2

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/c/b;->d:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/c/b;->c:Lcom/purplebrain/adbuddiz/sdk/c/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/c/b;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;-><init>()V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/c/b;->c:Lcom/purplebrain/adbuddiz/sdk/c/b;

    :cond_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/c/b;->c:Lcom/purplebrain/adbuddiz/sdk/c/b;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t show Ad: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;->getName()Ljava/lang/String;

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

.method public static a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;ZZ)V
    .locals 4

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/c/b$4;->a:[I

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    if-eqz p3, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/i/r$3;

    invoke-direct {v0, p1}, Lcom/purplebrain/adbuddiz/sdk/i/r$3;-><init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;)V

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/r;->a(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p4, :cond_1

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

    sget-object v3, Lcom/purplebrain/adbuddiz/sdk/c/b$4;->b:[I

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

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/h/g;->e:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    iput-object p1, v0, Lcom/purplebrain/adbuddiz/sdk/h/g;->f:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    iput-object p0, v0, Lcom/purplebrain/adbuddiz/sdk/h/g;->i:Lcom/purplebrain/adbuddiz/sdk/f/d;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/h/g;->f()V
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    return-void

    :pswitch_0
    const-string v0, "AdBuddiz SDK only boot up for Android SDK >= 2.1 - Eclair."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "show() activity parameter is null."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "Add <uses-permission android:name=\"android.permission.INTERNET\" /> in AndroidManifest.xml."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "Add AdBuddiz.setPublisherKey(); call before calling fetch();"

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v0, ""

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

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
    const-string v0, "AdBuddiz Config isn\'t ready yet. Did you call fetch()? Please wait for cache initialization..."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "AdBuddiz Config is expired. Currently updating..."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "Check Publisher Key value in AdBuddiz.setPublisherKey(); call."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "Check Publisher Key value in AdBuddiz.setPublisherKey(); call. That key can only work with an iOS application."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    const-string v0, "Connect device to Internet."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    const-string v0, ""

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    const-string v0, "Server request responded HTTP \'403 Forbidden\'."

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    const-string v0, "You may be behind a proxy blocking all communications from the SDK."

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    const-string v0, "Try to open to www.adbuddiz.com on the browser of your device to check if our service is reachable."

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    const-string v0, "Current network is too slow."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    const-string v0, "Device is not supported."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rewarded video ads are only available on Android "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e
    const-string v0, "You wait too much time before calling show()."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f
    const-string v0, "No video ad is currently being fetched. Did you call AdBuddiz.RewardedVideo.fetch()?"

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10
    const-string v0, "Currently fetching video ad..."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11
    const-string v0, "No ad inventory is currently available for your parameters (Country, Device, OS...)."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad was already shown less than "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

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

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_13
    const-string v0, "Ad is already displayed on screen."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_14
    const-string v0, ""

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_15
    :try_start_1
    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/f/b;->B:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :pswitch_16
    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/f/b;->A:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

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
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;)Z
    .locals 1

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->b(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

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
    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/a/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/r;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/r;-><init>()V

    throw v0

    :cond_2
    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/o;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/o;-><init>()V

    throw v0

    :cond_3
    return-void
.end method

.method private static b(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;->CONFIG_NOT_READY:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    if-eq v2, p0, :cond_0

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;->CONFIG_EXPIRED:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

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

    const/4 v3, 0x1

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

.method static synthetic d(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;
    .locals 1

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->f(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    move-result-object v0

    return-object v0
.end method

.method private static e(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->isAdOnScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/d;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/d;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->c()V
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/r; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/j; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/p;->a(Z)Lcom/purplebrain/adbuddiz/sdk/i/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/p;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/p;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
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

    :cond_2
    return-void
.end method

.method private static f(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->e(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/b/b;->b:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v4, Lcom/purplebrain/adbuddiz/sdk/f/d;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/d$a;->e:Lcom/purplebrain/adbuddiz/sdk/f/d$a;

    const-string v3, "Default"

    invoke-direct {v4, v1, v3}, Lcom/purplebrain/adbuddiz/sdk/f/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/d$a;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/p;->a(Z)Lcom/purplebrain/adbuddiz/sdk/i/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    :try_start_1
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/c/b;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, " ------------------------------------------------------------------------- "

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    const-string v1, "  WARNING - fetch wasn\'t called! You MUST call fetch before isReadyToShow  "

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    const-string v1, "  Otherwise, isReadyToShow will ALWAYS return false                        "

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    const-string v1, " ------------------------------------------------------------------------- "

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
    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/c/b;->a:Landroid/content/Context;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a()Lcom/purplebrain/adbuddiz/sdk/c/a;

    move-result-object v1

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/c/b;->a:Landroid/content/Context;

    iput-object v3, v1, Lcom/purplebrain/adbuddiz/sdk/c/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/j;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/x;->a(Landroid/content/Context;)V

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
    const-string v1, "isReadyToShow"

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/c/b;->e(Landroid/content/Context;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a()Lcom/purplebrain/adbuddiz/sdk/e/a;

    move-result-object v1

    const/4 v6, 0x1

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
    iget-object v3, v1, Lcom/purplebrain/adbuddiz/sdk/b/b;->b:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/b/b;->c:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v3, v1, v6, v2}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;ZZ)V

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_4
    sget-object v3, Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;->UNKNOWN_EXCEPTION_RAISED:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v3, v6, v7, v2}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;ZZ)V

    const-string v2, "AdBuddiz.RewardedVideo.isReadyToShow() Exception: "

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

.method public final c(Landroid/content/Context;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v3, 0x0

    new-instance v4, Lcom/purplebrain/adbuddiz/sdk/f/d;

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/f/d$a;->f:Lcom/purplebrain/adbuddiz/sdk/f/d$a;

    const-string v2, "Default"

    invoke-direct {v4, v0, v2}, Lcom/purplebrain/adbuddiz/sdk/f/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/d$a;Ljava/lang/String;)V

    if-nez p1, :cond_1

    :try_start_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;->ACTIVITY_PARAMETER_IS_NULL:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    const/4 v1, 0x0

    invoke-static {v4, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/c/b;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;->FETCH_VIDEO_AD_NOT_CALLED:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    const/4 v1, 0x0

    invoke-static {v4, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;->MISSING_ADBUDDIZ_ACTIVITY_IN_MANIFEST:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    invoke-static {v4, v0, v3}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/x;->a(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_3

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;->ACTIVITY_PARAMETER_IS_NULL:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    const/4 v1, 0x0

    invoke-static {v4, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/c/b$1;

    invoke-direct {v1, p0, p1}, Lcom/purplebrain/adbuddiz/sdk/c/b$1;-><init>(Lcom/purplebrain/adbuddiz/sdk/c/b;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;->UNKNOWN_EXCEPTION_RAISED:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    invoke-static {v4, v1, v3}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    const-string v1, "AdBuddiz.RewardedVideo.show() Exception: "

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :try_start_2
    const-string v0, "show"

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v2, 0x0

    :try_start_3
    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/c/b;->e(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/c/b;->a:Landroid/content/Context;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a()Lcom/purplebrain/adbuddiz/sdk/c/a;

    move-result-object v0

    iget-object v5, p0, Lcom/purplebrain/adbuddiz/sdk/c/b;->a:Landroid/content/Context;

    iput-object v5, v0, Lcom/purplebrain/adbuddiz/sdk/c/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/j;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a()Lcom/purplebrain/adbuddiz/sdk/e/a;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, p1, v5}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Landroid/content/Context;Z)Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    move-result-object v0

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/purplebrain/adbuddiz/sdk/i/p;->a(Z)Lcom/purplebrain/adbuddiz/sdk/i/p;

    move-result-object v5

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/i/p;->c()V

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/i/a;

    invoke-direct {v5, p1}, Lcom/purplebrain/adbuddiz/sdk/i/a;-><init>(Landroid/content/Context;)V

    iput-object v0, v5, Lcom/purplebrain/adbuddiz/sdk/i/a;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    const-string v6, "Default"

    iput-object v6, v5, Lcom/purplebrain/adbuddiz/sdk/i/a;->b:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/i/a;->a()Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/purplebrain/adbuddiz/sdk/c/b;->a:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Lcom/purplebrain/adbuddiz/sdk/b/p; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    new-instance v2, Ljava/lang/Thread;

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/c/b$3;

    invoke-direct {v5, p0, v0}, Lcom/purplebrain/adbuddiz/sdk/c/b$3;-><init>(Lcom/purplebrain/adbuddiz/sdk/c/b;Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    invoke-direct {v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catch Lcom/purplebrain/adbuddiz/sdk/b/p; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v3

    :goto_1
    if-nez v1, :cond_0

    :try_start_5
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/e/b;->f()Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-static {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/h;->a(Ljava/lang/Long;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->b(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/c/b$2;

    invoke-direct {v1, p0, p1}, Lcom/purplebrain/adbuddiz/sdk/c/b$2;-><init>(Lcom/purplebrain/adbuddiz/sdk/c/b;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move v1, v2

    :goto_2
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a()Lcom/purplebrain/adbuddiz/sdk/e/a;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/purplebrain/adbuddiz/sdk/e/a;->b(Z)V

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/b/b;->b:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    iget-object v5, v0, Lcom/purplebrain/adbuddiz/sdk/b/b;->c:Ljava/lang/String;

    invoke-static {v4, v2, v5}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/b/b;->b:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_3
    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/b/b;->b:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    iget-object v5, v0, Lcom/purplebrain/adbuddiz/sdk/b/b;->c:Ljava/lang/String;

    invoke-static {v4, v1, v5}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/b/b;->b:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

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
