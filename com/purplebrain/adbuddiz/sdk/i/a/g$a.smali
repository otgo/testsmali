.class public final Lcom/purplebrain/adbuddiz/sdk/i/a/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/i/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/i/a/g$a;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/purplebrain/adbuddiz/sdk/i/a/g$a;->b:Z

    return-void
.end method
