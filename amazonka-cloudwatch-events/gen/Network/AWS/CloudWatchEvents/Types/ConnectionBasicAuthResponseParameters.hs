{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.ConnectionBasicAuthResponseParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.ConnectionBasicAuthResponseParameters where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the authorization parameters for the connection if Basic is specified as the authorization type.
--
--
--
-- /See:/ 'connectionBasicAuthResponseParameters' smart constructor.
newtype ConnectionBasicAuthResponseParameters = ConnectionBasicAuthResponseParameters'
  { _cbarpUsername ::
      Maybe
        Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ConnectionBasicAuthResponseParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbarpUsername' - The user name to use for Basic authorization.
connectionBasicAuthResponseParameters ::
  ConnectionBasicAuthResponseParameters
connectionBasicAuthResponseParameters =
  ConnectionBasicAuthResponseParameters'
    { _cbarpUsername =
        Nothing
    }

-- | The user name to use for Basic authorization.
cbarpUsername :: Lens' ConnectionBasicAuthResponseParameters (Maybe Text)
cbarpUsername = lens _cbarpUsername (\s a -> s {_cbarpUsername = a})

instance
  FromJSON
    ConnectionBasicAuthResponseParameters
  where
  parseJSON =
    withObject
      "ConnectionBasicAuthResponseParameters"
      ( \x ->
          ConnectionBasicAuthResponseParameters'
            <$> (x .:? "Username")
      )

instance
  Hashable
    ConnectionBasicAuthResponseParameters

instance NFData ConnectionBasicAuthResponseParameters
