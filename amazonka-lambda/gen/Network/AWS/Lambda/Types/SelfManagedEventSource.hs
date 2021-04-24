{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.SelfManagedEventSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.SelfManagedEventSource where

import Network.AWS.Lambda.Types.EndPointType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The Self-Managed Apache Kafka cluster for your event source.
--
--
--
-- /See:/ 'selfManagedEventSource' smart constructor.
newtype SelfManagedEventSource = SelfManagedEventSource'
  { _smesEndpoints ::
      Maybe
        ( Map
            EndPointType
            (List1 Text)
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

-- | Creates a value of 'SelfManagedEventSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smesEndpoints' - The list of bootstrap servers for your Kafka brokers in the following format: @"KAFKA_BOOTSTRAP_SERVERS": ["abc.xyz.com:xxxx","abc2.xyz.com:xxxx"]@ .
selfManagedEventSource ::
  SelfManagedEventSource
selfManagedEventSource =
  SelfManagedEventSource' {_smesEndpoints = Nothing}

-- | The list of bootstrap servers for your Kafka brokers in the following format: @"KAFKA_BOOTSTRAP_SERVERS": ["abc.xyz.com:xxxx","abc2.xyz.com:xxxx"]@ .
smesEndpoints :: Lens' SelfManagedEventSource (HashMap EndPointType (NonEmpty Text))
smesEndpoints = lens _smesEndpoints (\s a -> s {_smesEndpoints = a}) . _Default . _Map

instance FromJSON SelfManagedEventSource where
  parseJSON =
    withObject
      "SelfManagedEventSource"
      ( \x ->
          SelfManagedEventSource'
            <$> (x .:? "Endpoints" .!= mempty)
      )

instance Hashable SelfManagedEventSource

instance NFData SelfManagedEventSource

instance ToJSON SelfManagedEventSource where
  toJSON SelfManagedEventSource' {..} =
    object
      (catMaybes [("Endpoints" .=) <$> _smesEndpoints])
