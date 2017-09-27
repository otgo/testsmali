.class public final Lcom/purplebrain/adbuddiz/sdk/g/a/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/g/a/c;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x0

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/g/a/c;

    invoke-direct {v2}, Lcom/purplebrain/adbuddiz/sdk/g/a/c;-><init>()V

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/a/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->a:Ljava/lang/String;

    :cond_0
    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->b:Ljava/lang/String;

    :cond_1
    const-string v0, "ABZ-prefs"

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "lat"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v2, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->c:Z

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->b()I

    move-result v0

    iput v0, v2, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->h:I

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, v2, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->i:Ljava/lang/String;

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/a/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/a/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->d:Ljava/lang/String;

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/a/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->e:Ljava/lang/String;

    :cond_2
    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/a/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/a/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->f:Ljava/lang/String;

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/a/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->g:Ljava/lang/String;

    :cond_3
    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/a/p;->a(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, v2, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->j:I

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/a/p;->a(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, v2, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->k:I

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/a/p;->a(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v2, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->l:I

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/a/p;->a(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v2, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->m:F

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/a/m;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_c

    move-object v0, v1

    :goto_2
    iput-object v0, v2, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->n:Ljava/lang/Integer;

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/a/m;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_d

    :goto_3
    iput-object v1, v2, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->o:Ljava/lang/Integer;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->p:Ljava/lang/String;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->q:Ljava/lang/String;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e

    :cond_4
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-eq v3, v5, :cond_e

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :cond_6
    if-eqz v0, :cond_7

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_8

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_8
    iput-object v0, v2, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->r:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    :cond_9
    iput-object v0, v2, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->s:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, v2, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->t:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, v2, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->u:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v0, v2, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->v:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    iput-object v0, v2, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->w:Ljava/lang/String;

    return-object v2

    :cond_a
    const-string v3, "SHA-1"

    invoke-static {v3, v0}, Lcom/purplebrain/adbuddiz/sdk/h/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const-string v3, "SHA-1"

    invoke-static {v3, v0}, Lcom/purplebrain/adbuddiz/sdk/h/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    :cond_d
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_3

    :cond_e
    move-object v0, v1

    goto :goto_4
.end method
