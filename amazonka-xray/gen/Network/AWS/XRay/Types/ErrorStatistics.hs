{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.ErrorStatistics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.ErrorStatistics where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about requests that failed with a 4xx Client Error status code.
--
--
--
-- /See:/ 'errorStatistics' smart constructor.
data ErrorStatistics = ErrorStatistics'
  { _esOtherCount ::
      !(Maybe Integer),
    _esThrottleCount :: !(Maybe Integer),
    _esTotalCount :: !(Maybe Integer)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ErrorStatistics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esOtherCount' - The number of requests that failed with untracked 4xx Client Error status codes.
--
-- * 'esThrottleCount' - The number of requests that failed with a 419 throttling status code.
--
-- * 'esTotalCount' - The total number of requests that failed with a 4xx Client Error status code.
errorStatistics ::
  ErrorStatistics
errorStatistics =
  ErrorStatistics'
    { _esOtherCount = Nothing,
      _esThrottleCount = Nothing,
      _esTotalCount = Nothing
    }

-- | The number of requests that failed with untracked 4xx Client Error status codes.
esOtherCount :: Lens' ErrorStatistics (Maybe Integer)
esOtherCount = lens _esOtherCount (\s a -> s {_esOtherCount = a})

-- | The number of requests that failed with a 419 throttling status code.
esThrottleCount :: Lens' ErrorStatistics (Maybe Integer)
esThrottleCount = lens _esThrottleCount (\s a -> s {_esThrottleCount = a})

-- | The total number of requests that failed with a 4xx Client Error status code.
esTotalCount :: Lens' ErrorStatistics (Maybe Integer)
esTotalCount = lens _esTotalCount (\s a -> s {_esTotalCount = a})

instance FromJSON ErrorStatistics where
  parseJSON =
    withObject
      "ErrorStatistics"
      ( \x ->
          ErrorStatistics'
            <$> (x .:? "OtherCount")
            <*> (x .:? "ThrottleCount")
            <*> (x .:? "TotalCount")
      )

instance Hashable ErrorStatistics

instance NFData ErrorStatistics
