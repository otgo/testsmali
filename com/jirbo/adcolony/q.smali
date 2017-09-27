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
    .line 21
    const-string v0, "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  x          xxxxxxx                          xxxx x                          xxxxx"

    sput-object v0, Lcom/jirbo/adcolony/q;->b:Ljava/lang/String;

    .line 31
    const-string v0, "0123456789ABCDEF"

    sput-object v0, Lcom/jirbo/adcolony/q;->c:Ljava/lang/String;

    .line 32
    const-string v0, "0123456789abcdef"

    sput-object v0, Lcom/jirbo/adcolony/q;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(C)I
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/jirbo/adcolony/q;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 123
    if-ltz v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/q;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 126
    if-gez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 99
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 102
    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    sget-object v4, Lcom/jirbo/adcolony/q;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    const/16 v4, 0x25

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    .line 110
    and-int/lit8 v3, v3, 0xf

    .line 111
    if-ge v4, v6, :cond_1

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    :goto_2
    if-ge v3, v6, :cond_2

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 112
    :cond_1
    add-int/lit8 v4, v4, 0x41

    add-int/lit8 v4, v4, -0xa

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 114
    :cond_2
    add-int/lit8 v3, v3, 0x41

    add-int/lit8 v3, v3, -0xa

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 117
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jirbo/adcolony/q;->a(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static a(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-nez p0, :cond_0

    sget-object p0, Lcom/jirbo/adcolony/a;->P:Landroid/app/Activity;

    .line 44
    :cond_0
    if-nez p0, :cond_2

    .line 46
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "Null Activity"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 55
    :cond_1
    :goto_0
    return v2

    .line 49
    :cond_2
    sget-boolean v0, Lcom/jirbo/adcolony/a;->N:Z

    if-eqz v0, :cond_3

    move v2, v1

    goto :goto_0

    .line 51
    :cond_3
    const-string v0, "connectivity"

    .line 52
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 53
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v1, 0x30

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 135
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_3

    .line 137
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 138
    const/16 v3, 0x25

    if-ne v0, v3, :cond_2

    .line 140
    add-int/lit8 v0, v2, 0x1

    if-ge v0, v5, :cond_0

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v3, v0

    .line 141
    :goto_1
    add-int/lit8 v0, v2, 0x2

    if-ge v0, v5, :cond_1

    add-int/lit8 v0, v2, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 142
    :goto_2
    add-int/lit8 v2, v2, 0x2

    .line 144
    invoke-static {v3}, Lcom/jirbo/adcolony/q;->a(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    invoke-static {v0}, Lcom/jirbo/adcolony/q;->a(C)I

    move-result v0

    or-int/2addr v0, v3

    int-to-char v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v2

    .line 135
    :goto_3
    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    .line 140
    goto :goto_1

    :cond_1
    move v0, v1

    .line 141
    goto :goto_2

    .line 148
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_3

    .line 151
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jirbo/adcolony/q;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static b(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 65
    if-nez p0, :cond_0

    sget-object p0, Lcom/jirbo/adcolony/a;->P:Landroid/app/Activity;

    .line 68
    :cond_0
    if-nez p0, :cond_2

    .line 76
    :cond_1
    :goto_0
    return v1

    .line 69
    :cond_2
    sget-boolean v0, Lcom/jirbo/adcolony/a;->N:Z

    if-nez v0, :cond_1

    .line 71
    const-string v0, "connectivity"

    .line 72
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 73
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 76
    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-lt v0, v2, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method static c()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jirbo/adcolony/q;->c(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static c(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 85
    invoke-static {p0}, Lcom/jirbo/adcolony/q;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/jirbo/adcolony/q;->b(Landroid/app/Activity;)Z

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
    .line 90
    invoke-static {}, Lcom/jirbo/adcolony/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wifi"

    .line 92
    :goto_0
    return-object v0

    .line 91
    :cond_0
    invoke-static {}, Lcom/jirbo/adcolony/q;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cell"

    goto :goto_0

    .line 92
    :cond_1
    const-string v0, "offline"

    goto :goto_0
.end method
