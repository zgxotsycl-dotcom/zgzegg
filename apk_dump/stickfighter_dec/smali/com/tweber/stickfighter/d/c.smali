.class public Lcom/tweber/stickfighter/d/c;
.super Landroid/database/sqlite/SQLiteOpenHelper;

# interfaces
.implements Lcom/tweber/stickfighter/d/b;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/tweber/stickfighter/activities/HomeScreenActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tweber/stickfighter/d/c;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tweber/stickfighter/d/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "StickFighter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/d/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private a(Landroid/database/Cursor;)Lcom/tweber/stickfighter/h/v;
    .locals 5

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "height_width_ratio"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "background_color"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/tweber/stickfighter/h/v;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/tweber/stickfighter/h/v;-><init>(ILjava/lang/String;FI)V

    return-object v4
.end method

.method private a(Ljava/util/Set;J)Ljava/util/HashMap;
    .locals 12

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT a._id _id, a.animation_object_type_id animation_object_type_id, c.argb_color argb_color FROM animation_object a LEFT JOIN animation_object_detail c ON a._id = c.animation_object_id AND c.frame_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE a._id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v0, "animation_object_type_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v0, "argb_color"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-nez v7, :cond_4

    const/high16 v7, -0x1000000

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v2, v2

    move-wide v4, p2

    invoke-static/range {v1 .. v7}, Lcom/tweber/stickfighter/h/g;->a(IJJLjava/util/ArrayList;I)Lcom/tweber/stickfighter/h/f;

    move-result-object v1

    iget v2, v1, Lcom/tweber/stickfighter/h/f;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lcom/tweber/stickfighter/h/c;JJ)V
    .locals 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "x"

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v1, "y"

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p1, Lcom/tweber/stickfighter/h/c;->c:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "anchor_point"

    const-string v4, "frame_id = ? AND index_number = ? AND animation_object_id = ?"

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private a(Lcom/tweber/stickfighter/h/f;J)V
    .locals 8

    iget v0, p1, Lcom/tweber/stickfighter/h/f;->b:I

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/f;->b()I

    move-result v1

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/tweber/stickfighter/d/c;->a(IJI)V

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tweber/stickfighter/h/c;

    iget v0, p1, Lcom/tweber/stickfighter/h/f;->b:I

    int-to-long v4, v0

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/tweber/stickfighter/d/c;->a(Lcom/tweber/stickfighter/h/c;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Landroid/database/Cursor;)Lcom/tweber/stickfighter/h/p;
    .locals 4

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "position"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "sequence_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/tweber/stickfighter/h/p;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {v3, v0, v1, v2}, Lcom/tweber/stickfighter/h/p;-><init>(III)V

    return-object v3
.end method


# virtual methods
.method public a(IJLandroid/graphics/PointF;II)Lcom/tweber/stickfighter/h/c;
    .locals 8

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "animation_object_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "frame_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "index_number"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "x"

    iget v2, p4, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v1, "y"

    iget v2, p4, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v1, "selectable"

    and-int/lit8 v2, p6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "anchor_point_type"

    and-int/lit8 v2, p6, 0x4

    and-int/lit8 v3, p6, 0x2

    or-int/2addr v2, v3

    and-int/lit8 v3, p6, 0x8

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "anchor_point"

    const-string v3, "x"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    new-instance v1, Lcom/tweber/stickfighter/h/c;

    iget v5, p4, Landroid/graphics/PointF;->x:F

    iget v6, p4, Landroid/graphics/PointF;->y:F

    move v4, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/tweber/stickfighter/h/c;-><init>(JIFFI)V

    return-object v1
.end method

.method public a(Lcom/tweber/stickfighter/h/f;JLjava/util/HashMap;Landroid/util/SparseArray;)Lcom/tweber/stickfighter/h/f;
    .locals 14

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v10, v2

    :goto_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_0

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/tweber/stickfighter/h/c;

    iget v3, p1, Lcom/tweber/stickfighter/h/f;->b:I

    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual {v9}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v2

    invoke-virtual {v9}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v4

    invoke-direct {v6, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iget v7, v9, Lcom/tweber/stickfighter/h/c;->c:I

    iget v8, v9, Lcom/tweber/stickfighter/h/c;->b:I

    move-object v2, p0

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/tweber/stickfighter/d/c;->a(IJLandroid/graphics/PointF;II)Lcom/tweber/stickfighter/h/c;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v9, Lcom/tweber/stickfighter/h/c;->a:I

    iget v4, v2, Lcom/tweber/stickfighter/h/c;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_0

    :cond_0
    iget-byte v3, p1, Lcom/tweber/stickfighter/h/f;->c:B

    iget v2, p1, Lcom/tweber/stickfighter/h/f;->b:I

    int-to-long v4, v2

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/f;->b()I

    move-result v9

    move-wide/from16 v6, p2

    move-object v8, v12

    invoke-static/range {v3 .. v9}, Lcom/tweber/stickfighter/h/g;->a(IJJLjava/util/ArrayList;I)Lcom/tweber/stickfighter/h/f;

    move-result-object v2

    return-object v2
.end method

.method public varargs a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;
    .locals 8

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "sequence_id"

    iget v2, p1, Lcom/tweber/stickfighter/h/p;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "animation_object_type_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "animation_object"

    const-string v3, "animation_object_type_id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    long-to-int v1, v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    array-length v0, p4

    if-ge v5, v0, :cond_0

    aget-object v0, p4, v5

    iget-object v4, v0, Lcom/tweber/stickfighter/h/e;->a:Landroid/graphics/PointF;

    iget v0, p1, Lcom/tweber/stickfighter/h/p;->a:I

    int-to-long v2, v0

    aget-object v0, p4, v5

    iget v6, v0, Lcom/tweber/stickfighter/h/e;->b:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/tweber/stickfighter/d/c;->a(IJLandroid/graphics/PointF;II)Lcom/tweber/stickfighter/h/c;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    int-to-long v2, v1

    iget v0, p1, Lcom/tweber/stickfighter/h/p;->a:I

    int-to-long v4, v0

    move v1, p2

    move-object v6, v7

    move v7, p3

    invoke-static/range {v1 .. v7}, Lcom/tweber/stickfighter/h/g;->a(IJJLjava/util/ArrayList;I)Lcom/tweber/stickfighter/h/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tweber/stickfighter/h/p;->a(Lcom/tweber/stickfighter/h/f;)V

    return-object v0
.end method

.method public a(II)Lcom/tweber/stickfighter/h/p;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "sequence_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "position"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "frame"

    const-string v3, "position"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    long-to-int v0, v0

    new-instance v1, Lcom/tweber/stickfighter/h/p;

    invoke-direct {v1, v0, p2, p1}, Lcom/tweber/stickfighter/h/p;-><init>(III)V

    return-object v1
.end method

.method public a(J)Lcom/tweber/stickfighter/h/v;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT _id, name, height_width_ratio, background_image_path, background_color FROM sequence WHERE _id = ?"

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/tweber/stickfighter/d/c;->a(Landroid/database/Cursor;)Lcom/tweber/stickfighter/h/v;

    move-result-object v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public a(Ljava/lang/String;F)Lcom/tweber/stickfighter/h/v;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/tweber/stickfighter/d/c;->a(Ljava/lang/String;FI)Lcom/tweber/stickfighter/h/v;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;FI)Lcom/tweber/stickfighter/h/v;
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x270f

    invoke-virtual {p0, v0, v1}, Lcom/tweber/stickfighter/d/c;->d(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "name"

    invoke-virtual {v2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "height_width_ratio"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v0, "background_color"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sequence"

    const-string v3, "name"

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    long-to-int v0, v0

    new-instance v1, Lcom/tweber/stickfighter/h/v;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/tweber/stickfighter/h/v;-><init>(ILjava/lang/String;FI)V

    return-object v1
.end method

.method public a()Ljava/util/ArrayList;
    .locals 3

    iget-object v0, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT _id, name, height_width_ratio, background_image_path, background_color FROM sequence WHERE _id < 10000 ORDER BY _id DESC"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/tweber/stickfighter/d/c;->a(Landroid/database/Cursor;)Lcom/tweber/stickfighter/h/v;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public a(IJI)V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "argb_color"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "animation_object_detail"

    const-string v4, "animation_object_id = ? AND frame_id = ?"

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "animation_object_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "frame_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "animation_object_detail"

    const-string v3, "frame_id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    return-void
.end method

.method public a(JI)V
    .locals 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "background_color"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "sequence"

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcom/tweber/stickfighter/h/c;Lcom/tweber/stickfighter/h/c;)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "anchor_point_id"

    iget v2, p1, Lcom/tweber/stickfighter/h/c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "connected_anchor_point_id"

    iget v2, p2, Lcom/tweber/stickfighter/h/c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "anchor_connection"

    const-string v3, "connected_anchor_point_id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    new-instance v0, Lcom/tweber/stickfighter/h/b;

    iget v1, p2, Lcom/tweber/stickfighter/h/c;->a:I

    invoke-direct {v0, v1}, Lcom/tweber/stickfighter/h/b;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/tweber/stickfighter/h/c;->a(Lcom/tweber/stickfighter/h/b;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "anchor_point_id"

    iget v2, p2, Lcom/tweber/stickfighter/h/c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "connected_anchor_point_id"

    iget v2, p1, Lcom/tweber/stickfighter/h/c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "anchor_connection"

    const-string v3, "connected_anchor_point_id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    new-instance v0, Lcom/tweber/stickfighter/h/b;

    iget v1, p1, Lcom/tweber/stickfighter/h/c;->a:I

    invoke-direct {v0, v1}, Lcom/tweber/stickfighter/h/b;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/tweber/stickfighter/h/c;->a(Lcom/tweber/stickfighter/h/b;)V

    return-void
.end method

.method public a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;)V
    .locals 7

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v5

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v5

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/tweber/stickfighter/d/c;->a(Lcom/tweber/stickfighter/h/c;Lcom/tweber/stickfighter/h/c;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/tweber/stickfighter/h/p;)V
    .locals 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "sequence_id"

    iget v2, p1, Lcom/tweber/stickfighter/h/p;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "position"

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/p;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    iget-object v1, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v1, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "frame"

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p1, Lcom/tweber/stickfighter/h/p;->a:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/p;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    iget v2, p1, Lcom/tweber/stickfighter/h/p;->a:I

    int-to-long v2, v2

    invoke-direct {p0, v0, v2, v3}, Lcom/tweber/stickfighter/d/c;->a(Lcom/tweber/stickfighter/h/f;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public a(Lcom/tweber/stickfighter/h/p;Lcom/tweber/stickfighter/h/f;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

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

    iget-object v2, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "anchor_point"

    const-string v4, "_id = ?"

    new-array v5, v8, [Ljava/lang/String;

    iget v6, v0, Lcom/tweber/stickfighter/h/c;->a:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "anchor_connection"

    const-string v4, "anchor_point_id = ? OR connected_anchor_point_id = ?"

    new-array v5, v8, [Ljava/lang/String;

    iget v0, v0, Lcom/tweber/stickfighter/h/c;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/tweber/stickfighter/h/v;)V
    .locals 6

    iget-object v0, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sequence"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/v;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public b(J)I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT count(*) framecount FROM frame WHERE sequence_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "framecount"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0
.end method

.method public b(II)Lcom/tweber/stickfighter/h/b;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "anchor_point_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "connected_anchor_point_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "anchor_connection"

    const-string v3, "connected_anchor_point_id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    new-instance v0, Lcom/tweber/stickfighter/h/b;

    invoke-direct {v0, p2}, Lcom/tweber/stickfighter/h/b;-><init>(I)V

    return-object v0
.end method

.method public b(JI)Lcom/tweber/stickfighter/h/p;
    .locals 25

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT _id, position, sequence_id FROM frame WHERE sequence_id = ? AND position = ?"

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/tweber/stickfighter/d/c;->b(Landroid/database/Cursor;)Lcom/tweber/stickfighter/h/p;

    move-result-object v2

    move-object v10, v2

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    if-nez v10, :cond_1

    const/4 v10, 0x0

    :goto_1
    return-object v10

    :cond_0
    const/4 v2, 0x0

    move-object v10, v2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, v10, Lcom/tweber/stickfighter/h/p;->a:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT a.* FROM anchor_point a WHERE a.frame_id = ?"

    invoke-virtual {v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v3, "index_number"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v3, "x"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v3, "y"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v3, "selectable"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    const-string v3, "anchor_point_type"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    const-string v3, "animation_object_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    new-instance v3, Lcom/tweber/stickfighter/h/c;

    move/from16 v0, v21

    int-to-long v4, v0

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getFloat(I)F

    move-result v8

    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    or-int v9, v9, v23

    invoke-direct/range {v3 .. v9}, Lcom/tweber/stickfighter/h/c;-><init>(JIFFI)V

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v4, v3, Lcom/tweber/stickfighter/h/c;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    iget v3, v10, Lcom/tweber/stickfighter/h/p;->a:I

    int-to-long v4, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Lcom/tweber/stickfighter/d/c;->a(Ljava/util/Set;J)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tweber/stickfighter/h/f;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v3, v2}, Lcom/tweber/stickfighter/h/f;->a(Lcom/tweber/stickfighter/h/c;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tweber/stickfighter/h/f;

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tweber/stickfighter/h/f;

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v10, v2}, Lcom/tweber/stickfighter/h/p;->a(Lcom/tweber/stickfighter/h/f;)V

    goto :goto_5

    :cond_6
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, v10, Lcom/tweber/stickfighter/h/p;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT a.* FROM anchor_connection a INNER JOIN anchor_point b ON a.anchor_point_id = b._id WHERE b.frame_id = ?"

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const-string v2, "connected_anchor_point_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v2, "anchor_point_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    :goto_6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v6, Lcom/tweber/stickfighter/h/b;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {v6, v2}, Lcom/tweber/stickfighter/h/b;-><init>(I)V

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v2, v6}, Lcom/tweber/stickfighter/h/c;->a(Lcom/tweber/stickfighter/h/b;)V

    goto :goto_6

    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method

.method public b(Lcom/tweber/stickfighter/h/p;)Lcom/tweber/stickfighter/h/p;
    .locals 13

    const/4 v6, 0x0

    iget v0, p1, Lcom/tweber/stickfighter/h/p;->b:I

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/p;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tweber/stickfighter/d/c;->a(II)Lcom/tweber/stickfighter/h/p;

    move-result-object v8

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/p;->a()Ljava/util/ArrayList;

    move-result-object v9

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v7, v6

    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tweber/stickfighter/h/f;

    iget v0, v8, Lcom/tweber/stickfighter/h/p;->a:I

    int-to-long v2, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tweber/stickfighter/d/c;->a(Lcom/tweber/stickfighter/h/f;JLjava/util/HashMap;Landroid/util/SparseArray;)Lcom/tweber/stickfighter/h/f;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v0}, Lcom/tweber/stickfighter/h/p;->a(Lcom/tweber/stickfighter/h/f;)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v9

    move v3, v6

    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/c;->e()Ljava/util/ArrayList;

    move-result-object v11

    move v2, v6

    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tweber/stickfighter/h/b;

    iget v1, v1, Lcom/tweber/stickfighter/h/b;->a:I

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v12, v0, Lcom/tweber/stickfighter/h/c;->a:I

    invoke-virtual {p0, v12, v1}, Lcom/tweber/stickfighter/d/c;->b(II)Lcom/tweber/stickfighter/h/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/h/c;->a(Lcom/tweber/stickfighter/h/b;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v8

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public b(Ljava/lang/String;F)Lcom/tweber/stickfighter/h/v;
    .locals 6

    const/4 v5, -0x1

    const/16 v0, 0x2710

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lcom/tweber/stickfighter/d/c;->d(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "height_width_ratio"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v2, "background_color"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "sequence"

    const-string v4, "name"

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    new-instance v1, Lcom/tweber/stickfighter/h/v;

    invoke-direct {v1, v0, p1, p2, v5}, Lcom/tweber/stickfighter/h/v;-><init>(ILjava/lang/String;FI)V

    return-object v1
.end method

.method public b()Ljava/util/ArrayList;
    .locals 3

    iget-object v0, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT _id, name, height_width_ratio, background_image_path, background_color FROM sequence WHERE _id > 9999 ORDER BY _id DESC"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/tweber/stickfighter/d/c;->a(Landroid/database/Cursor;)Lcom/tweber/stickfighter/h/v;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public b(Lcom/tweber/stickfighter/h/v;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/v;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM animation_object_detail WHERE animation_object_id IN (SELECT _id FROM animation_object WHERE sequence_id = ?)"

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM animation_object WHERE sequence_id = ?"

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public c(II)V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "selectable"

    and-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "anchor_point_type"

    and-int/lit8 v3, p2, 0x4

    and-int/lit8 v4, p2, 0x2

    or-int/2addr v3, v4

    and-int/lit8 v4, p2, 0x8

    or-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "anchor_point"

    const-string v4, "_id = ?"

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public c(JI)V
    .locals 5

    iget-object v0, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE frame SET position = position + 1 WHERE sequence_id = %s AND position >= %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/tweber/stickfighter/h/p;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "anchor_connection"

    const-string v2, "anchor_point_id IN (SELECT _id FROM anchor_point WHERE frame_id = ?)"

    new-array v3, v6, [Ljava/lang/String;

    iget v4, p1, Lcom/tweber/stickfighter/h/p;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "anchor_point"

    const-string v2, "frame_id = ?"

    new-array v3, v6, [Ljava/lang/String;

    iget v4, p1, Lcom/tweber/stickfighter/h/p;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "frame"

    const-string v2, "_id = ?"

    new-array v3, v6, [Ljava/lang/String;

    iget v4, p1, Lcom/tweber/stickfighter/h/p;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE frame SET position = position - 1 WHERE position > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/p;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND sequence_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/tweber/stickfighter/h/p;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(II)I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT max(_id) as MaxId FROM sequence WHERE _id >= ? AND _id <= ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/d/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS \'sequence\' (\n\t\'height_width_ratio\'\tNUMERIC,\n\t\'name\'\tTEXT,\n\t\'_id\'\tINTEGER,\n\tPRIMARY KEY(_id)\n);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS \'frame\' (\n\t\'position\'\tNUMERIC,\n\t\'sequence_id\'\tNUMERIC,\n\t\'_id\'\tINTEGER,\n\tPRIMARY KEY(_id)\n);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS \'animation_object_type\' (\n\t\'name\'\tTEXT,\n\t\'_id\'\tINTEGER,\n\tPRIMARY KEY(_id)\n);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS \'animation_object\' (\n\t\'sequence_id\'\tNUMERIC,\n\t\'animation_object_type_id\'\tNUMERIC,\n\t\'_id\'\tINTEGER,\n\tPRIMARY KEY(_id)\n);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS \'anchor_point\' (\n\t\'anchor_point_type\'\tNUMERIC,\n\t\'selectable\'\tNUMERIC,\n\t\'index_number\'\tNUMERIC,\n\t\'frame_id\'\tNUMERIC,\n\t\'animation_object_id\'\tNUMERIC,\n\t\'_id\'\tINTEGER,\n\t\'x\'\tNUMERIC,\n\t\'y\'\tNUMERIC,\n\tPRIMARY KEY(_id)\n);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS \'anchor_connection\' (\n\t\'_id\'\tINTEGER,\n\t\'anchor_point_id\'\tNUMERIC,\n\t\'connected_anchor_point_id\'\tNUMERIC,\n\tPRIMARY KEY(_id)\n);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE sequence ADD COLUMN background_image_path TEXT"

    invoke-direct {p0, p1, v0}, Lcom/tweber/stickfighter/d/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE sequence ADD COLUMN background_color INTEGER"

    invoke-direct {p0, p1, v0}, Lcom/tweber/stickfighter/d/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS animation_object_detail (_id integer primary key autoincrement, animation_object_id integer, frame_id integer, argb_color integer)"

    invoke-direct {p0, p1, v0}, Lcom/tweber/stickfighter/d/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS figure_definition (_id integer primary key autoincrement, name text)"

    invoke-direct {p0, p1, v0}, Lcom/tweber/stickfighter/d/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS figure_definition_part (_id integer primary key autoincrement, animation_object_id integer, figure_definition_id integer)"

    invoke-direct {p0, p1, v0}, Lcom/tweber/stickfighter/d/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS anchor_connection_anchor_point_id ON anchor_connection(anchor_point_id)"

    invoke-direct {p0, p1, v0}, Lcom/tweber/stickfighter/d/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS anchor_point_animation_object_id ON anchor_point(frame_id)"

    invoke-direct {p0, p1, v0}, Lcom/tweber/stickfighter/d/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS animation_object_sequence_id ON animation_object(sequence_id)"

    invoke-direct {p0, p1, v0}, Lcom/tweber/stickfighter/d/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS animation_object_detail_id ON animation_object_detail(animation_object_id)"

    invoke-direct {p0, p1, v0}, Lcom/tweber/stickfighter/d/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    const-string v0, "ALTER TABLE sequence ADD COLUMN background_image_path TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE sequence ADD COLUMN background_color INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE animation_object_detail (_id integer primary key autoincrement, animation_object_id integer, frame_id integer, argb_color integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE figure_definition (_id integer primary key autoincrement, name text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE figure_definition_part (_id integer primary key autoincrement, animation_object_id integer, figure_definition_id integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    :try_start_0
    const-string v0, "CREATE INDEX anchor_connection_anchor_point_id ON anchor_connection(anchor_point_id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX anchor_point_animation_object_id ON anchor_point(frame_id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX animation_object_sequence_id ON animation_object(sequence_id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX animation_object_detail_id ON animation_object_detail(animation_object_id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DATABASE"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
