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
-- Module      : Network.AWS.RDS.DeregisterDBProxyTargets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove the association between one or more @DBProxyTarget@ data
-- structures and a @DBProxyTargetGroup@.
module Network.AWS.RDS.DeregisterDBProxyTargets
  ( -- * Creating a Request
    DeregisterDBProxyTargets (..),
    newDeregisterDBProxyTargets,

    -- * Request Lenses
    deregisterDBProxyTargets_dBClusterIdentifiers,
    deregisterDBProxyTargets_targetGroupName,
    deregisterDBProxyTargets_dBInstanceIdentifiers,
    deregisterDBProxyTargets_dBProxyName,

    -- * Destructuring the Response
    DeregisterDBProxyTargetsResponse (..),
    newDeregisterDBProxyTargetsResponse,

    -- * Response Lenses
    deregisterDBProxyTargetsResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeregisterDBProxyTargets' smart constructor.
data DeregisterDBProxyTargets = DeregisterDBProxyTargets'
  { -- | One or more DB cluster identifiers.
    dBClusterIdentifiers :: Prelude.Maybe [Prelude.Text],
    -- | The identifier of the @DBProxyTargetGroup@.
    targetGroupName :: Prelude.Maybe Prelude.Text,
    -- | One or more DB instance identifiers.
    dBInstanceIdentifiers :: Prelude.Maybe [Prelude.Text],
    -- | The identifier of the @DBProxy@ that is associated with the
    -- @DBProxyTargetGroup@.
    dBProxyName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeregisterDBProxyTargets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBClusterIdentifiers', 'deregisterDBProxyTargets_dBClusterIdentifiers' - One or more DB cluster identifiers.
--
-- 'targetGroupName', 'deregisterDBProxyTargets_targetGroupName' - The identifier of the @DBProxyTargetGroup@.
--
-- 'dBInstanceIdentifiers', 'deregisterDBProxyTargets_dBInstanceIdentifiers' - One or more DB instance identifiers.
--
-- 'dBProxyName', 'deregisterDBProxyTargets_dBProxyName' - The identifier of the @DBProxy@ that is associated with the
-- @DBProxyTargetGroup@.
newDeregisterDBProxyTargets ::
  -- | 'dBProxyName'
  Prelude.Text ->
  DeregisterDBProxyTargets
newDeregisterDBProxyTargets pDBProxyName_ =
  DeregisterDBProxyTargets'
    { dBClusterIdentifiers =
        Prelude.Nothing,
      targetGroupName = Prelude.Nothing,
      dBInstanceIdentifiers = Prelude.Nothing,
      dBProxyName = pDBProxyName_
    }

-- | One or more DB cluster identifiers.
deregisterDBProxyTargets_dBClusterIdentifiers :: Lens.Lens' DeregisterDBProxyTargets (Prelude.Maybe [Prelude.Text])
deregisterDBProxyTargets_dBClusterIdentifiers = Lens.lens (\DeregisterDBProxyTargets' {dBClusterIdentifiers} -> dBClusterIdentifiers) (\s@DeregisterDBProxyTargets' {} a -> s {dBClusterIdentifiers = a} :: DeregisterDBProxyTargets) Prelude.. Lens.mapping Prelude._Coerce

-- | The identifier of the @DBProxyTargetGroup@.
deregisterDBProxyTargets_targetGroupName :: Lens.Lens' DeregisterDBProxyTargets (Prelude.Maybe Prelude.Text)
deregisterDBProxyTargets_targetGroupName = Lens.lens (\DeregisterDBProxyTargets' {targetGroupName} -> targetGroupName) (\s@DeregisterDBProxyTargets' {} a -> s {targetGroupName = a} :: DeregisterDBProxyTargets)

-- | One or more DB instance identifiers.
deregisterDBProxyTargets_dBInstanceIdentifiers :: Lens.Lens' DeregisterDBProxyTargets (Prelude.Maybe [Prelude.Text])
deregisterDBProxyTargets_dBInstanceIdentifiers = Lens.lens (\DeregisterDBProxyTargets' {dBInstanceIdentifiers} -> dBInstanceIdentifiers) (\s@DeregisterDBProxyTargets' {} a -> s {dBInstanceIdentifiers = a} :: DeregisterDBProxyTargets) Prelude.. Lens.mapping Prelude._Coerce

-- | The identifier of the @DBProxy@ that is associated with the
-- @DBProxyTargetGroup@.
deregisterDBProxyTargets_dBProxyName :: Lens.Lens' DeregisterDBProxyTargets Prelude.Text
deregisterDBProxyTargets_dBProxyName = Lens.lens (\DeregisterDBProxyTargets' {dBProxyName} -> dBProxyName) (\s@DeregisterDBProxyTargets' {} a -> s {dBProxyName = a} :: DeregisterDBProxyTargets)

instance Prelude.AWSRequest DeregisterDBProxyTargets where
  type
    Rs DeregisterDBProxyTargets =
      DeregisterDBProxyTargetsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DeregisterDBProxyTargetsResult"
      ( \s h x ->
          DeregisterDBProxyTargetsResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeregisterDBProxyTargets

instance Prelude.NFData DeregisterDBProxyTargets

instance Prelude.ToHeaders DeregisterDBProxyTargets where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath DeregisterDBProxyTargets where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DeregisterDBProxyTargets where
  toQuery DeregisterDBProxyTargets' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("DeregisterDBProxyTargets" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "DBClusterIdentifiers"
          Prelude.=: Prelude.toQuery
            ( Prelude.toQueryList "member"
                Prelude.<$> dBClusterIdentifiers
            ),
        "TargetGroupName" Prelude.=: targetGroupName,
        "DBInstanceIdentifiers"
          Prelude.=: Prelude.toQuery
            ( Prelude.toQueryList "member"
                Prelude.<$> dBInstanceIdentifiers
            ),
        "DBProxyName" Prelude.=: dBProxyName
      ]

-- | /See:/ 'newDeregisterDBProxyTargetsResponse' smart constructor.
data DeregisterDBProxyTargetsResponse = DeregisterDBProxyTargetsResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeregisterDBProxyTargetsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deregisterDBProxyTargetsResponse_httpStatus' - The response's http status code.
newDeregisterDBProxyTargetsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeregisterDBProxyTargetsResponse
newDeregisterDBProxyTargetsResponse pHttpStatus_ =
  DeregisterDBProxyTargetsResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deregisterDBProxyTargetsResponse_httpStatus :: Lens.Lens' DeregisterDBProxyTargetsResponse Prelude.Int
deregisterDBProxyTargetsResponse_httpStatus = Lens.lens (\DeregisterDBProxyTargetsResponse' {httpStatus} -> httpStatus) (\s@DeregisterDBProxyTargetsResponse' {} a -> s {httpStatus = a} :: DeregisterDBProxyTargetsResponse)

instance
  Prelude.NFData
    DeregisterDBProxyTargetsResponse
