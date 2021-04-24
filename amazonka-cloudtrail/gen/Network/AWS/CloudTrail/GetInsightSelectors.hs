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
-- Module      : Network.AWS.CloudTrail.GetInsightSelectors
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the settings for the Insights event selectors that you configured for your trail. @GetInsightSelectors@ shows if CloudTrail Insights event logging is enabled on the trail, and if it is, which insight types are enabled. If you run @GetInsightSelectors@ on a trail that does not have Insights events enabled, the operation throws the exception @InsightNotEnabledException@
--
--
-- For more information, see <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html Logging CloudTrail Insights Events for Trails > in the /AWS CloudTrail User Guide/ .
module Network.AWS.CloudTrail.GetInsightSelectors
  ( -- * Creating a Request
    getInsightSelectors,
    GetInsightSelectors,

    -- * Request Lenses
    gisTrailName,

    -- * Destructuring the Response
    getInsightSelectorsResponse,
    GetInsightSelectorsResponse,

    -- * Response Lenses
    gisrrsTrailARN,
    gisrrsInsightSelectors,
    gisrrsResponseStatus,
  )
where

import Network.AWS.CloudTrail.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getInsightSelectors' smart constructor.
newtype GetInsightSelectors = GetInsightSelectors'
  { _gisTrailName ::
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

-- | Creates a value of 'GetInsightSelectors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gisTrailName' - Specifies the name of the trail or trail ARN. If you specify a trail name, the string must meet the following requirements:     * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)     * Start with a letter or number, and end with a letter or number     * Be between 3 and 128 characters     * Have no adjacent periods, underscores or dashes. Names like @my-_namespace@ and @my--namespace@ are not valid.     * Not be in IP address format (for example, 192.168.5.4) If you specify a trail ARN, it must be in the format: @arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail@
getInsightSelectors ::
  -- | 'gisTrailName'
  Text ->
  GetInsightSelectors
getInsightSelectors pTrailName_ =
  GetInsightSelectors' {_gisTrailName = pTrailName_}

-- | Specifies the name of the trail or trail ARN. If you specify a trail name, the string must meet the following requirements:     * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)     * Start with a letter or number, and end with a letter or number     * Be between 3 and 128 characters     * Have no adjacent periods, underscores or dashes. Names like @my-_namespace@ and @my--namespace@ are not valid.     * Not be in IP address format (for example, 192.168.5.4) If you specify a trail ARN, it must be in the format: @arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail@
gisTrailName :: Lens' GetInsightSelectors Text
gisTrailName = lens _gisTrailName (\s a -> s {_gisTrailName = a})

instance AWSRequest GetInsightSelectors where
  type
    Rs GetInsightSelectors =
      GetInsightSelectorsResponse
  request = postJSON cloudTrail
  response =
    receiveJSON
      ( \s h x ->
          GetInsightSelectorsResponse'
            <$> (x .?> "TrailARN")
            <*> (x .?> "InsightSelectors" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetInsightSelectors

instance NFData GetInsightSelectors

instance ToHeaders GetInsightSelectors where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.GetInsightSelectors" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetInsightSelectors where
  toJSON GetInsightSelectors' {..} =
    object
      (catMaybes [Just ("TrailName" .= _gisTrailName)])

instance ToPath GetInsightSelectors where
  toPath = const "/"

instance ToQuery GetInsightSelectors where
  toQuery = const mempty

-- | /See:/ 'getInsightSelectorsResponse' smart constructor.
data GetInsightSelectorsResponse = GetInsightSelectorsResponse'
  { _gisrrsTrailARN ::
      !(Maybe Text),
    _gisrrsInsightSelectors ::
      !( Maybe
           [InsightSelector]
       ),
    _gisrrsResponseStatus ::
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

-- | Creates a value of 'GetInsightSelectorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gisrrsTrailARN' - The Amazon Resource Name (ARN) of a trail for which you want to get Insights selectors.
--
-- * 'gisrrsInsightSelectors' - A JSON string that contains the insight types you want to log on a trail. In this release, only @ApiCallRateInsight@ is supported as an insight type.
--
-- * 'gisrrsResponseStatus' - -- | The response status code.
getInsightSelectorsResponse ::
  -- | 'gisrrsResponseStatus'
  Int ->
  GetInsightSelectorsResponse
getInsightSelectorsResponse pResponseStatus_ =
  GetInsightSelectorsResponse'
    { _gisrrsTrailARN =
        Nothing,
      _gisrrsInsightSelectors = Nothing,
      _gisrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of a trail for which you want to get Insights selectors.
gisrrsTrailARN :: Lens' GetInsightSelectorsResponse (Maybe Text)
gisrrsTrailARN = lens _gisrrsTrailARN (\s a -> s {_gisrrsTrailARN = a})

-- | A JSON string that contains the insight types you want to log on a trail. In this release, only @ApiCallRateInsight@ is supported as an insight type.
gisrrsInsightSelectors :: Lens' GetInsightSelectorsResponse [InsightSelector]
gisrrsInsightSelectors = lens _gisrrsInsightSelectors (\s a -> s {_gisrrsInsightSelectors = a}) . _Default . _Coerce

-- | -- | The response status code.
gisrrsResponseStatus :: Lens' GetInsightSelectorsResponse Int
gisrrsResponseStatus = lens _gisrrsResponseStatus (\s a -> s {_gisrrsResponseStatus = a})

instance NFData GetInsightSelectorsResponse
