.class public Lcom/unity3d/ads/android/UnityAdsUtils;
.super Ljava/lang/Object;
.source "UnityAdsUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static final a:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/unity3d/ads/android/UnityAdsUtils;->a:Ljavax/security/auth/x500/X500Principal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 83
    if-nez p0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object v0

    .line 87
    :cond_1
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 92
    :goto_1
    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 96
    invoke-virtual {v1, v0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 97
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 99
    const-string v0, ""

    .line 100
    array-length v4, v3

    move v1, v2

    :goto_2
    if-ge v1, v4, :cond_3

    aget-byte v2, v3, v1

    .line 101
    and-int/lit16 v2, v2, 0xff

    .line 103
    const/16 v5, 0xf

    if-gt v2, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_2

    .line 88
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move-object v1, v0

    goto :goto_1

    .line 108
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static canUseExternalStorage()Z
    .locals 2

    .prologue
    .line 168
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDebuggable()Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 42
    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 43
    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 48
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 49
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    iput v5, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    :goto_0
    move v2, v1

    .line 56
    :goto_1
    if-eqz v2, :cond_1

    .line 58
    const/16 v2, 0x40

    :try_start_1
    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 59
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 61
    array-length v4, v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2

    move v2, v1

    move v1, v0

    :goto_2
    if-ge v2, v4, :cond_3

    :try_start_2
    aget-object v0, v3, v2

    .line 62
    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    .line 63
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 64
    invoke-virtual {v5, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 65
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    sget-object v5, Lcom/unity3d/ads/android/UnityAdsUtils;->a:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v0

    .line 66
    if-nez v0, :cond_1

    .line 67
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2

    :cond_0
    move v0, v1

    .line 78
    :cond_1
    :goto_3
    return v0

    :cond_2
    move v0, v1

    .line 49
    goto :goto_0

    .line 51
    :catch_0
    move-exception v2

    .line 52
    const-string v2, "Could not find name"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    move v2, v0

    move v0, v1

    .line 53
    goto :goto_1

    .line 71
    :catch_1
    move-exception v1

    :goto_4
    const-string v1, "Could not find name"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 74
    :catch_2
    move-exception v1

    :goto_5
    const-string v1, "Certificate exception"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_3

    :catch_3
    move-exception v0

    move v0, v1

    goto :goto_5

    .line 71
    :catch_4
    move-exception v0

    move v0, v1

    goto :goto_4

    :cond_3
    move v0, v1

    goto :goto_3
.end method

.method public static readFile(Ljava/io/File;Z)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 113
    const-string v0, ""

    .line 116
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 121
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    if-eqz p1, :cond_0

    .line 124
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Problem reading file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    move-object v0, v1

    .line 145
    :goto_1
    return-object v0

    .line 133
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 135
    :catch_1
    move-exception v1

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Problem closing reader: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 142
    :cond_2
    const-string v0, "File did not exist or couldn\'t be read"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    move-object v0, v1

    .line 145
    goto :goto_1
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 173
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    cmp-long v1, v2, v2

    if-lez v1, :cond_0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static writeFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 152
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 154
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 155
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrote file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not write file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x0

    goto :goto_0
.end method
