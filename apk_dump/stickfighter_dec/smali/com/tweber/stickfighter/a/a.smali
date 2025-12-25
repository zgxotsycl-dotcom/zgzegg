.class public Lcom/tweber/stickfighter/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tweber/stickfighter/a/a;


# instance fields
.field private b:Lcom/google/android/gms/ads/k;

.field private c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tweber/stickfighter/a/a;->a:Lcom/tweber/stickfighter/a/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tweber/stickfighter/StickFighterApplication;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LastAdShowTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Lcom/google/android/gms/ads/k;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tweber/stickfighter/a/a;->b:Lcom/google/android/gms/ads/k;

    iget-object v0, p0, Lcom/tweber/stickfighter/a/a;->b:Lcom/google/android/gms/ads/k;

    invoke-static {}, Lcom/tweber/stickfighter/StickFighterApplication;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05006f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/k;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/a/a;->b:Lcom/google/android/gms/ads/k;

    new-instance v1, Lcom/tweber/stickfighter/a/b;

    invoke-direct {v1, p0}, Lcom/tweber/stickfighter/a/b;-><init>(Lcom/tweber/stickfighter/a/a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/k;->a(Lcom/google/android/gms/ads/a;)V

    invoke-static {}, Lcom/tweber/stickfighter/StickFighterApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/a/a;->c:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/tweber/stickfighter/a/a;->d()V

    return-void
.end method

.method public static a()Lcom/tweber/stickfighter/a/a;
    .locals 2

    sget-object v0, Lcom/tweber/stickfighter/a/a;->a:Lcom/tweber/stickfighter/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tweber/stickfighter/a/a;

    invoke-static {}, Lcom/tweber/stickfighter/StickFighterApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tweber/stickfighter/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tweber/stickfighter/a/a;->a:Lcom/tweber/stickfighter/a/a;

    :cond_0
    sget-object v0, Lcom/tweber/stickfighter/a/a;->a:Lcom/tweber/stickfighter/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/tweber/stickfighter/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/a/a;->d()V

    return-void
.end method

.method private c()Z
    .locals 6

    invoke-static {}, Lcom/tweber/stickfighter/StickFighterApplication;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "LastAdShowTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v0, v2, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 5

    new-instance v1, Lcom/google/android/gms/ads/f;

    invoke-direct {v1}, Lcom/google/android/gms/ads/f;-><init>()V

    iget-object v2, p0, Lcom/tweber/stickfighter/a/a;->c:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Lcom/google/android/gms/ads/f;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/f;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/f;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/f;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/f;->a()Lcom/google/android/gms/ads/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/a/a;->b:Lcom/google/android/gms/ads/k;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/k;->a(Lcom/google/android/gms/ads/d;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/a/a;->b:Lcom/google/android/gms/ads/k;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tweber/stickfighter/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/a/a;->b:Lcom/google/android/gms/ads/k;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/k;->b()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
