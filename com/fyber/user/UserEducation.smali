.class public final enum Lcom/fyber/user/UserEducation;
.super Ljava/lang/Enum;
.source "UserEducation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fyber/user/UserEducation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/fyber/user/UserEducation;

.field public static final enum associates:Lcom/fyber/user/UserEducation;

.field public static final enum bachelors:Lcom/fyber/user/UserEducation;

.field public static final enum doctorate:Lcom/fyber/user/UserEducation;

.field public static final enum high_school:Lcom/fyber/user/UserEducation;

.field public static final enum in_college:Lcom/fyber/user/UserEducation;

.field public static final enum masters:Lcom/fyber/user/UserEducation;

.field public static final enum none:Lcom/fyber/user/UserEducation;

.field public static final enum other:Lcom/fyber/user/UserEducation;

.field public static final enum some_college:Lcom/fyber/user/UserEducation;


# instance fields
.field public final education:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    new-instance v0, Lcom/fyber/user/UserEducation;

    const-string v1, "other"

    const-string v2, "other"

    invoke-direct {v0, v1, v4, v2}, Lcom/fyber/user/UserEducation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/user/UserEducation;->other:Lcom/fyber/user/UserEducation;

    .line 20
    new-instance v0, Lcom/fyber/user/UserEducation;

    const-string v1, "none"

    const-string v2, "none"

    invoke-direct {v0, v1, v5, v2}, Lcom/fyber/user/UserEducation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/user/UserEducation;->none:Lcom/fyber/user/UserEducation;

    .line 24
    new-instance v0, Lcom/fyber/user/UserEducation;

    const-string v1, "high_school"

    const-string v2, "high school"

    invoke-direct {v0, v1, v6, v2}, Lcom/fyber/user/UserEducation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/user/UserEducation;->high_school:Lcom/fyber/user/UserEducation;

    .line 28
    new-instance v0, Lcom/fyber/user/UserEducation;

    const-string v1, "in_college"

    const-string v2, "in college"

    invoke-direct {v0, v1, v7, v2}, Lcom/fyber/user/UserEducation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/user/UserEducation;->in_college:Lcom/fyber/user/UserEducation;

    .line 32
    new-instance v0, Lcom/fyber/user/UserEducation;

    const-string v1, "some_college"

    const-string v2, "some college"

    invoke-direct {v0, v1, v8, v2}, Lcom/fyber/user/UserEducation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/user/UserEducation;->some_college:Lcom/fyber/user/UserEducation;

    .line 36
    new-instance v0, Lcom/fyber/user/UserEducation;

    const-string v1, "associates"

    const/4 v2, 0x5

    const-string v3, "associates"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/user/UserEducation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/user/UserEducation;->associates:Lcom/fyber/user/UserEducation;

    .line 40
    new-instance v0, Lcom/fyber/user/UserEducation;

    const-string v1, "bachelors"

    const/4 v2, 0x6

    const-string v3, "bachelors"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/user/UserEducation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/user/UserEducation;->bachelors:Lcom/fyber/user/UserEducation;

    .line 44
    new-instance v0, Lcom/fyber/user/UserEducation;

    const-string v1, "masters"

    const/4 v2, 0x7

    const-string v3, "masters"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/user/UserEducation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/user/UserEducation;->masters:Lcom/fyber/user/UserEducation;

    .line 48
    new-instance v0, Lcom/fyber/user/UserEducation;

    const-string v1, "doctorate"

    const/16 v2, 0x8

    const-string v3, "doctorate"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/user/UserEducation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/user/UserEducation;->doctorate:Lcom/fyber/user/UserEducation;

    .line 12
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/fyber/user/UserEducation;

    sget-object v1, Lcom/fyber/user/UserEducation;->other:Lcom/fyber/user/UserEducation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fyber/user/UserEducation;->none:Lcom/fyber/user/UserEducation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fyber/user/UserEducation;->high_school:Lcom/fyber/user/UserEducation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fyber/user/UserEducation;->in_college:Lcom/fyber/user/UserEducation;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fyber/user/UserEducation;->some_college:Lcom/fyber/user/UserEducation;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/fyber/user/UserEducation;->associates:Lcom/fyber/user/UserEducation;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fyber/user/UserEducation;->bachelors:Lcom/fyber/user/UserEducation;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fyber/user/UserEducation;->masters:Lcom/fyber/user/UserEducation;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fyber/user/UserEducation;->doctorate:Lcom/fyber/user/UserEducation;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fyber/user/UserEducation;->a:[Lcom/fyber/user/UserEducation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p3, p0, Lcom/fyber/user/UserEducation;->education:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/user/UserEducation;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/fyber/user/UserEducation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fyber/user/UserEducation;

    return-object v0
.end method

.method public static values()[Lcom/fyber/user/UserEducation;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/fyber/user/UserEducation;->a:[Lcom/fyber/user/UserEducation;

    invoke-virtual {v0}, [Lcom/fyber/user/UserEducation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/user/UserEducation;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fyber/user/UserEducation;->education:Ljava/lang/String;

    return-object v0
.end method
