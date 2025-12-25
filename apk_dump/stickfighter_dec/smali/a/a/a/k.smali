.class final La/a/a/k;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/util/List;


# instance fields
.field a:Ljava/lang/Object;

.field b:La/a/a/p;

.field c:La/a/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, La/a/a/k;->d:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;La/a/a/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/k;->a:Ljava/lang/Object;

    iput-object p2, p0, La/a/a/k;->b:La/a/a/p;

    return-void
.end method

.method static a(La/a/a/p;Ljava/lang/Object;)La/a/a/k;
    .locals 3

    sget-object v1, La/a/a/k;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, La/a/a/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v2, La/a/a/k;->d:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/k;

    iput-object p1, v0, La/a/a/k;->a:Ljava/lang/Object;

    iput-object p0, v0, La/a/a/k;->b:La/a/a/p;

    const/4 v2, 0x0

    iput-object v2, v0, La/a/a/k;->c:La/a/a/k;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, La/a/a/k;

    invoke-direct {v0, p1, p0}, La/a/a/k;-><init>(Ljava/lang/Object;La/a/a/p;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static a(La/a/a/k;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/k;->a:Ljava/lang/Object;

    iput-object v0, p0, La/a/a/k;->b:La/a/a/p;

    iput-object v0, p0, La/a/a/k;->c:La/a/a/k;

    sget-object v1, La/a/a/k;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, La/a/a/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_0

    sget-object v0, La/a/a/k;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
