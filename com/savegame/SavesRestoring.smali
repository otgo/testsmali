.class public final Lcom/savegame/SavesRestoring;
.super Landroid/app/Activity;
.source "SavesRestoring.java"


# static fields
.field private static PdsjdolaSd:I

.field private static daDakdsIID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x0

    sput v0, Lcom/savegame/SavesRestoring;->PdsjdolaSd:I

    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/savegame/SavesRestoring;
    move-object v1, v0

    invoke-direct {v1}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static DoSmth(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "c":Landroid/content/Context;
    move-object v2, v0

    .line 23
    :try_start_0
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/savegame/SavesRestoring;->SmartDataRestoreForYou(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 26
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":savemessages"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 27
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static ExistsInArray([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "arr":[Ljava/lang/String;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    const/4 v3, 0x0

    move v2, v3

    .line 78
    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 79
    move-object v3, v0

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    const/4 v3, 0x1

    move v0, v3

    .line 84
    .end local v0    # "arr":[Ljava/lang/String;
    :goto_1
    return v0

    .line 82
    .restart local v0    # "arr":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method private static FpwuiPToI()Ljava/lang/String;
    .locals 1

    .prologue
    sget v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    const/16 v0, 0x6f

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static JssfIOEl()Ljava/lang/String;
    .locals 1

    .prologue
    sget v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static KFnmUFCihuvEQ()Ljava/lang/String;
    .locals 1

    .prologue
    sget v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static MmwlXgSfDnVeW()Ljava/lang/String;
    .locals 1

    .prologue
    sget v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    const/16 v0, 0x65

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ORxbjeABvhfjG()Ljava/lang/String;
    .locals 1

    .prologue
    sget v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    const/16 v0, 0x79

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static PXUOecYMlTENJ()Ljava/lang/String;
    .locals 1

    .prologue
    sget v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    const/16 v0, 0x73

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static SmartDataRestoreForYou(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "c":Landroid/content/Context;
    move-object v1, p1

    .local v1, "localAssetManager":Landroid/content/res/AssetManager;
    move-object v2, p2

    .local v2, "packageName":Ljava/lang/String;
    move-object v6, v0

    const-string v7, "savegame"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "notfirst"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 141
    :goto_0
    return-void

    .line 91
    :cond_0
    move-object v6, v0

    const-string v7, "savegame"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "notfirst"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v6

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":savemessages"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 93
    move-object v6, v2

    const-string v7, "SmDR: Starting..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 96
    move-object v6, v0

    const-string v7, "savegame"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "notfirst"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v6

    .line 97
    move-object v6, v1

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 98
    .local v4, "listFiles":[Ljava/lang/String;
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move-object v7, v4

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 99
    move-object v6, v2

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ListFiles["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    move v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 98
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 101
    :cond_1
    move-object v6, v4

    const-string v7, "data.save"

    invoke-static {v6, v7}, Lcom/savegame/SavesRestoring;->ExistsInArray([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 102
    move-object v6, v0

    const-string v7, "Hile etkinle\u015ftiriliyor."

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 104
    move-object v6, v2

    :try_start_0
    const-string v7, "data.save : Restoring..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 105
    move-object v6, v1

    const-string v7, "data.save"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/savegame/SavesRestoring;->unZipIt(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 106
    move-object v6, v2

    const-string v7, "data.save: Successfully restored"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 110
    .line 112
    .end local v5    # "i":I
    :cond_2
    :goto_2
    move-object v6, v4

    const-string v7, "extobb.save"

    invoke-static {v6, v7}, Lcom/savegame/SavesRestoring;->ExistsInArray([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 113
    move-object v6, v0

    const-string v7, "Restoring cache..."

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 115
    move-object v6, v2

    :try_start_1
    const-string v7, "extobb.save: Restoring..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 117
    .local v3, "path":Ljava/lang/String;
    move-object v6, v1

    const-string v7, "extobb.save"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    move-object v7, v3

    invoke-static {v6, v7}, Lcom/savegame/SavesRestoring;->unZipIt(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 118
    move-object v6, v2

    const-string v7, "extobb.save: Successfully restored"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 123
    .line 125
    .end local v3    # "path":Ljava/lang/String;
    :cond_3
    :goto_3
    move-object v6, v4

    const-string v7, "extdata.save"

    invoke-static {v6, v7}, Lcom/savegame/SavesRestoring;->ExistsInArray([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 126
    move-object v6, v0

    const-string v7, "Restoring external data..."

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 128
    move-object v6, v2

    :try_start_2
    const-string v7, "extdata.save: Restoring..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/Android/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 130
    .restart local v3    # "path":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v6

    .line 131
    move-object v6, v1

    const-string v7, "extdata.save"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    move-object v7, v3

    invoke-static {v6, v7}, Lcom/savegame/SavesRestoring;->unZipIt(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 132
    move-object v6, v2

    const-string v7, "extdata.save: Successfully restored"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    .line 136
    .line 138
    .end local v3    # "path":Ljava/lang/String;
    :cond_4
    :goto_4
    move-object v6, v2

    const-string v7, "Hile aktif edildi. \u0130yi oyunlar"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 139
    move-object v6, v0

    const-string v7, "Hile aktif edildi. \u0130yi oyunlar"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 107
    .restart local v5    # "i":I
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 108
    .local v5, "e":Ljava/lang/Exception;
    move-object v6, v2

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data.save: Message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 109
    move-object v6, v0

    const-string v7, "Can\'t restore save"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 120
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    move-object v5, v6

    .line 121
    .local v5, "e_2":Ljava/lang/Exception;
    move-object v6, v2

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "extobb.save: Message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 122
    move-object v6, v0

    const-string v7, "Can\'t restore external cache"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 133
    .end local v5    # "e_2":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    move-object v5, v6

    .line 134
    .local v5, "e_3":Ljava/lang/Exception;
    move-object v6, v2

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "extdata.save: Message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 135
    move-object v6, v0

    const-string v7, "Can\'t restore external data"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4
.end method

.method private static UHNpTRhyVuJQ()Ljava/lang/String;
    .locals 1

    .prologue
    sget v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    const/16 v0, 0x73

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static WjPflSa()Ljava/lang/String;
    .locals 1

    .prologue
    sget v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    const/16 v0, 0x79

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static YWVQKrqf()Ljava/lang/String;
    .locals 1

    .prologue
    sget v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    const/16 v0, 0x61

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bNsxvPwhX()Ljava/lang/String;
    .locals 1

    .prologue
    sget v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    const/16 v0, 0x6c

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static idUdiDY()Ljava/lang/String;
    .locals 1

    .prologue
    sget v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    const/16 v0, 0x65

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static jKUHjFhy()Ljava/lang/String;
    .locals 1

    .prologue
    sget v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    const/16 v0, 0x52

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static mbBTWgSYGguo()Ljava/lang/String;
    .locals 1

    .prologue
    sget v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    const/16 v0, 0x73

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static oDDJPHl()Ljava/lang/String;
    .locals 1

    .prologue
    sget v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    const/16 v0, 0x62

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static sQoNEIcF()Ljava/lang/String;
    .locals 1

    .prologue
    sget v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    const/16 v0, 0x65

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static unZipIt(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    move-object/from16 v0, p0

    .local v0, "file":Ljava/io/InputStream;
    move-object/from16 v1, p1

    .local v1, "outputFolder":Ljava/lang/String;
    new-instance v9, Ljava/util/zip/ZipInputStream;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    invoke-direct {v10, v11}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v9

    .line 33
    .local v2, "zipFile":Ljava/util/zip/ZipInputStream;
    sget v9, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    sget v10, Lcom/savegame/SavesRestoring;->PdsjdolaSd:I

    if-eq v9, v10, :cond_0

    .line 34
    new-instance v9, Ljava/lang/Exception;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string v11, "System error..."

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9

    .line 36
    :cond_0
    const/16 v9, 0x400

    new-array v9, v9, [B

    move-object v3, v9

    .line 37
    .local v3, "buffer":[B
    new-instance v9, Ljava/io/File;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v1

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v9

    .line 38
    move-object v9, v2

    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v9

    move-object v4, v9

    .line 39
    .local v4, "ze":Ljava/util/zip/ZipEntry;
    sget v9, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    sget v10, Lcom/savegame/SavesRestoring;->PdsjdolaSd:I

    if-eq v9, v10, :cond_1

    .line 40
    new-instance v9, Ljava/lang/Exception;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string v11, "System error! please don\'t cheat..."

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9

    .line 42
    :cond_1
    :goto_0
    move-object v9, v4

    if-eqz v9, :cond_6

    .line 43
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 44
    move-object v9, v2

    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v9

    move-object v4, v9

    goto :goto_0

    .line 46
    :cond_2
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2f

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    move v5, v9

    .line 47
    .local v5, "index":I
    move v9, v5

    if-gez v9, :cond_3

    const/4 v9, 0x0

    move v5, v9

    .line 48
    :cond_3
    new-instance v9, Ljava/io/File;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v4

    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    move v14, v5

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v9

    .line 49
    new-instance v9, Ljava/io/File;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v4

    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v9

    .line 50
    .local v6, "newFile":Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v6

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v7, v9

    .line 51
    .local v7, "fos":Ljava/io/FileOutputStream;
    sget v9, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    sget v10, Lcom/savegame/SavesRestoring;->PdsjdolaSd:I

    if-eq v9, v10, :cond_5

    .line 52
    move-object v9, v7

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 53
    new-instance v9, Ljava/lang/Exception;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string v11, "You are clever..."

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9

    .line 62
    .local v8, "len":I
    :cond_4
    move-object v9, v7

    move-object v10, v3

    const/4 v11, 0x0

    move v12, v8

    invoke-virtual {v9, v10, v11, v12}, Ljava/io/FileOutputStream;->write([BII)V

    .line 64
    .line 56
    .end local v8    # "len":I
    :cond_5
    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v9

    move v8, v9

    .line 57
    .restart local v8    # "len":I
    move v9, v8

    if-gtz v9, :cond_4

    .line 58
    move-object v9, v7

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 59
    move-object v9, v2

    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v9

    move-object v4, v9

    .line 65
    goto/16 :goto_0

    .line 67
    .end local v5    # "index":I
    .end local v6    # "newFile":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "len":I
    :cond_6
    sget v9, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    sget v10, Lcom/savegame/SavesRestoring;->PdsjdolaSd:I

    if-eq v9, v10, :cond_7

    .line 68
    new-instance v9, Ljava/lang/Exception;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string v11, "And again..."

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9

    .line 70
    :cond_7
    move-object v9, v2

    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 71
    move-object v9, v2

    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V

    .line 74
    return-void
.end method

.method private static wPdauIdcaW(Landroid/content/Context;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    return-void
.end method

.method private static wPdauIdcaW(Landroid/content/Context;I)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "wodDSsau"    # I

    .prologue
    return-void
.end method

.method private static wXlWgpnblvTlQ()Ljava/lang/String;
    .locals 1

    .prologue
    sget v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    const/16 v0, 0x6d

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static wjjYLefoS()Ljava/lang/String;
    .locals 1

    .prologue
    sget v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/savegame/SavesRestoring;->daDakdsIID:I

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
