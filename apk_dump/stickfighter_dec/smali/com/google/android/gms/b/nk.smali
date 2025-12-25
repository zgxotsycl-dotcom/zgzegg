.class public Lcom/google/android/gms/b/nk;
.super Lcom/google/android/gms/b/nc;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# instance fields
.field protected g:Lcom/google/android/gms/b/jj;

.field private h:Lcom/google/android/gms/b/js;

.field private i:Lcom/google/android/gms/b/jb;

.field private j:Lcom/google/android/gms/b/jd;

.field private final k:Lcom/google/android/gms/b/dq;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/b/pk;Lcom/google/android/gms/b/js;Lcom/google/android/gms/b/nh;Lcom/google/android/gms/b/dq;)V
    .locals 1

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/b/nc;-><init>(Landroid/content/Context;Lcom/google/android/gms/b/pk;Lcom/google/android/gms/b/nh;)V

    iput-object p3, p0, Lcom/google/android/gms/b/nk;->h:Lcom/google/android/gms/b/js;

    iget-object v0, p2, Lcom/google/android/gms/b/pk;->c:Lcom/google/android/gms/b/jd;

    iput-object v0, p0, Lcom/google/android/gms/b/nk;->j:Lcom/google/android/gms/b/jd;

    iput-object p5, p0, Lcom/google/android/gms/b/nk;->k:Lcom/google/android/gms/b/dq;

    return-void
.end method


# virtual methods
.method protected a(I)Lcom/google/android/gms/b/pj;
    .locals 31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/b/nk;->e:Lcom/google/android/gms/b/pk;

    iget-object v6, v2, Lcom/google/android/gms/b/pk;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    new-instance v2, Lcom/google/android/gms/b/pj;

    iget-object v3, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->c:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/b/nk;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->d:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/b/nk;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->f:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/b/nk;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->j:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/b/nk;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v9, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->l:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/b/nk;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->k:J

    iget-object v12, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nk;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v13, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->h:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nk;->g:Lcom/google/android/gms/b/jj;

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nk;->g:Lcom/google/android/gms/b/jj;

    iget-object v14, v6, Lcom/google/android/gms/b/jj;->b:Lcom/google/android/gms/b/jc;

    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nk;->g:Lcom/google/android/gms/b/jj;

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nk;->g:Lcom/google/android/gms/b/jj;

    iget-object v15, v6, Lcom/google/android/gms/b/jj;->c:Lcom/google/android/gms/b/jv;

    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nk;->g:Lcom/google/android/gms/b/jj;

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nk;->g:Lcom/google/android/gms/b/jj;

    iget-object v0, v6, Lcom/google/android/gms/b/jj;->d:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/b/nk;->j:Lcom/google/android/gms/b/jd;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nk;->g:Lcom/google/android/gms/b/jj;

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nk;->g:Lcom/google/android/gms/b/jj;

    iget-object v0, v6, Lcom/google/android/gms/b/jj;->e:Lcom/google/android/gms/b/jf;

    move-object/from16 v18, v0

    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nk;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->i:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nk;->e:Lcom/google/android/gms/b/pk;

    iget-object v0, v6, Lcom/google/android/gms/b/pk;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nk;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->g:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nk;->e:Lcom/google/android/gms/b/pk;

    iget-wide v0, v6, Lcom/google/android/gms/b/pk;->f:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nk;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->n:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nk;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->o:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nk;->e:Lcom/google/android/gms/b/pk;

    iget-object v0, v6, Lcom/google/android/gms/b/pk;->h:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/b/pj;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/b/sk;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/b/jc;Lcom/google/android/gms/b/jv;Ljava/lang/String;Lcom/google/android/gms/b/jd;Lcom/google/android/gms/b/jf;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/h;)V

    return-object v2

    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    :cond_2
    const-class v6, Lcom/google/a/b/a/a;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    goto :goto_2

    :cond_3
    const/16 v18, 0x0

    goto :goto_3
.end method

.method protected a(J)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/b/nk;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/b/nk;->b(J)Lcom/google/android/gms/b/jb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/nk;->i:Lcom/google/android/gms/b/jb;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/b/nk;->i:Lcom/google/android/gms/b/jb;

    iget-object v1, p0, Lcom/google/android/gms/b/nk;->j:Lcom/google/android/gms/b/jd;

    iget-object v1, v1, Lcom/google/android/gms/b/jd;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/jb;->a(Ljava/util/List;)Lcom/google/android/gms/b/jj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/nk;->g:Lcom/google/android/gms/b/jj;

    iget-object v0, p0, Lcom/google/android/gms/b/nk;->g:Lcom/google/android/gms/b/jj;

    iget v0, v0, Lcom/google/android/gms/b/jj;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/b/nf;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected mediation result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/b/nk;->g:Lcom/google/android/gms/b/jj;

    iget v2, v2, Lcom/google/android/gms/b/jj;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/b/nf;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/b/nf;

    const-string v1, "No fill from any mediation ad networks."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/b/nf;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method b(J)Lcom/google/android/gms/b/jb;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/b/nk;->j:Lcom/google/android/gms/b/jd;

    iget v0, v0, Lcom/google/android/gms/b/jd;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/b/jm;

    iget-object v1, p0, Lcom/google/android/gms/b/nk;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/b/nk;->e:Lcom/google/android/gms/b/pk;

    iget-object v2, v2, Lcom/google/android/gms/b/pk;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/b/nk;->h:Lcom/google/android/gms/b/js;

    iget-object v4, p0, Lcom/google/android/gms/b/nk;->j:Lcom/google/android/gms/b/jd;

    iget-object v5, p0, Lcom/google/android/gms/b/nk;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->t:Z

    sget-object v6, Lcom/google/android/gms/b/db;->ax:Lcom/google/android/gms/b/cs;

    invoke-virtual {v6}, Lcom/google/android/gms/b/cs;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x2

    move-wide v6, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/b/jm;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/b/js;Lcom/google/android/gms/b/jd;ZJJI)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/b/jp;

    iget-object v1, p0, Lcom/google/android/gms/b/nk;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/b/nk;->e:Lcom/google/android/gms/b/pk;

    iget-object v2, v2, Lcom/google/android/gms/b/pk;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/b/nk;->h:Lcom/google/android/gms/b/js;

    iget-object v4, p0, Lcom/google/android/gms/b/nk;->j:Lcom/google/android/gms/b/jd;

    iget-object v5, p0, Lcom/google/android/gms/b/nk;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->t:Z

    sget-object v6, Lcom/google/android/gms/b/db;->ax:Lcom/google/android/gms/b/cs;

    invoke-virtual {v6}, Lcom/google/android/gms/b/cs;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, p0, Lcom/google/android/gms/b/nk;->k:Lcom/google/android/gms/b/dq;

    move-wide v6, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/b/jp;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/b/js;Lcom/google/android/gms/b/jd;ZJJLcom/google/android/gms/b/dq;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/b/nk;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/b/nc;->b()V

    iget-object v0, p0, Lcom/google/android/gms/b/nk;->i:Lcom/google/android/gms/b/jb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/nk;->i:Lcom/google/android/gms/b/jb;

    invoke-interface {v0}, Lcom/google/android/gms/b/jb;->a()V

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
