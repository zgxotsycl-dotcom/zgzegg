.class Lcom/tweber/stickfighter/c/b;
.super Landroid/support/v4/g/g;


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Landroid/support/v4/g/g;-><init>(I)V

    iput-wide p1, p0, Lcom/tweber/stickfighter/c/b;->a:J

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Integer;)Lcom/tweber/stickfighter/h/p;
    .locals 4

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v0

    iget-wide v2, p0, Lcom/tweber/stickfighter/c/b;->a:J

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v2, v3, v1}, Lcom/tweber/stickfighter/d/b;->b(JI)Lcom/tweber/stickfighter/h/p;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/c/b;->a(Ljava/lang/Integer;)Lcom/tweber/stickfighter/h/p;

    move-result-object v0

    return-object v0
.end method
