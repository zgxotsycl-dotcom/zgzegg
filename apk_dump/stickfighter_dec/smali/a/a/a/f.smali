.class final La/a/a/f;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/List;

.field b:Z

.field c:Z

.field d:La/a/a/p;

.field e:Ljava/lang/Object;

.field f:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/a/a/f;->a:Ljava/util/List;

    return-void
.end method
