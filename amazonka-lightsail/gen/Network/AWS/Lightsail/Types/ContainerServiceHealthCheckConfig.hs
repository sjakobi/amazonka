{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.ContainerServiceHealthCheckConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.ContainerServiceHealthCheckConfig where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the health check configuration of an Amazon Lightsail container service.
--
--
--
-- /See:/ 'containerServiceHealthCheckConfig' smart constructor.
data ContainerServiceHealthCheckConfig = ContainerServiceHealthCheckConfig'
  { _cshccIntervalSeconds ::
      !( Maybe
           Int
       ),
    _cshccHealthyThreshold ::
      !( Maybe
           Int
       ),
    _cshccUnhealthyThreshold ::
      !( Maybe
           Int
       ),
    _cshccTimeoutSeconds ::
      !( Maybe
           Int
       ),
    _cshccPath ::
      !( Maybe
           Text
       ),
    _cshccSuccessCodes ::
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

-- | Creates a value of 'ContainerServiceHealthCheckConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cshccIntervalSeconds' - The approximate interval, in seconds, between health checks of an individual container. You can specify between 5 and 300 seconds. The default value is @5@ .
--
-- * 'cshccHealthyThreshold' - The number of consecutive health checks successes required before moving the container to the @Healthy@ state. The default value is @2@ .
--
-- * 'cshccUnhealthyThreshold' - The number of consecutive health check failures required before moving the container to the @Unhealthy@ state. The default value is @2@ .
--
-- * 'cshccTimeoutSeconds' - The amount of time, in seconds, during which no response means a failed health check. You can specify between 2 and 60 seconds. The default value is @2@ .
--
-- * 'cshccPath' - The path on the container on which to perform the health check. The default value is @/@ .
--
-- * 'cshccSuccessCodes' - The HTTP codes to use when checking for a successful response from a container. You can specify values between 200 and 499.
containerServiceHealthCheckConfig ::
  ContainerServiceHealthCheckConfig
containerServiceHealthCheckConfig =
  ContainerServiceHealthCheckConfig'
    { _cshccIntervalSeconds =
        Nothing,
      _cshccHealthyThreshold = Nothing,
      _cshccUnhealthyThreshold = Nothing,
      _cshccTimeoutSeconds = Nothing,
      _cshccPath = Nothing,
      _cshccSuccessCodes = Nothing
    }

-- | The approximate interval, in seconds, between health checks of an individual container. You can specify between 5 and 300 seconds. The default value is @5@ .
cshccIntervalSeconds :: Lens' ContainerServiceHealthCheckConfig (Maybe Int)
cshccIntervalSeconds = lens _cshccIntervalSeconds (\s a -> s {_cshccIntervalSeconds = a})

-- | The number of consecutive health checks successes required before moving the container to the @Healthy@ state. The default value is @2@ .
cshccHealthyThreshold :: Lens' ContainerServiceHealthCheckConfig (Maybe Int)
cshccHealthyThreshold = lens _cshccHealthyThreshold (\s a -> s {_cshccHealthyThreshold = a})

-- | The number of consecutive health check failures required before moving the container to the @Unhealthy@ state. The default value is @2@ .
cshccUnhealthyThreshold :: Lens' ContainerServiceHealthCheckConfig (Maybe Int)
cshccUnhealthyThreshold = lens _cshccUnhealthyThreshold (\s a -> s {_cshccUnhealthyThreshold = a})

-- | The amount of time, in seconds, during which no response means a failed health check. You can specify between 2 and 60 seconds. The default value is @2@ .
cshccTimeoutSeconds :: Lens' ContainerServiceHealthCheckConfig (Maybe Int)
cshccTimeoutSeconds = lens _cshccTimeoutSeconds (\s a -> s {_cshccTimeoutSeconds = a})

-- | The path on the container on which to perform the health check. The default value is @/@ .
cshccPath :: Lens' ContainerServiceHealthCheckConfig (Maybe Text)
cshccPath = lens _cshccPath (\s a -> s {_cshccPath = a})

-- | The HTTP codes to use when checking for a successful response from a container. You can specify values between 200 and 499.
cshccSuccessCodes :: Lens' ContainerServiceHealthCheckConfig (Maybe Text)
cshccSuccessCodes = lens _cshccSuccessCodes (\s a -> s {_cshccSuccessCodes = a})

instance FromJSON ContainerServiceHealthCheckConfig where
  parseJSON =
    withObject
      "ContainerServiceHealthCheckConfig"
      ( \x ->
          ContainerServiceHealthCheckConfig'
            <$> (x .:? "intervalSeconds")
            <*> (x .:? "healthyThreshold")
            <*> (x .:? "unhealthyThreshold")
            <*> (x .:? "timeoutSeconds")
            <*> (x .:? "path")
            <*> (x .:? "successCodes")
      )

instance Hashable ContainerServiceHealthCheckConfig

instance NFData ContainerServiceHealthCheckConfig

instance ToJSON ContainerServiceHealthCheckConfig where
  toJSON ContainerServiceHealthCheckConfig' {..} =
    object
      ( catMaybes
          [ ("intervalSeconds" .=) <$> _cshccIntervalSeconds,
            ("healthyThreshold" .=) <$> _cshccHealthyThreshold,
            ("unhealthyThreshold" .=)
              <$> _cshccUnhealthyThreshold,
            ("timeoutSeconds" .=) <$> _cshccTimeoutSeconds,
            ("path" .=) <$> _cshccPath,
            ("successCodes" .=) <$> _cshccSuccessCodes
          ]
      )
