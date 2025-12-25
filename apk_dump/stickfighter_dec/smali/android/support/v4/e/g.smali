.class Landroid/support/v4/e/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# instance fields
.field private final a:Landroid/support/v4/e/f;


# direct methods
.method public constructor <init>(Landroid/support/v4/e/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/e/g;->a:Landroid/support/v4/e/f;

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/e/g;->a:Landroid/support/v4/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/support/v4/e/f;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/e/g;->a:Landroid/support/v4/e/f;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/e/f;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/e/g;->a:Landroid/support/v4/e/f;

    invoke-interface {v0, p1}, Landroid/support/v4/e/f;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
