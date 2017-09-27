.class public abstract enum Lorg/reflections/vfs/Vfs$DefaultUrlTypes;
.super Ljava/lang/Enum;
.source "Vfs.java"

# interfaces
.implements Lorg/reflections/vfs/Vfs$UrlType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reflections/vfs/Vfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "DefaultUrlTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/reflections/vfs/Vfs$DefaultUrlTypes;",
        ">;",
        "Lorg/reflections/vfs/Vfs$UrlType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

.field public static final enum bundle:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

.field public static final enum directory:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

.field public static final enum jarFile:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

.field public static final enum jarInputStream:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

.field public static final enum jarUrl:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

.field public static final enum jboss_vfs:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

.field public static final enum jboss_vfsfile:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 206
    new-instance v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$1;

    const-string v1, "jarFile"

    invoke-direct {v0, v1, v3}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->jarFile:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    .line 216
    new-instance v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$2;

    const-string v1, "jarUrl"

    invoke-direct {v0, v1, v4}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->jarUrl:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    .line 236
    new-instance v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$3;

    const-string v1, "directory"

    invoke-direct {v0, v1, v5}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->directory:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    .line 247
    new-instance v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$4;

    const-string v1, "jboss_vfs"

    invoke-direct {v0, v1, v6}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->jboss_vfs:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    .line 263
    new-instance v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$5;

    const-string v1, "jboss_vfsfile"

    invoke-direct {v0, v1, v7}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->jboss_vfsfile:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    .line 273
    new-instance v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$6;

    const-string v1, "bundle"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->bundle:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    .line 284
    new-instance v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$7;

    const-string v1, "jarInputStream"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->jarInputStream:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    .line 205
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    sget-object v1, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->jarFile:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    aput-object v1, v0, v3

    sget-object v1, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->jarUrl:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    aput-object v1, v0, v4

    sget-object v1, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->directory:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    aput-object v1, v0, v5

    sget-object v1, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->jboss_vfs:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    aput-object v1, v0, v6

    sget-object v1, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->jboss_vfsfile:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->bundle:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->jarInputStream:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    aput-object v2, v0, v1

    sput-object v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->$VALUES:[Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/reflections/vfs/Vfs$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/reflections/vfs/Vfs$1;

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/reflections/vfs/Vfs$DefaultUrlTypes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 205
    const-class v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    return-object v0
.end method

.method public static values()[Lorg/reflections/vfs/Vfs$DefaultUrlTypes;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->$VALUES:[Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    invoke-virtual {v0}, [Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    return-object v0
.end method
