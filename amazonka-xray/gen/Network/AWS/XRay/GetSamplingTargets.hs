{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.GetSamplingTargets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests a sampling quota for rules that the service is using to sample requests.
module Network.AWS.XRay.GetSamplingTargets
  ( -- * Creating a Request
    getSamplingTargets,
    GetSamplingTargets,

    -- * Request Lenses
    gstSamplingStatisticsDocuments,

    -- * Destructuring the Response
    getSamplingTargetsResponse,
    GetSamplingTargetsResponse,

    -- * Response Lenses
    gstrrsSamplingTargetDocuments,
    gstrrsLastRuleModification,
    gstrrsUnprocessedStatistics,
    gstrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.XRay.Types

-- | /See:/ 'getSamplingTargets' smart constructor.
newtype GetSamplingTargets = GetSamplingTargets'
  { _gstSamplingStatisticsDocuments ::
      [SamplingStatisticsDocument]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetSamplingTargets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gstSamplingStatisticsDocuments' - Information about rules that the service is using to sample requests.
getSamplingTargets ::
  GetSamplingTargets
getSamplingTargets =
  GetSamplingTargets'
    { _gstSamplingStatisticsDocuments =
        mempty
    }

-- | Information about rules that the service is using to sample requests.
gstSamplingStatisticsDocuments :: Lens' GetSamplingTargets [SamplingStatisticsDocument]
gstSamplingStatisticsDocuments = lens _gstSamplingStatisticsDocuments (\s a -> s {_gstSamplingStatisticsDocuments = a}) . _Coerce

instance AWSRequest GetSamplingTargets where
  type
    Rs GetSamplingTargets =
      GetSamplingTargetsResponse
  request = postJSON xRay
  response =
    receiveJSON
      ( \s h x ->
          GetSamplingTargetsResponse'
            <$> (x .?> "SamplingTargetDocuments" .!@ mempty)
            <*> (x .?> "LastRuleModification")
            <*> (x .?> "UnprocessedStatistics" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetSamplingTargets

instance NFData GetSamplingTargets

instance ToHeaders GetSamplingTargets where
  toHeaders = const mempty

instance ToJSON GetSamplingTargets where
  toJSON GetSamplingTargets' {..} =
    object
      ( catMaybes
          [ Just
              ( "SamplingStatisticsDocuments"
                  .= _gstSamplingStatisticsDocuments
              )
          ]
      )

instance ToPath GetSamplingTargets where
  toPath = const "/SamplingTargets"

instance ToQuery GetSamplingTargets where
  toQuery = const mempty

-- | /See:/ 'getSamplingTargetsResponse' smart constructor.
data GetSamplingTargetsResponse = GetSamplingTargetsResponse'
  { _gstrrsSamplingTargetDocuments ::
      !( Maybe
           [SamplingTargetDocument]
       ),
    _gstrrsLastRuleModification ::
      !(Maybe POSIX),
    _gstrrsUnprocessedStatistics ::
      !( Maybe
           [UnprocessedStatistics]
       ),
    _gstrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetSamplingTargetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gstrrsSamplingTargetDocuments' - Updated rules that the service should use to sample requests.
--
-- * 'gstrrsLastRuleModification' - The last time a user changed the sampling rule configuration. If the sampling rule configuration changed since the service last retrieved it, the service should call 'GetSamplingRules' to get the latest version.
--
-- * 'gstrrsUnprocessedStatistics' - Information about 'SamplingStatisticsDocument' that X-Ray could not process.
--
-- * 'gstrrsResponseStatus' - -- | The response status code.
getSamplingTargetsResponse ::
  -- | 'gstrrsResponseStatus'
  Int ->
  GetSamplingTargetsResponse
getSamplingTargetsResponse pResponseStatus_ =
  GetSamplingTargetsResponse'
    { _gstrrsSamplingTargetDocuments =
        Nothing,
      _gstrrsLastRuleModification = Nothing,
      _gstrrsUnprocessedStatistics = Nothing,
      _gstrrsResponseStatus = pResponseStatus_
    }

-- | Updated rules that the service should use to sample requests.
gstrrsSamplingTargetDocuments :: Lens' GetSamplingTargetsResponse [SamplingTargetDocument]
gstrrsSamplingTargetDocuments = lens _gstrrsSamplingTargetDocuments (\s a -> s {_gstrrsSamplingTargetDocuments = a}) . _Default . _Coerce

-- | The last time a user changed the sampling rule configuration. If the sampling rule configuration changed since the service last retrieved it, the service should call 'GetSamplingRules' to get the latest version.
gstrrsLastRuleModification :: Lens' GetSamplingTargetsResponse (Maybe UTCTime)
gstrrsLastRuleModification = lens _gstrrsLastRuleModification (\s a -> s {_gstrrsLastRuleModification = a}) . mapping _Time

-- | Information about 'SamplingStatisticsDocument' that X-Ray could not process.
gstrrsUnprocessedStatistics :: Lens' GetSamplingTargetsResponse [UnprocessedStatistics]
gstrrsUnprocessedStatistics = lens _gstrrsUnprocessedStatistics (\s a -> s {_gstrrsUnprocessedStatistics = a}) . _Default . _Coerce

-- | -- | The response status code.
gstrrsResponseStatus :: Lens' GetSamplingTargetsResponse Int
gstrrsResponseStatus = lens _gstrrsResponseStatus (\s a -> s {_gstrrsResponseStatus = a})

instance NFData GetSamplingTargetsResponse
