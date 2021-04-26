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
-- Module      : Network.AWS.ElasticSearch.RejectInboundCrossClusterSearchConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows the destination domain owner to reject an inbound cross-cluster
-- search connection request.
module Network.AWS.ElasticSearch.RejectInboundCrossClusterSearchConnection
  ( -- * Creating a Request
    RejectInboundCrossClusterSearchConnection (..),
    newRejectInboundCrossClusterSearchConnection,

    -- * Request Lenses
    rejectInboundCrossClusterSearchConnection_crossClusterSearchConnectionId,

    -- * Destructuring the Response
    RejectInboundCrossClusterSearchConnectionResponse (..),
    newRejectInboundCrossClusterSearchConnectionResponse,

    -- * Response Lenses
    rejectInboundCrossClusterSearchConnectionResponse_crossClusterSearchConnection,
    rejectInboundCrossClusterSearchConnectionResponse_httpStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import Network.AWS.ElasticSearch.Types.InboundCrossClusterSearchConnection
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Container for the parameters to the
-- @RejectInboundCrossClusterSearchConnection@ operation.
--
-- /See:/ 'newRejectInboundCrossClusterSearchConnection' smart constructor.
data RejectInboundCrossClusterSearchConnection = RejectInboundCrossClusterSearchConnection'
  { -- | The id of the inbound connection that you want to reject.
    crossClusterSearchConnectionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'RejectInboundCrossClusterSearchConnection' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'crossClusterSearchConnectionId', 'rejectInboundCrossClusterSearchConnection_crossClusterSearchConnectionId' - The id of the inbound connection that you want to reject.
newRejectInboundCrossClusterSearchConnection ::
  -- | 'crossClusterSearchConnectionId'
  Prelude.Text ->
  RejectInboundCrossClusterSearchConnection
newRejectInboundCrossClusterSearchConnection
  pCrossClusterSearchConnectionId_ =
    RejectInboundCrossClusterSearchConnection'
      { crossClusterSearchConnectionId =
          pCrossClusterSearchConnectionId_
      }

-- | The id of the inbound connection that you want to reject.
rejectInboundCrossClusterSearchConnection_crossClusterSearchConnectionId :: Lens.Lens' RejectInboundCrossClusterSearchConnection Prelude.Text
rejectInboundCrossClusterSearchConnection_crossClusterSearchConnectionId = Lens.lens (\RejectInboundCrossClusterSearchConnection' {crossClusterSearchConnectionId} -> crossClusterSearchConnectionId) (\s@RejectInboundCrossClusterSearchConnection' {} a -> s {crossClusterSearchConnectionId = a} :: RejectInboundCrossClusterSearchConnection)

instance
  Prelude.AWSRequest
    RejectInboundCrossClusterSearchConnection
  where
  type
    Rs RejectInboundCrossClusterSearchConnection =
      RejectInboundCrossClusterSearchConnectionResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          RejectInboundCrossClusterSearchConnectionResponse'
            Prelude.<$> (x Prelude..?> "CrossClusterSearchConnection")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    RejectInboundCrossClusterSearchConnection

instance
  Prelude.NFData
    RejectInboundCrossClusterSearchConnection

instance
  Prelude.ToHeaders
    RejectInboundCrossClusterSearchConnection
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Prelude.ToJSON
    RejectInboundCrossClusterSearchConnection
  where
  toJSON =
    Prelude.const (Prelude.Object Prelude.mempty)

instance
  Prelude.ToPath
    RejectInboundCrossClusterSearchConnection
  where
  toPath RejectInboundCrossClusterSearchConnection' {..} =
    Prelude.mconcat
      [ "/2015-01-01/es/ccs/inboundConnection/",
        Prelude.toBS crossClusterSearchConnectionId,
        "/reject"
      ]

instance
  Prelude.ToQuery
    RejectInboundCrossClusterSearchConnection
  where
  toQuery = Prelude.const Prelude.mempty

-- | The result of a @RejectInboundCrossClusterSearchConnection@ operation.
-- Contains details of rejected inbound connection.
--
-- /See:/ 'newRejectInboundCrossClusterSearchConnectionResponse' smart constructor.
data RejectInboundCrossClusterSearchConnectionResponse = RejectInboundCrossClusterSearchConnectionResponse'
  { -- | Specifies the @InboundCrossClusterSearchConnection@ of rejected inbound
    -- connection.
    crossClusterSearchConnection :: Prelude.Maybe InboundCrossClusterSearchConnection,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'RejectInboundCrossClusterSearchConnectionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'crossClusterSearchConnection', 'rejectInboundCrossClusterSearchConnectionResponse_crossClusterSearchConnection' - Specifies the @InboundCrossClusterSearchConnection@ of rejected inbound
-- connection.
--
-- 'httpStatus', 'rejectInboundCrossClusterSearchConnectionResponse_httpStatus' - The response's http status code.
newRejectInboundCrossClusterSearchConnectionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  RejectInboundCrossClusterSearchConnectionResponse
newRejectInboundCrossClusterSearchConnectionResponse
  pHttpStatus_ =
    RejectInboundCrossClusterSearchConnectionResponse'
      { crossClusterSearchConnection =
          Prelude.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | Specifies the @InboundCrossClusterSearchConnection@ of rejected inbound
-- connection.
rejectInboundCrossClusterSearchConnectionResponse_crossClusterSearchConnection :: Lens.Lens' RejectInboundCrossClusterSearchConnectionResponse (Prelude.Maybe InboundCrossClusterSearchConnection)
rejectInboundCrossClusterSearchConnectionResponse_crossClusterSearchConnection = Lens.lens (\RejectInboundCrossClusterSearchConnectionResponse' {crossClusterSearchConnection} -> crossClusterSearchConnection) (\s@RejectInboundCrossClusterSearchConnectionResponse' {} a -> s {crossClusterSearchConnection = a} :: RejectInboundCrossClusterSearchConnectionResponse)

-- | The response's http status code.
rejectInboundCrossClusterSearchConnectionResponse_httpStatus :: Lens.Lens' RejectInboundCrossClusterSearchConnectionResponse Prelude.Int
rejectInboundCrossClusterSearchConnectionResponse_httpStatus = Lens.lens (\RejectInboundCrossClusterSearchConnectionResponse' {httpStatus} -> httpStatus) (\s@RejectInboundCrossClusterSearchConnectionResponse' {} a -> s {httpStatus = a} :: RejectInboundCrossClusterSearchConnectionResponse)

instance
  Prelude.NFData
    RejectInboundCrossClusterSearchConnectionResponse
