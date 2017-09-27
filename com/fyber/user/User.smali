.class public final Lcom/fyber/user/User;
.super Ljava/util/HashMap;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final g:Lcom/fyber/user/User;

.field private static final serialVersionUID:J = -0x52c2441d1c31ead6L


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/location/Location;

.field private e:Landroid/location/Location;

.field private f:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/fyber/user/User;

    invoke-direct {v0}, Lcom/fyber/user/User;-><init>()V

    sput-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/user/User;->b:Z

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fyber/user/User;->c:Ljava/util/Set;

    .line 73
    iget-object v0, p0, Lcom/fyber/user/User;->c:Ljava/util/Set;

    const-string v1, "age"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/fyber/user/User;->c:Ljava/util/Set;

    const-string v1, "birthdate"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/fyber/user/User;->c:Ljava/util/Set;

    const-string v1, "gender"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/fyber/user/User;->c:Ljava/util/Set;

    const-string v1, "sexual_orientation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/fyber/user/User;->c:Ljava/util/Set;

    const-string v1, "ethnicity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/fyber/user/User;->c:Ljava/util/Set;

    const-string v1, "lat"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/fyber/user/User;->c:Ljava/util/Set;

    const-string v1, "longt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/fyber/user/User;->c:Ljava/util/Set;

    const-string v1, "marital_status"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/fyber/user/User;->c:Ljava/util/Set;

    const-string v1, "children"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/fyber/user/User;->c:Ljava/util/Set;

    const-string v1, "annual_household_income"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/fyber/user/User;->c:Ljava/util/Set;

    const-string v1, "education"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/fyber/user/User;->c:Ljava/util/Set;

    const-string v1, "zipcode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/fyber/user/User;->c:Ljava/util/Set;

    const-string v1, "interests"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/fyber/user/User;->c:Ljava/util/Set;

    const-string v1, "iap"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/fyber/user/User;->c:Ljava/util/Set;

    const-string v1, "iap_amount"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/fyber/user/User;->c:Ljava/util/Set;

    const-string v1, "number_of_sessions"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/fyber/user/User;->c:Ljava/util/Set;

    const-string v1, "ps_time"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/fyber/user/User;->c:Ljava/util/Set;

    const-string v1, "last_session"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/fyber/user/User;->c:Ljava/util/Set;

    const-string v1, "connection"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/fyber/user/User;->c:Ljava/util/Set;

    const-string v1, "device"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/fyber/user/User;->c:Ljava/util/Set;

    const-string v1, "app_version"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 453
    if-eqz p1, :cond_0

    .line 454
    const-string v0, "lat"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 3449
    invoke-static {v2, v3, v4}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v1

    .line 454
    invoke-virtual {p0, v0, v1}, Lcom/fyber/user/User;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    const-string v0, "longt"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 4449
    invoke-static {v2, v3, v4}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-virtual {p0, v0, v1}, Lcom/fyber/user/User;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :goto_0
    return-void

    .line 457
    :cond_0
    const-string v0, "lat"

    invoke-virtual {p0, v0}, Lcom/fyber/user/User;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const-string v0, "longt"

    invoke-virtual {p0, v0}, Lcom/fyber/user/User;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static addCustomValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 325
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    iget-object v0, v0, Lcom/fyber/user/User;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    invoke-virtual {v0, p0, p1}, Lcom/fyber/user/User;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    const-string v0, "User"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is a reserved key for this HashMap, please select another name."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAge()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 100
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "age"

    invoke-virtual {v0, v1}, Lcom/fyber/user/User;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getAnnualHouseholdIncome()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 189
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "annual_household_income"

    invoke-virtual {v0, v1}, Lcom/fyber/user/User;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 313
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "app_version"

    invoke-virtual {v0, v1}, Lcom/fyber/user/User;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getBirthdate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "birthdate"

    invoke-virtual {v0, v1}, Lcom/fyber/user/User;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public static getConnection()Lcom/fyber/user/UserConnection;
    .locals 2

    .prologue
    .line 290
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "connection"

    invoke-virtual {v0, v1}, Lcom/fyber/user/User;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/user/UserConnection;

    return-object v0
.end method

.method public static getCustomValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 338
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    invoke-virtual {v0, p0}, Lcom/fyber/user/User;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 2

    .prologue
    .line 302
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "device"

    invoke-virtual {v0, v1}, Lcom/fyber/user/User;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getEducation()Lcom/fyber/user/UserEducation;
    .locals 2

    .prologue
    .line 200
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "education"

    invoke-virtual {v0, v1}, Lcom/fyber/user/User;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/user/UserEducation;

    return-object v0
.end method

.method public static getEthnicity()Lcom/fyber/user/UserEthnicity;
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "ethnicity"

    invoke-virtual {v0, v1}, Lcom/fyber/user/User;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/user/UserEthnicity;

    return-object v0
.end method

.method public static getGender()Lcom/fyber/user/UserGender;
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "gender"

    invoke-virtual {v0, v1}, Lcom/fyber/user/User;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/user/UserGender;

    return-object v0
.end method

.method public static getIap()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 234
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "iap"

    invoke-virtual {v0, v1}, Lcom/fyber/user/User;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getIapAmount()Ljava/lang/Float;
    .locals 2

    .prologue
    .line 245
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "iap_amount"

    invoke-virtual {v0, v1}, Lcom/fyber/user/User;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public static getInterests()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "interests"

    invoke-virtual {v0, v1}, Lcom/fyber/user/User;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getLastSession()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 279
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "last_session"

    invoke-virtual {v0, v1}, Lcom/fyber/user/User;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public static getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    iget-object v0, v0, Lcom/fyber/user/User;->d:Landroid/location/Location;

    return-object v0
.end method

.method public static getMaritalStatus()Lcom/fyber/user/UserMaritalStatus;
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "marital_status"

    invoke-virtual {v0, v1}, Lcom/fyber/user/User;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/user/UserMaritalStatus;

    return-object v0
.end method

.method public static getNumberOfChildrens()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "children"

    invoke-virtual {v0, v1}, Lcom/fyber/user/User;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getNumberOfSessions()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 256
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "number_of_sessions"

    invoke-virtual {v0, v1}, Lcom/fyber/user/User;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getPsTime()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 267
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "ps_time"

    invoke-virtual {v0, v1}, Lcom/fyber/user/User;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public static getSexualOrientation()Lcom/fyber/user/UserSexualOrientation;
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "sexual_orientation"

    invoke-virtual {v0, v1}, Lcom/fyber/user/User;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/user/UserSexualOrientation;

    return-object v0
.end method

.method public static getZipcode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "zipcode"

    invoke-virtual {v0, v1}, Lcom/fyber/user/User;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static mapToString()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 346
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    iget-boolean v0, v0, Lcom/fyber/user/User;->b:Z

    if-eqz v0, :cond_9

    .line 347
    const-string v0, "User"

    const-string v1, "User data has changed, recreating..."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v1, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    .line 1372
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->a()Lcom/fyber/utils/h;

    move-result-object v0

    .line 1373
    if-eqz v0, :cond_4

    .line 1374
    invoke-virtual {v0}, Lcom/fyber/utils/h;->e()Landroid/location/LocationManager;

    move-result-object v2

    .line 1375
    iget-object v3, v1, Lcom/fyber/user/User;->d:Landroid/location/Location;

    if-nez v3, :cond_4

    if-eqz v2, :cond_4

    .line 1376
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1377
    iget-object v4, v1, Lcom/fyber/user/User;->f:Ljava/util/Calendar;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/fyber/user/User;->f:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1379
    :cond_0
    invoke-virtual {v0}, Lcom/fyber/utils/h;->f()Ljava/util/List;

    move-result-object v0

    .line 1380
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1381
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 1382
    if-eqz v0, :cond_1

    .line 1383
    iget-object v5, v1, Lcom/fyber/user/User;->e:Landroid/location/Location;

    if-nez v5, :cond_2

    .line 1384
    iput-object v0, v1, Lcom/fyber/user/User;->e:Landroid/location/Location;

    .line 1386
    :cond_2
    iget-object v5, v1, Lcom/fyber/user/User;->e:Landroid/location/Location;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/fyber/user/User;->e:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 1387
    iput-object v0, v1, Lcom/fyber/user/User;->e:Landroid/location/Location;

    goto :goto_0

    .line 1391
    :cond_3
    iget-object v0, v1, Lcom/fyber/user/User;->e:Landroid/location/Location;

    if-eqz v0, :cond_4

    .line 1393
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1394
    const/4 v2, 0x5

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 1395
    iget-object v2, v1, Lcom/fyber/user/User;->e:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    .line 1396
    iget-object v0, v1, Lcom/fyber/user/User;->e:Landroid/location/Location;

    invoke-direct {v1, v0}, Lcom/fyber/user/User;->a(Landroid/location/Location;)V

    .line 1397
    iput-object v3, v1, Lcom/fyber/user/User;->f:Ljava/util/Calendar;

    .line 1398
    iget-object v0, v1, Lcom/fyber/user/User;->f:Ljava/util/Calendar;

    const/16 v1, 0xc

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 351
    :cond_4
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 353
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    invoke-virtual {v0}, Lcom/fyber/user/User;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 354
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1407
    instance-of v4, v1, Ljava/util/Date;

    if-eqz v4, :cond_5

    .line 1408
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "%tY/%tm/%td"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v10

    aput-object v1, v6, v11

    const/4 v7, 0x2

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 354
    :goto_2
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 1409
    :cond_5
    instance-of v4, v1, [Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 1410
    const-string v4, ","

    check-cast v1, [Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1411
    :cond_6
    instance-of v4, v1, Landroid/location/Location;

    if-eqz v4, :cond_7

    .line 1412
    check-cast v1, Landroid/location/Location;

    .line 1413
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "latitude:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 1449
    invoke-static {v6, v7, v10}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v5

    .line 1413
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",longitude:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 2449
    invoke-static {v6, v7, v10}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v5

    .line 1413
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",accuracy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1414
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1416
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 357
    :cond_8
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    sget-object v1, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/fyber/user/User;->a:Ljava/lang/String;

    .line 362
    const-string v0, "User"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FybUSer data - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    iget-object v2, v2, Lcom/fyber/user/User;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    iput-boolean v10, v0, Lcom/fyber/user/User;->b:Z

    .line 367
    :cond_9
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    iget-object v0, v0, Lcom/fyber/user/User;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static setAge(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "age"

    invoke-virtual {v0, v1, p0}, Lcom/fyber/user/User;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public static setAnnualHouseholdIncome(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 193
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "annual_household_income"

    invoke-virtual {v0, v1, p0}, Lcom/fyber/user/User;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 317
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "app_version"

    invoke-virtual {v0, v1, p0}, Lcom/fyber/user/User;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    return-void
.end method

.method public static setBirthdate(Ljava/util/Date;)V
    .locals 2

    .prologue
    .line 115
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "birthdate"

    invoke-virtual {v0, v1, p0}, Lcom/fyber/user/User;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public static setConnection(Lcom/fyber/user/UserConnection;)V
    .locals 2

    .prologue
    .line 294
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "connection"

    invoke-virtual {v0, v1, p0}, Lcom/fyber/user/User;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    return-void
.end method

.method public static setDevice(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 306
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "device"

    invoke-virtual {v0, v1, p0}, Lcom/fyber/user/User;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    return-void
.end method

.method public static setEducation(Lcom/fyber/user/UserEducation;)V
    .locals 2

    .prologue
    .line 204
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "education"

    invoke-virtual {v0, v1, p0}, Lcom/fyber/user/User;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void
.end method

.method public static setEthnicity(Lcom/fyber/user/UserEthnicity;)V
    .locals 2

    .prologue
    .line 148
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "ethnicity"

    invoke-virtual {v0, v1, p0}, Lcom/fyber/user/User;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method public static setGender(Lcom/fyber/user/UserGender;)V
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "gender"

    invoke-virtual {v0, v1, p0}, Lcom/fyber/user/User;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public static setIap(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "iap"

    invoke-virtual {v0, v1, p0}, Lcom/fyber/user/User;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    return-void
.end method

.method public static setIapAmount(Ljava/lang/Float;)V
    .locals 2

    .prologue
    .line 249
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "iap_amount"

    invoke-virtual {v0, v1, p0}, Lcom/fyber/user/User;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    return-void
.end method

.method public static setInterests([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 226
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "interests"

    invoke-virtual {v0, v1, p0}, Lcom/fyber/user/User;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    return-void
.end method

.method public static setLastSession(Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 283
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "last_session"

    invoke-virtual {v0, v1, p0}, Lcom/fyber/user/User;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    return-void
.end method

.method public static setLocation(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    iput-object p0, v0, Lcom/fyber/user/User;->d:Landroid/location/Location;

    .line 160
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    invoke-direct {v0, p0}, Lcom/fyber/user/User;->a(Landroid/location/Location;)V

    .line 161
    return-void
.end method

.method public static setMaritalStatus(Lcom/fyber/user/UserMaritalStatus;)V
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "marital_status"

    invoke-virtual {v0, v1, p0}, Lcom/fyber/user/User;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method

.method public static setNumberOfChildrens(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 182
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "children"

    invoke-virtual {v0, v1, p0}, Lcom/fyber/user/User;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-void
.end method

.method public static setNumberOfSessions(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 260
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "number_of_sessions"

    invoke-virtual {v0, v1, p0}, Lcom/fyber/user/User;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    return-void
.end method

.method public static setPsTime(Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 271
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "ps_time"

    invoke-virtual {v0, v1, p0}, Lcom/fyber/user/User;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    return-void
.end method

.method public static setSexualOrientation(Lcom/fyber/user/UserSexualOrientation;)V
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "sexual_orientation"

    invoke-virtual {v0, v1, p0}, Lcom/fyber/user/User;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public static setZipcode(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 215
    sget-object v0, Lcom/fyber/user/User;->g:Lcom/fyber/user/User;

    const-string v1, "zipcode"

    invoke-virtual {v0, v1, p0}, Lcom/fyber/user/User;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-void
.end method


# virtual methods
.method public final bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/fyber/user/User;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 428
    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 429
    iget-boolean v0, p0, Lcom/fyber/user/User;->b:Z

    if-nez v0, :cond_1

    .line 430
    invoke-virtual {p0, p1}, Lcom/fyber/user/User;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/fyber/user/User;->b:Z

    .line 433
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 435
    :goto_1
    return-object v0

    .line 431
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 435
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 443
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 444
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/fyber/user/User;->b:Z

    .line 445
    return-object v1

    .line 444
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
