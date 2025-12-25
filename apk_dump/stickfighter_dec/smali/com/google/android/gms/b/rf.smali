.class public Lcom/google/android/gms/b/rf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/b/rj;

.field private static b:Lcom/google/android/gms/b/tn;

.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/rf;->c:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/b/rg;

    invoke-direct {v0}, Lcom/google/android/gms/b/rg;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/rf;->a:Lcom/google/android/gms/b/rj;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/b/rf;->a(Landroid/content/Context;)Lcom/google/android/gms/b/tn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/b/rf;->b:Lcom/google/android/gms/b/tn;

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/google/android/gms/b/tn;
    .locals 2

    sget-object v1, Lcom/google/android/gms/b/rf;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/b/rf;->b:Lcom/google/android/gms/b/tn;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/d;->a(Landroid/content/Context;)Lcom/google/android/gms/b/tn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/b/rf;->b:Lcom/google/android/gms/b/tn;

    :cond_0
    sget-object v0, Lcom/google/android/gms/b/rf;->b:Lcom/google/android/gms/b/tn;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/android/gms/b/rj;)Lcom/google/android/gms/b/sb;
    .locals 3

    new-instance v0, Lcom/google/android/gms/b/rm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/b/rm;-><init>(Lcom/google/android/gms/b/rf;Lcom/google/android/gms/b/rg;)V

    sget-object v1, Lcom/google/android/gms/b/rf;->b:Lcom/google/android/gms/b/tn;

    new-instance v2, Lcom/google/android/gms/b/rk;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/b/rk;-><init>(Ljava/lang/String;Lcom/google/android/gms/b/rj;Lcom/google/android/gms/b/um;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/b/tn;->a(Lcom/google/android/gms/b/tk;)Lcom/google/android/gms/b/tk;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/b/sb;
    .locals 6

    new-instance v3, Lcom/google/android/gms/b/rm;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/b/rm;-><init>(Lcom/google/android/gms/b/rf;Lcom/google/android/gms/b/rg;)V

    new-instance v4, Lcom/google/android/gms/b/rh;

    invoke-direct {v4, p0, p1, v3}, Lcom/google/android/gms/b/rh;-><init>(Lcom/google/android/gms/b/rf;Ljava/lang/String;Lcom/google/android/gms/b/rm;)V

    new-instance v0, Lcom/google/android/gms/b/ri;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/b/ri;-><init>(Lcom/google/android/gms/b/rf;Ljava/lang/String;Lcom/google/android/gms/b/um;Lcom/google/android/gms/b/ul;Ljava/util/Map;)V

    sget-object v1, Lcom/google/android/gms/b/rf;->b:Lcom/google/android/gms/b/tn;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/b/tn;->a(Lcom/google/android/gms/b/tk;)Lcom/google/android/gms/b/tk;

    return-object v3
.end method
