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
-- Module      : Network.AWS.RDS.StartDBInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts an Amazon RDS DB instance that was stopped using the AWS console,
-- the stop-db-instance AWS CLI command, or the StopDBInstance action.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_StartInstance.html Starting an Amazon RDS DB instance That Was Previously Stopped>
-- in the /Amazon RDS User Guide./
--
-- This command doesn\'t apply to Aurora MySQL and Aurora PostgreSQL. For
-- Aurora DB clusters, use @StartDBCluster@ instead.
module Network.AWS.RDS.StartDBInstance
  ( -- * Creating a Request
    StartDBInstance (..),
    newStartDBInstance,

    -- * Request Lenses
    startDBInstance_dBInstanceIdentifier,

    -- * Destructuring the Response
    StartDBInstanceResponse (..),
    newStartDBInstanceResponse,

    -- * Response Lenses
    startDBInstanceResponse_dBInstance,
    startDBInstanceResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import Network.AWS.RDS.Types.DBInstance
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newStartDBInstance' smart constructor.
data StartDBInstance = StartDBInstance'
  { -- | The user-supplied instance identifier.
    dBInstanceIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'StartDBInstance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBInstanceIdentifier', 'startDBInstance_dBInstanceIdentifier' - The user-supplied instance identifier.
newStartDBInstance ::
  -- | 'dBInstanceIdentifier'
  Prelude.Text ->
  StartDBInstance
newStartDBInstance pDBInstanceIdentifier_ =
  StartDBInstance'
    { dBInstanceIdentifier =
        pDBInstanceIdentifier_
    }

-- | The user-supplied instance identifier.
startDBInstance_dBInstanceIdentifier :: Lens.Lens' StartDBInstance Prelude.Text
startDBInstance_dBInstanceIdentifier = Lens.lens (\StartDBInstance' {dBInstanceIdentifier} -> dBInstanceIdentifier) (\s@StartDBInstance' {} a -> s {dBInstanceIdentifier = a} :: StartDBInstance)

instance Prelude.AWSRequest StartDBInstance where
  type Rs StartDBInstance = StartDBInstanceResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "StartDBInstanceResult"
      ( \s h x ->
          StartDBInstanceResponse'
            Prelude.<$> (x Prelude..@? "DBInstance")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StartDBInstance

instance Prelude.NFData StartDBInstance

instance Prelude.ToHeaders StartDBInstance where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath StartDBInstance where
  toPath = Prelude.const "/"

instance Prelude.ToQuery StartDBInstance where
  toQuery StartDBInstance' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("StartDBInstance" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "DBInstanceIdentifier"
          Prelude.=: dBInstanceIdentifier
      ]

-- | /See:/ 'newStartDBInstanceResponse' smart constructor.
data StartDBInstanceResponse = StartDBInstanceResponse'
  { dBInstance :: Prelude.Maybe DBInstance,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'StartDBInstanceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBInstance', 'startDBInstanceResponse_dBInstance' - Undocumented member.
--
-- 'httpStatus', 'startDBInstanceResponse_httpStatus' - The response's http status code.
newStartDBInstanceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StartDBInstanceResponse
newStartDBInstanceResponse pHttpStatus_ =
  StartDBInstanceResponse'
    { dBInstance =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
startDBInstanceResponse_dBInstance :: Lens.Lens' StartDBInstanceResponse (Prelude.Maybe DBInstance)
startDBInstanceResponse_dBInstance = Lens.lens (\StartDBInstanceResponse' {dBInstance} -> dBInstance) (\s@StartDBInstanceResponse' {} a -> s {dBInstance = a} :: StartDBInstanceResponse)

-- | The response's http status code.
startDBInstanceResponse_httpStatus :: Lens.Lens' StartDBInstanceResponse Prelude.Int
startDBInstanceResponse_httpStatus = Lens.lens (\StartDBInstanceResponse' {httpStatus} -> httpStatus) (\s@StartDBInstanceResponse' {} a -> s {httpStatus = a} :: StartDBInstanceResponse)

instance Prelude.NFData StartDBInstanceResponse
