.class public final Lcom/fyber/currency/internal/a;
.super Ljava/lang/Object;
.source "VirtualCurrencyCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/currency/internal/a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/fyber/currency/VirtualCurrencyErrorResponse;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/currency/internal/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    new-instance v0, Lcom/fyber/currency/VirtualCurrencyErrorResponse;

    sget-object v1, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;->ERROR_OTHER:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    const-string v2, ""

    const-string v3, "Unknown error"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/currency/VirtualCurrencyErrorResponse;-><init>(Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/fyber/currency/internal/a;->a:Lcom/fyber/currency/VirtualCurrencyErrorResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/currency/internal/a;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/operations/j$a;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 29
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1071
    iget-object v1, p0, Lcom/fyber/currency/internal/a;->b:Ljava/util/HashMap;

    .line 1091
    if-eqz p1, :cond_2

    move-object v0, p1

    .line 1071
    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/currency/internal/a$a;

    .line 1072
    if-nez v0, :cond_0

    .line 1073
    new-instance v1, Lcom/fyber/currency/internal/a$a;

    invoke-direct {v1, p0, v4}, Lcom/fyber/currency/internal/a$a;-><init>(Lcom/fyber/currency/internal/a;B)V

    .line 1074
    invoke-static {v1, v2}, Lcom/fyber/currency/internal/a$a;->a(Lcom/fyber/currency/internal/a$a;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1075
    iget-object v3, p0, Lcom/fyber/currency/internal/a;->b:Ljava/util/HashMap;

    .line 2091
    if-eqz p1, :cond_3

    move-object v0, p1

    .line 1075
    :goto_1
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 1077
    :cond_0
    invoke-static {v0}, Lcom/fyber/currency/internal/a$a;->a(Lcom/fyber/currency/internal/a$a;)Ljava/util/Calendar;

    move-result-object v0

    .line 30
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3081
    iget-object v1, p0, Lcom/fyber/currency/internal/a;->b:Ljava/util/HashMap;

    .line 3091
    if-eqz p1, :cond_4

    move-object v0, p1

    .line 3081
    :goto_2
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/currency/internal/a$a;

    .line 3082
    if-nez v0, :cond_1

    .line 3083
    new-instance v0, Lcom/fyber/currency/internal/a$a;

    invoke-direct {v0, p0, v4}, Lcom/fyber/currency/internal/a$a;-><init>(Lcom/fyber/currency/internal/a;B)V

    .line 3084
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/currency/internal/a$a;->a(Lcom/fyber/currency/internal/a$a;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 3085
    iget-object v1, p0, Lcom/fyber/currency/internal/a;->b:Ljava/util/HashMap;

    .line 4091
    if-eqz p1, :cond_5

    .line 3085
    :goto_3
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3087
    :cond_1
    invoke-static {v0}, Lcom/fyber/currency/internal/a$a;->b(Lcom/fyber/currency/internal/a$a;)Lcom/fyber/operations/j$a;

    move-result-object v0

    .line 33
    if-nez v0, :cond_6

    .line 34
    sget-object v0, Lcom/fyber/currency/internal/a;->a:Lcom/fyber/currency/VirtualCurrencyErrorResponse;

    .line 43
    :goto_4
    return-object v0

    :cond_2
    move-object v0, p2

    .line 1091
    goto :goto_0

    :cond_3
    move-object v0, p2

    .line 2091
    goto :goto_1

    :cond_4
    move-object v0, p2

    .line 3091
    goto :goto_2

    :cond_5
    move-object p1, p2

    .line 4091
    goto :goto_3

    .line 36
    :cond_6
    const-string v1, "VCSCache"

    const-string v2, "The VCS was queried less than 15s ago.Replying with cached response"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 40
    :cond_7
    const/16 v0, 0xd

    const/16 v1, 0xf

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 5053
    iget-object v1, p0, Lcom/fyber/currency/internal/a;->b:Ljava/util/HashMap;

    .line 5091
    if-eqz p1, :cond_9

    move-object v0, p1

    .line 5053
    :goto_5
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/currency/internal/a$a;

    .line 5054
    if-nez v0, :cond_8

    .line 5055
    new-instance v0, Lcom/fyber/currency/internal/a$a;

    invoke-direct {v0, p0, v4}, Lcom/fyber/currency/internal/a$a;-><init>(Lcom/fyber/currency/internal/a;B)V

    .line 5056
    iget-object v1, p0, Lcom/fyber/currency/internal/a;->b:Ljava/util/HashMap;

    .line 6091
    if-eqz p1, :cond_a

    .line 5056
    :goto_6
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5058
    :cond_8
    invoke-static {v0, v2}, Lcom/fyber/currency/internal/a$a;->a(Lcom/fyber/currency/internal/a$a;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 43
    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    move-object v0, p2

    .line 5091
    goto :goto_5

    :cond_a
    move-object p1, p2

    .line 6091
    goto :goto_6
.end method

.method public final a(Lcom/fyber/operations/j$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    iget-object v1, p0, Lcom/fyber/currency/internal/a;->b:Ljava/util/HashMap;

    .line 7091
    if-eqz p2, :cond_1

    move-object v0, p2

    .line 62
    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/currency/internal/a$a;

    .line 63
    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/fyber/currency/internal/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fyber/currency/internal/a$a;-><init>(Lcom/fyber/currency/internal/a;B)V

    .line 65
    iget-object v1, p0, Lcom/fyber/currency/internal/a;->b:Ljava/util/HashMap;

    .line 8091
    if-eqz p2, :cond_2

    .line 65
    :goto_1
    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    invoke-static {v0, p1}, Lcom/fyber/currency/internal/a$a;->a(Lcom/fyber/currency/internal/a$a;Lcom/fyber/operations/j$a;)Lcom/fyber/operations/j$a;

    .line 68
    return-void

    :cond_1
    move-object v0, p3

    .line 7091
    goto :goto_0

    :cond_2
    move-object p2, p3

    .line 8091
    goto :goto_1
.end method
