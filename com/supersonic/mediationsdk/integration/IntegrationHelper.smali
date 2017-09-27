.class public Lcom/supersonic/mediationsdk/integration/IntegrationHelper;
.super Ljava/lang/Object;
.source "IntegrationHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IntegrationHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static validateActivities(Landroid/app/Activity;Ljava/util/List;)Z
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "activities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 188
    const/4 v7, 0x1

    .line 190
    .local v7, "result":Z
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 191
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    const-string v8, "IntegrationHelper"

    const-string v9, "*** Activities ***"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    .local v0, "act":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 196
    .local v5, "localClass":Ljava/lang/Class;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x10000

    invoke-virtual {v6, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 200
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 201
    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "localClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const/4 v7, 0x0

    .line 208
    invoke-static {v0, v10}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V

    goto :goto_0

    .line 203
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5    # "localClass":Ljava/lang/Class;
    :cond_0
    const/4 v7, 0x0

    .line 204
    const/4 v8, 0x0

    :try_start_1
    invoke-static {v0, v8}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 212
    .end local v0    # "act":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "localClass":Ljava/lang/Class;
    :cond_1
    return v7
.end method

.method private static validateAdapter(Ljava/lang/String;)Z
    .locals 5
    .param p0, "adapter"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v2, 0x0

    .line 161
    .local v2, "result":Z
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 163
    .local v1, "localClass":Ljava/lang/Class;
    const/4 v2, 0x1

    .line 164
    const-string v3, "Adapter"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v1    # "localClass":Ljava/lang/Class;
    :goto_0
    return v2

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "Adapter"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static validateBroadcastReceivers(Landroid/app/Activity;Ljava/util/List;)Z
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 254
    const/4 v7, 0x1

    .line 256
    .local v7, "result":Z
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 257
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    const-string v8, "IntegrationHelper"

    const-string v9, "*** Broadcast Receivers ***"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 261
    .local v0, "broadcastReceiver":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 262
    .local v5, "localClass":Ljava/lang/Class;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x10000

    invoke-virtual {v6, v3, v8}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 266
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 267
    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "localClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const/4 v7, 0x0

    .line 274
    invoke-static {v0, v10}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V

    goto :goto_0

    .line 269
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5    # "localClass":Ljava/lang/Class;
    :cond_0
    const/4 v7, 0x0

    .line 270
    const/4 v8, 0x0

    :try_start_1
    invoke-static {v0, v8}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 278
    .end local v0    # "broadcastReceiver":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "localClass":Ljava/lang/Class;
    :cond_1
    return v7
.end method

.method private static validateExternalLibraries(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "externalLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v4, 0x1

    .line 237
    .local v4, "result":Z
    const-string v5, "IntegrationHelper"

    const-string v6, "*** External Libraries ***"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 241
    .local v1, "externalLibrary":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 243
    .local v3, "localClass":Ljava/lang/Class;
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    .end local v3    # "localClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v4, 0x0

    .line 246
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V

    goto :goto_0

    .line 250
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v1    # "externalLibrary":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return v4
.end method

.method private static validateGooglePlayServices(Landroid/app/Activity;)V
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v9, 0x0

    .line 137
    const-string v5, "com.google.android.gms.version"

    .line 138
    .local v5, "mGooglePlayServicesMetaData":Ljava/lang/String;
    const-string v4, "Google Play Services"

    .line 141
    .local v4, "mGooglePlayServices":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 143
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 144
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 146
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v7, "com.google.android.gms.version"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    .line 148
    .local v3, "exists":Z
    if-eqz v3, :cond_0

    .line 149
    const-string v7, "Google Play Services"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V

    .line 155
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "exists":Z
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 151
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "exists":Z
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    const-string v7, "Google Play Services"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "exists":Z
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 153
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "Google Play Services"

    invoke-static {v7, v9}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static validateIntegration(Landroid/app/Activity;)V
    .locals 46
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 23
    const-string v35, "Supersonic"

    .line 24
    .local v35, "supersonic":Ljava/lang/String;
    const-string v17, "AdColony"

    .line 25
    .local v17, "adcolony":Ljava/lang/String;
    const-string v19, "AppLovin"

    .line 26
    .local v19, "applovin":Ljava/lang/String;
    const-string v20, "Chartboost"

    .line 27
    .local v20, "chartboost":Ljava/lang/String;
    const-string v22, "Flurry"

    .line 28
    .local v22, "flurry":Ljava/lang/String;
    const-string v27, "HyprMX"

    .line 29
    .local v27, "hyprmx":Ljava/lang/String;
    const-string v34, "NativeX"

    .line 30
    .local v34, "nativex":Ljava/lang/String;
    const-string v38, "UnityAds"

    .line 31
    .local v38, "unityads":Ljava/lang/String;
    const-string v40, "Vungle"

    .line 32
    .local v40, "vungle":Ljava/lang/String;
    const-string v31, "InMobi"

    .line 34
    .local v31, "inmobi":Ljava/lang/String;
    const/16 v43, 0x3

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v45, v43, v44

    const/16 v44, 0x1

    const-string v45, "android.permission.INTERNET"

    aput-object v45, v43, v44

    const/16 v44, 0x2

    const-string v45, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v45, v43, v44

    invoke-static/range {v43 .. v43}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    .line 35
    .local v24, "generalPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "android.permission.VIBRATE"

    aput-object v45, v43, v44

    invoke-static/range {v43 .. v43}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 37
    .local v15, "adColonyPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v43, 0x3

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "com.supersonicads.sdk.controller.ControllerActivity"

    aput-object v45, v43, v44

    const/16 v44, 0x1

    const-string v45, "com.supersonicads.sdk.controller.InterstitialActivity"

    aput-object v45, v43, v44

    const/16 v44, 0x2

    const-string v45, "com.supersonicads.sdk.controller.OpenUrlActivity"

    aput-object v45, v43, v44

    invoke-static/range {v43 .. v43}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    .line 38
    .local v36, "supersonicActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v43, 0x3

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "com.jirbo.adcolony.AdColonyOverlay"

    aput-object v45, v43, v44

    const/16 v44, 0x1

    const-string v45, "com.jirbo.adcolony.AdColonyFullscreen"

    aput-object v45, v43, v44

    const/16 v44, 0x2

    const-string v45, "com.jirbo.adcolony.AdColonyBrowser"

    aput-object v45, v43, v44

    invoke-static/range {v43 .. v43}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 39
    .local v14, "adColonyActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "com.applovin.adview.AppLovinInterstitialActivity"

    aput-object v45, v43, v44

    const/16 v44, 0x1

    const-string v45, "com.applovin.adview.AppLovinConfirmationActivity"

    aput-object v45, v43, v44

    invoke-static/range {v43 .. v43}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    .line 40
    .local v18, "appLovinActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "com.chartboost.sdk.CBImpressionActivity"

    aput-object v45, v43, v44

    invoke-static/range {v43 .. v43}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    .line 41
    .local v21, "chartboostActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "com.flurry.android.FlurryFullscreenTakeoverActivity"

    aput-object v45, v43, v44

    invoke-static/range {v43 .. v43}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    .line 42
    .local v23, "flurryActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "com.supersonic.adapters.hyprmx.MediationHMXActivity"

    aput-object v45, v43, v44

    invoke-static/range {v43 .. v43}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    .line 43
    .local v25, "hyprMXActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "com.nativex.monetization.activities.InterstitialActivity"

    aput-object v45, v43, v44

    const/16 v44, 0x1

    const-string v45, "com.nativex.videoplayer.VideoActivity"

    aput-object v45, v43, v44

    invoke-static/range {v43 .. v43}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v32

    .line 44
    .local v32, "nativeXActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "com.vungle.publisher.FullScreenAdActivity"

    aput-object v45, v43, v44

    invoke-static/range {v43 .. v43}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v41

    .line 45
    .local v41, "vungleActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "com.inmobi.rendering.InMobiAdActivity"

    aput-object v45, v43, v44

    invoke-static/range {v43 .. v43}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v29

    .line 47
    .local v29, "inMobiActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "com.inmobi.commons.core.utilities.uid.ImIdShareBroadCastReceiver"

    aput-object v45, v43, v44

    invoke-static/range {v43 .. v43}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v30

    .line 49
    .local v30, "inMobiBroadcastReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v33, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$1;

    invoke-direct/range {v33 .. v33}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$1;-><init>()V

    .line 55
    .local v33, "nativeXExternalLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v42, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$2;

    invoke-direct/range {v42 .. v42}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$2;-><init>()V

    .line 63
    .local v42, "vungleExternalLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v26, "com.hyprmx.android.activities.HyprMXActivity"

    .line 64
    .local v26, "hyprMXSdk":Ljava/lang/String;
    const-string v37, "com.unity3d.ads.android.UnityAds"

    .line 66
    .local v37, "unityAdsSdk":Ljava/lang/String;
    new-instance v4, Lcom/supersonic/mediationsdk/integration/AdapterObject;

    const-string v43, "Supersonic"

    const/16 v44, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v36

    move/from16 v2, v44

    invoke-direct {v4, v0, v1, v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 67
    .local v4, "supersonicAdapter":Lcom/supersonic/mediationsdk/integration/AdapterObject;
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->setPermissions(Ljava/util/List;)V

    .line 68
    new-instance v5, Lcom/supersonic/mediationsdk/integration/AdapterObject;

    const-string v43, "AdColony"

    const/16 v44, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-direct {v5, v0, v14, v1}, Lcom/supersonic/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 69
    .local v5, "adColonyAdapter":Lcom/supersonic/mediationsdk/integration/AdapterObject;
    invoke-virtual {v5, v15}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->setPermissions(Ljava/util/List;)V

    .line 70
    new-instance v6, Lcom/supersonic/mediationsdk/integration/AdapterObject;

    const-string v43, "AppLovin"

    const/16 v44, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v18

    move/from16 v2, v44

    invoke-direct {v6, v0, v1, v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 71
    .local v6, "appLovinAdapter":Lcom/supersonic/mediationsdk/integration/AdapterObject;
    new-instance v7, Lcom/supersonic/mediationsdk/integration/AdapterObject;

    const-string v43, "Chartboost"

    const/16 v44, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v21

    move/from16 v2, v44

    invoke-direct {v7, v0, v1, v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 72
    .local v7, "chartboostAdapter":Lcom/supersonic/mediationsdk/integration/AdapterObject;
    new-instance v8, Lcom/supersonic/mediationsdk/integration/AdapterObject;

    const-string v43, "Flurry"

    const/16 v44, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v23

    move/from16 v2, v44

    invoke-direct {v8, v0, v1, v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 73
    .local v8, "flurryAdapter":Lcom/supersonic/mediationsdk/integration/AdapterObject;
    new-instance v9, Lcom/supersonic/mediationsdk/integration/AdapterObject;

    const-string v43, "HyprMX"

    const/16 v44, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v25

    move/from16 v2, v44

    invoke-direct {v9, v0, v1, v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 74
    .local v9, "hyprMXAdapter":Lcom/supersonic/mediationsdk/integration/AdapterObject;
    const-string v43, "com.hyprmx.android.activities.HyprMXActivity"

    move-object/from16 v0, v43

    invoke-virtual {v9, v0}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->setSdkName(Ljava/lang/String;)V

    .line 75
    new-instance v10, Lcom/supersonic/mediationsdk/integration/AdapterObject;

    const-string v43, "NativeX"

    const/16 v44, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v32

    move/from16 v2, v44

    invoke-direct {v10, v0, v1, v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 76
    .local v10, "nativeXAdapter":Lcom/supersonic/mediationsdk/integration/AdapterObject;
    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->setExternalLibraries(Ljava/util/ArrayList;)V

    .line 77
    new-instance v11, Lcom/supersonic/mediationsdk/integration/AdapterObject;

    const-string v43, "UnityAds"

    const/16 v44, 0x0

    const/16 v45, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-direct {v11, v0, v1, v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 78
    .local v11, "unityAdsAdapter":Lcom/supersonic/mediationsdk/integration/AdapterObject;
    const-string v43, "com.unity3d.ads.android.UnityAds"

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->setSdkName(Ljava/lang/String;)V

    .line 79
    new-instance v12, Lcom/supersonic/mediationsdk/integration/AdapterObject;

    const-string v43, "Vungle"

    const/16 v44, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v41

    move/from16 v2, v44

    invoke-direct {v12, v0, v1, v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 80
    .local v12, "vungleAdapter":Lcom/supersonic/mediationsdk/integration/AdapterObject;
    move-object/from16 v0, v42

    invoke-virtual {v12, v0}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->setExternalLibraries(Ljava/util/ArrayList;)V

    .line 81
    new-instance v13, Lcom/supersonic/mediationsdk/integration/AdapterObject;

    const-string v43, "InMobi"

    const/16 v44, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v29

    move/from16 v2, v44

    invoke-direct {v13, v0, v1, v2}, Lcom/supersonic/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 82
    .local v13, "inMobiAdapter":Lcom/supersonic/mediationsdk/integration/AdapterObject;
    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->setBroadcastReceivers(Ljava/util/List;)V

    .line 84
    new-instance v3, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;

    invoke-direct/range {v3 .. v13}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper$3;-><init>(Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;Lcom/supersonic/mediationsdk/integration/AdapterObject;)V

    .line 99
    .local v3, "adapters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/mediationsdk/integration/AdapterObject;>;"
    const-string v43, "IntegrationHelper"

    const-string v44, "Verifying Integration:"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static/range {p0 .. p0}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validateGooglePlayServices(Landroid/app/Activity;)V

    .line 103
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_7

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/supersonic/mediationsdk/integration/AdapterObject;

    .line 104
    .local v16, "adapterObject":Lcom/supersonic/mediationsdk/integration/AdapterObject;
    const/16 v39, 0x1

    .line 106
    .local v39, "verified":Z
    const-string v43, "IntegrationHelper"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "--------------- "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v16 .. v16}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getName()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " --------------"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual/range {v16 .. v16}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->isAdapter()Z

    move-result v43

    if-eqz v43, :cond_0

    .line 109
    invoke-virtual/range {v16 .. v16}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getAdapterName()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validateAdapter(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_0

    .line 110
    const/16 v39, 0x0

    .line 111
    :cond_0
    if-eqz v39, :cond_5

    .line 112
    invoke-virtual/range {v16 .. v16}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getSdkName()Ljava/lang/String;

    move-result-object v43

    if-eqz v43, :cond_1

    .line 113
    invoke-virtual/range {v16 .. v16}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getSdkName()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validateSdk(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_1

    .line 114
    const/16 v39, 0x0

    .line 115
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getPermissions()Ljava/util/List;

    move-result-object v43

    if-eqz v43, :cond_2

    .line 116
    invoke-virtual/range {v16 .. v16}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getPermissions()Ljava/util/List;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validatePermissions(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v43

    if-nez v43, :cond_2

    .line 117
    const/16 v39, 0x0

    .line 118
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getActivities()Ljava/util/List;

    move-result-object v43

    if-eqz v43, :cond_3

    .line 119
    invoke-virtual/range {v16 .. v16}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getActivities()Ljava/util/List;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validateActivities(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v43

    if-nez v43, :cond_3

    .line 120
    const/16 v39, 0x0

    .line 121
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getExternalLibraries()Ljava/util/ArrayList;

    move-result-object v43

    if-eqz v43, :cond_4

    .line 122
    invoke-virtual/range {v16 .. v16}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getExternalLibraries()Ljava/util/ArrayList;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validateExternalLibraries(Ljava/util/ArrayList;)Z

    move-result v43

    if-nez v43, :cond_4

    .line 123
    const/16 v39, 0x0

    .line 124
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getBroadcastReceivers()Ljava/util/List;

    move-result-object v43

    if-eqz v43, :cond_5

    .line 125
    invoke-virtual/range {v16 .. v16}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getBroadcastReceivers()Ljava/util/List;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validateBroadcastReceivers(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v43

    if-nez v43, :cond_5

    .line 126
    const/16 v39, 0x0

    .line 129
    :cond_5
    if-eqz v39, :cond_6

    .line 130
    const-string v43, "IntegrationHelper"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, ">>>> "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v16 .. v16}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getName()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " - VERIFIED"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 132
    :cond_6
    const-string v43, "IntegrationHelper"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, ">>>> "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v16 .. v16}, Lcom/supersonic/mediationsdk/integration/AdapterObject;->getName()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " - NOT VERIFIED"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 134
    .end local v16    # "adapterObject":Lcom/supersonic/mediationsdk/integration/AdapterObject;
    .end local v39    # "verified":Z
    :cond_7
    return-void
.end method

.method private static validatePermissions(Landroid/app/Activity;Ljava/util/List;)Z
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 218
    .local v4, "result":Z
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 219
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const-string v5, "IntegrationHelper"

    const-string v6, "*** Permissions ***"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 222
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 223
    .local v3, "permissionExists":I
    if-nez v3, :cond_0

    .line 224
    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V

    goto :goto_0

    .line 226
    :cond_0
    const/4 v4, 0x0

    .line 227
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V

    goto :goto_0

    .line 231
    .end local v2    # "permission":Ljava/lang/String;
    .end local v3    # "permissionExists":I
    :cond_1
    return v4
.end method

.method private static validateSdk(Ljava/lang/String;)Z
    .locals 5
    .param p0, "sdkName"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v2, 0x0

    .line 176
    .local v2, "result":Z
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 178
    .local v1, "localClass":Ljava/lang/Class;
    const/4 v2, 0x1

    .line 179
    const-string v3, "SDK"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v1    # "localClass":Ljava/lang/Class;
    :goto_0
    return v2

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "SDK"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/supersonic/mediationsdk/integration/IntegrationHelper;->validationMessage(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static validationMessage(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "paramToValidate"    # Ljava/lang/String;
    .param p1, "successful"    # Z

    .prologue
    .line 282
    if-eqz p1, :cond_0

    .line 283
    const-string v0, "IntegrationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - VERIFIED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_0
    return-void

    .line 285
    :cond_0
    const-string v0, "IntegrationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - MISSING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
