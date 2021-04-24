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
-- Module      : Network.AWS.APIGateway.UpdateIntegration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Represents an update integration.
module Network.AWS.APIGateway.UpdateIntegration
  ( -- * Creating a Request
    updateIntegration,
    UpdateIntegration,

    -- * Request Lenses
    uiPatchOperations,
    uiRestAPIId,
    uiResourceId,
    uiHttpMethod,

    -- * Destructuring the Response
    integration,
    Integration,

    -- * Response Lenses
    iHttpMethod,
    iPassthroughBehavior,
    iContentHandling,
    iUri,
    iConnectionType,
    iConnectionId,
    iRequestTemplates,
    iTimeoutInMillis,
    iCacheNamespace,
    iCacheKeyParameters,
    iTlsConfig,
    iIntegrationResponses,
    iRequestParameters,
    iType,
    iCredentials,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents an update integration request.
--
--
--
-- /See:/ 'updateIntegration' smart constructor.
data UpdateIntegration = UpdateIntegration'
  { _uiPatchOperations ::
      !(Maybe [PatchOperation]),
    _uiRestAPIId :: !Text,
    _uiResourceId :: !Text,
    _uiHttpMethod :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateIntegration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiPatchOperations' - A list of update operations to be applied to the specified resource and in the order specified in this list.
--
-- * 'uiRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'uiResourceId' - [Required] Represents an update integration request's resource identifier.
--
-- * 'uiHttpMethod' - [Required] Represents an update integration request's HTTP method.
updateIntegration ::
  -- | 'uiRestAPIId'
  Text ->
  -- | 'uiResourceId'
  Text ->
  -- | 'uiHttpMethod'
  Text ->
  UpdateIntegration
updateIntegration
  pRestAPIId_
  pResourceId_
  pHttpMethod_ =
    UpdateIntegration'
      { _uiPatchOperations = Nothing,
        _uiRestAPIId = pRestAPIId_,
        _uiResourceId = pResourceId_,
        _uiHttpMethod = pHttpMethod_
      }

-- | A list of update operations to be applied to the specified resource and in the order specified in this list.
uiPatchOperations :: Lens' UpdateIntegration [PatchOperation]
uiPatchOperations = lens _uiPatchOperations (\s a -> s {_uiPatchOperations = a}) . _Default . _Coerce

-- | [Required] The string identifier of the associated 'RestApi' .
uiRestAPIId :: Lens' UpdateIntegration Text
uiRestAPIId = lens _uiRestAPIId (\s a -> s {_uiRestAPIId = a})

-- | [Required] Represents an update integration request's resource identifier.
uiResourceId :: Lens' UpdateIntegration Text
uiResourceId = lens _uiResourceId (\s a -> s {_uiResourceId = a})

-- | [Required] Represents an update integration request's HTTP method.
uiHttpMethod :: Lens' UpdateIntegration Text
uiHttpMethod = lens _uiHttpMethod (\s a -> s {_uiHttpMethod = a})

instance AWSRequest UpdateIntegration where
  type Rs UpdateIntegration = Integration
  request = patchJSON apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable UpdateIntegration

instance NFData UpdateIntegration

instance ToHeaders UpdateIntegration where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToJSON UpdateIntegration where
  toJSON UpdateIntegration' {..} =
    object
      ( catMaybes
          [("patchOperations" .=) <$> _uiPatchOperations]
      )

instance ToPath UpdateIntegration where
  toPath UpdateIntegration' {..} =
    mconcat
      [ "/restapis/",
        toBS _uiRestAPIId,
        "/resources/",
        toBS _uiResourceId,
        "/methods/",
        toBS _uiHttpMethod,
        "/integration"
      ]

instance ToQuery UpdateIntegration where
  toQuery = const mempty
