{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MQ.Types.BrokerEngineType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MQ.Types.BrokerEngineType where

import Network.AWS.Lens
import Network.AWS.MQ.Types.EngineType
import Network.AWS.MQ.Types.EngineVersion
import Network.AWS.Prelude

-- | Types of broker engines.
--
-- /See:/ 'brokerEngineType' smart constructor.
data BrokerEngineType = BrokerEngineType'
  { _betEngineType ::
      !(Maybe EngineType),
    _betEngineVersions ::
      !(Maybe [EngineVersion])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BrokerEngineType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'betEngineType' - The type of broker engine.
--
-- * 'betEngineVersions' - The list of engine versions.
brokerEngineType ::
  BrokerEngineType
brokerEngineType =
  BrokerEngineType'
    { _betEngineType = Nothing,
      _betEngineVersions = Nothing
    }

-- | The type of broker engine.
betEngineType :: Lens' BrokerEngineType (Maybe EngineType)
betEngineType = lens _betEngineType (\s a -> s {_betEngineType = a})

-- | The list of engine versions.
betEngineVersions :: Lens' BrokerEngineType [EngineVersion]
betEngineVersions = lens _betEngineVersions (\s a -> s {_betEngineVersions = a}) . _Default . _Coerce

instance FromJSON BrokerEngineType where
  parseJSON =
    withObject
      "BrokerEngineType"
      ( \x ->
          BrokerEngineType'
            <$> (x .:? "engineType")
            <*> (x .:? "engineVersions" .!= mempty)
      )

instance Hashable BrokerEngineType

instance NFData BrokerEngineType
