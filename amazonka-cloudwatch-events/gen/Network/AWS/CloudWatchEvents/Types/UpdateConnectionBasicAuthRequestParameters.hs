{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.UpdateConnectionBasicAuthRequestParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.UpdateConnectionBasicAuthRequestParameters where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the Basic authorization parameters for the connection.
--
--
--
-- /See:/ 'updateConnectionBasicAuthRequestParameters' smart constructor.
data UpdateConnectionBasicAuthRequestParameters = UpdateConnectionBasicAuthRequestParameters'
  { _ucbarpPassword ::
      !( Maybe
           Text
       ),
    _ucbarpUsername ::
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

-- | Creates a value of 'UpdateConnectionBasicAuthRequestParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucbarpPassword' - The password associated with the user name to use for Basic authorization.
--
-- * 'ucbarpUsername' - The user name to use for Basic authorization.
updateConnectionBasicAuthRequestParameters ::
  UpdateConnectionBasicAuthRequestParameters
updateConnectionBasicAuthRequestParameters =
  UpdateConnectionBasicAuthRequestParameters'
    { _ucbarpPassword =
        Nothing,
      _ucbarpUsername = Nothing
    }

-- | The password associated with the user name to use for Basic authorization.
ucbarpPassword :: Lens' UpdateConnectionBasicAuthRequestParameters (Maybe Text)
ucbarpPassword = lens _ucbarpPassword (\s a -> s {_ucbarpPassword = a})

-- | The user name to use for Basic authorization.
ucbarpUsername :: Lens' UpdateConnectionBasicAuthRequestParameters (Maybe Text)
ucbarpUsername = lens _ucbarpUsername (\s a -> s {_ucbarpUsername = a})

instance
  Hashable
    UpdateConnectionBasicAuthRequestParameters

instance
  NFData
    UpdateConnectionBasicAuthRequestParameters

instance
  ToJSON
    UpdateConnectionBasicAuthRequestParameters
  where
  toJSON
    UpdateConnectionBasicAuthRequestParameters' {..} =
      object
        ( catMaybes
            [ ("Password" .=) <$> _ucbarpPassword,
              ("Username" .=) <$> _ucbarpUsername
            ]
        )
