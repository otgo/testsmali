.class public Lcom/fyber/utils/FyberLogger;
.super Ljava/lang/Object;
.source "FyberLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/utils/FyberLogger$Level;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Lcom/fyber/utils/FyberLogger;


# instance fields
.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/fyber/utils/LoggerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fyber/utils/FyberLogger;->a:Z

    .line 124
    new-instance v0, Lcom/fyber/utils/FyberLogger;

    invoke-direct {v0}, Lcom/fyber/utils/FyberLogger;-><init>()V

    sput-object v0, Lcom/fyber/utils/FyberLogger;->b:Lcom/fyber/utils/FyberLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fyber/utils/FyberLogger;->c:Ljava/util/Set;

    .line 129
    return-void
.end method

.method static synthetic a(Lcom/fyber/utils/FyberLogger;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fyber/utils/FyberLogger;->c:Ljava/util/Set;

    return-object v0
.end method

.method private static a()Z
    .locals 2

    .prologue
    .line 121
    sget-boolean v0, Lcom/fyber/utils/FyberLogger;->a:Z

    if-nez v0, :cond_0

    const-string v0, "Fyber"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

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

.method public static addLoggerListener(Lcom/fyber/utils/LoggerListener;)Z
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/fyber/utils/FyberLogger;->b:Lcom/fyber/utils/FyberLogger;

    iget-object v0, v0, Lcom/fyber/utils/FyberLogger;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 84
    invoke-static {}, Lcom/fyber/utils/FyberLogger;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[FYB] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object v0, Lcom/fyber/utils/FyberLogger;->b:Lcom/fyber/utils/FyberLogger;

    sget-object v1, Lcom/fyber/utils/FyberLogger$Level;->DEBUG:Lcom/fyber/utils/FyberLogger$Level;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/fyber/utils/FyberLogger;->log(Lcom/fyber/utils/FyberLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 88
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 70
    invoke-static {}, Lcom/fyber/utils/FyberLogger;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[FYB] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object v0, Lcom/fyber/utils/FyberLogger;->b:Lcom/fyber/utils/FyberLogger;

    sget-object v1, Lcom/fyber/utils/FyberLogger$Level;->ERROR:Lcom/fyber/utils/FyberLogger$Level;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/fyber/utils/FyberLogger;->log(Lcom/fyber/utils/FyberLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 74
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lcom/fyber/utils/FyberLogger;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[FYB] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    sget-object v0, Lcom/fyber/utils/FyberLogger;->b:Lcom/fyber/utils/FyberLogger;

    sget-object v1, Lcom/fyber/utils/FyberLogger$Level;->ERROR:Lcom/fyber/utils/FyberLogger$Level;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/fyber/utils/FyberLogger;->log(Lcom/fyber/utils/FyberLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 81
    :cond_0
    return-void
.end method

.method public static enableLogging(Z)Z
    .locals 0

    .prologue
    .line 65
    .line 66
    sput-boolean p0, Lcom/fyber/utils/FyberLogger;->a:Z

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Lcom/fyber/utils/FyberLogger;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[FYB] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v0, Lcom/fyber/utils/FyberLogger;->b:Lcom/fyber/utils/FyberLogger;

    sget-object v1, Lcom/fyber/utils/FyberLogger$Level;->INFO:Lcom/fyber/utils/FyberLogger$Level;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/fyber/utils/FyberLogger;->log(Lcom/fyber/utils/FyberLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 95
    :cond_0
    return-void
.end method

.method public static isLogging()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/fyber/utils/FyberLogger;->a:Z

    return v0
.end method

.method public static removeLoggerListener(Lcom/fyber/utils/LoggerListener;)Z
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/fyber/utils/FyberLogger;->b:Lcom/fyber/utils/FyberLogger;

    iget-object v0, v0, Lcom/fyber/utils/FyberLogger;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static toggleLogging()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/fyber/utils/FyberLogger;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 57
    :goto_0
    sput-boolean v0, Lcom/fyber/utils/FyberLogger;->a:Z

    return v0

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 98
    invoke-static {}, Lcom/fyber/utils/FyberLogger;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[FYB] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v0, Lcom/fyber/utils/FyberLogger;->b:Lcom/fyber/utils/FyberLogger;

    sget-object v1, Lcom/fyber/utils/FyberLogger$Level;->VERBOSE:Lcom/fyber/utils/FyberLogger$Level;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/fyber/utils/FyberLogger;->log(Lcom/fyber/utils/FyberLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 102
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 105
    invoke-static {}, Lcom/fyber/utils/FyberLogger;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[FYB] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v0, Lcom/fyber/utils/FyberLogger;->b:Lcom/fyber/utils/FyberLogger;

    sget-object v1, Lcom/fyber/utils/FyberLogger$Level;->WARNING:Lcom/fyber/utils/FyberLogger$Level;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/fyber/utils/FyberLogger;->log(Lcom/fyber/utils/FyberLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 109
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Lcom/fyber/utils/FyberLogger;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[FYB] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    sget-object v0, Lcom/fyber/utils/FyberLogger;->b:Lcom/fyber/utils/FyberLogger;

    sget-object v1, Lcom/fyber/utils/FyberLogger$Level;->WARNING:Lcom/fyber/utils/FyberLogger$Level;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/fyber/utils/FyberLogger;->log(Lcom/fyber/utils/FyberLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 116
    :cond_0
    return-void
.end method


# virtual methods
.method public log(Lcom/fyber/utils/FyberLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 7

    .prologue
    .line 134
    iget-object v0, p0, Lcom/fyber/utils/FyberLogger;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/fyber/utils/e;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fyber/utils/e;-><init>(Lcom/fyber/utils/FyberLogger;Lcom/fyber/utils/FyberLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 144
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 146
    :cond_0
    return-void
.end method
