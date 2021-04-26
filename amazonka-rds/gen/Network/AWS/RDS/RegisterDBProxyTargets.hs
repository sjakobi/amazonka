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
-- Module      : Network.AWS.RDS.RegisterDBProxyTargets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associate one or more @DBProxyTarget@ data structures with a
-- @DBProxyTargetGroup@.
module Network.AWS.RDS.RegisterDBProxyTargets
  ( -- * Creating a Request
    RegisterDBProxyTargets (..),
    newRegisterDBProxyTargets,

    -- * Request Lenses
    registerDBProxyTargets_dBClusterIdentifiers,
    registerDBProxyTargets_targetGroupName,
    registerDBProxyTargets_dBInstanceIdentifiers,
    registerDBProxyTargets_dBProxyName,

    -- * Destructuring the Response
    RegisterDBProxyTargetsResponse (..),
    newRegisterDBProxyTargetsResponse,

    -- * Response Lenses
    registerDBProxyTargetsResponse_dBProxyTargets,
    registerDBProxyTargetsResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import Network.AWS.RDS.Types.DBProxyTarget
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newRegisterDBProxyTargets' smart constructor.
data RegisterDBProxyTargets = RegisterDBProxyTargets'
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
-- Create a value of 'RegisterDBProxyTargets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBClusterIdentifiers', 'registerDBProxyTargets_dBClusterIdentifiers' - One or more DB cluster identifiers.
--
-- 'targetGroupName', 'registerDBProxyTargets_targetGroupName' - The identifier of the @DBProxyTargetGroup@.
--
-- 'dBInstanceIdentifiers', 'registerDBProxyTargets_dBInstanceIdentifiers' - One or more DB instance identifiers.
--
-- 'dBProxyName', 'registerDBProxyTargets_dBProxyName' - The identifier of the @DBProxy@ that is associated with the
-- @DBProxyTargetGroup@.
newRegisterDBProxyTargets ::
  -- | 'dBProxyName'
  Prelude.Text ->
  RegisterDBProxyTargets
newRegisterDBProxyTargets pDBProxyName_ =
  RegisterDBProxyTargets'
    { dBClusterIdentifiers =
        Prelude.Nothing,
      targetGroupName = Prelude.Nothing,
      dBInstanceIdentifiers = Prelude.Nothing,
      dBProxyName = pDBProxyName_
    }

-- | One or more DB cluster identifiers.
registerDBProxyTargets_dBClusterIdentifiers :: Lens.Lens' RegisterDBProxyTargets (Prelude.Maybe [Prelude.Text])
registerDBProxyTargets_dBClusterIdentifiers = Lens.lens (\RegisterDBProxyTargets' {dBClusterIdentifiers} -> dBClusterIdentifiers) (\s@RegisterDBProxyTargets' {} a -> s {dBClusterIdentifiers = a} :: RegisterDBProxyTargets) Prelude.. Lens.mapping Prelude._Coerce

-- | The identifier of the @DBProxyTargetGroup@.
registerDBProxyTargets_targetGroupName :: Lens.Lens' RegisterDBProxyTargets (Prelude.Maybe Prelude.Text)
registerDBProxyTargets_targetGroupName = Lens.lens (\RegisterDBProxyTargets' {targetGroupName} -> targetGroupName) (\s@RegisterDBProxyTargets' {} a -> s {targetGroupName = a} :: RegisterDBProxyTargets)

-- | One or more DB instance identifiers.
registerDBProxyTargets_dBInstanceIdentifiers :: Lens.Lens' RegisterDBProxyTargets (Prelude.Maybe [Prelude.Text])
registerDBProxyTargets_dBInstanceIdentifiers = Lens.lens (\RegisterDBProxyTargets' {dBInstanceIdentifiers} -> dBInstanceIdentifiers) (\s@RegisterDBProxyTargets' {} a -> s {dBInstanceIdentifiers = a} :: RegisterDBProxyTargets) Prelude.. Lens.mapping Prelude._Coerce

-- | The identifier of the @DBProxy@ that is associated with the
-- @DBProxyTargetGroup@.
registerDBProxyTargets_dBProxyName :: Lens.Lens' RegisterDBProxyTargets Prelude.Text
registerDBProxyTargets_dBProxyName = Lens.lens (\RegisterDBProxyTargets' {dBProxyName} -> dBProxyName) (\s@RegisterDBProxyTargets' {} a -> s {dBProxyName = a} :: RegisterDBProxyTargets)

instance Prelude.AWSRequest RegisterDBProxyTargets where
  type
    Rs RegisterDBProxyTargets =
      RegisterDBProxyTargetsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "RegisterDBProxyTargetsResult"
      ( \s h x ->
          RegisterDBProxyTargetsResponse'
            Prelude.<$> ( x Prelude..@? "DBProxyTargets"
                            Prelude..!@ Prelude.mempty
                            Prelude.>>= Prelude.may (Prelude.parseXMLList "member")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable RegisterDBProxyTargets

instance Prelude.NFData RegisterDBProxyTargets

instance Prelude.ToHeaders RegisterDBProxyTargets where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath RegisterDBProxyTargets where
  toPath = Prelude.const "/"

instance Prelude.ToQuery RegisterDBProxyTargets where
  toQuery RegisterDBProxyTargets' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("RegisterDBProxyTargets" :: Prelude.ByteString),
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

-- | /See:/ 'newRegisterDBProxyTargetsResponse' smart constructor.
data RegisterDBProxyTargetsResponse = RegisterDBProxyTargetsResponse'
  { -- | One or more @DBProxyTarget@ objects that are created when you register
    -- targets with a target group.
    dBProxyTargets :: Prelude.Maybe [DBProxyTarget],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'RegisterDBProxyTargetsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBProxyTargets', 'registerDBProxyTargetsResponse_dBProxyTargets' - One or more @DBProxyTarget@ objects that are created when you register
-- targets with a target group.
--
-- 'httpStatus', 'registerDBProxyTargetsResponse_httpStatus' - The response's http status code.
newRegisterDBProxyTargetsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  RegisterDBProxyTargetsResponse
newRegisterDBProxyTargetsResponse pHttpStatus_ =
  RegisterDBProxyTargetsResponse'
    { dBProxyTargets =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | One or more @DBProxyTarget@ objects that are created when you register
-- targets with a target group.
registerDBProxyTargetsResponse_dBProxyTargets :: Lens.Lens' RegisterDBProxyTargetsResponse (Prelude.Maybe [DBProxyTarget])
registerDBProxyTargetsResponse_dBProxyTargets = Lens.lens (\RegisterDBProxyTargetsResponse' {dBProxyTargets} -> dBProxyTargets) (\s@RegisterDBProxyTargetsResponse' {} a -> s {dBProxyTargets = a} :: RegisterDBProxyTargetsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
registerDBProxyTargetsResponse_httpStatus :: Lens.Lens' RegisterDBProxyTargetsResponse Prelude.Int
registerDBProxyTargetsResponse_httpStatus = Lens.lens (\RegisterDBProxyTargetsResponse' {httpStatus} -> httpStatus) (\s@RegisterDBProxyTargetsResponse' {} a -> s {httpStatus = a} :: RegisterDBProxyTargetsResponse)

instance
  Prelude.NFData
    RegisterDBProxyTargetsResponse
