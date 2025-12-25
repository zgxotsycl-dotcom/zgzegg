.class La/a/a/d;
.super Ljava/lang/ThreadLocal;


# instance fields
.field final synthetic a:La/a/a/c;


# direct methods
.method constructor <init>(La/a/a/c;)V
    .locals 0

    iput-object p1, p0, La/a/a/d;->a:La/a/a/c;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()La/a/a/f;
    .locals 1

    new-instance v0, La/a/a/f;

    invoke-direct {v0}, La/a/a/f;-><init>()V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, La/a/a/d;->a()La/a/a/f;

    move-result-object v0

    return-object v0
.end method
