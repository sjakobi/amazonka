{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.JSONConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.JSONConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the configuration information of the JSON format.
--
--
--
-- /See:/ 'jsonConfiguration' smart constructor.
data JSONConfiguration = JSONConfiguration'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JSONConfiguration' with the minimum fields required to make a request.
jsonConfiguration ::
  JSONConfiguration
jsonConfiguration = JSONConfiguration'

instance FromJSON JSONConfiguration where
  parseJSON =
    withObject
      "JSONConfiguration"
      (\x -> pure JSONConfiguration')

instance Hashable JSONConfiguration

instance NFData JSONConfiguration

instance ToJSON JSONConfiguration where
  toJSON = const (Object mempty)
