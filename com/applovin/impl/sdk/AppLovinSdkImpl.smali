.class public Lcom/applovin/impl/sdk/AppLovinSdkImpl;
.super Lcom/applovin/sdk/AppLovinSdk;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/applovin/sdk/AppLovinSdkSettings;

.field private c:Landroid/content/Context;

.field private d:Lcom/applovin/sdk/AppLovinLogger;

.field private e:Lcom/applovin/impl/sdk/cq;

.field private f:Lcom/applovin/impl/sdk/bz;

.field private g:Lcom/applovin/impl/sdk/o;

.field private h:Lcom/applovin/impl/sdk/cb;

.field private i:Lcom/applovin/impl/sdk/y;

.field private j:Lcom/applovin/impl/sdk/b;

.field private k:Lcom/applovin/impl/sdk/bb;

.field private l:Lcom/applovin/impl/sdk/r;

.field private m:Lcom/applovin/impl/sdk/m;

.field private n:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

.field private o:Lcom/applovin/impl/sdk/bd;

.field private p:Lcom/applovin/impl/sdk/PostbackServiceImpl;

.field private q:Lcom/applovin/impl/sdk/EventServiceImpl;

.field private r:Lcom/applovin/impl/sdk/bm;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/applovin/sdk/AppLovinSdk;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->s:Z

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->t:Z

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->u:Z

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->v:Z

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->w:Z

    return-void
.end method

.method private static h()Z
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "2.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()Lcom/applovin/impl/sdk/cq;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->e:Lcom/applovin/impl/sdk/cq;

    return-object v0
.end method

.method a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/applovin/sdk/AppLovinSdkSettings;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->s:Z

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->e:Lcom/applovin/impl/sdk/cq;

    new-instance v1, Lcom/applovin/impl/sdk/cp;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/sdk/cp;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Lcom/applovin/sdk/AppLovinSdkSettings;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/cq;->a(Lcom/applovin/impl/sdk/cp;J)V

    return-void
.end method

.method a(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->s:Z

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->t:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->u:Z

    return-void
.end method

.method b()Lcom/applovin/impl/sdk/cb;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->h:Lcom/applovin/impl/sdk/cb;

    return-object v0
.end method

.method c()Lcom/applovin/impl/sdk/b;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->j:Lcom/applovin/impl/sdk/b;

    return-object v0
.end method

.method d()Lcom/applovin/impl/sdk/bb;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->k:Lcom/applovin/impl/sdk/bb;

    return-object v0
.end method

.method e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->s:Z

    return v0
.end method

.method f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->u:Z

    return v0
.end method

.method g()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bz;->d()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bz;->b()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->h:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cb;->a()V

    return-void
.end method

.method public getAdService()Lcom/applovin/sdk/AppLovinAdService;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->n:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c:Landroid/content/Context;

    return-object v0
.end method

.method public getConnectionManager()Lcom/applovin/impl/sdk/o;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g:Lcom/applovin/impl/sdk/o;

    return-object v0
.end method

.method public getDataCollector()Lcom/applovin/impl/sdk/r;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->l:Lcom/applovin/impl/sdk/r;

    return-object v0
.end method

.method public getEventService()Lcom/applovin/sdk/AppLovinEventService;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->q:Lcom/applovin/impl/sdk/EventServiceImpl;

    return-object v0
.end method

.method public getFileManager()Lcom/applovin/impl/sdk/y;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->i:Lcom/applovin/impl/sdk/y;

    return-object v0
.end method

.method public getLogger()Lcom/applovin/sdk/AppLovinLogger;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->d:Lcom/applovin/sdk/AppLovinLogger;

    return-object v0
.end method

.method public getNativeAdService()Lcom/applovin/nativeAds/AppLovinNativeAdService;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->o:Lcom/applovin/impl/sdk/bd;

    return-object v0
.end method

.method public getPersistentPostbackManager()Lcom/applovin/impl/sdk/bm;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->r:Lcom/applovin/impl/sdk/bm;

    return-object v0
.end method

.method public getPostbackService()Lcom/applovin/impl/sdk/PostbackServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->p:Lcom/applovin/impl/sdk/PostbackServiceImpl;

    return-object v0
.end method

.method public bridge synthetic getPostbackService()Lcom/applovin/sdk/AppLovinPostbackService;
    .locals 1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getPostbackService()Lcom/applovin/impl/sdk/PostbackServiceImpl;

    move-result-object v0

    return-object v0
.end method

.method public getSdkKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSettings()Lcom/applovin/sdk/AppLovinSdkSettings;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b:Lcom/applovin/sdk/AppLovinSdkSettings;

    return-object v0
.end method

.method public getSettingsManager()Lcom/applovin/impl/sdk/bz;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/impl/sdk/bz;

    return-object v0
.end method

.method public getTargetingData()Lcom/applovin/sdk/AppLovinTargetingData;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->m:Lcom/applovin/impl/sdk/m;

    return-object v0
.end method

.method public hasCriticalErrors()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->v:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->w:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initialize(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b:Lcom/applovin/sdk/AppLovinSdkSettings;

    iput-object p3, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c:Landroid/content/Context;

    :try_start_0
    new-instance v2, Lcom/applovin/impl/sdk/k;

    invoke-direct {v2}, Lcom/applovin/impl/sdk/k;-><init>()V

    iput-object v2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->d:Lcom/applovin/sdk/AppLovinLogger;

    new-instance v1, Lcom/applovin/impl/sdk/bz;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/bz;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/impl/sdk/bz;

    new-instance v1, Lcom/applovin/impl/sdk/cq;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/cq;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->e:Lcom/applovin/impl/sdk/cq;

    new-instance v1, Lcom/applovin/impl/sdk/o;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/o;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g:Lcom/applovin/impl/sdk/o;

    new-instance v1, Lcom/applovin/impl/sdk/cb;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/cb;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->h:Lcom/applovin/impl/sdk/cb;

    new-instance v1, Lcom/applovin/impl/sdk/y;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/y;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->i:Lcom/applovin/impl/sdk/y;

    new-instance v1, Lcom/applovin/impl/sdk/r;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/r;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->l:Lcom/applovin/impl/sdk/r;

    new-instance v1, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->n:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    new-instance v1, Lcom/applovin/impl/sdk/bd;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/bd;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->o:Lcom/applovin/impl/sdk/bd;

    new-instance v1, Lcom/applovin/impl/sdk/PostbackServiceImpl;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/PostbackServiceImpl;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->p:Lcom/applovin/impl/sdk/PostbackServiceImpl;

    new-instance v1, Lcom/applovin/impl/sdk/EventServiceImpl;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/EventServiceImpl;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->q:Lcom/applovin/impl/sdk/EventServiceImpl;

    new-instance v1, Lcom/applovin/impl/sdk/bm;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/bm;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->r:Lcom/applovin/impl/sdk/bm;

    new-instance v1, Lcom/applovin/impl/sdk/b;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/b;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->j:Lcom/applovin/impl/sdk/b;

    new-instance v1, Lcom/applovin/impl/sdk/bb;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/bb;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->k:Lcom/applovin/impl/sdk/bb;

    new-instance v1, Lcom/applovin/impl/sdk/m;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/m;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->m:Lcom/applovin/impl/sdk/m;

    invoke-static {}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->h()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->v:Z

    const-string v1, "AppLovinSdk"

    const-string v3, "Unable to initalize AppLovin SDK: Android SDK version has to be at least level 8"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_2

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->w:Z

    const-string v1, "AppLovinSdk"

    const-string v3, "Unable to find AppLovin SDK key. Please add     meta-data android:name=\"applovin.sdk.key\" android:value=\"YOUR_SDK_KEY_HERE\" into AndroidManifest.xml."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AppLovinSdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Called with an invalid SDK key from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->hasCriticalErrors()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/sdk/bz;)V

    instance-of v1, p2, Lcom/applovin/impl/sdk/aw;

    if-eqz v1, :cond_3

    move-object v0, p2

    check-cast v0, Lcom/applovin/impl/sdk/aw;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/aw;->a()Lcom/applovin/impl/sdk/l;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/sdk/l;)V

    :cond_3
    invoke-virtual {p0, p2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/sdk/AppLovinSdkSettings;)V

    :goto_0
    return-void

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AppLovinSdk"

    const-string v3, "Failed to load AppLovin SDK, ad serving will be disabled"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v6}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Z)V

    goto :goto_0
.end method

.method public initializeSdk()V
    .locals 0

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->t:Z

    return v0
.end method

.method public setPluginVersion(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No version specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->F:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bz;->b()V

    return-void
.end method
