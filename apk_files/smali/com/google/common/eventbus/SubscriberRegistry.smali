.class final Lcom/google/common/eventbus/SubscriberRegistry;
.super Ljava/lang/Object;
.source "SubscriberRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/eventbus/SubscriberRegistry$MethodIdentifier;
    }
.end annotation


# static fields
.field private static final flattenHierarchyCache:Lcom/google/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LoadingCache<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private static final subscriberMethodsCache:Lcom/google/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LoadingCache<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final bus:Lcom/google/common/eventbus/EventBus;

.field private final subscribers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/common/eventbus/Subscriber;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 152
    invoke-static {}, Lcom/google/common/cache/CacheBuilder;->newBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->weakKeys()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/common/eventbus/SubscriberRegistry$1;

    invoke-direct {v1}, Lcom/google/common/eventbus/SubscriberRegistry$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->build(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    sput-object v0, Lcom/google/common/eventbus/SubscriberRegistry;->subscriberMethodsCache:Lcom/google/common/cache/LoadingCache;

    .line 209
    invoke-static {}, Lcom/google/common/cache/CacheBuilder;->newBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->weakKeys()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/common/eventbus/SubscriberRegistry$2;

    invoke-direct {v1}, Lcom/google/common/eventbus/SubscriberRegistry$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->build(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    sput-object v0, Lcom/google/common/eventbus/SubscriberRegistry;->flattenHierarchyCache:Lcom/google/common/cache/LoadingCache;

    return-void
.end method

.method constructor <init>(Lcom/google/common/eventbus/EventBus;)V
    .locals 1
    .param p1, "bus"    # Lcom/google/common/eventbus/EventBus;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/eventbus/SubscriberRegistry;->subscribers:Ljava/util/concurrent/ConcurrentMap;

    .line 70
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/eventbus/EventBus;

    iput-object v0, p0, Lcom/google/common/eventbus/SubscriberRegistry;->bus:Lcom/google/common/eventbus/EventBus;

    .line 71
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;

    .line 53
    invoke-static {p0}, Lcom/google/common/eventbus/SubscriberRegistry;->getAnnotatedMethodsNotCached(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private findAllSubscribers(Ljava/lang/Object;)Lcom/google/common/collect/Multimap;
    .locals 7
    .param p1, "listener"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/Multimap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/common/eventbus/Subscriber;",
            ">;"
        }
    .end annotation

    .line 167
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    .line 168
    .local v0, "methodsInListener":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/Class<*>;Lcom/google/common/eventbus/Subscriber;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 169
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/google/common/eventbus/SubscriberRegistry;->getAnnotatedMethods(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 170
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 171
    .local v4, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    aget-object v5, v4, v5

    .line 172
    .local v5, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v6, p0, Lcom/google/common/eventbus/SubscriberRegistry;->bus:Lcom/google/common/eventbus/EventBus;

    invoke-static {v6, p1, v3}, Lcom/google/common/eventbus/Subscriber;->create(Lcom/google/common/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/reflect/Method;)Lcom/google/common/eventbus/Subscriber;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v5    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 174
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method static flattenHierarchy(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 230
    .local p0, "concreteClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    sget-object v0, Lcom/google/common/eventbus/SubscriberRegistry;->flattenHierarchyCache:Lcom/google/common/cache/LoadingCache;

    invoke-interface {v0, p0}, Lcom/google/common/cache/LoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableSet;
    :try_end_0
    .catch Lcom/google/common/util/concurrent/UncheckedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Lcom/google/common/util/concurrent/UncheckedExecutionException;
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/UncheckedExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static getAnnotatedMethods(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 178
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/google/common/eventbus/SubscriberRegistry;->subscriberMethodsCache:Lcom/google/common/cache/LoadingCache;

    invoke-interface {v0, p0}, Lcom/google/common/cache/LoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method private static getAnnotatedMethodsNotCached(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 182
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken;->getTypes()Lcom/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken$TypeSet;->rawTypes()Ljava/util/Set;

    move-result-object v0

    .line 183
    .local v0, "supertypes":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/Class<*>;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 184
    .local v1, "identifiers":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/common/eventbus/SubscriberRegistry$MethodIdentifier;Ljava/lang/reflect/Method;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 185
    .local v3, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .local v4, "arr$":[Ljava/lang/reflect/Method;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 186
    .local v7, "method":Ljava/lang/reflect/Method;
    const-class v8, Lcom/google/common/eventbus/Subscribe;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v8

    if-nez v8, :cond_1

    .line 188
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 189
    .local v8, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v9, v8

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    goto :goto_2

    :cond_0
    const/4 v10, 0x0

    :goto_2
    array-length v9, v8

    const-string v11, "Method %s has @Subscribe annotation but has %s parameters.Subscriber methods must have exactly 1 parameter."

    invoke-static {v10, v11, v7, v9}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;I)V

    .line 196
    new-instance v9, Lcom/google/common/eventbus/SubscriberRegistry$MethodIdentifier;

    invoke-direct {v9, v7}, Lcom/google/common/eventbus/SubscriberRegistry$MethodIdentifier;-><init>(Ljava/lang/reflect/Method;)V

    .line 197
    .local v9, "ident":Lcom/google/common/eventbus/SubscriberRegistry$MethodIdentifier;
    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 198
    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .end local v7    # "method":Ljava/lang/reflect/Method;
    .end local v8    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v9    # "ident":Lcom/google/common/eventbus/SubscriberRegistry$MethodIdentifier;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 202
    .end local v3    # "supertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "arr$":[Ljava/lang/reflect/Method;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_2
    goto :goto_0

    .line 203
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method getSubscribers(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 6
    .param p1, "event"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator<",
            "Lcom/google/common/eventbus/Subscriber;",
            ">;"
        }
    .end annotation

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/eventbus/SubscriberRegistry;->flattenHierarchy(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 132
    .local v0, "eventTypes":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<Ljava/lang/Class<*>;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 135
    .local v1, "subscriberIterators":Ljava/util/List;, "Ljava/util/List<Ljava/util/Iterator<Lcom/google/common/eventbus/Subscriber;>;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 136
    .local v3, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/google/common/eventbus/SubscriberRegistry;->subscribers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 137
    .local v4, "eventSubscribers":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/google/common/eventbus/Subscriber;>;"
    if-eqz v4, :cond_0

    .line 139
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .end local v3    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "eventSubscribers":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/google/common/eventbus/Subscriber;>;"
    :cond_0
    goto :goto_0

    .line 143
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Iterators;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v2

    return-object v2
.end method

.method getSubscribersForTesting(Ljava/lang/Class;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Lcom/google/common/eventbus/Subscriber;",
            ">;"
        }
    .end annotation

    .line 122
    .local p1, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/google/common/eventbus/SubscriberRegistry;->subscribers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method register(Ljava/lang/Object;)V
    .locals 8
    .param p1, "listener"    # Ljava/lang/Object;

    .line 77
    invoke-direct {p0, p1}, Lcom/google/common/eventbus/SubscriberRegistry;->findAllSubscribers(Ljava/lang/Object;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    .line 79
    .local v0, "listenerMethods":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/Class<*>;Lcom/google/common/eventbus/Subscriber;>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 80
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/Collection<Lcom/google/common/eventbus/Subscriber;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 81
    .local v3, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 83
    .local v4, "eventMethodsInListener":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/common/eventbus/Subscriber;>;"
    iget-object v5, p0, Lcom/google/common/eventbus/SubscriberRegistry;->subscribers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 85
    .local v5, "eventSubscribers":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/google/common/eventbus/Subscriber;>;"
    if-nez v5, :cond_0

    .line 86
    new-instance v6, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 87
    .local v6, "newSet":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/google/common/eventbus/Subscriber;>;"
    iget-object v7, p0, Lcom/google/common/eventbus/SubscriberRegistry;->subscribers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v3, v6}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    check-cast v5, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 91
    .end local v6    # "newSet":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/google/common/eventbus/Subscriber;>;"
    :cond_0
    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->addAll(Ljava/util/Collection;)Z

    .line 92
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/Collection<Lcom/google/common/eventbus/Subscriber;>;>;"
    .end local v3    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "eventMethodsInListener":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/common/eventbus/Subscriber;>;"
    .end local v5    # "eventSubscribers":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/google/common/eventbus/Subscriber;>;"
    goto :goto_0

    .line 93
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method unregister(Ljava/lang/Object;)V
    .locals 9
    .param p1, "listener"    # Ljava/lang/Object;

    .line 99
    invoke-direct {p0, p1}, Lcom/google/common/eventbus/SubscriberRegistry;->findAllSubscribers(Ljava/lang/Object;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    .line 101
    .local v0, "listenerMethods":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/Class<*>;Lcom/google/common/eventbus/Subscriber;>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 102
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/Collection<Lcom/google/common/eventbus/Subscriber;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 103
    .local v3, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 105
    .local v4, "listenerMethodsForType":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/common/eventbus/Subscriber;>;"
    iget-object v5, p0, Lcom/google/common/eventbus/SubscriberRegistry;->subscribers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 106
    .local v5, "currentSubscribers":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/google/common/eventbus/Subscriber;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->removeAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 117
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/Collection<Lcom/google/common/eventbus/Subscriber;>;>;"
    .end local v3    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "listenerMethodsForType":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/common/eventbus/Subscriber;>;"
    .end local v5    # "currentSubscribers":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/google/common/eventbus/Subscriber;>;"
    goto :goto_0

    .line 111
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/Collection<Lcom/google/common/eventbus/Subscriber;>;>;"
    .restart local v3    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "listenerMethodsForType":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/common/eventbus/Subscriber;>;"
    .restart local v5    # "currentSubscribers":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/google/common/eventbus/Subscriber;>;"
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "missing event subscriber for an annotated method. Is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " registered?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 118
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/Collection<Lcom/google/common/eventbus/Subscriber;>;>;"
    .end local v3    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "listenerMethodsForType":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/common/eventbus/Subscriber;>;"
    .end local v5    # "currentSubscribers":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/google/common/eventbus/Subscriber;>;"
    :cond_1
    return-void
.end method
