{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.DeleteIntegration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Represents a delete integration.
module Network.AWS.APIGateway.DeleteIntegration
  ( -- * Creating a Request
    deleteIntegration,
    DeleteIntegration,

    -- * Request Lenses
    diRestAPIId,
    diResourceId,
    diHttpMethod,

    -- * Destructuring the Response
    deleteIntegrationResponse',
    DeleteIntegrationResponse',
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents a delete integration request.
--
--
--
-- /See:/ 'deleteIntegration' smart constructor.
data DeleteIntegration = DeleteIntegration'
  { _diRestAPIId ::
      !Text,
    _diResourceId :: !Text,
    _diHttpMethod :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteIntegration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'diResourceId' - [Required] Specifies a delete integration request's resource identifier.
--
-- * 'diHttpMethod' - [Required] Specifies a delete integration request's HTTP method.
deleteIntegration ::
  -- | 'diRestAPIId'
  Text ->
  -- | 'diResourceId'
  Text ->
  -- | 'diHttpMethod'
  Text ->
  DeleteIntegration
deleteIntegration
  pRestAPIId_
  pResourceId_
  pHttpMethod_ =
    DeleteIntegration'
      { _diRestAPIId = pRestAPIId_,
        _diResourceId = pResourceId_,
        _diHttpMethod = pHttpMethod_
      }

-- | [Required] The string identifier of the associated 'RestApi' .
diRestAPIId :: Lens' DeleteIntegration Text
diRestAPIId = lens _diRestAPIId (\s a -> s {_diRestAPIId = a})

-- | [Required] Specifies a delete integration request's resource identifier.
diResourceId :: Lens' DeleteIntegration Text
diResourceId = lens _diResourceId (\s a -> s {_diResourceId = a})

-- | [Required] Specifies a delete integration request's HTTP method.
diHttpMethod :: Lens' DeleteIntegration Text
diHttpMethod = lens _diHttpMethod (\s a -> s {_diHttpMethod = a})

instance AWSRequest DeleteIntegration where
  type
    Rs DeleteIntegration =
      DeleteIntegrationResponse'
  request = delete apiGateway
  response = receiveNull DeleteIntegrationResponse''

instance Hashable DeleteIntegration

instance NFData DeleteIntegration

instance ToHeaders DeleteIntegration where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath DeleteIntegration where
  toPath DeleteIntegration' {..} =
    mconcat
      [ "/restapis/",
        toBS _diRestAPIId,
        "/resources/",
        toBS _diResourceId,
        "/methods/",
        toBS _diHttpMethod,
        "/integration"
      ]

instance ToQuery DeleteIntegration where
  toQuery = const mempty

-- | /See:/ 'deleteIntegrationResponse'' smart constructor.
data DeleteIntegrationResponse' = DeleteIntegrationResponse''
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteIntegrationResponse'' with the minimum fields required to make a request.
deleteIntegrationResponse' ::
  DeleteIntegrationResponse'
deleteIntegrationResponse' =
  DeleteIntegrationResponse''

instance NFData DeleteIntegrationResponse'
