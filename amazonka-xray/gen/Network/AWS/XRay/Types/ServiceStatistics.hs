{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.ServiceStatistics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.ServiceStatistics where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.XRay.Types.ErrorStatistics
import Network.AWS.XRay.Types.FaultStatistics

-- | Response statistics for a service.
--
--
--
-- /See:/ 'serviceStatistics' smart constructor.
data ServiceStatistics = ServiceStatistics'
  { _ssTotalResponseTime ::
      !(Maybe Double),
    _ssOKCount :: !(Maybe Integer),
    _ssFaultStatistics ::
      !(Maybe FaultStatistics),
    _ssTotalCount :: !(Maybe Integer),
    _ssErrorStatistics ::
      !(Maybe ErrorStatistics)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServiceStatistics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssTotalResponseTime' - The aggregate response time of completed requests.
--
-- * 'ssOKCount' - The number of requests that completed with a 2xx Success status code.
--
-- * 'ssFaultStatistics' - Information about requests that failed with a 5xx Server Error status code.
--
-- * 'ssTotalCount' - The total number of completed requests.
--
-- * 'ssErrorStatistics' - Information about requests that failed with a 4xx Client Error status code.
serviceStatistics ::
  ServiceStatistics
serviceStatistics =
  ServiceStatistics'
    { _ssTotalResponseTime = Nothing,
      _ssOKCount = Nothing,
      _ssFaultStatistics = Nothing,
      _ssTotalCount = Nothing,
      _ssErrorStatistics = Nothing
    }

-- | The aggregate response time of completed requests.
ssTotalResponseTime :: Lens' ServiceStatistics (Maybe Double)
ssTotalResponseTime = lens _ssTotalResponseTime (\s a -> s {_ssTotalResponseTime = a})

-- | The number of requests that completed with a 2xx Success status code.
ssOKCount :: Lens' ServiceStatistics (Maybe Integer)
ssOKCount = lens _ssOKCount (\s a -> s {_ssOKCount = a})

-- | Information about requests that failed with a 5xx Server Error status code.
ssFaultStatistics :: Lens' ServiceStatistics (Maybe FaultStatistics)
ssFaultStatistics = lens _ssFaultStatistics (\s a -> s {_ssFaultStatistics = a})

-- | The total number of completed requests.
ssTotalCount :: Lens' ServiceStatistics (Maybe Integer)
ssTotalCount = lens _ssTotalCount (\s a -> s {_ssTotalCount = a})

-- | Information about requests that failed with a 4xx Client Error status code.
ssErrorStatistics :: Lens' ServiceStatistics (Maybe ErrorStatistics)
ssErrorStatistics = lens _ssErrorStatistics (\s a -> s {_ssErrorStatistics = a})

instance FromJSON ServiceStatistics where
  parseJSON =
    withObject
      "ServiceStatistics"
      ( \x ->
          ServiceStatistics'
            <$> (x .:? "TotalResponseTime")
            <*> (x .:? "OkCount")
            <*> (x .:? "FaultStatistics")
            <*> (x .:? "TotalCount")
            <*> (x .:? "ErrorStatistics")
      )

instance Hashable ServiceStatistics

instance NFData ServiceStatistics
