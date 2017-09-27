.class public abstract Ljavassist/CtMember;
.super Ljava/lang/Object;
.source "CtMember.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/CtMember$Cache;
    }
.end annotation


# instance fields
.field protected declaringClass:Ljavassist/CtClass;

.field next:Ljavassist/CtMember;


# direct methods
.method protected constructor <init>(Ljavassist/CtClass;)V
    .locals 1
    .param p1, "clazz"    # Ljavassist/CtClass;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Ljavassist/CtMember;->declaringClass:Ljavassist/CtClass;

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    .line 132
    return-void
.end method


# virtual methods
.method protected abstract extendToString(Ljava/lang/StringBuffer;)V
.end method

.method public abstract getAnnotation(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method public abstract getAnnotations()[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method public abstract getAttribute(Ljava/lang/String;)[B
.end method

.method public abstract getAvailableAnnotations()[Ljava/lang/Object;
.end method

.method public getDeclaringClass()Ljavassist/CtClass;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Ljavassist/CtMember;->declaringClass:Ljavassist/CtClass;

    return-object v0
.end method

.method public abstract getGenericSignature()Ljava/lang/String;
.end method

.method public abstract getModifiers()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSignature()Ljava/lang/String;
.end method

.method public abstract hasAnnotation(Ljava/lang/Class;)Z
.end method

.method nameReplaced()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method final next()Ljavassist/CtMember;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    return-object v0
.end method

.method public abstract setAttribute(Ljava/lang/String;[B)V
.end method

.method public abstract setGenericSignature(Ljava/lang/String;)V
.end method

.method public abstract setModifiers(I)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {p0}, Ljavassist/CtMember;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljavassist/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {p0, v0}, Ljavassist/CtMember;->extendToString(Ljava/lang/StringBuffer;)V

    .line 151
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visibleFrom(Ljavassist/CtClass;)Z
    .locals 7
    .param p1, "clazz"    # Ljavassist/CtClass;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 173
    invoke-virtual {p0}, Ljavassist/CtMember;->getModifiers()I

    move-result v2

    .line 174
    .local v2, "mod":I
    invoke-static {v2}, Ljavassist/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v4

    .line 176
    :cond_1
    invoke-static {v2}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 177
    iget-object v6, p0, Ljavassist/CtMember;->declaringClass:Ljavassist/CtClass;

    if-eq p1, v6, :cond_0

    move v4, v5

    goto :goto_0

    .line 179
    :cond_2
    iget-object v6, p0, Ljavassist/CtMember;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v6}, Ljavassist/CtClass;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "declName":Ljava/lang/String;
    invoke-virtual {p1}, Ljavassist/CtClass;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "fromName":Ljava/lang/String;
    if-nez v0, :cond_4

    .line 183
    if-nez v1, :cond_3

    move v3, v4

    .line 187
    .local v3, "visible":Z
    :goto_1
    if-nez v3, :cond_5

    invoke-static {v2}, Ljavassist/Modifier;->isProtected(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 188
    iget-object v4, p0, Ljavassist/CtMember;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {p1, v4}, Ljavassist/CtClass;->subclassOf(Ljavassist/CtClass;)Z

    move-result v4

    goto :goto_0

    .end local v3    # "visible":Z
    :cond_3
    move v3, v5

    .line 183
    goto :goto_1

    .line 185
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .restart local v3    # "visible":Z
    goto :goto_1

    :cond_5
    move v4, v3

    .line 190
    goto :goto_0
.end method
