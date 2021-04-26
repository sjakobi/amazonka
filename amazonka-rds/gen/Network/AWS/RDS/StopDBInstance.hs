{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.StopDBInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops an Amazon RDS DB instance. When you stop a DB instance, Amazon RDS
-- retains the DB instance\'s metadata, including its endpoint, DB
-- parameter group, and option group membership. Amazon RDS also retains
-- the transaction logs so you can do a point-in-time restore if necessary.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_StopInstance.html Stopping an Amazon RDS DB Instance Temporarily>
-- in the /Amazon RDS User Guide./
--
-- This command doesn\'t apply to Aurora MySQL and Aurora PostgreSQL. For
-- Aurora clusters, use @StopDBCluster@ instead.
module Network.AWS.RDS.StopDBInstance
  ( -- * Creating a Request
    StopDBInstance (..),
    newStopDBInstance,

    -- * Request Lenses
    stopDBInstance_dBSnapshotIdentifier,
    stopDBInstance_dBInstanceIdentifier,

    -- * Destructuring the Response
    StopDBInstanceResponse (..),
    newStopDBInstanceResponse,

    -- * Response Lenses
    stopDBInstanceResponse_dBInstance,
    stopDBInstanceResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import Network.AWS.RDS.Types.DBInstance
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newStopDBInstance' smart constructor.
data StopDBInstance = StopDBInstance'
  { -- | The user-supplied instance identifier of the DB Snapshot created
    -- immediately before the DB instance is stopped.
    dBSnapshotIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The user-supplied instance identifier.
    dBInstanceIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'StopDBInstance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBSnapshotIdentifier', 'stopDBInstance_dBSnapshotIdentifier' - The user-supplied instance identifier of the DB Snapshot created
-- immediately before the DB instance is stopped.
--
-- 'dBInstanceIdentifier', 'stopDBInstance_dBInstanceIdentifier' - The user-supplied instance identifier.
newStopDBInstance ::
  -- | 'dBInstanceIdentifier'
  Prelude.Text ->
  StopDBInstance
newStopDBInstance pDBInstanceIdentifier_ =
  StopDBInstance'
    { dBSnapshotIdentifier =
        Prelude.Nothing,
      dBInstanceIdentifier = pDBInstanceIdentifier_
    }

-- | The user-supplied instance identifier of the DB Snapshot created
-- immediately before the DB instance is stopped.
stopDBInstance_dBSnapshotIdentifier :: Lens.Lens' StopDBInstance (Prelude.Maybe Prelude.Text)
stopDBInstance_dBSnapshotIdentifier = Lens.lens (\StopDBInstance' {dBSnapshotIdentifier} -> dBSnapshotIdentifier) (\s@StopDBInstance' {} a -> s {dBSnapshotIdentifier = a} :: StopDBInstance)

-- | The user-supplied instance identifier.
stopDBInstance_dBInstanceIdentifier :: Lens.Lens' StopDBInstance Prelude.Text
stopDBInstance_dBInstanceIdentifier = Lens.lens (\StopDBInstance' {dBInstanceIdentifier} -> dBInstanceIdentifier) (\s@StopDBInstance' {} a -> s {dBInstanceIdentifier = a} :: StopDBInstance)

instance Prelude.AWSRequest StopDBInstance where
  type Rs StopDBInstance = StopDBInstanceResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "StopDBInstanceResult"
      ( \s h x ->
          StopDBInstanceResponse'
            Prelude.<$> (x Prelude..@? "DBInstance")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StopDBInstance

instance Prelude.NFData StopDBInstance

instance Prelude.ToHeaders StopDBInstance where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath StopDBInstance where
  toPath = Prelude.const "/"

instance Prelude.ToQuery StopDBInstance where
  toQuery StopDBInstance' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("StopDBInstance" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "DBSnapshotIdentifier"
          Prelude.=: dBSnapshotIdentifier,
        "DBInstanceIdentifier"
          Prelude.=: dBInstanceIdentifier
      ]

-- | /See:/ 'newStopDBInstanceResponse' smart constructor.
data StopDBInstanceResponse = StopDBInstanceResponse'
  { dBInstance :: Prelude.Maybe DBInstance,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'StopDBInstanceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBInstance', 'stopDBInstanceResponse_dBInstance' - Undocumented member.
--
-- 'httpStatus', 'stopDBInstanceResponse_httpStatus' - The response's http status code.
newStopDBInstanceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StopDBInstanceResponse
newStopDBInstanceResponse pHttpStatus_ =
  StopDBInstanceResponse'
    { dBInstance =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
stopDBInstanceResponse_dBInstance :: Lens.Lens' StopDBInstanceResponse (Prelude.Maybe DBInstance)
stopDBInstanceResponse_dBInstance = Lens.lens (\StopDBInstanceResponse' {dBInstance} -> dBInstance) (\s@StopDBInstanceResponse' {} a -> s {dBInstance = a} :: StopDBInstanceResponse)

-- | The response's http status code.
stopDBInstanceResponse_httpStatus :: Lens.Lens' StopDBInstanceResponse Prelude.Int
stopDBInstanceResponse_httpStatus = Lens.lens (\StopDBInstanceResponse' {httpStatus} -> httpStatus) (\s@StopDBInstanceResponse' {} a -> s {httpStatus = a} :: StopDBInstanceResponse)

instance Prelude.NFData StopDBInstanceResponse
