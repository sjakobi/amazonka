{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.CreateConnectionOAuthClientRequestParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.CreateConnectionOAuthClientRequestParameters where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the Basic authorization parameters to use for the connection.
--
--
--
-- /See:/ 'createConnectionOAuthClientRequestParameters' smart constructor.
data CreateConnectionOAuthClientRequestParameters = CreateConnectionOAuthClientRequestParameters'
  { _ccoacrpClientId ::
      !Text,
    _ccoacrpClientSecret ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateConnectionOAuthClientRequestParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccoacrpClientId' - The client ID to use for OAuth authorization for the connection.
--
-- * 'ccoacrpClientSecret' - The client secret associated with the client ID to use for OAuth authorization for the connection.
createConnectionOAuthClientRequestParameters ::
  -- | 'ccoacrpClientId'
  Text ->
  -- | 'ccoacrpClientSecret'
  Text ->
  CreateConnectionOAuthClientRequestParameters
createConnectionOAuthClientRequestParameters
  pClientId_
  pClientSecret_ =
    CreateConnectionOAuthClientRequestParameters'
      { _ccoacrpClientId =
          pClientId_,
        _ccoacrpClientSecret =
          pClientSecret_
      }

-- | The client ID to use for OAuth authorization for the connection.
ccoacrpClientId :: Lens' CreateConnectionOAuthClientRequestParameters Text
ccoacrpClientId = lens _ccoacrpClientId (\s a -> s {_ccoacrpClientId = a})

-- | The client secret associated with the client ID to use for OAuth authorization for the connection.
ccoacrpClientSecret :: Lens' CreateConnectionOAuthClientRequestParameters Text
ccoacrpClientSecret = lens _ccoacrpClientSecret (\s a -> s {_ccoacrpClientSecret = a})

instance
  Hashable
    CreateConnectionOAuthClientRequestParameters

instance
  NFData
    CreateConnectionOAuthClientRequestParameters

instance
  ToJSON
    CreateConnectionOAuthClientRequestParameters
  where
  toJSON
    CreateConnectionOAuthClientRequestParameters' {..} =
      object
        ( catMaybes
            [ Just ("ClientID" .= _ccoacrpClientId),
              Just ("ClientSecret" .= _ccoacrpClientSecret)
            ]
        )
