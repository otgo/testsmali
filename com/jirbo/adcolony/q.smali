.class Lcom/jirbo/adcolony/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1e

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  x          xxxxxxx                          xxxx x                          xxxxx"

    sput-object v0, Lcom/jirbo/adcolony/q;->b:Ljava/lang/String;

    .line 30
    const-string v0, "0123456789ABCDEF"

    sput-object v0, Lcom/jirbo/adcolony/q;->c:Ljava/lang/String;

    .line 31
    const-string v0, "0123456789abcdef"

    sput-object v0, Lcom/jirbo/adcolony/q;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(C)I
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/jirbo/adcolony/q;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 97
    if-ltz v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/q;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 100
    if-gez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 73
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 76
    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    sget-object v4, Lcom/jirbo/adcolony/q;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    const/16 v4, 0x25

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    .line 84
    and-int/lit8 v3, v3, 0xf

    .line 85
    if-ge v4, v6, :cond_1

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    :goto_2
    if-ge v3, v6, :cond_2

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 86
    :cond_1
    add-int/lit8 v4, v4, 0x41

    add-int/lit8 v4, v4, -0xa

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 88
    :cond_2
    add-int/lit8 v3, v3, 0x41

    add-int/lit8 v3, v3, -0xa

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 91
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    sget-boolean v0, Lcom/jirbo/adcolony/a;->E:Z

    if-eqz v0, :cond_1

    move v2, v1

    .line 41
    :cond_0
    :goto_0
    return v2

    .line 36
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/a;->G:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 39
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v1, 0x30

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 109
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_3

    .line 111
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 112
    const/16 v3, 0x25

    if-ne v0, v3, :cond_2

    .line 114
    add-int/lit8 v0, v2, 0x1

    if-ge v0, v5, :cond_0

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v3, v0

    .line 115
    :goto_1
    add-int/lit8 v0, v2, 0x2

    if-ge v0, v5, :cond_1

    add-int/lit8 v0, v2, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 116
    :goto_2
    add-int/lit8 v2, v2, 0x2

    .line 118
    invoke-static {v3}, Lcom/jirbo/adcolony/q;->a(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    invoke-static {v0}, Lcom/jirbo/adcolony/q;->a(C)I

    move-result v0

    or-int/2addr v0, v3

    int-to-char v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v2

    .line 109
    :goto_3
    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    .line 114
    goto :goto_1

    :cond_1
    move v0, v1

    .line 115
    goto :goto_2

    .line 122
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_3

    .line 125
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 46
    sget-boolean v0, Lcom/jirbo/adcolony/a;->E:Z

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v1

    .line 47
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/a;->G:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 50
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 54
    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static c()Z
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/jirbo/adcolony/q;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/q;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/jirbo/adcolony/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wifi"

    .line 66
    :goto_0
    return-object v0

    .line 65
    :cond_0
    invoke-static {}, Lcom/jirbo/adcolony/q;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cell"

    goto :goto_0

    .line 66
    :cond_1
    const-string v0, "offline"

    goto :goto_0
.end method
