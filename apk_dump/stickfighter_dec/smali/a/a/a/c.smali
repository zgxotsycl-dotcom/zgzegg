.class public La/a/a/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field static volatile b:La/a/a/c;

.field private static final c:La/a/a/g;

.field private static final d:Ljava/util/Map;


# instance fields
.field private final e:Ljava/util/Map;

.field private final f:Ljava/util/Map;

.field private final g:Ljava/util/Map;

.field private final h:Ljava/lang/ThreadLocal;

.field private final i:La/a/a/i;

.field private final j:La/a/a/b;

.field private final k:La/a/a/a;

.field private final l:La/a/a/o;

.field private final m:Ljava/util/concurrent/ExecutorService;

.field private final n:Z

.field private final o:Z

.field private final p:Z

.field private final q:Z

.field private final r:Z

.field private final s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Event"

    sput-object v0, La/a/a/c;->a:Ljava/lang/String;

    new-instance v0, La/a/a/g;

    invoke-direct {v0}, La/a/a/g;-><init>()V

    sput-object v0, La/a/a/c;->c:La/a/a/g;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/a/c;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, La/a/a/c;->c:La/a/a/g;

    invoke-direct {p0, v0}, La/a/a/c;-><init>(La/a/a/g;)V

    return-void
.end method

.method constructor <init>(La/a/a/g;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/a/a/d;

    invoke-direct {v0, p0}, La/a/a/d;-><init>(La/a/a/c;)V

    iput-object v0, p0, La/a/a/c;->h:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/a/a/c;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/a/a/c;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, La/a/a/c;->g:Ljava/util/Map;

    new-instance v0, La/a/a/i;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, p0, v1, v2}, La/a/a/i;-><init>(La/a/a/c;Landroid/os/Looper;I)V

    iput-object v0, p0, La/a/a/c;->i:La/a/a/i;

    new-instance v0, La/a/a/b;

    invoke-direct {v0, p0}, La/a/a/b;-><init>(La/a/a/c;)V

    iput-object v0, p0, La/a/a/c;->j:La/a/a/b;

    new-instance v0, La/a/a/a;

    invoke-direct {v0, p0}, La/a/a/a;-><init>(La/a/a/c;)V

    iput-object v0, p0, La/a/a/c;->k:La/a/a/a;

    new-instance v0, La/a/a/o;

    iget-object v1, p1, La/a/a/g;->h:Ljava/util/List;

    invoke-direct {v0, v1}, La/a/a/o;-><init>(Ljava/util/List;)V

    iput-object v0, p0, La/a/a/c;->l:La/a/a/o;

    iget-boolean v0, p1, La/a/a/g;->a:Z

    iput-boolean v0, p0, La/a/a/c;->o:Z

    iget-boolean v0, p1, La/a/a/g;->b:Z

    iput-boolean v0, p0, La/a/a/c;->p:Z

    iget-boolean v0, p1, La/a/a/g;->c:Z

    iput-boolean v0, p0, La/a/a/c;->q:Z

    iget-boolean v0, p1, La/a/a/g;->d:Z

    iput-boolean v0, p0, La/a/a/c;->r:Z

    iget-boolean v0, p1, La/a/a/g;->e:Z

    iput-boolean v0, p0, La/a/a/c;->n:Z

    iget-boolean v0, p1, La/a/a/g;->f:Z

    iput-boolean v0, p0, La/a/a/c;->s:Z

    iget-object v0, p1, La/a/a/g;->g:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, La/a/a/c;->m:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()La/a/a/c;
    .locals 2

    sget-object v0, La/a/a/c;->b:La/a/a/c;

    if-nez v0, :cond_1

    const-class v1, La/a/a/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, La/a/a/c;->b:La/a/a/c;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/c;

    invoke-direct {v0}, La/a/a/c;-><init>()V

    sput-object v0, La/a/a/c;->b:La/a/a/c;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, La/a/a/c;->b:La/a/a/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/Class;)Ljava/util/List;
    .locals 4

    sget-object v2, La/a/a/c;->d:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    sget-object v0, La/a/a/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v0, v3}, La/a/a/c;->a(Ljava/util/List;[Ljava/lang/Class;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, La/a/a/c;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(La/a/a/p;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    instance-of v0, p2, La/a/a/m;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, La/a/a/c;->o:Z

    if-eqz v0, :cond_0

    sget-object v0, La/a/a/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubscriberExceptionEvent subscriber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, La/a/a/p;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " threw an exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    check-cast p2, La/a/a/m;

    sget-object v0, La/a/a/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initial event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, La/a/a/m;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " caused exception in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, La/a/a/m;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, La/a/a/m;->b:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, La/a/a/c;->n:Z

    if-eqz v0, :cond_2

    new-instance v0, La/a/a/h;

    const-string v1, "Invoking subscriber failed"

    invoke-direct {v0, v1, p3}, La/a/a/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, La/a/a/c;->o:Z

    if-eqz v0, :cond_3

    sget-object v0, La/a/a/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not dispatch event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to subscribing class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, La/a/a/p;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget-boolean v0, p0, La/a/a/c;->q:Z

    if-eqz v0, :cond_0

    new-instance v0, La/a/a/m;

    iget-object v1, p1, La/a/a/p;->a:Ljava/lang/Object;

    invoke-direct {v0, p0, p3, p2, v1}, La/a/a/m;-><init>(La/a/a/c;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, La/a/a/c;->c(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(La/a/a/p;Ljava/lang/Object;Z)V
    .locals 3

    sget-object v0, La/a/a/e;->a:[I

    iget-object v1, p1, La/a/a/p;->b:La/a/a/n;

    iget-object v1, v1, La/a/a/n;->b:La/a/a/q;

    invoke-virtual {v1}, La/a/a/q;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown thread mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, La/a/a/p;->b:La/a/a/n;

    iget-object v2, v2, La/a/a/n;->b:La/a/a/q;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, La/a/a/c;->a(La/a/a/p;Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_1
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, La/a/a/c;->a(La/a/a/p;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, La/a/a/c;->i:La/a/a/i;

    invoke-virtual {v0, p1, p2}, La/a/a/i;->a(La/a/a/p;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    if-eqz p3, :cond_1

    iget-object v0, p0, La/a/a/c;->j:La/a/a/b;

    invoke-virtual {v0, p1, p2}, La/a/a/b;->a(La/a/a/p;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, La/a/a/c;->a(La/a/a/p;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, La/a/a/c;->k:La/a/a/a;

    invoke-virtual {v0, p1, p2}, La/a/a/a;->a(La/a/a/p;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Ljava/lang/Object;La/a/a/f;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-boolean v1, p0, La/a/a/c;->s:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v3}, La/a/a/c;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v5, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, p1, p2, v0}, La/a/a/c;->a(Ljava/lang/Object;La/a/a/f;Ljava/lang/Class;)Z

    move-result v0

    or-int/2addr v1, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    iget-boolean v0, p0, La/a/a/c;->p:Z

    if-eqz v0, :cond_1

    sget-object v0, La/a/a/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No subscribers registered for event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, La/a/a/c;->r:Z

    if-eqz v0, :cond_2

    const-class v0, La/a/a/j;

    if-eq v3, v0, :cond_2

    const-class v0, La/a/a/m;

    if-eq v3, v0, :cond_2

    new-instance v0, La/a/a/j;

    invoke-direct {v0, p0, p1}, La/a/a/j;-><init>(La/a/a/c;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, La/a/a/c;->c(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, p1, p2, v3}, La/a/a/c;->a(Ljava/lang/Object;La/a/a/f;Ljava/lang/Class;)Z

    move-result v0

    goto :goto_1
.end method

.method private a(Ljava/lang/Object;La/a/a/n;ZI)V
    .locals 8

    const/4 v2, 0x0

    iget-object v4, p2, La/a/a/n;->c:Ljava/lang/Class;

    iget-object v0, p0, La/a/a/c;->e:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, La/a/a/p;

    invoke-direct {v5, p1, p2, p4}, La/a/a/p;-><init>(Ljava/lang/Object;La/a/a/n;I)V

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v1, p0, La/a/a/c;->e:Ljava/util/Map;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    move v3, v2

    :goto_1
    if-gt v3, v6, :cond_1

    if-eq v3, v6, :cond_0

    iget v7, v5, La/a/a/p;->c:I

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/p;

    iget v0, v0, La/a/a/p;->c:I

    if-le v7, v0, :cond_5

    :cond_0
    invoke-virtual {v1, v3, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, La/a/a/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, La/a/a/c;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_3

    iget-object v1, p0, La/a/a/c;->g:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/c;->g:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-direct {p0, v5, v3, v0}, La/a/a/c;->a(La/a/a/p;Ljava/lang/Object;Z)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, La/a/a/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already registered to event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, La/a/a/c;->e:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v4

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/p;

    iget-object v5, v1, La/a/a/p;->a:Ljava/lang/Object;

    if-ne v5, p1, :cond_1

    iput-boolean v4, v1, La/a/a/p;->d:Z

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v2, -0x1

    add-int/lit8 v2, v3, -0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    move v1, v2

    move v2, v3

    goto :goto_1
.end method

.method private declared-synchronized a(Ljava/lang/Object;ZI)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/a/c;->l:La/a/a/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/a/o;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/n;

    invoke-direct {p0, p1, v0, p2, p3}, La/a/a/c;->a(Ljava/lang/Object;La/a/a/n;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method static a(Ljava/util/List;[Ljava/lang/Class;)V
    .locals 4

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, La/a/a/c;->a(Ljava/util/List;[Ljava/lang/Class;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/Object;La/a/a/f;Ljava/lang/Class;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/a/c;->e:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/p;

    iput-object p1, p2, La/a/a/f;->e:Ljava/lang/Object;

    iput-object v0, p2, La/a/a/f;->d:La/a/a/p;

    :try_start_1
    iget-boolean v3, p2, La/a/a/f;->c:Z

    invoke-direct {p0, v0, p1, v3}, La/a/a/c;->a(La/a/a/p;Ljava/lang/Object;Z)V

    iget-boolean v0, p2, La/a/a/f;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object v4, p2, La/a/a/f;->e:Ljava/lang/Object;

    iput-object v4, p2, La/a/a/f;->d:La/a/a/p;

    iput-boolean v1, p2, La/a/a/f;->f:Z

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    iput-object v4, p2, La/a/a/f;->e:Ljava/lang/Object;

    iput-object v4, p2, La/a/a/f;->d:La/a/a/p;

    iput-boolean v1, p2, La/a/a/f;->f:Z

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method a(La/a/a/k;)V
    .locals 3

    iget-object v0, p1, La/a/a/k;->a:Ljava/lang/Object;

    iget-object v1, p1, La/a/a/k;->b:La/a/a/p;

    invoke-static {p1}, La/a/a/k;->a(La/a/a/k;)V

    iget-boolean v2, v1, La/a/a/p;->d:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, v0}, La/a/a/c;->a(La/a/a/p;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method a(La/a/a/p;Ljava/lang/Object;)V
    .locals 4

    :try_start_0
    iget-object v0, p1, La/a/a/p;->b:La/a/a/n;

    iget-object v0, v0, La/a/a/n;->a:Ljava/lang/reflect/Method;

    iget-object v1, p1, La/a/a/p;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, La/a/a/c;->a(La/a/a/p;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, La/a/a/c;->a(Ljava/lang/Object;ZI)V

    return-void
.end method

.method b()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, La/a/a/c;->m:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public declared-synchronized b(Ljava/lang/Object;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/a/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, La/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, La/a/a/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    sget-object v0, La/a/a/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber to unregister was not registered before: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, La/a/a/c;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/f;

    iget-object v4, v0, La/a/a/f;->a:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v1, v0, La/a/a/f;->b:Z

    if-nez v1, :cond_3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v1, v5, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, La/a/a/f;->c:Z

    iput-boolean v2, v0, La/a/a/f;->b:Z

    iget-boolean v1, v0, La/a/a/f;->f:Z

    if-eqz v1, :cond_1

    new-instance v0, La/a/a/h;

    const-string v1, "Internal error. Abort state was not reset"

    invoke-direct {v0, v1}, La/a/a/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, v0}, La/a/a/c;->a(Ljava/lang/Object;La/a/a/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    iput-boolean v3, v0, La/a/a/f;->b:Z

    iput-boolean v3, v0, La/a/a/f;->c:Z

    throw v1

    :cond_2
    iput-boolean v3, v0, La/a/a/f;->b:Z

    iput-boolean v3, v0, La/a/a/f;->c:Z

    :cond_3
    return-void
.end method
