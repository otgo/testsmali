.class public Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$5;
    }
.end annotation


# static fields
.field public static final EXTRA_AD:Ljava/lang/String; = "a"

.field public static final EXTRA_FULLSCREEN:Ljava/lang/String; = "fs"

.field public static final EXTRA_NAVIGATION_BAR_COLOR:Ljava/lang/String; = "snc"

.field public static final EXTRA_PLACEMENT:Ljava/lang/String; = "p"

.field public static final EXTRA_STATUS_BAR_COLOR:Ljava/lang/String; = "sbc"

.field public static final EXTRA_SYSTEM_UI_FLAGS:Ljava/lang/String; = "suf"

.field public static final EXTRA_WITHOUT_TITLE:Ljava/lang/String; = "wt"

.field private static a:Z


# instance fields
.field private b:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

.field private c:Ljava/lang/String;

.field private d:Lcom/purplebrain/adbuddiz/sdk/a/c;

.field private e:Landroid/view/View;

.field private f:Z

.field private g:Z

.field private h:Lcom/purplebrain/adbuddiz/sdk/a/c$d;

.field private i:Lcom/purplebrain/adbuddiz/sdk/a/c$a;

.field private j:Lcom/purplebrain/adbuddiz/sdk/a/c$c;

.field private k:Lcom/purplebrain/adbuddiz/sdk/a/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->f:Z

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->g:Z

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$1;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$1;-><init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->h:Lcom/purplebrain/adbuddiz/sdk/a/c$d;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$2;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$2;-><init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->i:Lcom/purplebrain/adbuddiz/sdk/a/c$a;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$3;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$3;-><init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->j:Lcom/purplebrain/adbuddiz/sdk/a/c$c;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$4;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$4;-><init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->k:Lcom/purplebrain/adbuddiz/sdk/a/c$b;

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->flushLayoutCache()V

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->a(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)Lcom/purplebrain/adbuddiz/sdk/f/a/a;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    return-object v0
.end method

.method public static isAdOnScreen()Z
    .locals 1

    sget-boolean v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->a:Z

    return v0
.end method


# virtual methods
.method public hasHardwareAcceleration()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->d:Lcom/purplebrain/adbuddiz/sdk/a/c;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/a/c;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->f:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdBuddizActivity.onBackPressed"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    const-string v1, "AdBuddizActivity.onBackPressed() Exception : "

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    sput-boolean v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->a:Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Landroid/app/Activity;)V

    :cond_0
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v2, "p"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "a"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v0, "invalid AdBuddizActivity intent."

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->finish()V

    :goto_0
    return-void

    :cond_2
    const-string v2, "p"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->c:Ljava/lang/String;

    new-instance v2, Lorg/json/JSONObject;

    const-string v4, "a"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->a(Lorg/json/JSONObject;)Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    move-result-object v2

    iput-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    const-string v2, "wt"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "wt"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->requestWindowFeature(I)Z

    :cond_3
    const-string v2, "fs"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "fs"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x400

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_8

    const-string v2, "sbc"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "snc"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v4, -0x80000000

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    :cond_6
    const-string v2, "sbc"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string v4, "sbc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_7
    const-string v2, "snc"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string v4, "snc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_8
    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iget-object v4, v2, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/f/e;

    if-eqz v4, :cond_9

    iget-object v4, v2, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/f/e;

    sget-object v5, Lcom/purplebrain/adbuddiz/sdk/f/e;->c:Lcom/purplebrain/adbuddiz/sdk/f/e;

    if-eq v4, v5, :cond_9

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$5;->a:[I

    iget-object v2, v2, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/f/e;

    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/f/e;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->getRequestedOrientation()I

    move-result v2

    :goto_1
    invoke-virtual {p0, v2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->setRequestedOrientation(I)V

    :cond_9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v2, v4, :cond_b

    const-string v2, "suf"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "suf"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    and-int/lit16 v3, v2, 0x800

    if-eqz v3, :cond_a

    and-int/lit16 v2, v2, -0x801

    or-int/lit16 v2, v2, 0x1000

    :cond_a
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_b
    if-eqz p1, :cond_c

    const-string v2, "hasImpressionBeenSent"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->g:Z

    :cond_c
    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v1

    :goto_2
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a()Lcom/purplebrain/adbuddiz/sdk/e/a;

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)Z

    move-result v3

    if-nez v2, :cond_d

    if-eqz v3, :cond_e

    :cond_d
    move v0, v1

    :cond_e
    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iget-boolean v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b:Z

    if-nez v0, :cond_10

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/i;->a()V

    :goto_3
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdBuddizActivity.onCreate"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    const-string v1, "AdBuddizActivity.onCreate() Exception : "

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->finish()V

    goto/16 :goto_0

    :pswitch_0
    move v2, v0

    goto :goto_1

    :pswitch_1
    move v2, v1

    goto :goto_1

    :cond_f
    move v2, v0

    goto :goto_2

    :cond_10
    :try_start_1
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/r;->b()V

    goto :goto_3

    :cond_11
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->f()Lcom/purplebrain/adbuddiz/sdk/f/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->d:Lcom/purplebrain/adbuddiz/sdk/a/c;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->d:Lcom/purplebrain/adbuddiz/sdk/a/c;

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->hasHardwareAcceleration()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/a/c;->a(Z)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->d:Lcom/purplebrain/adbuddiz/sdk/a/c;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->h:Lcom/purplebrain/adbuddiz/sdk/a/c$d;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/a/c;->a(Lcom/purplebrain/adbuddiz/sdk/a/c$d;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->d:Lcom/purplebrain/adbuddiz/sdk/a/c;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->i:Lcom/purplebrain/adbuddiz/sdk/a/c$a;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/a/c;->a(Lcom/purplebrain/adbuddiz/sdk/a/c$a;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->d:Lcom/purplebrain/adbuddiz/sdk/a/c;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->j:Lcom/purplebrain/adbuddiz/sdk/a/c$c;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/a/c;->a(Lcom/purplebrain/adbuddiz/sdk/a/c$c;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->d:Lcom/purplebrain/adbuddiz/sdk/a/c;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->k:Lcom/purplebrain/adbuddiz/sdk/a/c$b;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/a/c;->a(Lcom/purplebrain/adbuddiz/sdk/a/c$b;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->d:Lcom/purplebrain/adbuddiz/sdk/a/c;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/a/c;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->e:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->d:Lcom/purplebrain/adbuddiz/sdk/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->d:Lcom/purplebrain/adbuddiz/sdk/a/c;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/a/c;->x()V

    :cond_0
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->a:Z

    :cond_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->e:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->e:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->a(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->e:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdBuddizActivity.onDestroy"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    const-string v1, "AdBuddizActivity.onDestroy() Exception : "

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->d:Lcom/purplebrain/adbuddiz/sdk/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->d:Lcom/purplebrain/adbuddiz/sdk/a/c;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/a/c;->o()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdBuddizActivity.onRestart"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    const-string v1, "AdBuddizActivity.onRestart() Exception : "

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    :try_start_0
    const-string v0, "hasImpressionBeenSent"

    iget-boolean v1, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->g:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->d:Lcom/purplebrain/adbuddiz/sdk/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->d:Lcom/purplebrain/adbuddiz/sdk/a/c;

    invoke-virtual {v0, p1}, Lcom/purplebrain/adbuddiz/sdk/a/c;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdBuddizActivity.onSaveInstanceState"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    const-string v1, "AdBuddizActivity.onSaveInstanceState() Exception : "

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->d:Lcom/purplebrain/adbuddiz/sdk/a/c;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/a/c;->m()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdBuddizActivity.onStart"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    const-string v1, "AdBuddizActivity.onStart() Exception : "

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->d:Lcom/purplebrain/adbuddiz/sdk/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->d:Lcom/purplebrain/adbuddiz/sdk/a/c;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/a/c;->w()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdBuddizActivity.onStop"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    const-string v1, "AdBuddizActivity.onStop() Exception : "

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
