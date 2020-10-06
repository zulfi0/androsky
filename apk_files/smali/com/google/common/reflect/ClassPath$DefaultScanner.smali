.class final Lcom/google/common/reflect/ClassPath$DefaultScanner;
.super Lcom/google/common/reflect/ClassPath$Scanner;
.source "ClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/ClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DefaultScanner"
.end annotation


# instance fields
.field private final resources:Lcom/google/common/collect/SetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/SetMultimap<",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 455
    invoke-direct {p0}, Lcom/google/common/reflect/ClassPath$Scanner;-><init>()V

    .line 456
    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->hashKeys()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->linkedHashSetValues()Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;->build()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/ClassPath$DefaultScanner;->resources:Lcom/google/common/collect/SetMultimap;

    return-void
.end method

.method private scanDirectory(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 8
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "classloader"    # Ljava/lang/ClassLoader;
    .param p3, "packagePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 487
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 488
    invoke-static {}, Lcom/google/common/reflect/ClassPath;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot read directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 490
    return-void

    .line 492
    :cond_0
    move-object v1, v0

    .local v1, "arr$":[Ljava/io/File;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 493
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 494
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 495
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, p2, v6}, Lcom/google/common/reflect/ClassPath$DefaultScanner;->scanDirectory(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    goto :goto_1

    .line 497
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 498
    .local v6, "resourceName":Ljava/lang/String;
    const-string v7, "META-INF/MANIFEST.MF"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 499
    iget-object v7, p0, Lcom/google/common/reflect/ClassPath$DefaultScanner;->resources:Lcom/google/common/collect/SetMultimap;

    invoke-interface {v7, p2}, Lcom/google/common/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 492
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "resourceName":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 503
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_3
    return-void
.end method


# virtual methods
.method getResources()Lcom/google/common/collect/ImmutableSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/reflect/ClassPath$ResourceInfo;",
            ">;"
        }
    .end annotation

    .line 460
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 461
    .local v0, "builder":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Lcom/google/common/reflect/ClassPath$ResourceInfo;>;"
    iget-object v1, p0, Lcom/google/common/reflect/ClassPath$DefaultScanner;->resources:Lcom/google/common/collect/SetMultimap;

    invoke-interface {v1}, Lcom/google/common/collect/SetMultimap;->entries()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 462
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ClassLoader;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ClassLoader;

    invoke-static {v3, v4}, Lcom/google/common/reflect/ClassPath$ResourceInfo;->of(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/google/common/reflect/ClassPath$ResourceInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 463
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ClassLoader;Ljava/lang/String;>;"
    goto :goto_0

    .line 464
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1
.end method

.method protected scanDirectory(Ljava/lang/ClassLoader;Ljava/io/File;)V
    .locals 1
    .param p1, "classloader"    # Ljava/lang/ClassLoader;
    .param p2, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    const-string v0, ""

    invoke-direct {p0, p2, p1, v0}, Lcom/google/common/reflect/ClassPath$DefaultScanner;->scanDirectory(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method protected scanJarFile(Ljava/lang/ClassLoader;Ljava/util/jar/JarFile;)V
    .locals 4
    .param p1, "classloader"    # Ljava/lang/ClassLoader;
    .param p2, "file"    # Ljava/util/jar/JarFile;

    .line 469
    invoke-virtual {p2}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 470
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 471
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    .line 472
    .local v1, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 473
    goto :goto_0

    .line 475
    :cond_1
    iget-object v2, p0, Lcom/google/common/reflect/ClassPath$DefaultScanner;->resources:Lcom/google/common/collect/SetMultimap;

    invoke-interface {v2, p1}, Lcom/google/common/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 476
    .end local v1    # "entry":Ljava/util/jar/JarEntry;
    goto :goto_0

    .line 477
    :cond_2
    return-void
.end method
