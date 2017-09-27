.class public interface abstract annotation Lcom/fyber/mediation/configs/AppLovinConfigs;
.super Ljava/lang/Object;
.source "AppLovinConfigs.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
    name = "AppLovin"
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/fyber/mediation/configs/AppLovinConfigs;
        setVerboseLogging = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract setVerboseLogging()Z
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "verbose.logging"
    .end annotation
.end method
