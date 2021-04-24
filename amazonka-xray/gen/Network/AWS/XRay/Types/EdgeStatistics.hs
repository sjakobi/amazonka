{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.EdgeStatistics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.EdgeStatistics where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.XRay.Types.ErrorStatistics
import Network.AWS.XRay.Types.FaultStatistics

-- | Response statistics for an edge.
--
--
--
-- /See:/ 'edgeStatistics' smart constructor.
data EdgeStatistics = EdgeStatistics'
  { _eTotalResponseTime ::
      !(Maybe Double),
    _eOKCount :: !(Maybe Integer),
    _eFaultStatistics ::
      !(Maybe FaultStatistics),
    _eTotalCount :: !(Maybe Integer),
    _eErrorStatistics ::
      !(Maybe ErrorStatistics)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EdgeStatistics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eTotalResponseTime' - The aggregate response time of completed requests.
--
-- * 'eOKCount' - The number of requests that completed with a 2xx Success status code.
--
-- * 'eFaultStatistics' - Information about requests that failed with a 5xx Server Error status code.
--
-- * 'eTotalCount' - The total number of completed requests.
--
-- * 'eErrorStatistics' - Information about requests that failed with a 4xx Client Error status code.
edgeStatistics ::
  EdgeStatistics
edgeStatistics =
  EdgeStatistics'
    { _eTotalResponseTime = Nothing,
      _eOKCount = Nothing,
      _eFaultStatistics = Nothing,
      _eTotalCount = Nothing,
      _eErrorStatistics = Nothing
    }

-- | The aggregate response time of completed requests.
eTotalResponseTime :: Lens' EdgeStatistics (Maybe Double)
eTotalResponseTime = lens _eTotalResponseTime (\s a -> s {_eTotalResponseTime = a})

-- | The number of requests that completed with a 2xx Success status code.
eOKCount :: Lens' EdgeStatistics (Maybe Integer)
eOKCount = lens _eOKCount (\s a -> s {_eOKCount = a})

-- | Information about requests that failed with a 5xx Server Error status code.
eFaultStatistics :: Lens' EdgeStatistics (Maybe FaultStatistics)
eFaultStatistics = lens _eFaultStatistics (\s a -> s {_eFaultStatistics = a})

-- | The total number of completed requests.
eTotalCount :: Lens' EdgeStatistics (Maybe Integer)
eTotalCount = lens _eTotalCount (\s a -> s {_eTotalCount = a})

-- | Information about requests that failed with a 4xx Client Error status code.
eErrorStatistics :: Lens' EdgeStatistics (Maybe ErrorStatistics)
eErrorStatistics = lens _eErrorStatistics (\s a -> s {_eErrorStatistics = a})

instance FromJSON EdgeStatistics where
  parseJSON =
    withObject
      "EdgeStatistics"
      ( \x ->
          EdgeStatistics'
            <$> (x .:? "TotalResponseTime")
            <*> (x .:? "OkCount")
            <*> (x .:? "FaultStatistics")
            <*> (x .:? "TotalCount")
            <*> (x .:? "ErrorStatistics")
      )

instance Hashable EdgeStatistics

instance NFData EdgeStatistics
