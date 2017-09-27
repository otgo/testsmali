.class Lcom/chartboost/sdk/Chartboost$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Chartboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1152
    invoke-direct {p0}, Lcom/chartboost/sdk/Chartboost$a;->a()Lcom/chartboost/sdk/a;

    move-result-object v2

    .line 1153
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->o()Lcom/chartboost/sdk/CBImpressionActivity;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/chartboost/sdk/Chartboost$a;->a:I

    .line 1154
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/chartboost/sdk/Chartboost$a;->b:I

    .line 1155
    if-nez v2, :cond_2

    :goto_2
    iput v1, p0, Lcom/chartboost/sdk/Chartboost$a;->c:I

    .line 1156
    return-void

    .line 1153
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->o()Lcom/chartboost/sdk/CBImpressionActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 1154
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/k;->hashCode()I

    move-result v0

    goto :goto_1

    .line 1155
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/Chartboost$1;)V
    .locals 0

    .prologue
    .line 1144
    invoke-direct {p0}, Lcom/chartboost/sdk/Chartboost$a;-><init>()V

    return-void
.end method

.method private a()Lcom/chartboost/sdk/a;
    .locals 1

    .prologue
    .line 1148
    invoke-static {}, Lcom/chartboost/sdk/b;->g()Lcom/chartboost/sdk/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1159
    invoke-direct {p0}, Lcom/chartboost/sdk/Chartboost$a;->a()Lcom/chartboost/sdk/a;

    move-result-object v0

    .line 1160
    invoke-static {}, Lcom/chartboost/sdk/b;->y()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1161
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->clearCache()V

    .line 1162
    :cond_0
    sget-object v1, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/k;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/chartboost/sdk/Chartboost$a;->b:I

    if-ne v1, v2, :cond_1

    .line 1163
    sput-object v3, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    .line 1164
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->o()Lcom/chartboost/sdk/CBImpressionActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->o()Lcom/chartboost/sdk/CBImpressionActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/chartboost/sdk/Chartboost$a;->a:I

    if-ne v1, v2, :cond_2

    .line 1165
    invoke-static {v3}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/CBImpressionActivity;)Lcom/chartboost/sdk/CBImpressionActivity;

    .line 1166
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/chartboost/sdk/Chartboost$a;->c:I

    if-ne v0, v1, :cond_3

    .line 1167
    invoke-static {v3}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/a;)V

    .line 1168
    :cond_3
    return-void
.end method
