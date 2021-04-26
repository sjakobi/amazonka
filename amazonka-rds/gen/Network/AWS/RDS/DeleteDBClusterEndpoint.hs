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
-- Module      : Network.AWS.RDS.DeleteDBClusterEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a custom endpoint and removes it from an Amazon Aurora DB
-- cluster.
--
-- This action only applies to Aurora DB clusters.
module Network.AWS.RDS.DeleteDBClusterEndpoint
  ( -- * Creating a Request
    DeleteDBClusterEndpoint (..),
    newDeleteDBClusterEndpoint,

    -- * Request Lenses
    deleteDBClusterEndpoint_dBClusterEndpointIdentifier,

    -- * Destructuring the Response
    DBClusterEndpoint (..),
    newDBClusterEndpoint,

    -- * Response Lenses
    dBClusterEndpoint_dBClusterEndpointIdentifier,
    dBClusterEndpoint_status,
    dBClusterEndpoint_excludedMembers,
    dBClusterEndpoint_endpointType,
    dBClusterEndpoint_customEndpointType,
    dBClusterEndpoint_dBClusterEndpointArn,
    dBClusterEndpoint_dBClusterIdentifier,
    dBClusterEndpoint_dBClusterEndpointResourceIdentifier,
    dBClusterEndpoint_endpoint,
    dBClusterEndpoint_staticMembers,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import Network.AWS.RDS.Types.DBClusterEndpoint
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteDBClusterEndpoint' smart constructor.
data DeleteDBClusterEndpoint = DeleteDBClusterEndpoint'
  { -- | The identifier associated with the custom endpoint. This parameter is
    -- stored as a lowercase string.
    dBClusterEndpointIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeleteDBClusterEndpoint' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBClusterEndpointIdentifier', 'deleteDBClusterEndpoint_dBClusterEndpointIdentifier' - The identifier associated with the custom endpoint. This parameter is
-- stored as a lowercase string.
newDeleteDBClusterEndpoint ::
  -- | 'dBClusterEndpointIdentifier'
  Prelude.Text ->
  DeleteDBClusterEndpoint
newDeleteDBClusterEndpoint
  pDBClusterEndpointIdentifier_ =
    DeleteDBClusterEndpoint'
      { dBClusterEndpointIdentifier =
          pDBClusterEndpointIdentifier_
      }

-- | The identifier associated with the custom endpoint. This parameter is
-- stored as a lowercase string.
deleteDBClusterEndpoint_dBClusterEndpointIdentifier :: Lens.Lens' DeleteDBClusterEndpoint Prelude.Text
deleteDBClusterEndpoint_dBClusterEndpointIdentifier = Lens.lens (\DeleteDBClusterEndpoint' {dBClusterEndpointIdentifier} -> dBClusterEndpointIdentifier) (\s@DeleteDBClusterEndpoint' {} a -> s {dBClusterEndpointIdentifier = a} :: DeleteDBClusterEndpoint)

instance Prelude.AWSRequest DeleteDBClusterEndpoint where
  type Rs DeleteDBClusterEndpoint = DBClusterEndpoint
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DeleteDBClusterEndpointResult"
      (\s h x -> Prelude.parseXML x)

instance Prelude.Hashable DeleteDBClusterEndpoint

instance Prelude.NFData DeleteDBClusterEndpoint

instance Prelude.ToHeaders DeleteDBClusterEndpoint where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath DeleteDBClusterEndpoint where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DeleteDBClusterEndpoint where
  toQuery DeleteDBClusterEndpoint' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("DeleteDBClusterEndpoint" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "DBClusterEndpointIdentifier"
          Prelude.=: dBClusterEndpointIdentifier
      ]
