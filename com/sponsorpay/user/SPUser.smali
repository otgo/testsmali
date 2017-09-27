.class public final Lcom/sponsorpay/user/SPUser;
.super Ljava/util/HashMap;
.source "SPUser.java"


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
.field private static final g:Lcom/sponsorpay/user/SPUser;

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
    .line 63
    new-instance v0, Lcom/sponsorpay/user/SPUser;

    invoke-direct {v0}, Lcom/sponsorpay/user/SPUser;-><init>()V

    sput-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/user/SPUser;->b:Z

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/user/SPUser;->c:Ljava/util/Set;

    .line 66
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->c:Ljava/util/Set;

    const-string v1, "age"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->c:Ljava/util/Set;

    const-string v1, "birthdate"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->c:Ljava/util/Set;

    const-string v1, "gender"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->c:Ljava/util/Set;

    const-string v1, "sexual_orientation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->c:Ljava/util/Set;

    const-string v1, "ethnicity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->c:Ljava/util/Set;

    const-string v1, "lat"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->c:Ljava/util/Set;

    const-string v1, "longt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->c:Ljava/util/Set;

    const-string v1, "marital_status"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->c:Ljava/util/Set;

    const-string v1, "children"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->c:Ljava/util/Set;

    const-string v1, "annual_household_income"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->c:Ljava/util/Set;

    const-string v1, "education"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->c:Ljava/util/Set;

    const-string v1, "zipcode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->c:Ljava/util/Set;

    const-string v1, "interests"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->c:Ljava/util/Set;

    const-string v1, "iap"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->c:Ljava/util/Set;

    const-string v1, "iap_amount"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->c:Ljava/util/Set;

    const-string v1, "number_of_sessions"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->c:Ljava/util/Set;

    const-string v1, "ps_time"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->c:Ljava/util/Set;

    const-string v1, "last_session"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->c:Ljava/util/Set;

    const-string v1, "connection"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->c:Ljava/util/Set;

    const-string v1, "device"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/sponsorpay/user/SPUser;->c:Ljava/util/Set;

    const-string v1, "app_version"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 366
    if-eqz p1, :cond_0

    .line 367
    const-string v0, "lat"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3, v4}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v0, "longt"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3, v4}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :goto_0
    return-void

    .line 370
    :cond_0
    const-string v0, "lat"

    invoke-virtual {p0, v0}, Lcom/sponsorpay/user/SPUser;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v0, "longt"

    invoke-virtual {p0, v0}, Lcom/sponsorpay/user/SPUser;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static addCustomValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 255
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    iget-object v0, v0, Lcom/sponsorpay/user/SPUser;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    invoke-virtual {v0, p0, p1}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    const-string v0, "SPUser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is a reserved key for this HashMap, please select another name."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAge()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "age"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getAnnualHouseholdIncome()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "annual_household_income"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "app_version"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getBirthdate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "birthdate"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public static getConnection()Lcom/sponsorpay/user/SPUserConnection;
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "connection"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/user/SPUserConnection;

    return-object v0
.end method

.method public static getCustomValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    invoke-virtual {v0, p0}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "device"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getEducation()Lcom/sponsorpay/user/SPUserEducation;
    .locals 2

    .prologue
    .line 163
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "education"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/user/SPUserEducation;

    return-object v0
.end method

.method public static getEthnicity()Lcom/sponsorpay/user/SPUserEthnicity;
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "ethnicity"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/user/SPUserEthnicity;

    return-object v0
.end method

.method public static getGender()Lcom/sponsorpay/user/SPUserGender;
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "gender"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/user/SPUserGender;

    return-object v0
.end method

.method public static getIap()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 187
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "iap"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getIapAmount()Ljava/lang/Float;
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "iap_amount"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public static getInterests()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "interests"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getLastSession()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 219
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "last_session"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public static getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    iget-object v0, v0, Lcom/sponsorpay/user/SPUser;->d:Landroid/location/Location;

    return-object v0
.end method

.method public static getMaritalStatus()Lcom/sponsorpay/user/SPUserMaritalStatus;
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "marital_status"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/user/SPUserMaritalStatus;

    return-object v0
.end method

.method public static getNumberOfChildrens()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "children"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getNumberOfSessions()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 203
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "number_of_sessions"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getPsTime()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 211
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "ps_time"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public static getSexualOrientation()Lcom/sponsorpay/user/SPUserSexualOrientation;
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "sexual_orientation"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/user/SPUserSexualOrientation;

    return-object v0
.end method

.method public static getZipcode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "zipcode"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static mapToString()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 268
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    iget-boolean v0, v0, Lcom/sponsorpay/user/SPUser;->b:Z

    if-eqz v0, :cond_9

    .line 269
    const-string v0, "SPUser"

    const-string v1, "SPUser data has changed, recreating..."

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-object v1, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    invoke-static {v4}, Lcom/sponsorpay/utils/HostInfo;->getHostInfo(Landroid/content/Context;)Lcom/sponsorpay/utils/HostInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/utils/HostInfo;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v2

    iget-object v0, v1, Lcom/sponsorpay/user/SPUser;->d:Landroid/location/Location;

    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iget-object v0, v1, Lcom/sponsorpay/user/SPUser;->f:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/sponsorpay/user/SPUser;->f:Ljava/util/Calendar;

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-static {v4}, Lcom/sponsorpay/utils/HostInfo;->getHostInfo(Landroid/content/Context;)Lcom/sponsorpay/utils/HostInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/utils/HostInfo;->getLocationProviders()Ljava/util/List;

    move-result-object v0

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

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v5, v1, Lcom/sponsorpay/user/SPUser;->e:Landroid/location/Location;

    if-nez v5, :cond_2

    iput-object v0, v1, Lcom/sponsorpay/user/SPUser;->e:Landroid/location/Location;

    :cond_2
    iget-object v5, v1, Lcom/sponsorpay/user/SPUser;->e:Landroid/location/Location;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/sponsorpay/user/SPUser;->e:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    iput-object v0, v1, Lcom/sponsorpay/user/SPUser;->e:Landroid/location/Location;

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lcom/sponsorpay/user/SPUser;->e:Landroid/location/Location;

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x5

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->add(II)V

    iget-object v2, v1, Lcom/sponsorpay/user/SPUser;->e:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    iget-object v0, v1, Lcom/sponsorpay/user/SPUser;->e:Landroid/location/Location;

    invoke-direct {v1, v0}, Lcom/sponsorpay/user/SPUser;->a(Landroid/location/Location;)V

    iput-object v3, v1, Lcom/sponsorpay/user/SPUser;->f:Ljava/util/Calendar;

    iget-object v0, v1, Lcom/sponsorpay/user/SPUser;->f:Ljava/util/Calendar;

    const/16 v1, 0xc

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 273
    :cond_4
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 275
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    invoke-virtual {v0}, Lcom/sponsorpay/user/SPUser;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 276
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/util/Date;

    if-eqz v4, :cond_5

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "%tY/%tm/%td"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v10

    aput-object v0, v6, v11

    const/4 v7, 0x2

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    :cond_5
    instance-of v4, v0, [Ljava/lang/String;

    if-eqz v4, :cond_6

    const-string v4, ","

    check-cast v0, [Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    instance-of v4, v0, Landroid/location/Location;

    if-eqz v4, :cond_7

    check-cast v0, Landroid/location/Location;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "latitude:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7, v10}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",longitude:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7, v10}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",accuracy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 279
    :cond_8
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    sget-object v1, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sponsorpay/user/SPUser;->a:Ljava/lang/String;

    .line 284
    const-string v0, "SPUser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SPUSer data - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    iget-object v2, v2, Lcom/sponsorpay/user/SPUser;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    iput-boolean v10, v0, Lcom/sponsorpay/user/SPUser;->b:Z

    .line 289
    :cond_9
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    iget-object v0, v0, Lcom/sponsorpay/user/SPUser;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static setAge(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "age"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public static setAnnualHouseholdIncome(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 159
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "annual_household_income"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "app_version"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    return-void
.end method

.method public static setBirthdate(Ljava/util/Date;)V
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "birthdate"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public static setConnection(Lcom/sponsorpay/user/SPUserConnection;)V
    .locals 2

    .prologue
    .line 231
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "connection"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    return-void
.end method

.method public static setDevice(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 239
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "device"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-void
.end method

.method public static setEducation(Lcom/sponsorpay/user/SPUserEducation;)V
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "education"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method

.method public static setEthnicity(Lcom/sponsorpay/user/SPUserEthnicity;)V
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "ethnicity"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public static setGender(Lcom/sponsorpay/user/SPUserGender;)V
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "gender"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public static setIap(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 191
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "iap"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void
.end method

.method public static setIapAmount(Ljava/lang/Float;)V
    .locals 2

    .prologue
    .line 199
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "iap_amount"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return-void
.end method

.method public static setInterests([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 183
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "interests"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-void
.end method

.method public static setLastSession(Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 223
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "last_session"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void
.end method

.method public static setLocation(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    iput-object p0, v0, Lcom/sponsorpay/user/SPUser;->d:Landroid/location/Location;

    .line 135
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    invoke-direct {v0, p0}, Lcom/sponsorpay/user/SPUser;->a(Landroid/location/Location;)V

    .line 136
    return-void
.end method

.method public static setMaritalStatus(Lcom/sponsorpay/user/SPUserMaritalStatus;)V
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "marital_status"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public static setNumberOfChildrens(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 151
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "children"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method public static setNumberOfSessions(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 207
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "number_of_sessions"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method public static setPsTime(Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 215
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "ps_time"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-void
.end method

.method public static setSexualOrientation(Lcom/sponsorpay/user/SPUserSexualOrientation;)V
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "sexual_orientation"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method public static setZipcode(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 175
    sget-object v0, Lcom/sponsorpay/user/SPUser;->g:Lcom/sponsorpay/user/SPUser;

    const-string v1, "zipcode"

    invoke-virtual {v0, v1, p0}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method


# virtual methods
.method public final bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sponsorpay/user/SPUser;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 344
    invoke-static {p1}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 345
    iget-boolean v0, p0, Lcom/sponsorpay/user/SPUser;->b:Z

    if-nez v0, :cond_1

    .line 346
    invoke-virtual {p0, p1}, Lcom/sponsorpay/user/SPUser;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sponsorpay/user/SPUser;->b:Z

    .line 349
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 351
    :goto_1
    return-object v0

    .line 347
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 351
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 356
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 357
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sponsorpay/user/SPUser;->b:Z

    .line 358
    return-object v1

    .line 357
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
