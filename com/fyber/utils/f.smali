.class public final Lcom/fyber/utils/f;
.super Ljava/lang/Object;
.source "FyberPersistence.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "FyberPersistence"

    sput-object v0, Lcom/fyber/utils/f;->a:Ljava/lang/String;

    .line 21
    const-string v0, "SponsorPayPublisherState"

    sput-object v0, Lcom/fyber/utils/f;->b:Ljava/lang/String;

    .line 23
    const-string v0, "ConfigurationRequester"

    sput-object v0, Lcom/fyber/utils/f;->c:Ljava/lang/String;

    .line 24
    const-string v0, "MediationConfigurationNetworkOperation"

    sput-object v0, Lcom/fyber/utils/f;->d:Ljava/lang/String;

    .line 27
    const-string v0, "SPVideoCache"

    sput-object v0, Lcom/fyber/utils/f;->e:Ljava/lang/String;

    .line 28
    const-string v0, "VideoCache"

    sput-object v0, Lcom/fyber/utils/f;->f:Ljava/lang/String;

    .line 31
    const-string v0, "SponsorPayCookiePrefsFile"

    sput-object v0, Lcom/fyber/utils/f;->g:Ljava/lang/String;

    .line 32
    const-string v0, "FyberCookiePrefsFile"

    sput-object v0, Lcom/fyber/utils/f;->h:Ljava/lang/String;

    .line 35
    const-string v0, "SPStatistics"

    sput-object v0, Lcom/fyber/utils/f;->i:Ljava/lang/String;

    .line 36
    const-string v0, "FyberStatistics"

    sput-object v0, Lcom/fyber/utils/f;->j:Ljava/lang/String;

    .line 39
    const-string v0, "SPCacheStorage"

    sput-object v0, Lcom/fyber/utils/f;->k:Ljava/lang/String;

    .line 40
    const-string v0, "CacheStorage"

    sput-object v0, Lcom/fyber/utils/f;->l:Ljava/lang/String;

    .line 43
    const-string v0, "SponsorPayAdvertiserState"

    sput-object v0, Lcom/fyber/utils/f;->m:Ljava/lang/String;

    .line 44
    const-string v0, "AdvertiserAnswerReceived"

    sput-object v0, Lcom/fyber/utils/f;->n:Ljava/lang/String;

    .line 47
    const-string v0, "SponsorPayAdvertiserState"

    sput-object v0, Lcom/fyber/utils/f;->o:Ljava/lang/String;

    .line 48
    const-string v0, "FyberPreferences"

    sput-object v0, Lcom/fyber/utils/f;->p:Ljava/lang/String;

    .line 51
    const-string v0, "successfulMigration"

    sput-object v0, Lcom/fyber/utils/f;->q:Ljava/lang/String;

    .line 52
    const-string v0, "migration"

    sput-object v0, Lcom/fyber/utils/f;->r:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 79
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 81
    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 82
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 83
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 4108
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4109
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 4110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4137
    sget-object v2, Lcom/fyber/utils/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4138
    sget-object v2, Lcom/fyber/utils/f;->m:Ljava/lang/String;

    sget-object v7, Lcom/fyber/utils/f;->n:Ljava/lang/String;

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 4112
    :goto_1
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 4113
    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 4141
    goto :goto_1

    .line 4115
    :cond_2
    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 4116
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v5, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 4118
    :cond_3
    instance-of v0, v1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 4119
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {v5, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 4121
    :cond_4
    instance-of v0, v1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 4122
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v5, v2, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 4124
    :cond_5
    instance-of v0, v1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 4125
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v5, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 4130
    :cond_6
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4133
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shared_prefs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 89
    sget-object v0, Lcom/fyber/utils/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SharedPreferences "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", have been deleted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_8
    return-object v4
.end method

.method public static a(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 57
    sget-object v2, Lcom/fyber/utils/f;->r:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 59
    sget-object v3, Lcom/fyber/utils/f;->q:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 61
    if-nez v3, :cond_4

    .line 62
    sget-object v3, Lcom/fyber/utils/f;->c:Ljava/lang/String;

    sget-object v4, Lcom/fyber/utils/f;->d:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/fyber/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    .line 63
    sget-object v3, Lcom/fyber/utils/f;->i:Ljava/lang/String;

    sget-object v4, Lcom/fyber/utils/f;->j:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/fyber/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    .line 64
    sget-object v3, Lcom/fyber/utils/f;->b:Ljava/lang/String;

    const-string v4, "FyberPreferences"

    invoke-static {p0, v3, v4}, Lcom/fyber/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    .line 65
    sget-object v3, Lcom/fyber/utils/f;->g:Ljava/lang/String;

    sget-object v4, Lcom/fyber/utils/f;->h:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/fyber/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    .line 66
    sget-object v3, Lcom/fyber/utils/f;->o:Ljava/lang/String;

    sget-object v4, Lcom/fyber/utils/f;->p:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/fyber/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    .line 1097
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    sget-object v5, Lcom/fyber/utils/f;->l:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1098
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    sget-object v6, Lcom/fyber/utils/f;->k:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1101
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1102
    sget-object v3, Lcom/fyber/utils/f;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "File:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has been successfully renamed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    :cond_0
    sget-object v3, Lcom/fyber/utils/f;->a:Ljava/lang/String;

    const-string v4, "Checking previous cache directory"

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 2152
    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1157
    if-eqz v3, :cond_5

    .line 3146
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 1157
    :cond_1
    if-eqz v0, :cond_5

    .line 1158
    sget-object v0, Lcom/fyber/utils/f;->a:Ljava/lang/String;

    const-string v3, "External write storage permission granted"

    invoke-static {v0, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1161
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 1162
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/fyber/utils/f;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1163
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1164
    sget-object v0, Lcom/fyber/utils/f;->a:Ljava/lang/String;

    const-string v3, "Application cache directory exists, deleting..."

    invoke-static {v0, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    invoke-static {v4}, Lcom/fyber/utils/f;->a(Ljava/io/File;)V

    .line 1166
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1169
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1170
    if-eqz v0, :cond_3

    array-length v0, v0

    if-nez v0, :cond_3

    .line 1171
    sget-object v0, Lcom/fyber/utils/f;->a:Ljava/lang/String;

    const-string v3, "Cache directory empty, deleting..."

    invoke-static {v0, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 72
    :cond_3
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/fyber/utils/f;->q:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    :cond_4
    return-void

    .line 1176
    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    sget-object v4, Lcom/fyber/utils/f;->f:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1177
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1178
    sget-object v3, Lcom/fyber/utils/f;->a:Ljava/lang/String;

    const-string v4, "Internal cache directory exists, deleting..."

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    invoke-static {v0}, Lcom/fyber/utils/f;->a(Ljava/io/File;)V

    .line 1180
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private static a(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 187
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_0

    .line 190
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 191
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_0
    return-void
.end method
