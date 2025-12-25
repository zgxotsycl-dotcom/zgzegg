.class public final Lcom/google/android/gms/b/pv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# direct methods
.method static synthetic a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/b/pv;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/py;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/b/py;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/google/android/gms/b/py;->g()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/b/qd;)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/px;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/b/px;-><init>(Landroid/content/Context;Lcom/google/android/gms/b/qd;)V

    invoke-virtual {v0}, Lcom/google/android/gms/b/px;->g()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/pw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/b/pw;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/b/pw;->g()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "admob"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/google/android/gms/b/qd;)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/pz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/b/pz;-><init>(Landroid/content/Context;Lcom/google/android/gms/b/qd;)V

    invoke-virtual {v0}, Lcom/google/android/gms/b/pz;->g()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Z)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/qa;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/b/qa;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/b/qa;->g()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lcom/google/android/gms/b/qd;)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/qb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/b/qb;-><init>(Landroid/content/Context;Lcom/google/android/gms/b/qd;)V

    invoke-virtual {v0}, Lcom/google/android/gms/b/qb;->g()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
