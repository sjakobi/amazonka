{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.SamplingTargetDocument
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.SamplingTargetDocument where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Temporary changes to a sampling rule configuration. To meet the global sampling target for a rule, X-Ray calculates a new reservoir for each service based on the recent sampling results of all services that called 'GetSamplingTargets' .
--
--
--
-- /See:/ 'samplingTargetDocument' smart constructor.
data SamplingTargetDocument = SamplingTargetDocument'
  { _stdReservoirQuota ::
      !(Maybe Int),
    _stdFixedRate ::
      !(Maybe Double),
    _stdRuleName ::
      !(Maybe Text),
    _stdReservoirQuotaTTL ::
      !(Maybe POSIX),
    _stdInterval ::
      !(Maybe Int)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SamplingTargetDocument' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stdReservoirQuota' - The number of requests per second that X-Ray allocated for this service.
--
-- * 'stdFixedRate' - The percentage of matching requests to instrument, after the reservoir is exhausted.
--
-- * 'stdRuleName' - The name of the sampling rule.
--
-- * 'stdReservoirQuotaTTL' - When the reservoir quota expires.
--
-- * 'stdInterval' - The number of seconds for the service to wait before getting sampling targets again.
samplingTargetDocument ::
  SamplingTargetDocument
samplingTargetDocument =
  SamplingTargetDocument'
    { _stdReservoirQuota =
        Nothing,
      _stdFixedRate = Nothing,
      _stdRuleName = Nothing,
      _stdReservoirQuotaTTL = Nothing,
      _stdInterval = Nothing
    }

-- | The number of requests per second that X-Ray allocated for this service.
stdReservoirQuota :: Lens' SamplingTargetDocument (Maybe Int)
stdReservoirQuota = lens _stdReservoirQuota (\s a -> s {_stdReservoirQuota = a})

-- | The percentage of matching requests to instrument, after the reservoir is exhausted.
stdFixedRate :: Lens' SamplingTargetDocument (Maybe Double)
stdFixedRate = lens _stdFixedRate (\s a -> s {_stdFixedRate = a})

-- | The name of the sampling rule.
stdRuleName :: Lens' SamplingTargetDocument (Maybe Text)
stdRuleName = lens _stdRuleName (\s a -> s {_stdRuleName = a})

-- | When the reservoir quota expires.
stdReservoirQuotaTTL :: Lens' SamplingTargetDocument (Maybe UTCTime)
stdReservoirQuotaTTL = lens _stdReservoirQuotaTTL (\s a -> s {_stdReservoirQuotaTTL = a}) . mapping _Time

-- | The number of seconds for the service to wait before getting sampling targets again.
stdInterval :: Lens' SamplingTargetDocument (Maybe Int)
stdInterval = lens _stdInterval (\s a -> s {_stdInterval = a})

instance FromJSON SamplingTargetDocument where
  parseJSON =
    withObject
      "SamplingTargetDocument"
      ( \x ->
          SamplingTargetDocument'
            <$> (x .:? "ReservoirQuota")
            <*> (x .:? "FixedRate")
            <*> (x .:? "RuleName")
            <*> (x .:? "ReservoirQuotaTTL")
            <*> (x .:? "Interval")
      )

instance Hashable SamplingTargetDocument

instance NFData SamplingTargetDocument
