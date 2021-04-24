{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.UpdateConnectionOAuthClientRequestParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.UpdateConnectionOAuthClientRequestParameters where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the OAuth authorization parameters to use for the connection.
--
--
--
-- /See:/ 'updateConnectionOAuthClientRequestParameters' smart constructor.
data UpdateConnectionOAuthClientRequestParameters = UpdateConnectionOAuthClientRequestParameters'
  { _ucoacrpClientSecret ::
      !( Maybe
           Text
       ),
    _ucoacrpClientId ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateConnectionOAuthClientRequestParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucoacrpClientSecret' - The client secret assciated with the client ID to use for OAuth authorization.
--
-- * 'ucoacrpClientId' - The client ID to use for OAuth authorization.
updateConnectionOAuthClientRequestParameters ::
  UpdateConnectionOAuthClientRequestParameters
updateConnectionOAuthClientRequestParameters =
  UpdateConnectionOAuthClientRequestParameters'
    { _ucoacrpClientSecret =
        Nothing,
      _ucoacrpClientId = Nothing
    }

-- | The client secret assciated with the client ID to use for OAuth authorization.
ucoacrpClientSecret :: Lens' UpdateConnectionOAuthClientRequestParameters (Maybe Text)
ucoacrpClientSecret = lens _ucoacrpClientSecret (\s a -> s {_ucoacrpClientSecret = a})

-- | The client ID to use for OAuth authorization.
ucoacrpClientId :: Lens' UpdateConnectionOAuthClientRequestParameters (Maybe Text)
ucoacrpClientId = lens _ucoacrpClientId (\s a -> s {_ucoacrpClientId = a})

instance
  Hashable
    UpdateConnectionOAuthClientRequestParameters

instance
  NFData
    UpdateConnectionOAuthClientRequestParameters

instance
  ToJSON
    UpdateConnectionOAuthClientRequestParameters
  where
  toJSON
    UpdateConnectionOAuthClientRequestParameters' {..} =
      object
        ( catMaybes
            [ ("ClientSecret" .=) <$> _ucoacrpClientSecret,
              ("ClientID" .=) <$> _ucoacrpClientId
            ]
        )
