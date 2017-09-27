.class public Lcom/supersonicads/sdk/utils/LocationHelper;
.super Ljava/lang/Object;
.source "LocationHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "bestLocation":Landroid/location/Location;
    const-wide/high16 v2, -0x8000000000000000L

    .line 23
    .local v2, "bestLocationTime":J
    invoke-static {p0}, Lcom/supersonicads/sdk/utils/LocationHelper;->locationPermissionGranted(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_0

    move-object v1, v0

    .line 41
    .end local v0    # "bestLocation":Landroid/location/Location;
    .local v1, "bestLocation":Landroid/location/Location;
    :goto_0
    return-object v1

    .line 28
    .end local v1    # "bestLocation":Landroid/location/Location;
    .restart local v0    # "bestLocation":Landroid/location/Location;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "location"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/LocationManager;

    .line 30
    .local v8, "locationManager":Landroid/location/LocationManager;
    invoke-virtual {v8}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v10

    .line 31
    .local v10, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 32
    .local v9, "provider":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    .line 33
    .local v7, "location":Landroid/location/Location;
    if-eqz v7, :cond_1

    .line 35
    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    .line 36
    .local v4, "currentTime":J
    cmp-long v11, v4, v2

    if-lez v11, :cond_1

    .line 37
    move-object v0, v7

    goto :goto_1

    .end local v4    # "currentTime":J
    .end local v7    # "location":Landroid/location/Location;
    .end local v9    # "provider":Ljava/lang/String;
    :cond_2
    move-object v1, v0

    .line 41
    .end local v0    # "bestLocation":Landroid/location/Location;
    .restart local v1    # "bestLocation":Landroid/location/Location;
    goto :goto_0
.end method

.method private static locationPermissionGranted(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 52
    .local v0, "permission":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 53
    .local v1, "res":I
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
