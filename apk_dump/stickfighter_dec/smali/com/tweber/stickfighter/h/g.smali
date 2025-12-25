.class public Lcom/tweber/stickfighter/h/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(IJJLjava/util/ArrayList;I)Lcom/tweber/stickfighter/h/f;
    .locals 9

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animation object type not recognized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v1, Lcom/tweber/stickfighter/h/t;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/tweber/stickfighter/h/t;-><init>(JJLjava/util/ArrayList;I)V

    :goto_0
    return-object v1

    :pswitch_1
    new-instance v1, Lcom/tweber/stickfighter/h/h;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/tweber/stickfighter/h/h;-><init>(JJLjava/util/ArrayList;I)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/tweber/stickfighter/h/i;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/tweber/stickfighter/h/i;-><init>(JJLjava/util/ArrayList;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
