.class public Lcom/tweber/stickfighter/activities/AnimationFilePickerActivity;
.super Lcom/nononsenseapps/filepicker/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nononsenseapps/filepicker/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;IZZ)Lcom/nononsenseapps/filepicker/b;
    .locals 1

    new-instance v0, Lcom/tweber/stickfighter/activities/b;

    invoke-direct {v0}, Lcom/tweber/stickfighter/activities/b;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nononsenseapps/filepicker/b;->a(Ljava/lang/String;IZZ)V

    return-object v0
.end method
