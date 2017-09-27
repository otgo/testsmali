.class public Lcom/fyber/Fyber$Settings;
.super Ljava/lang/Object;
.source "Fyber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/Fyber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/Fyber$Settings$UIStringIdentifier;
    }
.end annotation


# static fields
.field public static a:Lcom/fyber/Fyber$Settings;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/fyber/Fyber$Settings$UIStringIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 237
    new-instance v0, Lcom/fyber/Fyber$Settings;

    invoke-direct {v0}, Lcom/fyber/Fyber$Settings;-><init>()V

    sput-object v0, Lcom/fyber/Fyber$Settings;->a:Lcom/fyber/Fyber$Settings;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-boolean v0, p0, Lcom/fyber/Fyber$Settings;->c:Z

    .line 241
    iput-boolean v0, p0, Lcom/fyber/Fyber$Settings;->d:Z

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/Fyber$Settings;->e:Z

    .line 1384
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    .line 1385
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->ERROR_DIALOG_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Error"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->DISMISS_ERROR_DIALOG:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Dismiss"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->GENERIC_ERROR:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "An error happened when performing this operation"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->ERROR_LOADING_OFFERWALL:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "An error happened when loading the offer wall"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->ERROR_LOADING_OFFERWALL_NO_INTERNET_CONNECTION:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "An error happened when loading the offer wall (no internet connection)"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->LOADING_INTERSTITIAL:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Loading..."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->LOADING_OFFERWALL:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Loading..."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->ERROR_PLAY_STORE_UNAVAILABLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "You don\'t have the Google Play Store application on your device to complete App Install offers."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_REWARD_NOTIFICATION:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Thanks! Your reward will be paid out shortly"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->VCS_COINS_NOTIFICATION:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Congratulations! You\'ve earned %.0f %s!"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->VCS_DEFAULT_CURRENCY:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "coins"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Error"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_MESSAGE_DEFAULT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "We\'re sorry, something went wrong. Please try again."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_MESSAGE_OFFLINE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Your Internet connection has been lost. Please try again later."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_BUTTON_TITLE_DISMISS:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Dismiss"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_FORFEIT_DIALOG_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_CLICKTHROUGH_HINT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Tap anywhere to discover more about this ad"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_EXIT_VIDEO_TEXT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Exit Video"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_CLOSE_VIDEO_TEXT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Close Video"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_RESUME_VIDEO_TEXT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Resume Video"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Error"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_MESSAGE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "An error has occurred while trying to load the video"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_LOADING_MESSAGE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Loading..."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/fyber/Fyber$Settings;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/fyber/Fyber$Settings;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/fyber/Fyber$Settings;)Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/fyber/Fyber$Settings;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/fyber/Fyber$Settings;)Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/fyber/Fyber$Settings;->d:Z

    return v0
.end method

.method static synthetic d(Lcom/fyber/Fyber$Settings;)Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/fyber/Fyber$Settings;->c:Z

    return v0
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/Fyber$Settings;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/Fyber$Settings;->b:Ljava/util/Map;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    return-object p0
.end method

.method public addParameters(Ljava/util/Map;)Lcom/fyber/Fyber$Settings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fyber/Fyber$Settings;"
        }
    .end annotation

    .prologue
    .line 303
    invoke-static {p1}, Lcom/fyber/utils/m;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/Fyber$Settings;->b:Ljava/util/Map;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 309
    :cond_1
    return-object p0
.end method

.method public clearParameters()Lcom/fyber/Fyber$Settings;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 340
    :cond_0
    return-object p0
.end method

.method public closeOfferWallOnRedirect(Z)Lcom/fyber/Fyber$Settings;
    .locals 0

    .prologue
    .line 286
    iput-boolean p1, p0, Lcom/fyber/Fyber$Settings;->e:Z

    .line 287
    return-object p0
.end method

.method public getUIString(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public notifyUserOnCompletion(Z)Lcom/fyber/Fyber$Settings;
    .locals 0

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/fyber/Fyber$Settings;->c:Z

    .line 259
    return-object p0
.end method

.method public notifyUserOnReward(Z)Lcom/fyber/Fyber$Settings;
    .locals 0

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/fyber/Fyber$Settings;->d:Z

    .line 273
    return-object p0
.end method

.method public removeParameter(Ljava/lang/String;)Lcom/fyber/Fyber$Settings;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :cond_0
    return-object p0
.end method

.method public setCustomUIString(Lcom/fyber/Fyber$Settings$UIStringIdentifier;ILandroid/content/Context;)V
    .locals 1

    .prologue
    .line 468
    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fyber/Fyber$Settings;->setCustomUIString(Lcom/fyber/Fyber$Settings$UIStringIdentifier;Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public setCustomUIString(Lcom/fyber/Fyber$Settings$UIStringIdentifier;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    return-void
.end method

.method public setCustomUIStrings(Ljava/util/EnumMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/fyber/Fyber$Settings$UIStringIdentifier;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 442
    invoke-virtual {p1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 443
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/fyber/Fyber$Settings;->setCustomUIString(Lcom/fyber/Fyber$Settings$UIStringIdentifier;Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :cond_0
    return-void
.end method

.method public setCustomUIStrings(Ljava/util/EnumMap;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/fyber/Fyber$Settings$UIStringIdentifier;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 455
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0, p2}, Lcom/fyber/Fyber$Settings;->setCustomUIString(Lcom/fyber/Fyber$Settings$UIStringIdentifier;ILandroid/content/Context;)V

    goto :goto_0

    .line 457
    :cond_0
    return-void
.end method
