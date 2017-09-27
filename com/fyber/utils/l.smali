.class public final Lcom/fyber/utils/l;
.super Ljava/lang/Object;
.source "IdValidator.java"


# static fields
.field private static a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "^[A-Z0-9_]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fyber/utils/l;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/exceptions/IdException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {p0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Lcom/fyber/exceptions/IdException;

    const-string v1, "An ID cannot be null or empty."

    invoke-direct {v0, v1}, Lcom/fyber/exceptions/IdException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    sget-object v0, Lcom/fyber/utils/l;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    new-instance v0, Lcom/fyber/exceptions/IdException;

    const-string v1, "An ID can only contain uppercase letters, numbers and the _ underscore symbol."

    invoke-direct {v0, v1}, Lcom/fyber/exceptions/IdException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    return-void
.end method
