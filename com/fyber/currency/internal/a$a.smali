.class final Lcom/fyber/currency/internal/a$a;
.super Ljava/lang/Object;
.source "VirtualCurrencyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/currency/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/currency/internal/a;

.field private b:Ljava/util/Calendar;

.field private c:Lcom/fyber/operations/j$a;


# direct methods
.method private constructor <init>(Lcom/fyber/currency/internal/a;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/fyber/currency/internal/a$a;->a:Lcom/fyber/currency/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fyber/currency/internal/a;B)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/fyber/currency/internal/a$a;-><init>(Lcom/fyber/currency/internal/a;)V

    return-void
.end method

.method static synthetic a(Lcom/fyber/currency/internal/a$a;Lcom/fyber/operations/j$a;)Lcom/fyber/operations/j$a;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/fyber/currency/internal/a$a;->c:Lcom/fyber/operations/j$a;

    return-object p1
.end method

.method static synthetic a(Lcom/fyber/currency/internal/a$a;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fyber/currency/internal/a$a;->b:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic a(Lcom/fyber/currency/internal/a$a;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/fyber/currency/internal/a$a;->b:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic b(Lcom/fyber/currency/internal/a$a;)Lcom/fyber/operations/j$a;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fyber/currency/internal/a$a;->c:Lcom/fyber/operations/j$a;

    return-object v0
.end method
