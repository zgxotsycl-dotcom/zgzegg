.class public Lcom/tweber/stickfighter/h/l;
.super Ljava/lang/Object;


# static fields
.field private static c:Ljava/util/ArrayList;


# instance fields
.field public final a:J

.field public final b:Ljava/util/ArrayList;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/tweber/stickfighter/h/l;->a:J

    iput-object p3, p0, Lcom/tweber/stickfighter/h/l;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/tweber/stickfighter/h/l;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private static a(J)Ljava/util/ArrayList;
    .locals 2

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tweber/stickfighter/d/b;->a(J)Lcom/tweber/stickfighter/h/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/c/a;->a(I)Lcom/tweber/stickfighter/h/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/p;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    sput-object p0, Lcom/tweber/stickfighter/h/l;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static a(JLandroid/content/Context;Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V
    .locals 2

    sget-object v0, Lcom/tweber/stickfighter/h/n;->a:Lcom/tweber/stickfighter/h/l;

    iget-wide v0, v0, Lcom/tweber/stickfighter/h/l;->a:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    invoke-static {p3, p4, p5}, Lcom/tweber/stickfighter/h/l;->a(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tweber/stickfighter/h/n;->b:Lcom/tweber/stickfighter/h/l;

    iget-wide v0, v0, Lcom/tweber/stickfighter/h/l;->a:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    invoke-static {p3, p4, p5}, Lcom/tweber/stickfighter/h/l;->b(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tweber/stickfighter/h/n;->c:Lcom/tweber/stickfighter/h/l;

    iget-wide v0, v0, Lcom/tweber/stickfighter/h/l;->a:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    invoke-static {p3, p4, p5}, Lcom/tweber/stickfighter/h/l;->k(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tweber/stickfighter/h/n;->d:Lcom/tweber/stickfighter/h/l;

    iget-wide v0, v0, Lcom/tweber/stickfighter/h/l;->a:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_3

    invoke-static {p3, p4, p5}, Lcom/tweber/stickfighter/h/l;->c(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/tweber/stickfighter/h/n;->e:Lcom/tweber/stickfighter/h/l;

    iget-wide v0, v0, Lcom/tweber/stickfighter/h/l;->a:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_4

    invoke-static {p3, p4, p5}, Lcom/tweber/stickfighter/h/l;->d(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/tweber/stickfighter/h/n;->f:Lcom/tweber/stickfighter/h/l;

    iget-wide v0, v0, Lcom/tweber/stickfighter/h/l;->a:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_5

    invoke-static {p3, p4, p5}, Lcom/tweber/stickfighter/h/l;->e(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/tweber/stickfighter/h/n;->g:Lcom/tweber/stickfighter/h/l;

    iget-wide v0, v0, Lcom/tweber/stickfighter/h/l;->a:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_6

    invoke-static {p3, p4, p5}, Lcom/tweber/stickfighter/h/l;->f(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/tweber/stickfighter/h/n;->h:Lcom/tweber/stickfighter/h/l;

    iget-wide v0, v0, Lcom/tweber/stickfighter/h/l;->a:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_7

    invoke-static {p3, p4, p5}, Lcom/tweber/stickfighter/h/l;->g(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/tweber/stickfighter/h/n;->i:Lcom/tweber/stickfighter/h/l;

    iget-wide v0, v0, Lcom/tweber/stickfighter/h/l;->a:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_8

    invoke-static {p3, p4, p5}, Lcom/tweber/stickfighter/h/l;->h(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/tweber/stickfighter/h/n;->j:Lcom/tweber/stickfighter/h/l;

    iget-wide v0, v0, Lcom/tweber/stickfighter/h/l;->a:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_9

    invoke-static {p3, p4, p5}, Lcom/tweber/stickfighter/h/l;->i(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/tweber/stickfighter/h/n;->k:Lcom/tweber/stickfighter/h/l;

    iget-wide v0, v0, Lcom/tweber/stickfighter/h/l;->a:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_a

    invoke-static {p3, p4, p5}, Lcom/tweber/stickfighter/h/l;->j(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/tweber/stickfighter/h/n;->l:Lcom/tweber/stickfighter/h/l;

    iget-wide v0, v0, Lcom/tweber/stickfighter/h/l;->a:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    invoke-static {p3, p4, p5}, Lcom/tweber/stickfighter/h/l;->l(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcom/tweber/stickfighter/h/n;->m:Lcom/tweber/stickfighter/h/l;

    iget-wide v0, v0, Lcom/tweber/stickfighter/h/l;->a:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_c

    invoke-static {p3, p4, p5}, Lcom/tweber/stickfighter/h/l;->m(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/tweber/stickfighter/h/n;->n:Lcom/tweber/stickfighter/h/l;

    iget-wide v0, v0, Lcom/tweber/stickfighter/h/l;->a:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_d

    invoke-static {p3, p4, p5}, Lcom/tweber/stickfighter/h/l;->n(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/tweber/stickfighter/h/n;->o:Lcom/tweber/stickfighter/h/l;

    iget-wide v0, v0, Lcom/tweber/stickfighter/h/l;->a:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_e

    invoke-static {p3, p4, p5}, Lcom/tweber/stickfighter/h/l;->o(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lcom/tweber/stickfighter/h/n;->p:Lcom/tweber/stickfighter/h/l;

    iget-wide v0, v0, Lcom/tweber/stickfighter/h/l;->a:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_f

    invoke-static {p3, p4, p5}, Lcom/tweber/stickfighter/h/l;->p(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V

    goto/16 :goto_0

    :cond_f
    sget-object v0, Lcom/tweber/stickfighter/h/n;->q:Lcom/tweber/stickfighter/h/l;

    iget-wide v0, v0, Lcom/tweber/stickfighter/h/l;->a:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_10

    invoke-static {p3, p4, p5}, Lcom/tweber/stickfighter/h/l;->q(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V

    goto/16 :goto_0

    :cond_10
    sget-object v0, Lcom/tweber/stickfighter/h/n;->r:Lcom/tweber/stickfighter/h/l;

    iget-wide v0, v0, Lcom/tweber/stickfighter/h/l;->a:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_11

    invoke-static {p3, p4, p5}, Lcom/tweber/stickfighter/h/l;->r(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V

    goto/16 :goto_0

    :cond_11
    invoke-static {p0, p1, p3, p4, p5}, Lcom/tweber/stickfighter/h/l;->a(JLcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V

    goto/16 :goto_0
.end method

.method private static a(JLcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V
    .locals 18

    invoke-static/range {p0 .. p1}, Lcom/tweber/stickfighter/h/l;->a(J)Ljava/util/ArrayList;

    move-result-object v14

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Lcom/tweber/stickfighter/d/b;->c()V

    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_0

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tweber/stickfighter/h/f;

    iget-byte v5, v3, Lcom/tweber/stickfighter/h/f;->c:B

    invoke-virtual {v3}, Lcom/tweber/stickfighter/h/f;->b()I

    move-result v6

    const/4 v7, 0x0

    new-array v7, v7, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v0, p3

    invoke-interface {v2, v0, v5, v6, v7}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v5

    iget v3, v3, Lcom/tweber/stickfighter/h/f;->b:I

    invoke-virtual {v15, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    :cond_0
    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    const/4 v3, 0x0

    move v13, v3

    :goto_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_2

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    move-object v9, v0

    iget v3, v9, Lcom/tweber/stickfighter/h/f;->b:I

    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    move-object v10, v0

    const/4 v3, 0x0

    move v12, v3

    :goto_2
    invoke-virtual {v9}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v12, v3, :cond_1

    invoke-virtual {v9}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    move-object v11, v0

    iget v3, v10, Lcom/tweber/stickfighter/h/f;->b:I

    move-object/from16 v0, p3

    iget v4, v0, Lcom/tweber/stickfighter/h/p;->a:I

    int-to-long v4, v4

    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual {v11}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v7

    invoke-virtual {v11}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    iget v7, v11, Lcom/tweber/stickfighter/h/c;->c:I

    iget v8, v11, Lcom/tweber/stickfighter/h/c;->b:I

    invoke-interface/range {v2 .. v8}, Lcom/tweber/stickfighter/d/b;->a(IJLandroid/graphics/PointF;II)Lcom/tweber/stickfighter/h/c;

    move-result-object v3

    iget v4, v11, Lcom/tweber/stickfighter/h/c;->a:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v10, v3}, Lcom/tweber/stickfighter/h/f;->a(Lcom/tweber/stickfighter/h/c;)V

    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_2

    :cond_1
    move-object/from16 v0, p4

    invoke-static {v0, v10}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    move v9, v3

    :goto_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v9, v3, :cond_5

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tweber/stickfighter/h/f;

    const/4 v4, 0x0

    move v8, v4

    :goto_4
    invoke-virtual {v3}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v8, v4, :cond_4

    invoke-virtual {v3}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tweber/stickfighter/h/c;

    iget v5, v4, Lcom/tweber/stickfighter/h/c;->a:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tweber/stickfighter/h/c;

    const/4 v6, 0x0

    move v7, v6

    :goto_5
    invoke-virtual {v4}, Lcom/tweber/stickfighter/h/c;->e()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v7, v6, :cond_3

    invoke-virtual {v4}, Lcom/tweber/stickfighter/h/c;->e()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tweber/stickfighter/h/b;

    iget v10, v5, Lcom/tweber/stickfighter/h/c;->a:I

    iget v6, v6, Lcom/tweber/stickfighter/h/b;->a:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tweber/stickfighter/h/c;

    iget v6, v6, Lcom/tweber/stickfighter/h/c;->a:I

    invoke-interface {v2, v10, v6}, Lcom/tweber/stickfighter/d/b;->b(II)Lcom/tweber/stickfighter/h/b;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tweber/stickfighter/h/c;->a(Lcom/tweber/stickfighter/h/b;)V

    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_5

    :cond_3
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_3

    :cond_5
    invoke-interface {v2}, Lcom/tweber/stickfighter/d/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Lcom/tweber/stickfighter/d/b;->e()V

    return-void

    :catchall_0
    move-exception v3

    invoke-interface {v2}, Lcom/tweber/stickfighter/d/b;->e()V

    throw v3
.end method

.method private static a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V
    .locals 3

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    iget v2, v0, Lcom/tweber/stickfighter/h/c;->a:I

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V
    .locals 23

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v4

    const/high16 v3, 0x41700000    # 15.0f

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v3

    const/high16 v5, 0x42480000    # 50.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v5

    new-instance v6, Landroid/graphics/PointF;

    const/high16 v7, 0x42480000    # 50.0f

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    const/high16 v8, 0x42480000    # 50.0f

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v3, v9

    sub-float v9, v5, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v9

    const/high16 v10, 0x41f00000    # 30.0f

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    sub-float v10, v5, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v10

    const/high16 v11, 0x42200000    # 40.0f

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v10, Landroid/graphics/PointF;

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v3, v11

    add-float/2addr v11, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v11

    const/high16 v12, 0x41f00000    # 30.0f

    invoke-direct {v10, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v11, Landroid/graphics/PointF;

    add-float v12, v5, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v12

    const/high16 v13, 0x42200000    # 40.0f

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v12, Landroid/graphics/PointF;

    const/high16 v13, 0x42480000    # 50.0f

    const/high16 v14, 0x42200000    # 40.0f

    invoke-direct {v12, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v13, Landroid/graphics/PointF;

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v3, v14

    sub-float v14, v5, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v14

    const/high16 v15, 0x42500000    # 52.0f

    invoke-direct {v13, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v14, Landroid/graphics/PointF;

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v3, v15

    sub-float v15, v5, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v15

    const/high16 v16, 0x42780000    # 62.0f

    invoke-direct/range {v14 .. v16}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v15, Landroid/graphics/PointF;

    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, v3, v16

    add-float v16, v16, v5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v16

    const/high16 v17, 0x42500000    # 52.0f

    invoke-direct/range {v15 .. v17}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v16, Landroid/graphics/PointF;

    const/high16 v17, 0x40000000    # 2.0f

    div-float v3, v3, v17

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v3

    const/high16 v5, 0x42780000    # 62.0f

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v3, -0x1000000

    invoke-interface {v4}, Lcom/tweber/stickfighter/d/b;->c()V

    const/4 v5, 0x2

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/tweber/stickfighter/h/e;

    const/16 v20, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v19, v17, v18

    const/4 v6, 0x1

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v7, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v17, v6

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v4, v0, v5, v3, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v5

    const/4 v6, 0x1

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/tweber/stickfighter/h/e;

    const/16 v20, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v7, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v19, v17, v18

    const/16 v18, 0x1

    new-instance v19, Lcom/tweber/stickfighter/h/e;

    const/16 v20, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v19, v17, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v4, v0, v6, v3, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v6

    const/16 v17, 0x1

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/tweber/stickfighter/h/e;

    const/16 v21, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v8, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v20, v18, v19

    const/16 v19, 0x1

    new-instance v20, Lcom/tweber/stickfighter/h/e;

    const/16 v21, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v7, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v20, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v17

    const/16 v18, 0x1

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Lcom/tweber/stickfighter/h/e;

    const/16 v22, 0x5

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v9, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v21, v19, v20

    const/4 v9, 0x1

    new-instance v20, Lcom/tweber/stickfighter/h/e;

    const/16 v21, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v8, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v20, v19, v9

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v8

    const/4 v9, 0x1

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/tweber/stickfighter/h/e;

    const/16 v21, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v10, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v20, v18, v19

    const/16 v19, 0x1

    new-instance v20, Lcom/tweber/stickfighter/h/e;

    const/16 v21, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v7, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v20, v18, v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v9, v3, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v7

    const/4 v9, 0x1

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/tweber/stickfighter/h/e;

    const/16 v21, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v11, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v20, v18, v19

    const/4 v11, 0x1

    new-instance v19, Lcom/tweber/stickfighter/h/e;

    const/16 v20, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v10, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v19, v18, v11

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v9, v3, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x2

    new-array v11, v11, [Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x0

    new-instance v19, Lcom/tweber/stickfighter/h/e;

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v19, v11, v18

    const/16 v18, 0x1

    new-instance v19, Lcom/tweber/stickfighter/h/e;

    const/16 v20, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v13, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v19, v11, v18

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v10, v3, v11}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v10

    const/4 v11, 0x1

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/tweber/stickfighter/h/e;

    const/16 v21, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v13, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v20, v18, v19

    const/4 v13, 0x1

    new-instance v19, Lcom/tweber/stickfighter/h/e;

    const/16 v20, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v14, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v19, v18, v13

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v11, v3, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v11

    const/4 v13, 0x1

    const/4 v14, 0x2

    new-array v14, v14, [Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x0

    new-instance v19, Lcom/tweber/stickfighter/h/e;

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v19, v14, v18

    const/4 v12, 0x1

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v15, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v14, v12

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v13, v3, v14}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x2

    new-array v14, v14, [Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x0

    new-instance v19, Lcom/tweber/stickfighter/h/e;

    const/16 v20, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v15, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v19, v14, v18

    const/4 v15, 0x1

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x5

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v14, v15

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v13, v3, v14}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v9}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v17

    invoke-interface {v4, v6, v0}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v5, v6}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v17

    invoke-interface {v4, v0, v8}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v6, v7}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v7, v9}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v6, v10}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v6, v12}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v10, v11}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v12, v3}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4}, Lcom/tweber/stickfighter/d/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v4}, Lcom/tweber/stickfighter/d/b;->e()V

    return-void

    :catchall_0
    move-exception v3

    invoke-interface {v4}, Lcom/tweber/stickfighter/d/b;->e()V

    throw v3
.end method

.method static synthetic b()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/tweber/stickfighter/h/l;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static b(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V
    .locals 23

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v4

    const/high16 v3, 0x42480000    # 50.0f

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v3

    const/high16 v5, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v5

    sub-float/2addr v3, v5

    const/high16 v5, 0x42480000    # 50.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v5

    new-instance v6, Landroid/graphics/PointF;

    const/high16 v7, 0x42480000    # 50.0f

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    const/high16 v8, 0x41a00000    # 20.0f

    div-float v8, v3, v8

    sub-float v8, v5, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v8

    const/high16 v9, 0x41400000    # 12.0f

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    const/high16 v9, 0x41a00000    # 20.0f

    div-float v9, v3, v9

    add-float/2addr v9, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v9

    const/high16 v10, 0x41400000    # 12.0f

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    const/high16 v10, 0x41a00000    # 20.0f

    div-float v10, v3, v10

    sub-float v10, v5, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v10

    const/high16 v11, 0x42480000    # 50.0f

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v10, Landroid/graphics/PointF;

    const/high16 v11, 0x41a00000    # 20.0f

    div-float v11, v3, v11

    add-float/2addr v11, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v11

    const/high16 v12, 0x42480000    # 50.0f

    invoke-direct {v10, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v11, Landroid/graphics/PointF;

    const/high16 v12, 0x41000000    # 8.0f

    div-float v12, v3, v12

    sub-float v12, v5, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v12

    const/high16 v13, 0x42400000    # 48.0f

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v12, Landroid/graphics/PointF;

    const/high16 v13, 0x41000000    # 8.0f

    div-float/2addr v3, v13

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v3

    const/high16 v5, 0x42400000    # 48.0f

    invoke-direct {v12, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v13, 0x42480000    # 50.0f

    invoke-direct {v3, v5, v13}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    const/high16 v13, 0x42480000    # 50.0f

    const/high16 v14, 0x42700000    # 60.0f

    invoke-direct {v5, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v13, Landroid/graphics/PointF;

    const/high16 v14, 0x42480000    # 50.0f

    const/high16 v15, 0x427c0000    # 63.0f

    invoke-direct {v13, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v14, -0x1000000

    invoke-interface {v4}, Lcom/tweber/stickfighter/d/b;->c()V

    const/4 v15, 0x1

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x9

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v16, v17

    const/16 v17, 0x1

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v7, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v16, v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v4, v0, v15, v14, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/tweber/stickfighter/h/e;

    const/16 v20, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v19, v17, v18

    const/4 v6, 0x1

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v8, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v17, v6

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v4, v0, v1, v14, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v6

    const/16 v16, 0x1

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/tweber/stickfighter/h/e;

    const/16 v20, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v8, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v19, v17, v18

    const/4 v8, 0x1

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v10, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v17, v8

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v4, v0, v1, v14, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v8

    const/16 v16, 0x1

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/tweber/stickfighter/h/e;

    const/16 v20, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v7, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v19, v17, v18

    const/4 v7, 0x1

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v9, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v17, v7

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v4, v0, v1, v14, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v7

    const/16 v16, 0x1

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/tweber/stickfighter/h/e;

    const/16 v20, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v9, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v19, v17, v18

    const/16 v18, 0x1

    new-instance v19, Lcom/tweber/stickfighter/h/e;

    const/16 v20, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v3, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v19, v17, v18

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v4, v0, v1, v14, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/tweber/stickfighter/h/e;

    const/16 v21, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v10, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v20, v18, v19

    const/16 v19, 0x1

    new-instance v20, Lcom/tweber/stickfighter/h/e;

    const/16 v21, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v20, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v4, v0, v1, v14, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v17

    const/16 v18, 0x1

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Lcom/tweber/stickfighter/h/e;

    const/16 v22, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v11, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v21, v19, v20

    const/4 v11, 0x1

    new-instance v20, Lcom/tweber/stickfighter/h/e;

    const/16 v21, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v9, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v20, v19, v11

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v4, v0, v1, v14, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v9

    const/4 v11, 0x1

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/tweber/stickfighter/h/e;

    const/16 v21, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v12, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v20, v18, v19

    const/4 v12, 0x1

    new-instance v19, Lcom/tweber/stickfighter/h/e;

    const/16 v20, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v10, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v19, v18, v12

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v11, v14, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x0

    new-instance v19, Lcom/tweber/stickfighter/h/e;

    const/16 v20, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v3, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v19, v12, v18

    const/4 v3, 0x1

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v5, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v12, v3

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v11, v14, v12}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v3

    const/4 v11, 0x2

    const/4 v12, 0x2

    new-array v12, v12, [Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x0

    new-instance v19, Lcom/tweber/stickfighter/h/e;

    const/16 v20, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v5, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v19, v12, v18

    const/4 v5, 0x1

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x9

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v12, v5

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v11, v14, v12}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v9}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v15, v6}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v15, v7}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v6, v8}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v16

    invoke-interface {v4, v9, v0}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v9, v7}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v10, v8}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v17

    invoke-interface {v4, v10, v0}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v4, v0, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v17

    invoke-interface {v4, v3, v0}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v16

    invoke-interface {v4, v0, v3}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v5, v3}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4}, Lcom/tweber/stickfighter/d/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v4}, Lcom/tweber/stickfighter/d/b;->e()V

    return-void

    :catchall_0
    move-exception v3

    invoke-interface {v4}, Lcom/tweber/stickfighter/d/b;->e()V

    throw v3
.end method

.method private static c(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V
    .locals 17

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v2

    const/high16 v1, 0x42480000    # 50.0f

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v1

    const/high16 v3, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x42480000    # 50.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v3

    new-instance v4, Landroid/graphics/PointF;

    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v6, 0x424c0000    # 51.0f

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    const/high16 v6, 0x40e00000    # 7.0f

    mul-float/2addr v6, v1

    sub-float v6, v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v6

    const/high16 v7, 0x424c0000    # 51.0f

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    const/high16 v7, 0x42480000    # 50.0f

    const/high16 v8, 0x425c0000    # 55.0f

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    const/high16 v8, 0x40e00000    # 7.0f

    mul-float/2addr v8, v1

    sub-float v8, v3, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v8

    const/high16 v9, 0x425c0000    # 55.0f

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    const/high16 v9, 0x40c00000    # 6.0f

    mul-float/2addr v9, v1

    sub-float v9, v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v9

    const/high16 v10, 0x425c0000    # 55.0f

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    const/high16 v10, 0x40800000    # 4.0f

    mul-float/2addr v10, v1

    sub-float v10, v3, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v10

    const/high16 v11, 0x425c0000    # 55.0f

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v10, Landroid/graphics/PointF;

    const/high16 v11, 0x40e00000    # 7.0f

    mul-float/2addr v11, v1

    sub-float v11, v3, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v11

    const/high16 v12, 0x42700000    # 60.0f

    invoke-direct {v10, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v11, Landroid/graphics/PointF;

    const/high16 v12, 0x40a00000    # 5.0f

    mul-float/2addr v1, v12

    sub-float v1, v3, v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v1

    const/high16 v3, 0x42700000    # 60.0f

    invoke-direct {v11, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v1, -0x1000000

    invoke-interface {v2}, Lcom/tweber/stickfighter/d/b;->c()V

    const/4 v3, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [Lcom/tweber/stickfighter/h/e;

    const/4 v13, 0x0

    new-instance v14, Lcom/tweber/stickfighter/h/e;

    const/16 v15, 0x8

    invoke-direct {v14, v4, v15}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v14, v12, v13

    const/4 v13, 0x1

    new-instance v14, Lcom/tweber/stickfighter/h/e;

    const/4 v15, 0x3

    invoke-direct {v14, v5, v15}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v14, v12, v13

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3, v1, v12}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v3

    const/4 v12, 0x1

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/tweber/stickfighter/h/e;

    const/4 v14, 0x0

    new-instance v15, Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-direct {v15, v5, v0}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v15, v13, v14

    const/4 v5, 0x1

    new-instance v14, Lcom/tweber/stickfighter/h/e;

    const/16 v15, 0x8

    invoke-direct {v14, v7, v15}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v14, v13, v5

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v12, v1, v13}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v5

    const/4 v12, 0x1

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/tweber/stickfighter/h/e;

    const/4 v14, 0x0

    new-instance v15, Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-direct {v15, v6, v0}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-instance v15, Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x9

    move/from16 v0, v16

    invoke-direct {v15, v4, v0}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v15, v13, v14

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v12, v1, v13}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v4

    const/4 v12, 0x1

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/tweber/stickfighter/h/e;

    const/4 v14, 0x0

    new-instance v15, Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-direct {v15, v7, v0}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v15, v13, v14

    const/4 v7, 0x1

    new-instance v14, Lcom/tweber/stickfighter/h/e;

    const/16 v15, 0x8

    invoke-direct {v14, v8, v15}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v14, v13, v7

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v12, v1, v13}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v7

    const/4 v12, 0x1

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/tweber/stickfighter/h/e;

    const/4 v14, 0x0

    new-instance v15, Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-direct {v15, v9, v0}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-instance v15, Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-direct {v15, v6, v0}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v15, v13, v14

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v12, v1, v13}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v6

    const/4 v12, 0x1

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/tweber/stickfighter/h/e;

    const/4 v14, 0x0

    new-instance v15, Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-direct {v15, v8, v0}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v15, v13, v14

    const/4 v8, 0x1

    new-instance v14, Lcom/tweber/stickfighter/h/e;

    const/16 v15, 0x8

    invoke-direct {v14, v10, v15}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v14, v13, v8

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v12, v1, v13}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v8

    const/4 v12, 0x1

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/tweber/stickfighter/h/e;

    const/4 v14, 0x0

    new-instance v15, Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-direct {v15, v9, v0}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v15, v13, v14

    const/4 v9, 0x1

    new-instance v14, Lcom/tweber/stickfighter/h/e;

    const/16 v15, 0x8

    invoke-direct {v14, v11, v15}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v14, v13, v9

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v12, v1, v13}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v9

    const/4 v12, 0x1

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/tweber/stickfighter/h/e;

    const/4 v14, 0x0

    new-instance v15, Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x9

    move/from16 v0, v16

    invoke-direct {v15, v10, v0}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v15, v13, v14

    const/4 v10, 0x1

    new-instance v14, Lcom/tweber/stickfighter/h/e;

    const/16 v15, 0x8

    invoke-direct {v14, v11, v15}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v14, v13, v10

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v12, v1, v13}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v9}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v2, v5, v7}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v2, v5, v3}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v2, v3, v4}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v2, v6, v4}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v2, v8, v7}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v2, v8, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v2, v9, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v2, v9, v6}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v2}, Lcom/tweber/stickfighter/d/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Lcom/tweber/stickfighter/d/b;->e()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v2}, Lcom/tweber/stickfighter/d/b;->e()V

    throw v1
.end method

.method private static d(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V
    .locals 13

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v1

    const/high16 v0, 0x42480000    # 50.0f

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v0

    const/high16 v2, 0x42380000    # 46.0f

    invoke-virtual {p0, v2}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {p0, v2}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v2

    new-instance v3, Landroid/graphics/PointF;

    const/high16 v4, 0x42480000    # 50.0f

    const/high16 v5, 0x42480000    # 50.0f

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    div-float v5, v0, v9

    sub-float v5, v2, v5

    invoke-virtual {p0, v5}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v5

    const/high16 v6, 0x42400000    # 48.0f

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    div-float v6, v0, v9

    sub-float v6, v2, v6

    invoke-virtual {p0, v6}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v6

    const/high16 v7, 0x42500000    # 52.0f

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    mul-float v7, v0, v9

    sub-float v7, v2, v7

    invoke-virtual {p0, v7}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v7

    const/high16 v8, 0x42400000    # 48.0f

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    mul-float/2addr v0, v9

    sub-float v0, v2, v0

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v0

    const/high16 v2, 0x42500000    # 52.0f

    invoke-direct {v7, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v0, -0x1000000

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->c()V

    const/4 v2, 0x1

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/tweber/stickfighter/h/e;

    const/4 v9, 0x0

    new-instance v10, Lcom/tweber/stickfighter/h/e;

    const/16 v11, 0x8

    invoke-direct {v10, v4, v11}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Lcom/tweber/stickfighter/h/e;

    const/4 v11, 0x3

    invoke-direct {v10, v3, v11}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v10, v8, v9

    invoke-interface {v1, p1, v2, v0, v8}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v2

    const/4 v8, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/tweber/stickfighter/h/e;

    const/4 v10, 0x0

    new-instance v11, Lcom/tweber/stickfighter/h/e;

    const/16 v12, 0x8

    invoke-direct {v11, v5, v12}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/tweber/stickfighter/h/e;

    const/16 v12, 0x8

    invoke-direct {v11, v3, v12}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v11, v9, v10

    invoke-interface {v1, p1, v8, v0, v9}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v3

    const/4 v8, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/tweber/stickfighter/h/e;

    const/4 v10, 0x0

    new-instance v11, Lcom/tweber/stickfighter/h/e;

    const/16 v12, 0x8

    invoke-direct {v11, v4, v12}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v11, v9, v10

    const/4 v4, 0x1

    new-instance v10, Lcom/tweber/stickfighter/h/e;

    const/16 v11, 0x8

    invoke-direct {v10, v6, v11}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v10, v9, v4

    invoke-interface {v1, p1, v8, v0, v9}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v4

    const/4 v8, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/tweber/stickfighter/h/e;

    const/4 v10, 0x0

    new-instance v11, Lcom/tweber/stickfighter/h/e;

    const/16 v12, 0x8

    invoke-direct {v11, v5, v12}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v11, v9, v10

    const/4 v5, 0x1

    new-instance v10, Lcom/tweber/stickfighter/h/e;

    const/16 v11, 0x8

    invoke-direct {v10, v7, v11}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v10, v9, v5

    invoke-interface {v1, p1, v8, v0, v9}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/tweber/stickfighter/h/e;

    const/4 v10, 0x0

    new-instance v11, Lcom/tweber/stickfighter/h/e;

    const/16 v12, 0x9

    invoke-direct {v11, v6, v12}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v11, v9, v10

    const/4 v6, 0x1

    new-instance v10, Lcom/tweber/stickfighter/h/e;

    const/16 v11, 0x9

    invoke-direct {v10, v7, v11}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v10, v9, v6

    invoke-interface {v1, p1, v8, v0, v9}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v0

    invoke-static {p2, v2}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-static {p2, v3}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-static {p2, v4}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-static {p2, v5}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-static {p2, v0}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v1, v2, v3}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v1, v2, v4}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v1, v4, v0}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v1, v0, v5}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v1, v5, v3}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->e()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->e()V

    throw v0
.end method

.method private static e(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V
    .locals 20

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v3

    const/high16 v2, 0x42480000    # 50.0f

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v2

    const/high16 v4, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v4

    sub-float/2addr v2, v4

    const/high16 v4, 0x42480000    # 50.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v4

    new-instance v5, Landroid/graphics/PointF;

    const/high16 v6, 0x42480000    # 50.0f

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    const/high16 v7, 0x42480000    # 50.0f

    const/high16 v8, 0x40e00000    # 7.0f

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    const/high16 v8, 0x42480000    # 50.0f

    const/high16 v9, 0x42400000    # 48.0f

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    const/high16 v9, 0x42480000    # 50.0f

    const/high16 v10, 0x42480000    # 50.0f

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    const/high16 v10, 0x42480000    # 50.0f

    const/high16 v11, 0x41dc0000    # 27.5f

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v10, Landroid/graphics/PointF;

    const/high16 v11, 0x40400000    # 3.0f

    div-float v11, v2, v11

    add-float/2addr v11, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v11

    const v12, 0x41bb3333    # 23.4f

    invoke-direct {v10, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v11, Landroid/graphics/PointF;

    const/high16 v12, 0x40400000    # 3.0f

    div-float v12, v2, v12

    add-float/2addr v12, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v12

    const v13, 0x41fccccc    # 31.599998f

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v12, Landroid/graphics/PointF;

    const/high16 v13, 0x40a00000    # 5.0f

    div-float v13, v2, v13

    add-float/2addr v13, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v13

    const v14, 0x41733333    # 15.2f

    invoke-direct {v12, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v13, Landroid/graphics/PointF;

    const/high16 v14, 0x40a00000    # 5.0f

    div-float/2addr v2, v14

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v2

    const v4, 0x421f3333    # 39.8f

    invoke-direct {v13, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v2, -0x1000000

    invoke-interface {v3}, Lcom/tweber/stickfighter/d/b;->c()V

    const/4 v4, 0x2

    const/4 v14, 0x2

    new-array v14, v14, [Lcom/tweber/stickfighter/h/e;

    const/4 v15, 0x0

    new-instance v16, Lcom/tweber/stickfighter/h/e;

    const/16 v17, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v6, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v16, v14, v15

    const/4 v15, 0x1

    new-instance v16, Lcom/tweber/stickfighter/h/e;

    const/16 v17, 0x9

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v16, v14, v15

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4, v2, v14}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v4

    const/4 v14, 0x2

    const/4 v15, 0x2

    new-array v15, v15, [Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x0

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v7, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v15, v16

    const/16 v16, 0x1

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x9

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v15, v16

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v14, v2, v15}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v5, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v16, v17

    const/4 v5, 0x1

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x9

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v9, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v16, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v3, v0, v15, v2, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v5

    const/4 v15, 0x1

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v8, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v16, v17

    const/4 v8, 0x1

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v9, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v16, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v3, v0, v15, v2, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v15, 0x2

    new-array v15, v15, [Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x0

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v6, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v15, v16

    const/4 v6, 0x1

    new-instance v16, Lcom/tweber/stickfighter/h/e;

    const/16 v17, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v12, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v16, v15, v6

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v9, v2, v15}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v6

    const/4 v9, 0x1

    const/4 v15, 0x2

    new-array v15, v15, [Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x0

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v7, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v15, v16

    const/4 v7, 0x1

    new-instance v16, Lcom/tweber/stickfighter/h/e;

    const/16 v17, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v13, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v16, v15, v7

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v9, v2, v15}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v15, 0x2

    new-array v15, v15, [Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x0

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v15, v16

    const/16 v16, 0x1

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v12, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v15, v16

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v9, v2, v15}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v9

    const/4 v12, 0x1

    const/4 v15, 0x2

    new-array v15, v15, [Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x0

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v11, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v15, v16

    const/16 v16, 0x1

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v13, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v15, v16

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v12, v2, v15}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v15, 0x2

    new-array v15, v15, [Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x0

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v15, v16

    const/4 v10, 0x1

    new-instance v16, Lcom/tweber/stickfighter/h/e;

    const/16 v17, 0x9

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v11, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v16, v15, v10

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v13, v2, v15}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v9}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v5, v8}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v4, v5}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v8, v14}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v4, v6}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v14, v7}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v6, v9}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v7, v12}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v9, v12}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v9, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v12, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3}, Lcom/tweber/stickfighter/d/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v3}, Lcom/tweber/stickfighter/d/b;->e()V

    return-void

    :catchall_0
    move-exception v2

    invoke-interface {v3}, Lcom/tweber/stickfighter/d/b;->e()V

    throw v2
.end method

.method private static f(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V
    .locals 20

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v3

    const/high16 v2, 0x42a00000    # 80.0f

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v2

    const/high16 v4, 0x42200000    # 40.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v4

    sub-float/2addr v2, v4

    new-instance v4, Landroid/graphics/PointF;

    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v6, 0x42200000    # 40.0f

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    const/high16 v6, 0x42480000    # 50.0f

    const/high16 v7, 0x42a00000    # 80.0f

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    const/high16 v7, 0x42480000    # 50.0f

    const/high16 v8, 0x41600000    # 14.0f

    div-float v8, v2, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x42300000    # 44.0f

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    const/high16 v8, 0x42480000    # 50.0f

    const/high16 v9, 0x41600000    # 14.0f

    div-float v9, v2, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x42300000    # 44.0f

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    const/high16 v9, 0x42480000    # 50.0f

    const/high16 v10, 0x41200000    # 10.0f

    div-float v10, v2, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x42a80000    # 84.0f

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    const/high16 v10, 0x42480000    # 50.0f

    const/high16 v11, 0x41200000    # 10.0f

    div-float v11, v2, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v11

    add-float/2addr v10, v11

    const/high16 v11, 0x42a80000    # 84.0f

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v10, Landroid/graphics/PointF;

    const/high16 v11, 0x42480000    # 50.0f

    const/high16 v12, 0x429c0000    # 78.0f

    invoke-direct {v10, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v11, Landroid/graphics/PointF;

    const/high16 v12, 0x42480000    # 50.0f

    const/high16 v13, 0x41200000    # 10.0f

    div-float v13, v2, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v13

    sub-float/2addr v12, v13

    const/high16 v13, 0x42a40000    # 82.0f

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v12, Landroid/graphics/PointF;

    const/high16 v13, 0x42480000    # 50.0f

    const/high16 v14, 0x41200000    # 10.0f

    div-float/2addr v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v2

    add-float/2addr v2, v13

    const/high16 v13, 0x42a40000    # 82.0f

    invoke-direct {v12, v2, v13}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v2, -0x1000000

    invoke-interface {v3}, Lcom/tweber/stickfighter/d/b;->c()V

    const/4 v13, 0x1

    const/4 v14, 0x2

    new-array v14, v14, [Lcom/tweber/stickfighter/h/e;

    const/4 v15, 0x0

    new-instance v16, Lcom/tweber/stickfighter/h/e;

    const/16 v17, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v4, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v16, v14, v15

    const/4 v15, 0x1

    new-instance v16, Lcom/tweber/stickfighter/h/e;

    const/16 v17, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v10, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v16, v14, v15

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v13, v2, v14}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x2

    new-array v15, v15, [Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x0

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v15, v16

    const/16 v16, 0x1

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x9

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v15, v16

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v14, v2, v15}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v4, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v16, v17

    const/16 v17, 0x1

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v16, v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v3, v0, v15, v2, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v6

    const/4 v15, 0x1

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v4, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v16, v17

    const/4 v4, 0x1

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v7, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v16, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v3, v0, v15, v2, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v4

    const/4 v7, 0x1

    const/4 v15, 0x2

    new-array v15, v15, [Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x0

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v15, v16

    const/16 v16, 0x1

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v15, v16

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v7, v2, v15}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v15, 0x2

    new-array v15, v15, [Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x0

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v15, v16

    const/4 v5, 0x1

    new-instance v16, Lcom/tweber/stickfighter/h/e;

    const/16 v17, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v9, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v16, v15, v5

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v8, v2, v15}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/tweber/stickfighter/h/e;

    const/4 v15, 0x0

    new-instance v16, Lcom/tweber/stickfighter/h/e;

    const/16 v17, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v10, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v16, v9, v15

    const/4 v15, 0x1

    new-instance v16, Lcom/tweber/stickfighter/h/e;

    const/16 v17, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v11, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v16, v9, v15

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v8, v2, v9}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v11, 0x2

    new-array v11, v11, [Lcom/tweber/stickfighter/h/e;

    const/4 v15, 0x0

    new-instance v16, Lcom/tweber/stickfighter/h/e;

    const/16 v17, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v10, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v16, v11, v15

    const/4 v10, 0x1

    new-instance v15, Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-direct {v15, v12, v0}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v15, v11, v10

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v9, v2, v11}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v13, v6}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v13, v4}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v13, v8}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v13, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v13, v14}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v14, v7}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v14, v5}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3}, Lcom/tweber/stickfighter/d/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v3}, Lcom/tweber/stickfighter/d/b;->e()V

    return-void

    :catchall_0
    move-exception v2

    invoke-interface {v3}, Lcom/tweber/stickfighter/d/b;->e()V

    throw v2
.end method

.method private static g(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V
    .locals 9

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v1

    :try_start_0
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x42200000    # 40.0f

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x42480000    # 50.0f

    const/high16 v4, 0x42700000    # 60.0f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v3, -0x1000000

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->c()V

    const/4 v4, 0x1

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/tweber/stickfighter/h/e;

    const/4 v6, 0x0

    new-instance v7, Lcom/tweber/stickfighter/h/e;

    const/16 v8, 0x9

    invoke-direct {v7, v0, v8}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v7, v5, v6

    const/4 v0, 0x1

    new-instance v6, Lcom/tweber/stickfighter/h/e;

    const/4 v7, 0x3

    invoke-direct {v6, v2, v7}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v6, v5, v0

    invoke-interface {v1, p1, v4, v3, v5}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->e()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->e()V

    throw v0
.end method

.method private static h(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V
    .locals 9

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v1

    :try_start_0
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x42200000    # 40.0f

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x42480000    # 50.0f

    const/high16 v4, 0x42700000    # 60.0f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v3, -0x1000000

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->c()V

    const/4 v4, 0x2

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/tweber/stickfighter/h/e;

    const/4 v6, 0x0

    new-instance v7, Lcom/tweber/stickfighter/h/e;

    const/16 v8, 0x9

    invoke-direct {v7, v0, v8}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v7, v5, v6

    const/4 v0, 0x1

    new-instance v6, Lcom/tweber/stickfighter/h/e;

    const/4 v7, 0x3

    invoke-direct {v6, v2, v7}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v6, v5, v0

    invoke-interface {v1, p1, v4, v3, v5}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->e()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->e()V

    throw v0
.end method

.method private static i(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V
    .locals 11

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v1

    const/high16 v0, 0x425c0000    # 55.0f

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v0

    const/high16 v2, 0x42340000    # 45.0f

    invoke-virtual {p0, v2}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {p0, v2}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v2

    mul-float/2addr v0, v8

    float-to-double v4, v0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-float v0, v4

    new-instance v3, Landroid/graphics/PointF;

    const/high16 v4, 0x42480000    # 50.0f

    const/high16 v5, 0x42340000    # 45.0f

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    div-float v5, v0, v8

    sub-float v5, v2, v5

    invoke-virtual {p0, v5}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v5

    const/high16 v6, 0x425c0000    # 55.0f

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    div-float/2addr v0, v8

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v0

    const/high16 v2, 0x425c0000    # 55.0f

    invoke-direct {v5, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v0, -0x1000000

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->c()V

    const/4 v2, 0x1

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/tweber/stickfighter/h/e;

    const/4 v7, 0x0

    new-instance v8, Lcom/tweber/stickfighter/h/e;

    const/4 v9, 0x3

    invoke-direct {v8, v3, v9}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Lcom/tweber/stickfighter/h/e;

    const/16 v9, 0x9

    invoke-direct {v8, v4, v9}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v8, v6, v7

    invoke-interface {v1, p1, v2, v0, v6}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v2

    const/4 v6, 0x1

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/tweber/stickfighter/h/e;

    const/4 v8, 0x0

    new-instance v9, Lcom/tweber/stickfighter/h/e;

    const/16 v10, 0x8

    invoke-direct {v9, v3, v10}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v9, v7, v8

    const/4 v3, 0x1

    new-instance v8, Lcom/tweber/stickfighter/h/e;

    const/16 v9, 0x8

    invoke-direct {v8, v5, v9}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v8, v7, v3

    invoke-interface {v1, p1, v6, v0, v7}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/tweber/stickfighter/h/e;

    const/4 v8, 0x0

    new-instance v9, Lcom/tweber/stickfighter/h/e;

    const/16 v10, 0x8

    invoke-direct {v9, v4, v10}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v9, v7, v8

    const/4 v4, 0x1

    new-instance v8, Lcom/tweber/stickfighter/h/e;

    const/16 v9, 0x9

    invoke-direct {v8, v5, v9}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v8, v7, v4

    invoke-interface {v1, p1, v6, v0, v7}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v0

    invoke-static {p2, v2}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-static {p2, v3}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-static {p2, v0}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v1, v2, v3}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v1, v2, v0}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v1, v3, v0}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->e()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->e()V

    throw v0
.end method

.method private static j(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V
    .locals 12

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v1

    const/high16 v0, 0x425c0000    # 55.0f

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v0

    const/high16 v2, 0x42340000    # 45.0f

    invoke-virtual {p0, v2}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {p0, v2}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v2

    new-instance v3, Landroid/graphics/PointF;

    const/high16 v4, 0x42480000    # 50.0f

    const/high16 v5, 0x42340000    # 45.0f

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    add-float v5, v2, v0

    invoke-virtual {p0, v5}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v5

    const/high16 v6, 0x42340000    # 45.0f

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    const/high16 v6, 0x42480000    # 50.0f

    const/high16 v7, 0x425c0000    # 55.0f

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v0

    const/high16 v2, 0x425c0000    # 55.0f

    invoke-direct {v6, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v0, -0x1000000

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->c()V

    const/4 v2, 0x1

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/tweber/stickfighter/h/e;

    const/4 v8, 0x0

    new-instance v9, Lcom/tweber/stickfighter/h/e;

    const/4 v10, 0x3

    invoke-direct {v9, v3, v10}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/tweber/stickfighter/h/e;

    const/16 v10, 0x9

    invoke-direct {v9, v4, v10}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v9, v7, v8

    invoke-interface {v1, p1, v2, v0, v7}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v2

    const/4 v7, 0x1

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/tweber/stickfighter/h/e;

    const/4 v9, 0x0

    new-instance v10, Lcom/tweber/stickfighter/h/e;

    const/16 v11, 0x8

    invoke-direct {v10, v3, v11}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v10, v8, v9

    const/4 v3, 0x1

    new-instance v9, Lcom/tweber/stickfighter/h/e;

    const/16 v10, 0x9

    invoke-direct {v9, v5, v10}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v9, v8, v3

    invoke-interface {v1, p1, v7, v0, v8}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v3

    const/4 v7, 0x1

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/tweber/stickfighter/h/e;

    const/4 v9, 0x0

    new-instance v10, Lcom/tweber/stickfighter/h/e;

    const/16 v11, 0x8

    invoke-direct {v10, v4, v11}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v10, v8, v9

    const/4 v4, 0x1

    new-instance v9, Lcom/tweber/stickfighter/h/e;

    const/16 v10, 0x8

    invoke-direct {v9, v6, v10}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v9, v8, v4

    invoke-interface {v1, p1, v7, v0, v8}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v4

    const/4 v7, 0x1

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/tweber/stickfighter/h/e;

    const/4 v9, 0x0

    new-instance v10, Lcom/tweber/stickfighter/h/e;

    const/16 v11, 0x8

    invoke-direct {v10, v5, v11}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v10, v8, v9

    const/4 v5, 0x1

    new-instance v9, Lcom/tweber/stickfighter/h/e;

    const/16 v10, 0x9

    invoke-direct {v9, v6, v10}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v9, v8, v5

    invoke-interface {v1, p1, v7, v0, v8}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v0

    invoke-static {p2, v2}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-static {p2, v3}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-static {p2, v4}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-static {p2, v0}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v1, v2, v4}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v1, v2, v3}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v1, v4, v0}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v1, v3, v0}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->e()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->e()V

    throw v0
.end method

.method private static k(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V
    .locals 28

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v4

    const/high16 v3, 0x42a00000    # 80.0f

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v3

    const/high16 v5, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v5

    sub-float/2addr v3, v5

    const/high16 v5, 0x42480000    # 50.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v5

    const/high16 v6, 0x41d80000    # 27.0f

    new-instance v7, Landroid/graphics/PointF;

    const/high16 v8, 0x42480000    # 50.0f

    const/high16 v9, 0x41c80000    # 25.0f

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    const/high16 v9, 0x42480000    # 50.0f

    const/high16 v10, 0x41e80000    # 29.0f

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    const/high16 v10, 0x42480000    # 50.0f

    const/high16 v11, 0x42a00000    # 80.0f

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v10, Landroid/graphics/PointF;

    const/high16 v11, 0x41400000    # 12.0f

    div-float v11, v3, v11

    add-float/2addr v11, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v11

    const/high16 v12, 0x40800000    # 4.0f

    sub-float v12, v6, v12

    invoke-direct {v10, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v11, Landroid/graphics/PointF;

    const/high16 v12, 0x41200000    # 10.0f

    div-float v12, v3, v12

    add-float/2addr v12, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v12

    const/high16 v13, 0x41000000    # 8.0f

    sub-float v13, v6, v13

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v12, Landroid/graphics/PointF;

    const/high16 v13, 0x40c00000    # 6.0f

    div-float v13, v3, v13

    add-float/2addr v13, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v13

    const/high16 v14, 0x40800000    # 4.0f

    sub-float v14, v6, v14

    invoke-direct {v12, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v13, Landroid/graphics/PointF;

    const/high16 v14, 0x41400000    # 12.0f

    div-float v14, v3, v14

    add-float/2addr v14, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v14

    const/high16 v15, 0x40800000    # 4.0f

    add-float/2addr v15, v6

    invoke-direct {v13, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v14, Landroid/graphics/PointF;

    const/high16 v15, 0x41200000    # 10.0f

    div-float v15, v3, v15

    add-float/2addr v15, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v15

    const/high16 v16, 0x41000000    # 8.0f

    add-float v16, v16, v6

    invoke-direct/range {v14 .. v16}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v15, Landroid/graphics/PointF;

    const/high16 v16, 0x40c00000    # 6.0f

    div-float v16, v3, v16

    add-float v16, v16, v5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v16

    const/high16 v17, 0x40800000    # 4.0f

    add-float v17, v17, v6

    invoke-direct/range {v15 .. v17}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v16, Landroid/graphics/PointF;

    const/high16 v17, 0x41400000    # 12.0f

    div-float v17, v3, v17

    sub-float v17, v5, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v17

    const/high16 v18, 0x40800000    # 4.0f

    sub-float v18, v6, v18

    invoke-direct/range {v16 .. v18}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v17, Landroid/graphics/PointF;

    const/high16 v18, 0x41200000    # 10.0f

    div-float v18, v3, v18

    sub-float v18, v5, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v18

    const/high16 v19, 0x41000000    # 8.0f

    sub-float v19, v6, v19

    invoke-direct/range {v17 .. v19}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v18, Landroid/graphics/PointF;

    const/high16 v19, 0x40c00000    # 6.0f

    div-float v19, v3, v19

    sub-float v19, v5, v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v19

    const/high16 v20, 0x40800000    # 4.0f

    sub-float v20, v6, v20

    invoke-direct/range {v18 .. v20}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v19, Landroid/graphics/PointF;

    const/high16 v20, 0x41400000    # 12.0f

    div-float v20, v3, v20

    sub-float v20, v5, v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v20

    const/high16 v21, 0x40800000    # 4.0f

    add-float v21, v21, v6

    invoke-direct/range {v19 .. v21}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v20, Landroid/graphics/PointF;

    const/high16 v21, 0x41200000    # 10.0f

    div-float v21, v3, v21

    sub-float v21, v5, v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v21

    const/high16 v22, 0x41000000    # 8.0f

    add-float v22, v22, v6

    invoke-direct/range {v20 .. v22}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v21, Landroid/graphics/PointF;

    const/high16 v22, 0x40c00000    # 6.0f

    div-float v3, v3, v22

    sub-float v3, v5, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v3

    const/high16 v5, 0x40800000    # 4.0f

    add-float/2addr v5, v6

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v3, -0x1000000

    invoke-interface {v4}, Lcom/tweber/stickfighter/d/b;->c()V

    const/4 v5, 0x1

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/tweber/stickfighter/h/e;

    const/16 v22, 0x0

    new-instance v23, Lcom/tweber/stickfighter/h/e;

    const/16 v24, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v0, v8, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v23, v6, v22

    const/16 v22, 0x1

    new-instance v23, Lcom/tweber/stickfighter/h/e;

    const/16 v24, 0x9

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v0, v9, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v23, v6, v22

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v5, v3, v6}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/tweber/stickfighter/h/e;

    const/16 v22, 0x0

    new-instance v23, Lcom/tweber/stickfighter/h/e;

    const/16 v24, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v0, v8, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v23, v9, v22

    const/16 v22, 0x1

    new-instance v23, Lcom/tweber/stickfighter/h/e;

    const/16 v24, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v0, v7, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v23, v9, v22

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v6, v3, v9}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v6

    const/4 v9, 0x1

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Lcom/tweber/stickfighter/h/e;

    const/16 v25, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v7, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v24, v22, v23

    const/16 v23, 0x1

    new-instance v24, Lcom/tweber/stickfighter/h/e;

    const/16 v25, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v10, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v24, v22, v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v9, v3, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v9

    const/16 v22, 0x1

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lcom/tweber/stickfighter/h/e;

    const/16 v26, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v0, v10, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v25, v23, v24

    const/4 v10, 0x1

    new-instance v24, Lcom/tweber/stickfighter/h/e;

    const/16 v25, 0x9

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v11, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v24, v23, v10

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v10

    const/16 v22, 0x1

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lcom/tweber/stickfighter/h/e;

    const/16 v26, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v0, v11, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v25, v23, v24

    const/4 v11, 0x1

    new-instance v24, Lcom/tweber/stickfighter/h/e;

    const/16 v25, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v12, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v24, v23, v11

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v11

    const/16 v22, 0x1

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lcom/tweber/stickfighter/h/e;

    const/16 v26, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v0, v12, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v25, v23, v24

    const/4 v12, 0x1

    new-instance v24, Lcom/tweber/stickfighter/h/e;

    const/16 v25, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v15, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v24, v23, v12

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v12

    const/16 v22, 0x1

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lcom/tweber/stickfighter/h/e;

    const/16 v26, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v0, v8, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v25, v23, v24

    const/16 v24, 0x1

    new-instance v25, Lcom/tweber/stickfighter/h/e;

    const/16 v26, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v0, v13, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v25, v23, v24

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v22

    const/16 v23, 0x1

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    new-instance v26, Lcom/tweber/stickfighter/h/e;

    const/16 v27, 0x8

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v0, v13, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v26, v24, v25

    const/4 v13, 0x1

    new-instance v25, Lcom/tweber/stickfighter/h/e;

    const/16 v26, 0x9

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v0, v14, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v25, v24, v13

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v13

    const/16 v23, 0x1

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    new-instance v26, Lcom/tweber/stickfighter/h/e;

    const/16 v27, 0x8

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v0, v14, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v26, v24, v25

    const/4 v14, 0x1

    new-instance v25, Lcom/tweber/stickfighter/h/e;

    const/16 v26, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v0, v15, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v25, v24, v14

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lcom/tweber/stickfighter/h/e;

    const/16 v26, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v0, v7, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v25, v23, v24

    const/4 v7, 0x1

    new-instance v24, Lcom/tweber/stickfighter/h/e;

    const/16 v25, 0x8

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v24, v23, v7

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v4, v0, v15, v3, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v7

    const/4 v15, 0x1

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lcom/tweber/stickfighter/h/e;

    const/16 v26, 0x8

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v25, v23, v24

    const/16 v16, 0x1

    new-instance v24, Lcom/tweber/stickfighter/h/e;

    const/16 v25, 0x9

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v24, v23, v16

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v4, v0, v15, v3, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lcom/tweber/stickfighter/h/e;

    const/16 v26, 0x8

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v25, v23, v24

    const/16 v17, 0x1

    new-instance v24, Lcom/tweber/stickfighter/h/e;

    const/16 v25, 0x8

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v24, v23, v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v23

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lcom/tweber/stickfighter/h/e;

    const/16 v26, 0x8

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v25, v23, v24

    const/16 v18, 0x1

    new-instance v24, Lcom/tweber/stickfighter/h/e;

    const/16 v25, 0x8

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v24, v23, v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v23

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v17

    const/16 v18, 0x1

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lcom/tweber/stickfighter/h/e;

    const/16 v26, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v0, v8, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v25, v23, v24

    const/4 v8, 0x1

    new-instance v24, Lcom/tweber/stickfighter/h/e;

    const/16 v25, 0x8

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v24, v23, v8

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v23

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v8

    const/16 v18, 0x1

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lcom/tweber/stickfighter/h/e;

    const/16 v26, 0x8

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v25, v23, v24

    const/16 v19, 0x1

    new-instance v24, Lcom/tweber/stickfighter/h/e;

    const/16 v25, 0x9

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v24, v23, v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v23

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lcom/tweber/stickfighter/h/e;

    const/16 v26, 0x8

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v25, v23, v24

    const/16 v20, 0x1

    new-instance v24, Lcom/tweber/stickfighter/h/e;

    const/16 v25, 0x8

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v24, v23, v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v23

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v9}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v5, v6}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v6, v9}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v9, v10}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v10, v11}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v11, v12}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v12, v14}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v14, v13}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v22

    invoke-interface {v4, v13, v0}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v22

    invoke-interface {v4, v0, v5}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v6, v7}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v7, v15}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v16

    invoke-interface {v4, v15, v0}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v4, v0, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v17

    invoke-interface {v4, v0, v3}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v18

    invoke-interface {v4, v3, v0}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v18

    invoke-interface {v4, v0, v8}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v8, v5}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4}, Lcom/tweber/stickfighter/d/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v4}, Lcom/tweber/stickfighter/d/b;->e()V

    return-void

    :catchall_0
    move-exception v3

    invoke-interface {v4}, Lcom/tweber/stickfighter/d/b;->e()V

    throw v3
.end method

.method private static l(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V
    .locals 24

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v4

    const/high16 v3, 0x42820000    # 65.0f

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v3

    const/high16 v5, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v5

    sub-float/2addr v3, v5

    const/high16 v5, 0x42480000    # 50.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v5

    new-instance v6, Landroid/graphics/PointF;

    const/high16 v7, 0x42480000    # 50.0f

    const/high16 v8, 0x41c80000    # 25.0f

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    const/high16 v8, 0x42480000    # 50.0f

    const/high16 v9, 0x420c0000    # 35.0f

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    const/high16 v9, 0x42480000    # 50.0f

    const/high16 v10, 0x42340000    # 45.0f

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    const/high16 v10, 0x42480000    # 50.0f

    const/high16 v11, 0x425c0000    # 55.0f

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v10, Landroid/graphics/PointF;

    const/high16 v11, 0x42480000    # 50.0f

    const/high16 v12, 0x42820000    # 65.0f

    invoke-direct {v10, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v11, Landroid/graphics/PointF;

    const/high16 v12, 0x40800000    # 4.0f

    div-float v12, v3, v12

    add-float/2addr v12, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v12

    const/high16 v13, 0x41c80000    # 25.0f

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v12, Landroid/graphics/PointF;

    const/high16 v13, 0x40800000    # 4.0f

    div-float v13, v3, v13

    add-float/2addr v13, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v13

    const/high16 v14, 0x420c0000    # 35.0f

    invoke-direct {v12, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v13, Landroid/graphics/PointF;

    const/high16 v14, 0x40800000    # 4.0f

    div-float v14, v3, v14

    add-float/2addr v14, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v14

    const/high16 v15, 0x42340000    # 45.0f

    invoke-direct {v13, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v14, Landroid/graphics/PointF;

    const/high16 v15, 0x40800000    # 4.0f

    div-float v15, v3, v15

    add-float/2addr v15, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v15

    const/high16 v16, 0x425c0000    # 55.0f

    invoke-direct/range {v14 .. v16}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v15, Landroid/graphics/PointF;

    const/high16 v16, 0x40800000    # 4.0f

    div-float v3, v3, v16

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v3

    const/high16 v5, 0x42820000    # 65.0f

    invoke-direct {v15, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v3, -0x1000000

    invoke-interface {v4}, Lcom/tweber/stickfighter/d/b;->c()V

    const/4 v5, 0x1

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x9

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v16, v17

    const/4 v6, 0x1

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v7, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v16, v6

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v4, v0, v5, v3, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v5

    const/4 v6, 0x1

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x9

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v7, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v16, v17

    const/16 v17, 0x1

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v8, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v16, v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v4, v0, v6, v3, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v6

    const/16 v16, 0x1

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/tweber/stickfighter/h/e;

    const/16 v20, 0x9

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v8, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v19, v17, v18

    const/16 v18, 0x1

    new-instance v19, Lcom/tweber/stickfighter/h/e;

    const/16 v20, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v9, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v19, v17, v18

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/tweber/stickfighter/h/e;

    const/16 v21, 0x9

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v9, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v20, v18, v19

    const/16 v19, 0x1

    new-instance v20, Lcom/tweber/stickfighter/h/e;

    const/16 v21, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v10, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v20, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v10

    const/16 v17, 0x1

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/tweber/stickfighter/h/e;

    const/16 v21, 0x9

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v11, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v20, v18, v19

    const/4 v11, 0x1

    new-instance v19, Lcom/tweber/stickfighter/h/e;

    const/16 v20, 0x9

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v19, v18, v11

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v11

    const/16 v17, 0x1

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/tweber/stickfighter/h/e;

    const/16 v21, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v12, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v20, v18, v19

    const/16 v19, 0x1

    new-instance v20, Lcom/tweber/stickfighter/h/e;

    const/16 v21, 0x9

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v13, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v20, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v17

    const/16 v18, 0x1

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Lcom/tweber/stickfighter/h/e;

    const/16 v22, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v13, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v21, v19, v20

    const/16 v20, 0x1

    new-instance v21, Lcom/tweber/stickfighter/h/e;

    const/16 v22, 0x9

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v14, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v21, v19, v20

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Lcom/tweber/stickfighter/h/e;

    const/16 v23, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v14, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v22, v20, v21

    const/16 v21, 0x1

    new-instance v22, Lcom/tweber/stickfighter/h/e;

    const/16 v23, 0x9

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v15, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v22, v20, v21

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v15

    const/16 v19, 0x1

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Lcom/tweber/stickfighter/h/e;

    const/16 v23, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v7, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v22, v20, v21

    const/4 v7, 0x1

    new-instance v21, Lcom/tweber/stickfighter/h/e;

    const/16 v22, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v12, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v21, v20, v7

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v7

    const/4 v12, 0x1

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Lcom/tweber/stickfighter/h/e;

    const/16 v22, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v8, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v21, v19, v20

    const/4 v8, 0x1

    new-instance v20, Lcom/tweber/stickfighter/h/e;

    const/16 v21, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v13, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v20, v19, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v12, v3, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v8

    const/4 v12, 0x1

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x0

    new-instance v20, Lcom/tweber/stickfighter/h/e;

    const/16 v21, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v9, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v20, v13, v19

    const/4 v9, 0x1

    new-instance v19, Lcom/tweber/stickfighter/h/e;

    const/16 v20, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v14, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v19, v13, v9

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v12, v3, v13}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v5, v6}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v16

    invoke-interface {v4, v6, v0}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v16

    invoke-interface {v4, v0, v10}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v17

    invoke-interface {v4, v11, v0}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v18

    invoke-interface {v4, v0, v15}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v7, v6}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v8, v6}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v16

    invoke-interface {v4, v3, v0}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v17

    invoke-interface {v4, v7, v0}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v17

    invoke-interface {v4, v8, v0}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v18

    invoke-interface {v4, v3, v0}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4}, Lcom/tweber/stickfighter/d/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v4}, Lcom/tweber/stickfighter/d/b;->e()V

    return-void

    :catchall_0
    move-exception v3

    invoke-interface {v4}, Lcom/tweber/stickfighter/d/b;->e()V

    throw v3
.end method

.method private static m(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V
    .locals 15

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v2

    const/high16 v1, 0x425c0000    # 55.0f

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v1

    const/high16 v3, 0x41c80000    # 25.0f

    invoke-virtual {p0, v3}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x42480000    # 50.0f

    invoke-virtual {p0, v3}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v3

    new-instance v4, Landroid/graphics/PointF;

    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v6, 0x41c80000    # 25.0f

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    const/high16 v6, 0x40400000    # 3.0f

    div-float v6, v1, v6

    sub-float v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v6

    const/high16 v7, 0x41c80000    # 25.0f

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    const/high16 v7, 0x40400000    # 3.0f

    div-float v7, v1, v7

    sub-float v7, v3, v7

    invoke-virtual {p0, v7}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v7

    const/high16 v8, 0x420c0000    # 35.0f

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    const/high16 v8, 0x40400000    # 3.0f

    div-float v8, v1, v8

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    sub-float v8, v3, v8

    invoke-virtual {p0, v8}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v8

    const/high16 v9, 0x420c0000    # 35.0f

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    const/high16 v9, 0x40400000    # 3.0f

    div-float v9, v1, v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    sub-float v9, v3, v9

    invoke-virtual {p0, v9}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v9

    const/high16 v10, 0x42340000    # 45.0f

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    sub-float v10, v3, v1

    invoke-virtual {p0, v10}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v10

    const/high16 v11, 0x42340000    # 45.0f

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v10, Landroid/graphics/PointF;

    sub-float v1, v3, v1

    invoke-virtual {p0, v1}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v1

    const/high16 v3, 0x425c0000    # 55.0f

    invoke-direct {v10, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v1, -0x1000000

    invoke-interface {v2}, Lcom/tweber/stickfighter/d/b;->c()V

    const/4 v3, 0x1

    const/4 v11, 0x2

    new-array v11, v11, [Lcom/tweber/stickfighter/h/e;

    const/4 v12, 0x0

    new-instance v13, Lcom/tweber/stickfighter/h/e;

    const/16 v14, 0x9

    invoke-direct {v13, v4, v14}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v13, v11, v12

    const/4 v4, 0x1

    new-instance v12, Lcom/tweber/stickfighter/h/e;

    const/16 v13, 0x8

    invoke-direct {v12, v5, v13}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v12, v11, v4

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3, v1, v11}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v11, 0x2

    new-array v11, v11, [Lcom/tweber/stickfighter/h/e;

    const/4 v12, 0x0

    new-instance v13, Lcom/tweber/stickfighter/h/e;

    const/16 v14, 0x9

    invoke-direct {v13, v5, v14}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v13, v11, v12

    const/4 v5, 0x1

    new-instance v12, Lcom/tweber/stickfighter/h/e;

    const/16 v13, 0x8

    invoke-direct {v12, v6, v13}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v12, v11, v5

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v4, v1, v11}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v11, 0x2

    new-array v11, v11, [Lcom/tweber/stickfighter/h/e;

    const/4 v12, 0x0

    new-instance v13, Lcom/tweber/stickfighter/h/e;

    const/16 v14, 0x9

    invoke-direct {v13, v6, v14}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v13, v11, v12

    const/4 v6, 0x1

    new-instance v12, Lcom/tweber/stickfighter/h/e;

    const/16 v13, 0x8

    invoke-direct {v12, v7, v13}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v12, v11, v6

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v5, v1, v11}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v11, 0x2

    new-array v11, v11, [Lcom/tweber/stickfighter/h/e;

    const/4 v12, 0x0

    new-instance v13, Lcom/tweber/stickfighter/h/e;

    const/16 v14, 0x9

    invoke-direct {v13, v7, v14}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v13, v11, v12

    const/4 v7, 0x1

    new-instance v12, Lcom/tweber/stickfighter/h/e;

    const/16 v13, 0x8

    invoke-direct {v12, v8, v13}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v12, v11, v7

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v6, v1, v11}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v11, 0x2

    new-array v11, v11, [Lcom/tweber/stickfighter/h/e;

    const/4 v12, 0x0

    new-instance v13, Lcom/tweber/stickfighter/h/e;

    const/16 v14, 0x9

    invoke-direct {v13, v8, v14}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v13, v11, v12

    const/4 v8, 0x1

    new-instance v12, Lcom/tweber/stickfighter/h/e;

    const/16 v13, 0x8

    invoke-direct {v12, v9, v13}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v12, v11, v8

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v7, v1, v11}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v11, 0x2

    new-array v11, v11, [Lcom/tweber/stickfighter/h/e;

    const/4 v12, 0x0

    new-instance v13, Lcom/tweber/stickfighter/h/e;

    const/16 v14, 0x9

    invoke-direct {v13, v9, v14}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v13, v11, v12

    const/4 v9, 0x1

    new-instance v12, Lcom/tweber/stickfighter/h/e;

    const/4 v13, 0x3

    invoke-direct {v12, v10, v13}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v12, v11, v9

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v8, v1, v11}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v2, v3, v4}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v2, v4, v5}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v2, v5, v6}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v2, v6, v7}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v2, v7, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v2}, Lcom/tweber/stickfighter/d/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Lcom/tweber/stickfighter/d/b;->e()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v2}, Lcom/tweber/stickfighter/d/b;->e()V

    throw v1
.end method

.method private static n(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V
    .locals 13

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v1

    const/high16 v0, 0x425c0000    # 55.0f

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v0

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-virtual {p0, v2}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {p0, v2}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v2

    new-instance v3, Landroid/graphics/PointF;

    const/high16 v4, 0x42480000    # 50.0f

    const/high16 v5, 0x41c80000    # 25.0f

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v5

    const/high16 v6, 0x41c80000    # 25.0f

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    const/high16 v6, 0x40a00000    # 5.0f

    div-float v6, v0, v6

    sub-float v6, v2, v6

    invoke-virtual {p0, v6}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v6

    const/high16 v7, 0x42100000    # 36.0f

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v0, v7

    add-float/2addr v7, v2

    const/high16 v8, 0x40a00000    # 5.0f

    div-float v8, v0, v8

    add-float/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v7

    const/high16 v8, 0x42100000    # 36.0f

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v0, v8

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v0

    const/high16 v2, 0x425c0000    # 55.0f

    invoke-direct {v7, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v0, -0x1000000

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->c()V

    const/4 v2, 0x1

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/tweber/stickfighter/h/e;

    const/4 v9, 0x0

    new-instance v10, Lcom/tweber/stickfighter/h/e;

    const/16 v11, 0x9

    invoke-direct {v10, v3, v11}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Lcom/tweber/stickfighter/h/e;

    const/16 v11, 0x8

    invoke-direct {v10, v4, v11}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v10, v8, v9

    invoke-interface {v1, p1, v2, v0, v8}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v2

    const/4 v8, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/tweber/stickfighter/h/e;

    const/4 v10, 0x0

    new-instance v11, Lcom/tweber/stickfighter/h/e;

    const/16 v12, 0x8

    invoke-direct {v11, v3, v12}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v11, v9, v10

    const/4 v3, 0x1

    new-instance v10, Lcom/tweber/stickfighter/h/e;

    const/16 v11, 0x8

    invoke-direct {v10, v5, v11}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v10, v9, v3

    invoke-interface {v1, p1, v8, v0, v9}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v3

    const/4 v8, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/tweber/stickfighter/h/e;

    const/4 v10, 0x0

    new-instance v11, Lcom/tweber/stickfighter/h/e;

    const/16 v12, 0x9

    invoke-direct {v11, v4, v12}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v11, v9, v10

    const/4 v4, 0x1

    new-instance v10, Lcom/tweber/stickfighter/h/e;

    const/16 v11, 0x8

    invoke-direct {v10, v6, v11}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v10, v9, v4

    invoke-interface {v1, p1, v8, v0, v9}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v4

    const/4 v8, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/tweber/stickfighter/h/e;

    const/4 v10, 0x0

    new-instance v11, Lcom/tweber/stickfighter/h/e;

    const/16 v12, 0x9

    invoke-direct {v11, v5, v12}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v11, v9, v10

    const/4 v5, 0x1

    new-instance v10, Lcom/tweber/stickfighter/h/e;

    const/16 v11, 0x8

    invoke-direct {v10, v7, v11}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v10, v9, v5

    invoke-interface {v1, p1, v8, v0, v9}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/tweber/stickfighter/h/e;

    const/4 v10, 0x0

    new-instance v11, Lcom/tweber/stickfighter/h/e;

    const/16 v12, 0x9

    invoke-direct {v11, v6, v12}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v11, v9, v10

    const/4 v6, 0x1

    new-instance v10, Lcom/tweber/stickfighter/h/e;

    const/4 v11, 0x3

    invoke-direct {v10, v7, v11}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v10, v9, v6

    invoke-interface {v1, p1, v8, v0, v9}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v0

    invoke-static {p2, v2}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-static {p2, v3}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-static {p2, v4}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-static {p2, v5}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-static {p2, v0}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v1, v2, v3}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v1, v3, v5}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v1, v5, v0}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v1, v0, v4}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v1, v4, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->e()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->e()V

    throw v0
.end method

.method private static o(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V
    .locals 24

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v4

    const/high16 v3, 0x425c0000    # 55.0f

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v3

    const/high16 v5, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v5

    sub-float/2addr v3, v5

    const/high16 v5, 0x42480000    # 50.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v5

    const/high16 v6, 0x41a00000    # 20.0f

    div-float/2addr v3, v6

    new-instance v6, Landroid/graphics/PointF;

    const/high16 v7, 0x42480000    # 50.0f

    const/high16 v8, 0x41c80000    # 25.0f

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v3

    const/high16 v9, 0x3f400000    # 0.75f

    mul-float/2addr v8, v9

    sub-float v8, v5, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v8

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v3

    const/high16 v10, 0x3f400000    # 0.75f

    mul-float/2addr v9, v10

    sub-float v9, v5, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v9

    const/high16 v10, 0x420c0000    # 35.0f

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    const/high16 v10, 0x40400000    # 3.0f

    mul-float/2addr v10, v3

    const/high16 v11, 0x3f400000    # 0.75f

    mul-float/2addr v10, v11

    sub-float v10, v5, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v10

    const/high16 v11, 0x42200000    # 40.0f

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v10, Landroid/graphics/PointF;

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v11, v3

    const/high16 v12, 0x3f400000    # 0.75f

    mul-float/2addr v11, v12

    sub-float v11, v5, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v11

    const/high16 v12, 0x42200000    # 40.0f

    invoke-direct {v10, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v11, Landroid/graphics/PointF;

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v12, v3

    const/high16 v13, 0x3f400000    # 0.75f

    mul-float/2addr v12, v13

    sub-float v12, v5, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v12

    const/high16 v13, 0x42440000    # 49.0f

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v12, Landroid/graphics/PointF;

    const/high16 v13, 0x40600000    # 3.5f

    mul-float/2addr v13, v3

    const/high16 v14, 0x3f400000    # 0.75f

    mul-float/2addr v13, v14

    sub-float v13, v5, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v13

    const/high16 v14, 0x425c0000    # 55.0f

    invoke-direct {v12, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v13, Landroid/graphics/PointF;

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v3

    const/high16 v15, 0x3f400000    # 0.75f

    mul-float/2addr v14, v15

    add-float/2addr v14, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v14

    const/high16 v15, 0x41f00000    # 30.0f

    invoke-direct {v13, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v14, Landroid/graphics/PointF;

    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v3

    const/high16 v16, 0x3f400000    # 0.75f

    mul-float v15, v15, v16

    add-float/2addr v15, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v15

    const/high16 v16, 0x420c0000    # 35.0f

    invoke-direct/range {v14 .. v16}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v15, Landroid/graphics/PointF;

    const/high16 v16, 0x40400000    # 3.0f

    mul-float v16, v16, v3

    const/high16 v17, 0x3f400000    # 0.75f

    mul-float v16, v16, v17

    add-float v16, v16, v5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v16

    const/high16 v17, 0x42200000    # 40.0f

    invoke-direct/range {v15 .. v17}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v16, Landroid/graphics/PointF;

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v17, v17, v3

    const/high16 v18, 0x3f400000    # 0.75f

    mul-float v17, v17, v18

    add-float v17, v17, v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v17

    const/high16 v18, 0x42200000    # 40.0f

    invoke-direct/range {v16 .. v18}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v17, Landroid/graphics/PointF;

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v18, v18, v3

    const/high16 v19, 0x3f400000    # 0.75f

    mul-float v18, v18, v19

    add-float v18, v18, v5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v18

    const/high16 v19, 0x42440000    # 49.0f

    invoke-direct/range {v17 .. v19}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v18, Landroid/graphics/PointF;

    const/high16 v19, 0x40600000    # 3.5f

    mul-float v3, v3, v19

    const/high16 v19, 0x3f400000    # 0.75f

    mul-float v3, v3, v19

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v3

    const/high16 v5, 0x425c0000    # 55.0f

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v3, -0x1000000

    invoke-interface {v4}, Lcom/tweber/stickfighter/d/b;->c()V

    const/4 v5, 0x1

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Lcom/tweber/stickfighter/h/e;

    const/16 v22, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v7, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v21, v19, v20

    const/16 v20, 0x1

    new-instance v21, Lcom/tweber/stickfighter/h/e;

    const/16 v22, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v6, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v21, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v5, v3, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v5

    const/16 v19, 0x1

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Lcom/tweber/stickfighter/h/e;

    const/16 v23, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v7, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v22, v20, v21

    const/4 v7, 0x1

    new-instance v21, Lcom/tweber/stickfighter/h/e;

    const/16 v22, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v8, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v21, v20, v7

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v7

    const/16 v19, 0x1

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Lcom/tweber/stickfighter/h/e;

    const/16 v23, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v8, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v22, v20, v21

    const/4 v8, 0x1

    new-instance v21, Lcom/tweber/stickfighter/h/e;

    const/16 v22, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v9, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v21, v20, v8

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v8

    const/16 v19, 0x1

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Lcom/tweber/stickfighter/h/e;

    const/16 v23, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v9, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v22, v20, v21

    const/4 v9, 0x1

    new-instance v21, Lcom/tweber/stickfighter/h/e;

    const/16 v22, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v10, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v21, v20, v9

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v9

    const/16 v19, 0x1

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Lcom/tweber/stickfighter/h/e;

    const/16 v23, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v10, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v22, v20, v21

    const/4 v10, 0x1

    new-instance v21, Lcom/tweber/stickfighter/h/e;

    const/16 v22, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v11, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v21, v20, v10

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v10

    const/16 v19, 0x1

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Lcom/tweber/stickfighter/h/e;

    const/16 v23, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v11, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v22, v20, v21

    const/4 v11, 0x1

    new-instance v21, Lcom/tweber/stickfighter/h/e;

    const/16 v22, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v12, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v21, v20, v11

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v11

    const/16 v19, 0x1

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Lcom/tweber/stickfighter/h/e;

    const/16 v23, 0x9

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v22, v20, v21

    const/16 v21, 0x1

    new-instance v22, Lcom/tweber/stickfighter/h/e;

    const/16 v23, 0x9

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v12, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v22, v20, v21

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v12

    const/16 v19, 0x1

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Lcom/tweber/stickfighter/h/e;

    const/16 v23, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v13, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v22, v20, v21

    const/16 v21, 0x1

    new-instance v22, Lcom/tweber/stickfighter/h/e;

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v6, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v22, v20, v21

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v6

    const/16 v19, 0x1

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Lcom/tweber/stickfighter/h/e;

    const/16 v23, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v13, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v22, v20, v21

    const/4 v13, 0x1

    new-instance v21, Lcom/tweber/stickfighter/h/e;

    const/16 v22, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v14, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v21, v20, v13

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v13

    const/16 v19, 0x1

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Lcom/tweber/stickfighter/h/e;

    const/16 v23, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v14, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v22, v20, v21

    const/4 v14, 0x1

    new-instance v21, Lcom/tweber/stickfighter/h/e;

    const/16 v22, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v15, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v21, v20, v14

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v14

    const/16 v19, 0x1

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Lcom/tweber/stickfighter/h/e;

    const/16 v23, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v15, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v22, v20, v21

    const/4 v15, 0x1

    new-instance v21, Lcom/tweber/stickfighter/h/e;

    const/16 v22, 0x8

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v21, v20, v15

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v15

    const/16 v19, 0x1

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Lcom/tweber/stickfighter/h/e;

    const/16 v23, 0x8

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v22, v20, v21

    const/16 v16, 0x1

    new-instance v21, Lcom/tweber/stickfighter/h/e;

    const/16 v22, 0x8

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v21, v20, v16

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v16

    const/16 v19, 0x1

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Lcom/tweber/stickfighter/h/e;

    const/16 v23, 0x8

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v22, v20, v21

    const/16 v17, 0x1

    new-instance v21, Lcom/tweber/stickfighter/h/e;

    const/16 v22, 0x8

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v21, v20, v17

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v9}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v5, v7}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v7, v8}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v8, v9}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v9, v10}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v10, v11}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v12, v11}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v12, v3}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v5, v6}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v6, v13}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v13, v14}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4, v14, v15}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v16

    invoke-interface {v4, v15, v0}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, v16

    invoke-interface {v4, v0, v3}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v4}, Lcom/tweber/stickfighter/d/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v4}, Lcom/tweber/stickfighter/d/b;->e()V

    return-void

    :catchall_0
    move-exception v3

    invoke-interface {v4}, Lcom/tweber/stickfighter/d/b;->e()V

    throw v3
.end method

.method private static p(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V
    .locals 20

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v3

    const/high16 v2, 0x425c0000    # 55.0f

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v2

    const/high16 v4, 0x420c0000    # 35.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v4

    sub-float/2addr v2, v4

    const/high16 v4, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v2, v5

    new-instance v5, Landroid/graphics/PointF;

    const/high16 v6, 0x41f00000    # 30.0f

    const/high16 v7, 0x420c0000    # 35.0f

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v7, v2

    add-float/2addr v7, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v7

    const/high16 v8, 0x42180000    # 38.0f

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    const/high16 v8, 0x41c00000    # 24.0f

    mul-float/2addr v8, v2

    add-float/2addr v8, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v8

    const/high16 v9, 0x42180000    # 38.0f

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    const/high16 v9, 0x41c00000    # 24.0f

    mul-float/2addr v9, v2

    add-float/2addr v9, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v9

    const/high16 v10, 0x42380000    # 46.0f

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    const/high16 v10, 0x41600000    # 14.0f

    mul-float/2addr v10, v2

    add-float/2addr v10, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v10

    const/high16 v11, 0x42380000    # 46.0f

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v10, Landroid/graphics/PointF;

    const/high16 v11, 0x41600000    # 14.0f

    mul-float/2addr v11, v2

    add-float/2addr v11, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v11

    const/high16 v12, 0x42540000    # 53.0f

    invoke-direct {v10, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v11, Landroid/graphics/PointF;

    const/high16 v12, 0x41400000    # 12.0f

    mul-float/2addr v12, v2

    add-float/2addr v12, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v12

    const/high16 v13, 0x42540000    # 53.0f

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v12, Landroid/graphics/PointF;

    const/high16 v13, 0x41400000    # 12.0f

    mul-float/2addr v13, v2

    add-float/2addr v13, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v13

    const/high16 v14, 0x42380000    # 46.0f

    invoke-direct {v12, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v13, Landroid/graphics/PointF;

    const/high16 v14, 0x40400000    # 3.0f

    mul-float/2addr v2, v14

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v2

    const/high16 v14, 0x42380000    # 46.0f

    invoke-direct {v13, v2, v14}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v4

    const/high16 v14, 0x42440000    # 49.0f

    invoke-direct {v2, v4, v14}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v4, -0x1000000

    invoke-interface {v3}, Lcom/tweber/stickfighter/d/b;->c()V

    const/4 v14, 0x1

    const/4 v15, 0x2

    new-array v15, v15, [Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x0

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v15, v16

    const/16 v16, 0x1

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v6, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v15, v16

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v14, v4, v15}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v16, v17

    const/4 v6, 0x1

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x9

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v7, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v16, v6

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v3, v0, v15, v4, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v6

    const/4 v15, 0x1

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v7, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v16, v17

    const/4 v7, 0x1

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x9

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v16, v7

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v3, v0, v15, v4, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v7

    const/4 v15, 0x1

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v8, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v16, v17

    const/4 v8, 0x1

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v9, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v16, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v3, v0, v15, v4, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v8

    const/4 v15, 0x1

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v9, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v16, v17

    const/4 v9, 0x1

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v16, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v3, v0, v15, v4, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v9

    const/4 v15, 0x1

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v10, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v16, v17

    const/4 v10, 0x1

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v11, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v16, v10

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v3, v0, v15, v4, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v10

    const/4 v15, 0x1

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v16, v17

    const/4 v11, 0x1

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v12, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v16, v11

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v3, v0, v15, v4, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v11

    const/4 v15, 0x1

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v12, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v16, v17

    const/4 v12, 0x1

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v13, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v16, v12

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v3, v0, v15, v4, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v12

    const/4 v15, 0x1

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v16, v17

    const/4 v13, 0x1

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x9

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v16, v13

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v3, v0, v15, v4, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v13

    const/4 v15, 0x1

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v2, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v16, v17

    const/4 v2, 0x1

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v16, v2

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v3, v0, v15, v4, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v9}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v14, v6}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v6, v7}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v7, v8}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v8, v9}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v9, v10}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v10, v11}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v11, v12}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v12, v13}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v13, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v14, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3}, Lcom/tweber/stickfighter/d/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v3}, Lcom/tweber/stickfighter/d/b;->e()V

    return-void

    :catchall_0
    move-exception v2

    invoke-interface {v3}, Lcom/tweber/stickfighter/d/b;->e()V

    throw v2
.end method

.method private static q(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V
    .locals 20

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v3

    const/high16 v2, 0x42200000    # 40.0f

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v2

    const/high16 v4, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v4

    sub-float/2addr v2, v4

    const/high16 v4, 0x42200000    # 40.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v2, v5

    new-instance v5, Landroid/graphics/PointF;

    const/high16 v6, 0x42200000    # 40.0f

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v7, v2

    add-float/2addr v7, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v7

    const/high16 v8, 0x42040000    # 33.0f

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v8

    const/high16 v9, 0x42040000    # 33.0f

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    const/high16 v9, 0x41200000    # 10.0f

    mul-float/2addr v9, v2

    add-float/2addr v9, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v9

    const/high16 v10, 0x42100000    # 36.0f

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v10

    const/high16 v11, 0x42200000    # 40.0f

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v10, Landroid/graphics/PointF;

    const/high16 v11, 0x41200000    # 10.0f

    mul-float/2addr v11, v2

    add-float/2addr v11, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v11

    const/high16 v12, 0x422c0000    # 43.0f

    invoke-direct {v10, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v11, Landroid/graphics/PointF;

    const/high16 v12, 0x40400000    # 3.0f

    mul-float/2addr v12, v2

    sub-float v12, v4, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v12

    const/high16 v13, 0x42200000    # 40.0f

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v12, Landroid/graphics/PointF;

    const/high16 v13, 0x40e00000    # 7.0f

    mul-float/2addr v2, v13

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v2

    const/high16 v4, 0x422c0000    # 43.0f

    invoke-direct {v12, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v2, -0x1000000

    invoke-interface {v3}, Lcom/tweber/stickfighter/d/b;->c()V

    const/4 v4, 0x1

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/tweber/stickfighter/h/e;

    const/4 v14, 0x0

    new-instance v15, Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-direct {v15, v5, v0}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-instance v15, Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x9

    move/from16 v0, v16

    invoke-direct {v15, v6, v0}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v15, v13, v14

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4, v2, v13}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v4

    const/4 v13, 0x1

    const/4 v14, 0x2

    new-array v14, v14, [Lcom/tweber/stickfighter/h/e;

    const/4 v15, 0x0

    new-instance v16, Lcom/tweber/stickfighter/h/e;

    const/16 v17, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v16, v14, v15

    const/4 v5, 0x1

    new-instance v15, Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-direct {v15, v7, v0}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v15, v14, v5

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v13, v2, v14}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v5

    const/4 v13, 0x1

    const/4 v14, 0x2

    new-array v14, v14, [Lcom/tweber/stickfighter/h/e;

    const/4 v15, 0x0

    new-instance v16, Lcom/tweber/stickfighter/h/e;

    const/16 v17, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v6, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v16, v14, v15

    const/4 v6, 0x1

    new-instance v15, Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-direct {v15, v8, v0}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v15, v14, v6

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v13, v2, v14}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v6

    const/4 v13, 0x1

    const/4 v14, 0x2

    new-array v14, v14, [Lcom/tweber/stickfighter/h/e;

    const/4 v15, 0x0

    new-instance v16, Lcom/tweber/stickfighter/h/e;

    const/16 v17, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v16, v14, v15

    const/4 v15, 0x1

    new-instance v16, Lcom/tweber/stickfighter/h/e;

    const/16 v17, 0x9

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v9, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v16, v14, v15

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v13, v2, v14}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x2

    new-array v15, v15, [Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x0

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v15, v16

    const/16 v16, 0x1

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x9

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v15, v16

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v14, v2, v15}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v14

    const/4 v15, 0x2

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/tweber/stickfighter/h/e;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/tweber/stickfighter/h/e;

    const/16 v19, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v18, v16, v17

    const/4 v11, 0x1

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v9, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v16, v11

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v3, v0, v15, v2, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v9

    const/4 v11, 0x2

    const/4 v15, 0x2

    new-array v15, v15, [Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x0

    new-instance v17, Lcom/tweber/stickfighter/h/e;

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v12, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v17, v15, v16

    const/4 v12, 0x1

    new-instance v16, Lcom/tweber/stickfighter/h/e;

    const/16 v17, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v10, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v16, v15, v12

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v11, v2, v15}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [Lcom/tweber/stickfighter/h/e;

    const/4 v15, 0x0

    new-instance v16, Lcom/tweber/stickfighter/h/e;

    const/16 v17, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v16, v12, v15

    const/4 v7, 0x1

    new-instance v15, Lcom/tweber/stickfighter/h/e;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-direct {v15, v8, v0}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v15, v12, v7

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v11, v2, v12}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v9}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v9, v13}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v13, v5}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v5, v4}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v4, v6}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v6, v2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v6, v14}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3, v14, v10}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v3}, Lcom/tweber/stickfighter/d/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v3}, Lcom/tweber/stickfighter/d/b;->e()V

    return-void

    :catchall_0
    move-exception v2

    invoke-interface {v3}, Lcom/tweber/stickfighter/d/b;->e()V

    throw v2
.end method

.method private static r(Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V
    .locals 10

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v1

    :try_start_0
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v2, 0x42200000    # 40.0f

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x42340000    # 45.0f

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    const/high16 v4, 0x42480000    # 50.0f

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v4, -0x1000000

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->c()V

    const/4 v5, 0x3

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/tweber/stickfighter/h/e;

    const/4 v7, 0x0

    new-instance v8, Lcom/tweber/stickfighter/h/e;

    const/4 v9, 0x3

    invoke-direct {v8, v0, v9}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v8, v6, v7

    const/4 v0, 0x1

    new-instance v7, Lcom/tweber/stickfighter/h/e;

    const/16 v8, 0x9

    invoke-direct {v7, v2, v8}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v7, v6, v0

    const/4 v0, 0x2

    new-instance v2, Lcom/tweber/stickfighter/h/e;

    const/16 v7, 0x9

    invoke-direct {v2, v3, v7}, Lcom/tweber/stickfighter/h/e;-><init>(Landroid/graphics/PointF;I)V

    aput-object v2, v6, v0

    invoke-interface {v1, p1, v5, v4, v6}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/tweber/stickfighter/h/l;->a(Landroid/util/SparseArray;Lcom/tweber/stickfighter/h/f;)V

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->e()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->e()V

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/h/l;->d:Ljava/lang/String;

    return-object v0
.end method
