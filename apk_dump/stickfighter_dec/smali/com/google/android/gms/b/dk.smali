.class public abstract Lcom/google/android/gms/b/dk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/b/dk;
    .annotation runtime Lcom/google/android/gms/b/oa;
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/b/dk;
    .annotation runtime Lcom/google/android/gms/b/oa;
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/b/dk;
    .annotation runtime Lcom/google/android/gms/b/oa;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/dl;

    invoke-direct {v0}, Lcom/google/android/gms/b/dl;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/dk;->a:Lcom/google/android/gms/b/dk;

    new-instance v0, Lcom/google/android/gms/b/dm;

    invoke-direct {v0}, Lcom/google/android/gms/b/dm;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/dk;->b:Lcom/google/android/gms/b/dk;

    new-instance v0, Lcom/google/android/gms/b/dn;

    invoke-direct {v0}, Lcom/google/android/gms/b/dn;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/dk;->c:Lcom/google/android/gms/b/dk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/b/dk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
