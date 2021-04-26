{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.DBProxyTargetGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBProxyTargetGroup where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types.ConnectionPoolConfigurationInfo

-- | Represents a set of RDS DB instances, Aurora DB clusters, or both that a
-- proxy can connect to. Currently, each target group is associated with
-- exactly one RDS DB instance or Aurora DB cluster.
--
-- This data type is used as a response element in the
-- @DescribeDBProxyTargetGroups@ action.
--
-- /See:/ 'newDBProxyTargetGroup' smart constructor.
data DBProxyTargetGroup = DBProxyTargetGroup'
  { -- | The current status of this target group. A status of @available@ means
    -- the target group is correctly associated with a database. Other values
    -- indicate that you must wait for the target group to be ready, or take
    -- some action to resolve an issue.
    status :: Prelude.Maybe Prelude.Text,
    -- | The date and time when the target group was first created.
    createdDate :: Prelude.Maybe Prelude.ISO8601,
    -- | Whether this target group is the first one used for connection requests
    -- by the associated proxy. Because each proxy is currently associated with
    -- a single target group, currently this setting is always @true@.
    isDefault :: Prelude.Maybe Prelude.Bool,
    -- | The identifier for the target group. This name must be unique for all
    -- target groups owned by your AWS account in the specified AWS Region.
    targetGroupName :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) representing the target group.
    targetGroupArn :: Prelude.Maybe Prelude.Text,
    -- | The settings that determine the size and behavior of the connection pool
    -- for the target group.
    connectionPoolConfig :: Prelude.Maybe ConnectionPoolConfigurationInfo,
    -- | The date and time when the target group was last updated.
    updatedDate :: Prelude.Maybe Prelude.ISO8601,
    -- | The identifier for the RDS proxy associated with this target group.
    dBProxyName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DBProxyTargetGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'dBProxyTargetGroup_status' - The current status of this target group. A status of @available@ means
-- the target group is correctly associated with a database. Other values
-- indicate that you must wait for the target group to be ready, or take
-- some action to resolve an issue.
--
-- 'createdDate', 'dBProxyTargetGroup_createdDate' - The date and time when the target group was first created.
--
-- 'isDefault', 'dBProxyTargetGroup_isDefault' - Whether this target group is the first one used for connection requests
-- by the associated proxy. Because each proxy is currently associated with
-- a single target group, currently this setting is always @true@.
--
-- 'targetGroupName', 'dBProxyTargetGroup_targetGroupName' - The identifier for the target group. This name must be unique for all
-- target groups owned by your AWS account in the specified AWS Region.
--
-- 'targetGroupArn', 'dBProxyTargetGroup_targetGroupArn' - The Amazon Resource Name (ARN) representing the target group.
--
-- 'connectionPoolConfig', 'dBProxyTargetGroup_connectionPoolConfig' - The settings that determine the size and behavior of the connection pool
-- for the target group.
--
-- 'updatedDate', 'dBProxyTargetGroup_updatedDate' - The date and time when the target group was last updated.
--
-- 'dBProxyName', 'dBProxyTargetGroup_dBProxyName' - The identifier for the RDS proxy associated with this target group.
newDBProxyTargetGroup ::
  DBProxyTargetGroup
newDBProxyTargetGroup =
  DBProxyTargetGroup'
    { status = Prelude.Nothing,
      createdDate = Prelude.Nothing,
      isDefault = Prelude.Nothing,
      targetGroupName = Prelude.Nothing,
      targetGroupArn = Prelude.Nothing,
      connectionPoolConfig = Prelude.Nothing,
      updatedDate = Prelude.Nothing,
      dBProxyName = Prelude.Nothing
    }

-- | The current status of this target group. A status of @available@ means
-- the target group is correctly associated with a database. Other values
-- indicate that you must wait for the target group to be ready, or take
-- some action to resolve an issue.
dBProxyTargetGroup_status :: Lens.Lens' DBProxyTargetGroup (Prelude.Maybe Prelude.Text)
dBProxyTargetGroup_status = Lens.lens (\DBProxyTargetGroup' {status} -> status) (\s@DBProxyTargetGroup' {} a -> s {status = a} :: DBProxyTargetGroup)

-- | The date and time when the target group was first created.
dBProxyTargetGroup_createdDate :: Lens.Lens' DBProxyTargetGroup (Prelude.Maybe Prelude.UTCTime)
dBProxyTargetGroup_createdDate = Lens.lens (\DBProxyTargetGroup' {createdDate} -> createdDate) (\s@DBProxyTargetGroup' {} a -> s {createdDate = a} :: DBProxyTargetGroup) Prelude.. Lens.mapping Prelude._Time

-- | Whether this target group is the first one used for connection requests
-- by the associated proxy. Because each proxy is currently associated with
-- a single target group, currently this setting is always @true@.
dBProxyTargetGroup_isDefault :: Lens.Lens' DBProxyTargetGroup (Prelude.Maybe Prelude.Bool)
dBProxyTargetGroup_isDefault = Lens.lens (\DBProxyTargetGroup' {isDefault} -> isDefault) (\s@DBProxyTargetGroup' {} a -> s {isDefault = a} :: DBProxyTargetGroup)

-- | The identifier for the target group. This name must be unique for all
-- target groups owned by your AWS account in the specified AWS Region.
dBProxyTargetGroup_targetGroupName :: Lens.Lens' DBProxyTargetGroup (Prelude.Maybe Prelude.Text)
dBProxyTargetGroup_targetGroupName = Lens.lens (\DBProxyTargetGroup' {targetGroupName} -> targetGroupName) (\s@DBProxyTargetGroup' {} a -> s {targetGroupName = a} :: DBProxyTargetGroup)

-- | The Amazon Resource Name (ARN) representing the target group.
dBProxyTargetGroup_targetGroupArn :: Lens.Lens' DBProxyTargetGroup (Prelude.Maybe Prelude.Text)
dBProxyTargetGroup_targetGroupArn = Lens.lens (\DBProxyTargetGroup' {targetGroupArn} -> targetGroupArn) (\s@DBProxyTargetGroup' {} a -> s {targetGroupArn = a} :: DBProxyTargetGroup)

-- | The settings that determine the size and behavior of the connection pool
-- for the target group.
dBProxyTargetGroup_connectionPoolConfig :: Lens.Lens' DBProxyTargetGroup (Prelude.Maybe ConnectionPoolConfigurationInfo)
dBProxyTargetGroup_connectionPoolConfig = Lens.lens (\DBProxyTargetGroup' {connectionPoolConfig} -> connectionPoolConfig) (\s@DBProxyTargetGroup' {} a -> s {connectionPoolConfig = a} :: DBProxyTargetGroup)

-- | The date and time when the target group was last updated.
dBProxyTargetGroup_updatedDate :: Lens.Lens' DBProxyTargetGroup (Prelude.Maybe Prelude.UTCTime)
dBProxyTargetGroup_updatedDate = Lens.lens (\DBProxyTargetGroup' {updatedDate} -> updatedDate) (\s@DBProxyTargetGroup' {} a -> s {updatedDate = a} :: DBProxyTargetGroup) Prelude.. Lens.mapping Prelude._Time

-- | The identifier for the RDS proxy associated with this target group.
dBProxyTargetGroup_dBProxyName :: Lens.Lens' DBProxyTargetGroup (Prelude.Maybe Prelude.Text)
dBProxyTargetGroup_dBProxyName = Lens.lens (\DBProxyTargetGroup' {dBProxyName} -> dBProxyName) (\s@DBProxyTargetGroup' {} a -> s {dBProxyName = a} :: DBProxyTargetGroup)

instance Prelude.FromXML DBProxyTargetGroup where
  parseXML x =
    DBProxyTargetGroup'
      Prelude.<$> (x Prelude..@? "Status")
      Prelude.<*> (x Prelude..@? "CreatedDate")
      Prelude.<*> (x Prelude..@? "IsDefault")
      Prelude.<*> (x Prelude..@? "TargetGroupName")
      Prelude.<*> (x Prelude..@? "TargetGroupArn")
      Prelude.<*> (x Prelude..@? "ConnectionPoolConfig")
      Prelude.<*> (x Prelude..@? "UpdatedDate")
      Prelude.<*> (x Prelude..@? "DBProxyName")

instance Prelude.Hashable DBProxyTargetGroup

instance Prelude.NFData DBProxyTargetGroup
