.class public Lcom/android/commands/am/Am;
.super Lcom/android/internal/os/BaseCommand;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/am/Am$InstrumentationWatcher;,
        Lcom/android/commands/am/Am$IntentReceiver;,
        Lcom/android/commands/am/Am$MyActivityController;
    }
.end annotation


# instance fields
.field private mAm:Landroid/app/IActivityManager;

.field private mAutoStop:Z

.field private mProfileFile:Ljava/lang/String;

.field private mReceiverPermission:Ljava/lang/String;

.field private mRepeat:I

.field private mSamplingInterval:I

.field private mStartFlags:I

.field private mSticky:Z

.field private mStopOption:Z

.field private mUserId:I

.field private mWaitOption:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/os/BaseCommand;-><init>()V

    iput v0, p0, Lcom/android/commands/am/Am;->mStartFlags:I

    iput-boolean v0, p0, Lcom/android/commands/am/Am;->mWaitOption:Z

    iput-boolean v0, p0, Lcom/android/commands/am/Am;->mStopOption:Z

    iput v0, p0, Lcom/android/commands/am/Am;->mRepeat:I

    iput-boolean v0, p0, Lcom/android/commands/am/Am;->mSticky:Z

    return-void
.end method

.method static synthetic access$200(Lcom/android/commands/am/Am;)Landroid/app/IActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/commands/am/Am;

    .prologue
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    return-object v0
.end method

.method private getRecentConfigurations(I)Ljava/util/List;
    .locals 22
    .param p1, "days"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "usagestats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v2

    .local v2, "usm":Landroid/app/usage/IUsageStatsManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .local v6, "now":J
    mul-int/lit8 v3, p1, 0x18

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v0, v3

    move-wide/from16 v20, v0

    sub-long v4, v6, v20

    .local v4, "nDaysAgo":J
    const/4 v3, 0x4

    :try_start_0
    const-string v8, "com.android.shell"

    invoke-interface/range {v2 .. v8}, Landroid/app/usage/IUsageStatsManager;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v12

    .local v12, "configStatsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    if-nez v12, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    .end local v12    # "configStatsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    :goto_0
    return-object v13

    .restart local v12    # "configStatsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    :cond_0
    new-instance v17, Landroid/util/ArrayMap;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArrayMap;-><init>()V

    .local v17, "recentConfigs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v10

    .local v10, "configStatsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .local v11, "configStatsListSize":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-ge v15, v11, :cond_2

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/usage/ConfigurationStats;

    .local v18, "stats":Landroid/app/usage/ConfigurationStats;
    invoke-virtual/range {v18 .. v18}, Landroid/app/usage/ConfigurationStats;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v16

    .local v16, "indexOfKey":I
    if-gez v16, :cond_1

    invoke-virtual/range {v18 .. v18}, Landroid/app/usage/ConfigurationStats;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Landroid/app/usage/ConfigurationStats;->getActivationCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {v18 .. v18}, Landroid/app/usage/ConfigurationStats;->getActivationCount()I

    move-result v8

    add-int/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .end local v10    # "configStatsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    .end local v11    # "configStatsListSize":I
    .end local v12    # "configStatsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    .end local v15    # "i":I
    .end local v16    # "indexOfKey":I
    .end local v17    # "recentConfigs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Ljava/lang/Integer;>;"
    .end local v18    # "stats":Landroid/app/usage/ConfigurationStats;
    :catch_0
    move-exception v14

    .local v14, "e":Landroid/os/RemoteException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    goto :goto_0

    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v10    # "configStatsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    .restart local v11    # "configStatsListSize":I
    .restart local v12    # "configStatsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    .restart local v15    # "i":I
    .restart local v17    # "recentConfigs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Ljava/lang/Integer;>;"
    :cond_2
    :try_start_1
    new-instance v9, Lcom/android/commands/am/Am$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v9, v0, v1}, Lcom/android/commands/am/Am$1;-><init>(Lcom/android/commands/am/Am;Landroid/util/ArrayMap;)V

    .local v9, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/res/Configuration;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(I)V

    .local v13, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/Configuration;>;"
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v13, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/android/commands/am/Am;

    invoke-direct {v0}, Lcom/android/commands/am/Am;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/commands/am/Am;->run([Ljava/lang/String;)V

    return-void
.end method

.method private makeIntent(I)Landroid/content/Intent;
    .locals 26
    .param p1, "defUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .local v14, "intent":Landroid/content/Intent;
    move-object v3, v14

    .local v3, "baseIntent":Landroid/content/Intent;
    const/4 v10, 0x0

    .local v10, "hasIntentInfo":Z
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/am/Am;->mStartFlags:I

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mWaitOption:Z

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mStopOption:Z

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/am/Am;->mRepeat:I

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/am/Am;->mSamplingInterval:I

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mAutoStop:Z

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/am/Am;->mUserId:I

    const/4 v7, 0x0

    .local v7, "data":Landroid/net/Uri;
    const/16 v20, 0x0

    .local v20, "type":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v17

    .local v17, "opt":Ljava/lang/String;
    if-eqz v17, :cond_43

    const-string v23, "-a"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-ne v14, v3, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const-string v23, "-d"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    if-ne v14, v3, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    const-string v23, "-t"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v20

    if-ne v14, v3, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_3
    const-string v23, "-c"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-ne v14, v3, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_4
    const-string v23, "-e"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5

    const-string v23, "--es"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v15

    .local v15, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    .local v22, "value":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v14, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .end local v15    # "key":Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/String;
    :cond_6
    const-string v23, "--esn"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "key":Ljava/lang/String;
    const/16 v23, 0x0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v14, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .end local v15    # "key":Ljava/lang/String;
    :cond_7
    const-string v23, "--ei"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "value":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0

    .end local v15    # "key":Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/String;
    :cond_8
    const-string v23, "--eu"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "value":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .end local v15    # "key":Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/String;
    :cond_9
    const-string v23, "--ecn"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "value":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .local v6, "cn":Landroid/content/ComponentName;
    if-nez v6, :cond_a

    new-instance v23, Ljava/lang/IllegalArgumentException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Bad component name: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_a
    invoke-virtual {v14, v15, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v15    # "key":Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/String;
    :cond_b
    const-string v23, "--eia"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "value":Ljava/lang/String;
    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .local v19, "strings":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .local v16, "list":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v12, v0, :cond_c

    aget-object v23, v19, v12

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    aput v23, v16, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_c
    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto/16 :goto_0

    .end local v12    # "i":I
    .end local v15    # "key":Ljava/lang/String;
    .end local v16    # "list":[I
    .end local v19    # "strings":[Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/String;
    :cond_d
    const-string v23, "--el"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "value":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0

    .end local v15    # "key":Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/String;
    :cond_e
    const-string v23, "--ela"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "value":Ljava/lang/String;
    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "strings":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [J

    move-object/from16 v16, v0

    .local v16, "list":[J
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_2
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v12, v0, :cond_f

    aget-object v23, v19, v12

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    aput-wide v24, v16, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_f
    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const/4 v10, 0x1

    goto/16 :goto_0

    .end local v12    # "i":I
    .end local v15    # "key":Ljava/lang/String;
    .end local v16    # "list":[J
    .end local v19    # "strings":[Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/String;
    :cond_10
    const-string v23, "--ef"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "value":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v10, 0x1

    goto/16 :goto_0

    .end local v15    # "key":Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/String;
    :cond_11
    const-string v23, "--efa"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "value":Ljava/lang/String;
    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "strings":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v16, v0

    .local v16, "list":[F
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v12, v0, :cond_12

    aget-object v23, v19, v12

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    aput v23, v16, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_12
    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    const/4 v10, 0x1

    goto/16 :goto_0

    .end local v12    # "i":I
    .end local v15    # "key":Ljava/lang/String;
    .end local v16    # "list":[F
    .end local v19    # "strings":[Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/String;
    :cond_13
    const-string v23, "--esa"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "value":Ljava/lang/String;
    const-string v23, "(?<!\\\\),"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "strings":[Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v14, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/4 v10, 0x1

    goto/16 :goto_0

    .end local v15    # "key":Ljava/lang/String;
    .end local v19    # "strings":[Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/String;
    :cond_14
    const-string v23, "--ez"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "value":Ljava/lang/String;
    const-string v23, "true"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_15

    const-string v23, "t"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    :cond_15
    const/4 v2, 0x1

    .local v2, "arg":Z
    :goto_4
    invoke-virtual {v14, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .end local v2    # "arg":Z
    :cond_16
    const-string v23, "false"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_17

    const-string v23, "f"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_18

    :cond_17
    const/4 v2, 0x0

    .restart local v2    # "arg":Z
    goto :goto_4

    .end local v2    # "arg":Z
    :cond_18
    :try_start_0
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v23

    if-eqz v23, :cond_19

    const/4 v2, 0x1

    .restart local v2    # "arg":Z
    :goto_5
    goto :goto_4

    .end local v2    # "arg":Z
    :cond_19
    const/4 v2, 0x0

    goto :goto_5

    :catch_0
    move-exception v8

    .local v8, "ex":Ljava/lang/NumberFormatException;
    new-instance v23, Ljava/lang/IllegalArgumentException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Invalid boolean value: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .end local v8    # "ex":Ljava/lang/NumberFormatException;
    .end local v15    # "key":Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/String;
    :cond_1a
    const-string v23, "-n"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v18

    .local v18, "str":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .restart local v6    # "cn":Landroid/content/ComponentName;
    if-nez v6, :cond_1b

    new-instance v23, Ljava/lang/IllegalArgumentException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Bad component name: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_1b
    invoke-virtual {v14, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-ne v14, v3, :cond_0

    const/4 v10, 0x1

    goto/16 :goto_0

    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v18    # "str":Ljava/lang/String;
    :cond_1c
    const-string v23, "-p"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "str":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-ne v14, v3, :cond_0

    const/4 v10, 0x1

    goto/16 :goto_0

    .end local v18    # "str":Ljava/lang/String;
    :cond_1d
    const-string v23, "-f"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "str":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .end local v18    # "str":Ljava/lang/String;
    :cond_1e
    const-string v23, "--grant-read-uri-permission"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1f

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_1f
    const-string v23, "--grant-write-uri-permission"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_20

    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_20
    const-string v23, "--grant-persistable-uri-permission"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_21

    const/16 v23, 0x40

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_21
    const-string v23, "--grant-prefix-uri-permission"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_22

    const/16 v23, 0x80

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_22
    const-string v23, "--exclude-stopped-packages"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_23

    const/16 v23, 0x10

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_23
    const-string v23, "--include-stopped-packages"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_24

    const/16 v23, 0x20

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_24
    const-string v23, "--debug-log-resolution"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_25

    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_25
    const-string v23, "--activity-brought-to-front"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_26

    const/high16 v23, 0x400000

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_26
    const-string v23, "--activity-clear-top"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_27

    const/high16 v23, 0x4000000

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_27
    const-string v23, "--activity-clear-when-task-reset"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_28

    const/high16 v23, 0x80000

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_28
    const-string v23, "--activity-exclude-from-recents"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_29

    const/high16 v23, 0x800000

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_29
    const-string v23, "--activity-launched-from-history"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2a

    const/high16 v23, 0x100000

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_2a
    const-string v23, "--activity-multiple-task"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2b

    const/high16 v23, 0x8000000

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_2b
    const-string v23, "--activity-no-animation"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2c

    const/high16 v23, 0x10000

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_2c
    const-string v23, "--activity-no-history"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2d

    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_2d
    const-string v23, "--activity-no-user-action"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2e

    const/high16 v23, 0x40000

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_2e
    const-string v23, "--activity-previous-is-top"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2f

    const/high16 v23, 0x1000000

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_2f
    const-string v23, "--activity-reorder-to-front"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_30

    const/high16 v23, 0x20000

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_30
    const-string v23, "--activity-reset-task-if-needed"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_31

    const/high16 v23, 0x200000

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_31
    const-string v23, "--activity-single-top"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_32

    const/high16 v23, 0x20000000

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_32
    const-string v23, "--activity-clear-task"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_33

    const v23, 0x8000

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_33
    const-string v23, "--activity-task-on-home"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_34

    const/16 v23, 0x4000

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_34
    const-string v23, "--receiver-registered-only"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_35

    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_35
    const-string v23, "--receiver-replace-pending"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_36

    const/high16 v23, 0x20000000

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_36
    const-string v23, "--selector"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_37

    move-object/from16 v0, v20

    invoke-virtual {v14, v7, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v14, Landroid/content/Intent;

    .end local v14    # "intent":Landroid/content/Intent;
    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .restart local v14    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    :cond_37
    const-string v23, "-D"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/am/Am;->mStartFlags:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/am/Am;->mStartFlags:I

    goto/16 :goto_0

    :cond_38
    const-string v23, "-W"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_39

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mWaitOption:Z

    goto/16 :goto_0

    :cond_39
    const-string v23, "-P"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3a

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mAutoStop:Z

    goto/16 :goto_0

    :cond_3a
    const-string v23, "--start-profiler"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3b

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mAutoStop:Z

    goto/16 :goto_0

    :cond_3b
    const-string v23, "--sampling"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3c

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/am/Am;->mSamplingInterval:I

    goto/16 :goto_0

    :cond_3c
    const-string v23, "-R"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/am/Am;->mRepeat:I

    goto/16 :goto_0

    :cond_3d
    const-string v23, "-S"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3e

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mStopOption:Z

    goto/16 :goto_0

    :cond_3e
    const-string v23, "--opengl-trace"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/am/Am;->mStartFlags:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/am/Am;->mStartFlags:I

    goto/16 :goto_0

    :cond_3f
    const-string v23, "--user"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/commands/am/Am;->parseUserArg(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/am/Am;->mUserId:I

    goto/16 :goto_0

    :cond_40
    const-string v23, "--receiver-permission"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_41

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/commands/am/Am;->mReceiverPermission:Ljava/lang/String;

    goto/16 :goto_0

    :cond_41
    const-string v23, "--sticky-broadcast"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_42

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mSticky:Z

    goto/16 :goto_0

    :cond_42
    sget-object v23, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error: Unknown option: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v23, 0x0

    :goto_6
    return-object v23

    :cond_43
    move-object/from16 v0, v20

    invoke-virtual {v14, v7, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    if-eq v14, v3, :cond_46

    const/4 v11, 0x1

    .local v11, "hasSelector":Z
    :goto_7
    if-eqz v11, :cond_44

    invoke-virtual {v3, v14}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    move-object v14, v3

    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArg()Ljava/lang/String;

    move-result-object v2

    .local v2, "arg":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v2, :cond_47

    if-eqz v11, :cond_45

    new-instance v3, Landroid/content/Intent;

    .end local v3    # "baseIntent":Landroid/content/Intent;
    const-string v23, "android.intent.action.MAIN"

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3    # "baseIntent":Landroid/content/Intent;
    const-string v23, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_45
    :goto_8
    if-eqz v3, :cond_4c

    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .local v9, "extras":Landroid/os/Bundle;
    const/16 v23, 0x0

    check-cast v23, Landroid/os/Bundle;

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    .local v21, "uriExtras":Landroid/os/Bundle;
    const/16 v23, 0x0

    check-cast v23, Landroid/os/Bundle;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_4a

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v23

    if-eqz v23, :cond_4a

    new-instance v5, Ljava/util/HashSet;

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .local v5, "cats":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_4a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "c":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    goto :goto_9

    .end local v2    # "arg":Ljava/lang/String;
    .end local v4    # "c":Ljava/lang/String;
    .end local v5    # "cats":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v11    # "hasSelector":Z
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v21    # "uriExtras":Landroid/os/Bundle;
    :cond_46
    const/4 v11, 0x0

    goto :goto_7

    .restart local v2    # "arg":Ljava/lang/String;
    .restart local v11    # "hasSelector":Z
    :cond_47
    const/16 v23, 0x3a

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    if-ltz v23, :cond_48

    const/16 v23, 0x7

    move/from16 v0, v23

    invoke-static {v2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    goto :goto_8

    :cond_48
    const/16 v23, 0x2f

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    if-ltz v23, :cond_49

    new-instance v3, Landroid/content/Intent;

    .end local v3    # "baseIntent":Landroid/content/Intent;
    const-string v23, "android.intent.action.MAIN"

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3    # "baseIntent":Landroid/content/Intent;
    const-string v23, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_8

    :cond_49
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "baseIntent":Landroid/content/Intent;
    const-string v23, "android.intent.action.MAIN"

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3    # "baseIntent":Landroid/content/Intent;
    const-string v23, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_8

    .restart local v9    # "extras":Landroid/os/Bundle;
    .restart local v21    # "uriExtras":Landroid/os/Bundle;
    :cond_4a
    const/16 v23, 0x48

    move/from16 v0, v23

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    if-nez v9, :cond_4d

    move-object/from16 v9, v21

    :cond_4b
    :goto_a
    invoke-virtual {v14, v9}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v10, 0x1

    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v21    # "uriExtras":Landroid/os/Bundle;
    :cond_4c
    if-nez v10, :cond_4e

    new-instance v23, Ljava/lang/IllegalArgumentException;

    const-string v24, "No intent supplied"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .restart local v9    # "extras":Landroid/os/Bundle;
    .restart local v21    # "uriExtras":Landroid/os/Bundle;
    :cond_4d
    if-eqz v21, :cond_4b

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    move-object/from16 v9, v21

    goto :goto_a

    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v21    # "uriExtras":Landroid/os/Bundle;
    :cond_4e
    move-object/from16 v23, v14

    goto/16 :goto_6
.end method

.method private static openForSystemServer(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/SELinux;->getFileContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "tcon":Ljava/lang/String;
    const-string v2, "u:r:system_server:s0"

    const-string v3, "file"

    const-string v4, "read"

    invoke-static {v2, v1, v3, v4}, Landroid/os/SELinux;->checkSELinuxAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System server has no access to file context "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-object v0
.end method

.method static removeWallOption()V
    .locals 3

    .prologue
    const-string v1, "dalvik.vm.extra-opts"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "props":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "-Xprofile:wallclock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "-Xprofile:wallclock"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dalvik.vm.extra-opts"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private runBugReport()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->requestBugReport()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Your lovely bug report is being created; please be patient."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private runClearDebugApp()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private runDumpHeap()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .local v3, "managed":Z
    const/4 v2, -0x2

    .local v2, "userId":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v8

    .local v8, "opt":Ljava/lang/String;
    if-eqz v8, :cond_4

    const-string v0, "--user"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/commands/am/Am;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Error: Can\'t dump heap with user \'all\'"

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "-n"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: Unknown option: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    .local v1, "process":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v4

    .local v4, "heapFile":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    const/high16 v0, 0x3c000000    # 0.0078125f

    invoke-static {v7, v0}, Lcom/android/commands/am/Am;->openForSystemServer(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/AndroidException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HEAP DUMP FAILED on process "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v7    # "file":Ljava/io/File;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/io/FileNotFoundException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: Unable to open file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Consider using a file under /data/local/tmp/"

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private runForceStop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .local v1, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v0

    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "--user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/commands/am/Am;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private runGetConfig()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v1, 0xe

    .local v1, "days":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v3

    .local v3, "option":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v6, "--days"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unrecognized option "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "--days must be a positive integer"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v6}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, "config":Landroid/content/res/Configuration;
    if-nez v0, :cond_3

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Activity manager has no configuration"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_2
    :goto_0
    return-void

    .restart local v0    # "config":Landroid/content/res/Configuration;
    :cond_3
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "config: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "abi: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    sget-object v9, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/commands/am/Am;->getRecentConfigurations(I)Ljava/util/List;

    move-result-object v5

    .local v5, "recentConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/Configuration;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "recentConfigSize":I
    if-lez v4, :cond_4

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "recentConfigs:"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  config: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Configuration;

    invoke-static {v6}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v2    # "i":I
    .end local v4    # "recentConfigSize":I
    .end local v5    # "recentConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/Configuration;>;"
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private runHang()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "allowRestart":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v1

    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "--allow-restart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Hanging the system..."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    invoke-interface {v2, v3, v0}, Landroid/app/IActivityManager;->hang(Landroid/os/IBinder;Z)V

    goto :goto_1
.end method

.method private runIdleMaintenance()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v13

    .local v13, "opt":Ljava/lang/String;
    if-eqz v13, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Performing idle maintenance..."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.android.server.task.controllers.IdleController.ACTION_TRIGGER_IDLE"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v10, 0x1

    move-object v3, v1

    move-object v4, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move v11, v5

    move v12, v9

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I

    goto :goto_0
.end method

.method private runInstrument()V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .local v4, "profileFile":Ljava/lang/String;
    const/16 v24, 0x0

    .local v24, "wait":Z
    const/16 v21, 0x0

    .local v21, "rawMode":Z
    const/16 v18, 0x0

    .local v18, "no_window_animation":Z
    const/4 v9, -0x2

    .local v9, "userId":I
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .local v6, "args":Landroid/os/Bundle;
    const/4 v11, 0x0

    .local v11, "argKey":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "argValue":Ljava/lang/String;
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v25

    .local v25, "wm":Landroid/view/IWindowManager;
    const/4 v10, 0x0

    .local v10, "abi":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v20

    .local v20, "opt":Ljava/lang/String;
    if-eqz v20, :cond_9

    const-string v2, "-p"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v2, "-w"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v24, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "-r"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v21, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "-e"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "--no_window_animation"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "--no-window-animation"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/16 v18, 0x1

    goto :goto_0

    :cond_5
    const-string v2, "--user"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/commands/am/Am;->parseUserArg(Ljava/lang/String;)I

    move-result v9

    goto :goto_0

    :cond_6
    const-string v2, "--abi"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_7
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Error: Unknown option: "

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void

    :cond_9
    const/4 v2, -0x1

    if-ne v9, v2, :cond_a

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Error: Can\'t start instrumentation with user \'all\'"

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .local v14, "cnArg":Ljava/lang/String;
    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .local v3, "cn":Landroid/content/ComponentName;
    if-nez v3, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Bad component name: "

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    const/4 v7, 0x0

    .local v7, "watcher":Lcom/android/commands/am/Am$InstrumentationWatcher;
    const/4 v8, 0x0

    .local v8, "connection":Landroid/app/UiAutomationConnection;
    if-eqz v24, :cond_c

    new-instance v7, Lcom/android/commands/am/Am$InstrumentationWatcher;

    .end local v7    # "watcher":Lcom/android/commands/am/Am$InstrumentationWatcher;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v2}, Lcom/android/commands/am/Am$InstrumentationWatcher;-><init>(Lcom/android/commands/am/Am;Lcom/android/commands/am/Am$1;)V

    .restart local v7    # "watcher":Lcom/android/commands/am/Am$InstrumentationWatcher;
    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/android/commands/am/Am$InstrumentationWatcher;->setRawOutput(Z)V

    new-instance v8, Landroid/app/UiAutomationConnection;

    .end local v8    # "connection":Landroid/app/UiAutomationConnection;
    invoke-direct {v8}, Landroid/app/UiAutomationConnection;-><init>()V

    .restart local v8    # "connection":Landroid/app/UiAutomationConnection;
    :cond_c
    const/16 v19, 0x0

    .local v19, "oldAnims":[F
    if-eqz v18, :cond_d

    invoke-interface/range {v25 .. v25}, Landroid/view/IWindowManager;->getAnimationScales()[F

    move-result-object v19

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2, v5}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2, v5}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    :cond_d
    if-eqz v10, :cond_10

    sget-object v23, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .local v23, "supportedAbis":[Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, "matched":Z
    move-object/from16 v13, v23

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_e

    aget-object v22, v13, v15

    .local v22, "supportedAbi":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v17, 0x1

    .end local v22    # "supportedAbi":Ljava/lang/String;
    :cond_e
    if-nez v17, :cond_10

    new-instance v2, Landroid/util/AndroidException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "INSTRUMENTATION_FAILED: Unsupported instruction set "

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v2

    .restart local v22    # "supportedAbi":Ljava/lang/String;
    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    .end local v17    # "matched":Z
    .end local v22    # "supportedAbi":Ljava/lang/String;
    .end local v23    # "supportedAbis":[Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v5, 0x0

    invoke-interface/range {v2 .. v10}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    new-instance v2, Landroid/util/AndroidException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "INSTRUMENTATION_FAILED: "

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    if-eqz v7, :cond_12

    invoke-virtual {v7}, Lcom/android/commands/am/Am$InstrumentationWatcher;->waitForFinish()Z

    move-result v2

    if-nez v2, :cond_12

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "INSTRUMENTATION_ABORTED: System has crashed."

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_12
    if-eqz v19, :cond_8

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setAnimationScales([F)V

    goto/16 :goto_1
.end method

.method private runKill()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .local v1, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v0

    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "--user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/commands/am/Am;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private runKillAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->killAllBackgroundProcesses()V

    return-void
.end method

.method private runLockTask()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    .local v1, "taskIdStr":Ljava/lang/String;
    :try_start_0
    const-string v2, "stop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopLockTaskMode()V

    :goto_0
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity manager is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "in lockTaskMode"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "taskId":I
    iget-object v2, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->startLockTaskMode(I)V

    goto :goto_0

    .end local v0    # "taskId":I
    :catch_0
    move-exception v2

    goto :goto_2

    :cond_1
    const-string v2, "not "
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private runMonitor()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, "gdbPort":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v2

    .local v2, "opt":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "--gdb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    new-instance v0, Lcom/android/commands/am/Am$MyActivityController;

    invoke-direct {v0, p0, v1}, Lcom/android/commands/am/Am$MyActivityController;-><init>(Lcom/android/commands/am/Am;Ljava/lang/String;)V

    .local v0, "controller":Lcom/android/commands/am/Am$MyActivityController;
    invoke-virtual {v0}, Lcom/android/commands/am/Am$MyActivityController;->run()V

    goto :goto_1
.end method

.method private runProfile()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    const/4 v10, 0x0

    .local v10, "profileFile":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "start":Z
    const/4 v12, 0x0

    .local v12, "wall":Z
    const/4 v2, -0x2

    .local v2, "userId":I
    const/4 v5, 0x0

    .local v5, "profileType":I
    const/4 v1, 0x0

    .local v1, "process":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v6

    .local v6, "cmd":Ljava/lang/String;
    const-string v0, "start"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v9

    .local v9, "opt":Ljava/lang/String;
    if-eqz v9, :cond_3

    const-string v0, "--user"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/commands/am/Am;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    const-string v0, "--wall"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error: Unknown option: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .end local v9    # "opt":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .restart local v9    # "opt":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    .end local v9    # "opt":Ljava/lang/String;
    :cond_4
    :goto_2
    const/4 v0, -0x1

    if-ne v2, v0, :cond_a

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "Error: Can\'t profile with user \'all\'"

    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "stop"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_3
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "opt":Ljava/lang/String;
    if-eqz v9, :cond_7

    const-string v0, "--user"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/commands/am/Am;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    :cond_6
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error: Unknown option: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArg()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .end local v9    # "opt":Ljava/lang/String;
    :cond_8
    move-object v1, v6

    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v6

    const-string v0, "start"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v3, 0x1

    goto :goto_2

    :cond_9
    const-string v0, "stop"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Profile command "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " not valid"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v8, 0x0

    .local v8, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v4, 0x0

    .local v4, "profilerInfo":Landroid/app/ProfilerInfo;
    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v10

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v13, 0x3c000000    # 0.0078125f

    invoke-static {v0, v13}, Lcom/android/commands/am/Am;->openForSystemServer(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    new-instance v4, Landroid/app/ProfilerInfo;

    .end local v4    # "profilerInfo":Landroid/app/ProfilerInfo;
    invoke-direct {v4, v10, v8, v14, v14}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZ)V

    .restart local v4    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_b
    if-eqz v12, :cond_f

    :try_start_1
    const-string v0, "dalvik.vm.extra-opts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "props":Ljava/lang/String;
    if-eqz v11, :cond_c

    const-string v0, "-Xprofile:wallclock"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " -Xprofile:wallclock"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .end local v11    # "props":Ljava/lang/String;
    :cond_d
    :goto_4
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v12, 0x0

    new-instance v0, Landroid/util/AndroidException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PROFILE FAILED on process "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    if-nez v12, :cond_e

    :cond_e
    throw v0

    :catch_0
    move-exception v7

    .local v7, "e":Ljava/io/FileNotFoundException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error: Unable to open file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "Consider using a file under /data/local/tmp/"

    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :cond_f
    if-eqz v3, :cond_d

    goto :goto_4

    :cond_10
    if-nez v12, :cond_2

    goto/16 :goto_1
.end method

.method private runRestart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v0

    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Restart the system..."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->restart()V

    goto :goto_0
.end method

.method private runScreenCompat()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    .local v1, "mode":Ljava/lang/String;
    const-string v3, "on"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .local v0, "enabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    .local v2, "packageName":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v4, v2, v3}, Landroid/app/IActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .end local v0    # "enabled":Z
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_3
    return-void

    :cond_1
    const-string v3, "off"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .end local v0    # "enabled":Z
    :cond_2
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: enabled mode must be \'on\' or \'off\' at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .restart local v0    # "enabled":Z
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method private runSetDebugApp()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .local v3, "wait":Z
    const/4 v1, 0x0

    .local v1, "persistent":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v0

    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v4, "-w"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "--persistent"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    .local v2, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v4, v2, v3, v1}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    goto :goto_1
.end method

.method private runStack()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .local v0, "op":Ljava/lang/String;
    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStackStart()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "movetask"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStackMoveTask()V

    goto :goto_0

    :cond_1
    const-string v1, "resize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStackResize()V

    goto :goto_0

    :cond_2
    const-string v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStackList()V

    goto :goto_0

    :cond_3
    const-string v1, "info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStackInfo()V

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: unknown command \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/commands/am/Am;->showError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runStackInfo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    .local v2, "stackIdStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "stackId":I
    iget-object v3, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v3, v1}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    .local v0, "info":Landroid/app/ActivityManager$StackInfo;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v1    # "stackId":I
    .end local v2    # "stackIdStr":Ljava/lang/String;
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private runStackList()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v3}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v2

    .local v2, "stacks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$StackInfo;

    .local v1, "info":Landroid/app/ActivityManager$StackInfo;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v2    # "stacks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :catch_0
    move-exception v3

    :cond_0
    return-void
.end method

.method private runStackMoveTask()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v3

    .local v3, "taskIdStr":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "taskId":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    .local v1, "stackIdStr":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "stackId":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v5

    .local v5, "toTopStr":Ljava/lang/String;
    const-string v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    .local v4, "toTop":Z
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v6, v2, v0, v4}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "toTop":Z
    :goto_1
    return-void

    :cond_0
    const-string v6, "false"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x0

    .restart local v4    # "toTop":Z
    goto :goto_0

    .end local v4    # "toTop":Z
    :cond_1
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: bad toTop arg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .restart local v4    # "toTop":Z
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private runStackResize()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v7

    .local v7, "stackIdStr":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .local v6, "stackId":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v3

    .local v3, "leftStr":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "left":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v9

    .local v9, "topStr":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .local v8, "top":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v5

    .local v5, "rightStr":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .local v4, "right":I
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    .local v1, "bottomStr":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "bottom":I
    :try_start_0
    iget-object v10, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v2, v8, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v10, v6, v11}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v10

    goto :goto_0
.end method

.method private runStackStart()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    .local v2, "displayIdStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "displayId":I
    const/4 v5, -0x2

    invoke-direct {p0, v5}, Lcom/android/commands/am/Am;->makeIntent(I)Landroid/content/Intent;

    move-result-object v4

    .local v4, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v5, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v5}, Landroid/app/IActivityManager;->getHomeActivityToken()Landroid/os/IBinder;

    move-result-object v3

    .local v3, "homeActivityToken":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v6, 0x0

    invoke-interface {v5, v3, v6}, Landroid/app/IActivityManager;->createActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;

    move-result-object v0

    .local v0, "container":Landroid/app/IActivityContainer;
    invoke-interface {v0, v1}, Landroid/app/IActivityContainer;->attachToDisplay(I)V

    invoke-interface {v0, v4}, Landroid/app/IActivityContainer;->startActivity(Landroid/content/Intent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "container":Landroid/app/IActivityContainer;
    .end local v3    # "homeActivityToken":Landroid/os/IBinder;
    :goto_0
    return-void

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private runStart()V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, -0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/commands/am/Am;->makeIntent(I)Landroid/content/Intent;

    move-result-object v5

    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/am/Am;->mUserId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Can\'t start service with user \'all\'"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    .local v6, "mimeType":Ljava/lang/String;
    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "content"

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/commands/am/Am;->mUserId:I

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v6

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/am/Am;->mStopOption:Z

    if-eqz v2, :cond_2

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .local v21, "packageName":Ljava/lang/String;
    :goto_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/commands/am/Am;->mUserId:I

    move-object/from16 v0, v21

    invoke-interface {v2, v0, v3}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    const-wide/16 v2, 0xfa

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .end local v21    # "packageName":Ljava/lang/String;
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v18, 0x0

    .local v18, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v11, 0x0

    .local v11, "profilerInfo":Landroid/app/ProfilerInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    if-eqz v2, :cond_3

    :try_start_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x3c000000    # 0.0078125f

    invoke-static {v2, v3}, Lcom/android/commands/am/Am;->openForSystemServer(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    new-instance v11, Landroid/app/ProfilerInfo;

    .end local v11    # "profilerInfo":Landroid/app/ProfilerInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/commands/am/Am;->mSamplingInterval:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/commands/am/Am;->mAutoStop:Z

    move-object/from16 v0, v18

    invoke-direct {v11, v2, v0, v3, v4}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZ)V

    .restart local v11    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_3
    const/16 v24, 0x0

    .local v24, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    .local v26, "startTime":J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/am/Am;->mWaitOption:Z

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/commands/am/Am;->mStartFlags:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/commands/am/Am;->mUserId:I

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/app/IActivityManager$WaitResult;->result:I

    move/from16 v23, v0

    .local v23, "res":I
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .local v16, "endTime":J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/am/Am;->mWaitOption:Z

    if-eqz v2, :cond_10

    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .local v20, "out":Ljava/io/PrintStream;
    :goto_3
    const/16 v19, 0x0

    .local v19, "launched":Z
    packed-switch v23, :pswitch_data_0

    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Activity not started, unknown error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/am/Am;->mWaitOption:Z

    if-eqz v2, :cond_8

    if-eqz v19, :cond_8

    if-nez v24, :cond_4

    new-instance v24, Landroid/app/IActivityManager$WaitResult;

    .end local v24    # "result":Landroid/app/IActivityManager$WaitResult;
    invoke-direct/range {v24 .. v24}, Landroid/app/IActivityManager$WaitResult;-><init>()V

    .restart local v24    # "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    :cond_4
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Status: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-eqz v2, :cond_11

    const-string v2, "timeout"

    :goto_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v2, :cond_5

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, v24

    iget-wide v2, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-ltz v2, :cond_6

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ThisTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    iget-wide v8, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, v24

    iget-wide v2, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-ltz v2, :cond_7

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TotalTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    iget-wide v8, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WaitTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v8, v16, v26

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Complete"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/am/Am;->mRepeat:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/commands/am/Am;->mRepeat:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/am/Am;->mRepeat:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->unhandledBack()V

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/am/Am;->mRepeat:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    goto/16 :goto_0

    .end local v11    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "endTime":J
    .end local v18    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v19    # "launched":Z
    .end local v20    # "out":Ljava/io/PrintStream;
    .end local v23    # "res":I
    .end local v24    # "result":Landroid/app/IActivityManager$WaitResult;
    .end local v26    # "startTime":J
    :cond_a
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v22

    .local v22, "pm":Landroid/content/pm/IPackageManager;
    if-nez v22, :cond_b

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Package manager not running; aborting"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/commands/am/Am;->mUserId:I

    move-object/from16 v0, v22

    invoke-interface {v0, v5, v6, v2, v3}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v14

    .local v14, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v14, :cond_c

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_d

    :cond_c
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Intent does not match any activities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_e

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Intent matches multiple activities; can\'t stop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .restart local v21    # "packageName":Ljava/lang/String;
    goto/16 :goto_1

    .end local v14    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v22    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v11    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v18    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v15

    .local v15, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unable to open file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Consider using a file under /data/local/tmp/"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v15    # "e":Ljava/io/FileNotFoundException;
    .restart local v24    # "result":Landroid/app/IActivityManager$WaitResult;
    .restart local v26    # "startTime":J
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/commands/am/Am;->mStartFlags:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/commands/am/Am;->mUserId:I

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v23

    .restart local v23    # "res":I
    goto/16 :goto_2

    .restart local v16    # "endTime":J
    :cond_10
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    goto/16 :goto_3

    .restart local v19    # "launched":Z
    .restart local v20    # "out":Ljava/io/PrintStream;
    :pswitch_1
    const/16 v19, 0x1

    goto/16 :goto_4

    :pswitch_2
    const/16 v19, 0x1

    const-string v2, "Warning: Activity not started because the  current activity is being kept for the user."

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_3
    const/16 v19, 0x1

    const-string v2, "Warning: Activity not started, intent has been delivered to currently running top-most instance."

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_4
    const/16 v19, 0x1

    const-string v2, "Warning: Activity not started because intent should be handled by the caller"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_5
    const/16 v19, 0x1

    const-string v2, "Warning: Activity not started, its current task has been brought to the front"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Activity not started, unable to resolve "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_7
    const-string v2, "Error type 3"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Activity class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_8
    const-string v2, "Error: Activity not started, you requested to both forward and receive its result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_9
    const-string v2, "Error: Activity not started, you do not have permission to access it."

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Activity not started, voice control not allowed for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_11
    const-string v2, "ok"

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private runStartService()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, -0x2

    invoke-direct {p0, v2}, Lcom/android/commands/am/Am;->makeIntent(I)Landroid/content/Intent;

    move-result-object v1

    .local v1, "intent":Landroid/content/Intent;
    iget v2, p0, Lcom/android/commands/am/Am;->mUserId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Can\'t start activity with user \'all\'"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/commands/am/Am;->mUserId:I

    invoke-interface {v2, v3, v1, v4, v5}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_2

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Not found; no service started."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Requires permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "!!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private runStartUserInBackground()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    .local v1, "user":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->startUserInBackground(I)Z

    move-result v0

    .local v0, "success":Z
    if-eqz v0, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Success: user started"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: could not start user"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runStopService()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v2, -0x2

    invoke-direct {p0, v2}, Lcom/android/commands/am/Am;->makeIntent(I)Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    iget v2, p0, Lcom/android/commands/am/Am;->mUserId:I

    if-ne v2, v6, :cond_1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Can\'t stop activity with user \'all\'"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/commands/am/Am;->mUserId:I

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v1

    .local v1, "result":I
    if-nez v1, :cond_2

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Service not stopped: was not running."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Service stopped"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne v1, v6, :cond_0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error stopping service"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runStopUser()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    .local v2, "user":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->stopUser(ILandroid/app/IStopUserCallback;)I

    move-result v0

    .local v0, "res":I
    if-eqz v0, :cond_0

    const-string v1, ""

    .local v1, "txt":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    :goto_0
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switch failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .end local v1    # "txt":Ljava/lang/String;
    :cond_0
    return-void

    .restart local v1    # "txt":Ljava/lang/String;
    :pswitch_0
    const-string v1, " (Can\'t stop current user)"

    goto :goto_0

    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (Unknown user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private runSwitchUser()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .local v0, "user":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    return-void
.end method

.method private runToUri(I)V
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, -0x2

    invoke-direct {p0, v1}, Lcom/android/commands/am/Am;->makeIntent(I)Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private sendBroadcast()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/android/commands/am/Am;->makeIntent(I)Landroid/content/Intent;

    move-result-object v2

    .local v2, "intent":Landroid/content/Intent;
    new-instance v4, Lcom/android/commands/am/Am$IntentReceiver;

    invoke-direct {v4, p0, v1}, Lcom/android/commands/am/Am$IntentReceiver;-><init>(Lcom/android/commands/am/Am;Lcom/android/commands/am/Am$1;)V

    .local v4, "receiver":Lcom/android/commands/am/Am$IntentReceiver;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/commands/am/Am;->mReceiverPermission:Ljava/lang/String;

    const/4 v9, -0x1

    const/4 v10, 0x1

    iget-boolean v11, p0, Lcom/android/commands/am/Am;->mSticky:Z

    iget v12, p0, Lcom/android/commands/am/Am;->mUserId:I

    move-object v3, v1

    move-object v6, v1

    move-object v7, v1

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I

    invoke-virtual {v4}, Lcom/android/commands/am/Am$IntentReceiver;->waitForFinish()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error type 2"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Landroid/util/AndroidException;

    const-string v2, "Can\'t connect to activity manager; is the system running?"

    invoke-direct {v1, v2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .local v0, "op":Ljava/lang/String;
    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStart()V

    :goto_0
    return-void

    :cond_1
    const-string v1, "startservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStartService()V

    goto :goto_0

    :cond_2
    const-string v1, "stopservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStopService()V

    goto :goto_0

    :cond_3
    const-string v1, "force-stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runForceStop()V

    goto :goto_0

    :cond_4
    const-string v1, "kill"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runKill()V

    goto :goto_0

    :cond_5
    const-string v1, "kill-all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runKillAll()V

    goto :goto_0

    :cond_6
    const-string v1, "instrument"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runInstrument()V

    goto :goto_0

    :cond_7
    const-string v1, "broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/android/commands/am/Am;->sendBroadcast()V

    goto :goto_0

    :cond_8
    const-string v1, "profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runProfile()V

    goto :goto_0

    :cond_9
    const-string v1, "dumpheap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runDumpHeap()V

    goto :goto_0

    :cond_a
    const-string v1, "set-debug-app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runSetDebugApp()V

    goto :goto_0

    :cond_b
    const-string v1, "clear-debug-app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runClearDebugApp()V

    goto/16 :goto_0

    :cond_c
    const-string v1, "bug-report"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runBugReport()V

    goto/16 :goto_0

    :cond_d
    const-string v1, "monitor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runMonitor()V

    goto/16 :goto_0

    :cond_e
    const-string v1, "hang"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runHang()V

    goto/16 :goto_0

    :cond_f
    const-string v1, "restart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runRestart()V

    goto/16 :goto_0

    :cond_10
    const-string v1, "idle-maintenance"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runIdleMaintenance()V

    goto/16 :goto_0

    :cond_11
    const-string v1, "screen-compat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runScreenCompat()V

    goto/16 :goto_0

    :cond_12
    const-string v1, "to-uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/commands/am/Am;->runToUri(I)V

    goto/16 :goto_0

    :cond_13
    const-string v1, "to-intent-uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/commands/am/Am;->runToUri(I)V

    goto/16 :goto_0

    :cond_14
    const-string v1, "to-app-uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/commands/am/Am;->runToUri(I)V

    goto/16 :goto_0

    :cond_15
    const-string v1, "switch-user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runSwitchUser()V

    goto/16 :goto_0

    :cond_16
    const-string v1, "start-user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStartUserInBackground()V

    goto/16 :goto_0

    :cond_17
    const-string v1, "stop-user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStopUser()V

    goto/16 :goto_0

    :cond_18
    const-string v1, "stack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStack()V

    goto/16 :goto_0

    :cond_19
    const-string v1, "lock-task"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runLockTask()V

    goto/16 :goto_0

    :cond_1a
    const-string v1, "get-config"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-direct {p0}, Lcom/android/commands/am/Am;->runGetConfig()V

    goto/16 :goto_0

    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: unknown command \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/commands/am/Am;->showError(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onShowUsage(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    const-string v0, "usage: am [subcommand] [options]\nusage: am start [-D] [-W] [-P <FILE>] [--start-profiler <FILE>]\n               [--sampling INTERVAL] [-R COUNT] [-S] [--opengl-trace]\n               [--user <USER_ID> | current] <INTENT>\n       am startservice [--user <USER_ID> | current] <INTENT>\n       am stopservice [--user <USER_ID> | current] <INTENT>\n       am force-stop [--user <USER_ID> | all | current] <PACKAGE>\n       am kill [--user <USER_ID> | all | current] <PACKAGE>\n       am kill-all\n       am broadcast [--user <USER_ID> | all | current] <INTENT>\n       am instrument [-r] [-e <NAME> <VALUE>] [-p <FILE>] [-w]\n               [--user <USER_ID> | current]\n               [--no-window-animation] [--abi <ABI>] <COMPONENT>\n       am profile start [--user <USER_ID> current] <PROCESS> <FILE>\n       am profile stop [--user <USER_ID> current] [<PROCESS>]\n       am dumpheap [--user <USER_ID> current] [-n] <PROCESS> <FILE>\n       am set-debug-app [-w] [--persistent] <PACKAGE>\n       am clear-debug-app\n       am monitor [--gdb <port>]\n       am hang [--allow-restart]\n       am restart\n       am idle-maintenance\n       am screen-compat [on|off] <PACKAGE>\n       am to-uri [INTENT]\n       am to-intent-uri [INTENT]\n       am to-app-uri [INTENT]\n       am switch-user <USER_ID>\n       am start-user <USER_ID>\n       am stop-user <USER_ID>\n       am stack start <DISPLAY_ID> <INTENT>\n       am stack movetask <TASK_ID> <STACK_ID> [true|false]\n       am stack resize <STACK_ID> <LEFT,TOP,RIGHT,BOTTOM>\n       am stack list\n       am stack info <STACK_ID>\n       am lock-task <TASK_ID>\n       am lock-task stop\n       am get-config\n\nam start: start an Activity.  Options are:\n    -D: enable debugging\n    -W: wait for launch to complete\n    --start-profiler <FILE>: start profiler and send results to <FILE>\n    --sampling INTERVAL: use sample profiling with INTERVAL microseconds\n        between samples (use with --start-profiler)\n    -P <FILE>: like above, but profiling stops when app goes idle\n    -R: repeat the activity launch <COUNT> times.  Prior to each repeat,\n        the top activity will be finished.\n    -S: force stop the target app before starting the activity\n    --opengl-trace: enable tracing of OpenGL functions\n    --user <USER_ID> | current: Specify which user to run as; if not\n        specified then run as the current user.\n\nam startservice: start a Service.  Options are:\n    --user <USER_ID> | current: Specify which user to run as; if not\n        specified then run as the current user.\n\nam stopservice: stop a Service.  Options are:\n    --user <USER_ID> | current: Specify which user to run as; if not\n        specified then run as the current user.\n\nam force-stop: force stop everything associated with <PACKAGE>.\n    --user <USER_ID> | all | current: Specify user to force stop;\n        all users if not specified.\n\nam kill: Kill all processes associated with <PACKAGE>.  Only kills.\n  processes that are safe to kill -- that is, will not impact the user\n  experience.\n    --user <USER_ID> | all | current: Specify user whose processes to kill;\n        all users if not specified.\n\nam kill-all: Kill all background processes.\n\nam broadcast: send a broadcast Intent.  Options are:\n    --user <USER_ID> | all | current: Specify which user to send to; if not\n        specified then send to all users.\n    --receiver-permission <PERMISSION>: Require receiver to hold permission.\n    --sticky-broadcast : Send broadcast as a sticky broadcast.\n\nam instrument: start an Instrumentation.  Typically this target <COMPONENT>\n  is the form <TEST_PACKAGE>/<RUNNER_CLASS>.  Options are:\n    -r: print raw results (otherwise decode REPORT_KEY_STREAMRESULT).  Use with\n        [-e perf true] to generate raw output for performance measurements.\n    -e <NAME> <VALUE>: set argument <NAME> to <VALUE>.  For test runners a\n        common form is [-e <testrunner_flag> <value>[,<value>...]].\n    -p <FILE>: write profiling data to <FILE>\n    -w: wait for instrumentation to finish before returning.  Required for\n        test runners.\n    --user <USER_ID> | current: Specify user instrumentation runs in;\n        current user if not specified.\n    --no-window-animation: turn off window animations while running.\n    --abi <ABI>: Launch the instrumented process with the selected ABI.\n        This assumes that the process supports the selected ABI.\n\nam profile: start and stop profiler on a process.  The given <PROCESS> argument\n  may be either a process name or pid.  Options are:\n    --user <USER_ID> | current: When supplying a process name,\n        specify user of process to profile; uses current user if not specified.\n\nam dumpheap: dump the heap of a process.  The given <PROCESS> argument may\n  be either a process name or pid.  Options are:\n    -n: dump native heap instead of managed heap\n    --user <USER_ID> | current: When supplying a process name,\n        specify user of process to dump; uses current user if not specified.\n\nam set-debug-app: set application <PACKAGE> to debug.  Options are:\n    -w: wait for debugger when application starts\n    --persistent: retain this value\n\nam clear-debug-app: clear the previously set-debug-app.\n\nam bug-report: request bug report generation; will launch UI\n    when done to select where it should be delivered.\n\nam monitor: start monitoring for crashes or ANRs.\n    --gdb: start gdbserv on the given port at crash/ANR\n\nam hang: hang the system.\n    --allow-restart: allow watchdog to perform normal system restart\n\nam restart: restart the user-space system.\n\nam idle-maintenance: perform idle maintenance now.\n\nam screen-compat: control screen compatibility mode of <PACKAGE>.\n\nam to-uri: print the given Intent specification as a URI.\n\nam to-intent-uri: print the given Intent specification as an intent: URI.\n\nam to-app-uri: print the given Intent specification as an android-app: URI.\n\nam switch-user: switch to put USER_ID in the foreground, starting\n  execution of that user if it is currently stopped.\n\nam start-user: start USER_ID in background if it is currently stopped,\n  use switch-user if you want to start the user in foreground.\n\nam stop-user: stop execution of USER_ID, not allowing it to run any\n  code until a later explicit start or switch to it.\n\nam stack start: start a new activity on <DISPLAY_ID> using <INTENT>.\n\nam stack movetask: move <TASK_ID> from its current stack to the top (true) or   bottom (false) of <STACK_ID>.\n\nam stack resize: change <STACK_ID> size and position to <LEFT,TOP,RIGHT,BOTTOM>.\n\nam stack list: list all of the activity stacks and their sizes.\n\nam stack info: display the information about activity stack <STACK_ID>.\n\nam lock-task: bring <TASK_ID> to the front and don\'t allow other tasks to run\n\nam get-config: retrieve the configuration and any recent configurations\n  of the device\n\n<INTENT> specifications include these flags and arguments:\n    [-a <ACTION>] [-d <DATA_URI>] [-t <MIME_TYPE>]\n    [-c <CATEGORY> [-c <CATEGORY>] ...]\n    [-e|--es <EXTRA_KEY> <EXTRA_STRING_VALUE> ...]\n    [--esn <EXTRA_KEY> ...]\n    [--ez <EXTRA_KEY> <EXTRA_BOOLEAN_VALUE> ...]\n    [--ei <EXTRA_KEY> <EXTRA_INT_VALUE> ...]\n    [--el <EXTRA_KEY> <EXTRA_LONG_VALUE> ...]\n    [--ef <EXTRA_KEY> <EXTRA_FLOAT_VALUE> ...]\n    [--eu <EXTRA_KEY> <EXTRA_URI_VALUE> ...]\n    [--ecn <EXTRA_KEY> <EXTRA_COMPONENT_NAME_VALUE>]\n    [--eia <EXTRA_KEY> <EXTRA_INT_VALUE>[,<EXTRA_INT_VALUE...]]\n    [--ela <EXTRA_KEY> <EXTRA_LONG_VALUE>[,<EXTRA_LONG_VALUE...]]\n    [--efa <EXTRA_KEY> <EXTRA_FLOAT_VALUE>[,<EXTRA_FLOAT_VALUE...]]\n    [--esa <EXTRA_KEY> <EXTRA_STRING_VALUE>[,<EXTRA_STRING_VALUE...]]\n        (to embed a comma into a string escape it using \"\\,\")\n    [-n <COMPONENT>] [-p <PACKAGE>] [-f <FLAGS>]\n    [--grant-read-uri-permission] [--grant-write-uri-permission]\n    [--grant-persistable-uri-permission] [--grant-prefix-uri-permission]\n    [--debug-log-resolution] [--exclude-stopped-packages]\n    [--include-stopped-packages]\n    [--activity-brought-to-front] [--activity-clear-top]\n    [--activity-clear-when-task-reset] [--activity-exclude-from-recents]\n    [--activity-launched-from-history] [--activity-multiple-task]\n    [--activity-no-animation] [--activity-no-history]\n    [--activity-no-user-action] [--activity-previous-is-top]\n    [--activity-reorder-to-front] [--activity-reset-task-if-needed]\n    [--activity-single-top] [--activity-clear-task]\n    [--activity-task-on-home]\n    [--receiver-registered-only] [--receiver-replace-pending]\n    [--selector]\n    [<URI> | <PACKAGE> | <COMPONENT>]\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method parseUserArg(Ljava/lang/String;)I
    .locals 2
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    const-string v1, "all"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    .local v0, "userId":I
    :goto_0
    return v0

    .end local v0    # "userId":I
    :cond_0
    const-string v1, "current"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "cur"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, -0x2

    .restart local v0    # "userId":I
    goto :goto_0

    .end local v0    # "userId":I
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "userId":I
    goto :goto_0
.end method
