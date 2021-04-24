{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.UpdateConnectionAPIKeyAuthRequestParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.UpdateConnectionAPIKeyAuthRequestParameters where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the API key authorization parameters to use to update the connection.
--
--
--
-- /See:/ 'updateConnectionAPIKeyAuthRequestParameters' smart constructor.
data UpdateConnectionAPIKeyAuthRequestParameters = UpdateConnectionAPIKeyAuthRequestParameters'
  { _ucakarpAPIKeyValue ::
      !( Maybe
           Text
       ),
    _ucakarpAPIKeyName ::
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

-- | Creates a value of 'UpdateConnectionAPIKeyAuthRequestParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucakarpAPIKeyValue' - The value associated with teh API key to use for authorization.
--
-- * 'ucakarpAPIKeyName' - The name of the API key to use for authorization.
updateConnectionAPIKeyAuthRequestParameters ::
  UpdateConnectionAPIKeyAuthRequestParameters
updateConnectionAPIKeyAuthRequestParameters =
  UpdateConnectionAPIKeyAuthRequestParameters'
    { _ucakarpAPIKeyValue =
        Nothing,
      _ucakarpAPIKeyName = Nothing
    }

-- | The value associated with teh API key to use for authorization.
ucakarpAPIKeyValue :: Lens' UpdateConnectionAPIKeyAuthRequestParameters (Maybe Text)
ucakarpAPIKeyValue = lens _ucakarpAPIKeyValue (\s a -> s {_ucakarpAPIKeyValue = a})

-- | The name of the API key to use for authorization.
ucakarpAPIKeyName :: Lens' UpdateConnectionAPIKeyAuthRequestParameters (Maybe Text)
ucakarpAPIKeyName = lens _ucakarpAPIKeyName (\s a -> s {_ucakarpAPIKeyName = a})

instance
  Hashable
    UpdateConnectionAPIKeyAuthRequestParameters

instance
  NFData
    UpdateConnectionAPIKeyAuthRequestParameters

instance
  ToJSON
    UpdateConnectionAPIKeyAuthRequestParameters
  where
  toJSON
    UpdateConnectionAPIKeyAuthRequestParameters' {..} =
      object
        ( catMaybes
            [ ("ApiKeyValue" .=) <$> _ucakarpAPIKeyValue,
              ("ApiKeyName" .=) <$> _ucakarpAPIKeyName
            ]
        )
