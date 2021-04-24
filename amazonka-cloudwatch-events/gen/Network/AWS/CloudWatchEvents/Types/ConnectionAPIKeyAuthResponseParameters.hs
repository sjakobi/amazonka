{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.ConnectionAPIKeyAuthResponseParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.ConnectionAPIKeyAuthResponseParameters where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the authorization parameters for the connection if API Key is specified as the authorization type.
--
--
--
-- /See:/ 'connectionAPIKeyAuthResponseParameters' smart constructor.
newtype ConnectionAPIKeyAuthResponseParameters = ConnectionAPIKeyAuthResponseParameters'
  { _cakarpAPIKeyName ::
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

-- | Creates a value of 'ConnectionAPIKeyAuthResponseParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cakarpAPIKeyName' - The name of the header to use for the @APIKeyValue@ used for authorization.
connectionAPIKeyAuthResponseParameters ::
  ConnectionAPIKeyAuthResponseParameters
connectionAPIKeyAuthResponseParameters =
  ConnectionAPIKeyAuthResponseParameters'
    { _cakarpAPIKeyName =
        Nothing
    }

-- | The name of the header to use for the @APIKeyValue@ used for authorization.
cakarpAPIKeyName :: Lens' ConnectionAPIKeyAuthResponseParameters (Maybe Text)
cakarpAPIKeyName = lens _cakarpAPIKeyName (\s a -> s {_cakarpAPIKeyName = a})

instance
  FromJSON
    ConnectionAPIKeyAuthResponseParameters
  where
  parseJSON =
    withObject
      "ConnectionAPIKeyAuthResponseParameters"
      ( \x ->
          ConnectionAPIKeyAuthResponseParameters'
            <$> (x .:? "ApiKeyName")
      )

instance
  Hashable
    ConnectionAPIKeyAuthResponseParameters

instance
  NFData
    ConnectionAPIKeyAuthResponseParameters
