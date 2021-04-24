{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.WriteApplicationSettingsRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.WriteApplicationSettingsRequest where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.CampaignHook
import Network.AWS.Pinpoint.Types.CampaignLimits
import Network.AWS.Pinpoint.Types.QuietTime
import Network.AWS.Prelude

-- | Specifies the default settings for an application.
--
--
--
-- /See:/ 'writeApplicationSettingsRequest' smart constructor.
data WriteApplicationSettingsRequest = WriteApplicationSettingsRequest'
  { _wasrCampaignHook ::
      !( Maybe
           CampaignHook
       ),
    _wasrCloudWatchMetricsEnabled ::
      !( Maybe
           Bool
       ),
    _wasrEventTaggingEnabled ::
      !( Maybe
           Bool
       ),
    _wasrQuietTime ::
      !( Maybe
           QuietTime
       ),
    _wasrLimits ::
      !( Maybe
           CampaignLimits
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

-- | Creates a value of 'WriteApplicationSettingsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wasrCampaignHook' - The settings for the AWS Lambda function to invoke by default as a code hook for campaigns in the application. You can use this hook to customize segments that are used by campaigns in the application. To override these settings and define custom settings for a specific campaign, use the CampaignHook object of the <link>Campaign resource.
--
-- * 'wasrCloudWatchMetricsEnabled' - Specifies whether to enable application-related alarms in Amazon CloudWatch.
--
-- * 'wasrEventTaggingEnabled' - Undocumented member.
--
-- * 'wasrQuietTime' - The default quiet time for campaigns in the application. Quiet time is a specific time range when messages aren't sent to endpoints, if all the following conditions are met:     * The EndpointDemographic.Timezone property of the endpoint is set to a valid value.     * The current time in the endpoint's time zone is later than or equal to the time specified by the QuietTime.Start property for the application (or a campaign or journey that has custom quiet time settings).     * The current time in the endpoint's time zone is earlier than or equal to the time specified by the QuietTime.End property for the application (or a campaign or journey that has custom quiet time settings). If any of the preceding conditions isn't met, the endpoint will receive messages from a campaign or journey, even if quiet time is enabled. To override the default quiet time settings for a specific campaign or journey, use the <link>Campaign resource or the <link>Journey resource to define a custom quiet time for the campaign or journey.
--
-- * 'wasrLimits' - The default sending limits for campaigns in the application. To override these limits and define custom limits for a specific campaign or journey, use the <link>Campaign resource or the <link>Journey resource, respectively.
writeApplicationSettingsRequest ::
  WriteApplicationSettingsRequest
writeApplicationSettingsRequest =
  WriteApplicationSettingsRequest'
    { _wasrCampaignHook =
        Nothing,
      _wasrCloudWatchMetricsEnabled = Nothing,
      _wasrEventTaggingEnabled = Nothing,
      _wasrQuietTime = Nothing,
      _wasrLimits = Nothing
    }

-- | The settings for the AWS Lambda function to invoke by default as a code hook for campaigns in the application. You can use this hook to customize segments that are used by campaigns in the application. To override these settings and define custom settings for a specific campaign, use the CampaignHook object of the <link>Campaign resource.
wasrCampaignHook :: Lens' WriteApplicationSettingsRequest (Maybe CampaignHook)
wasrCampaignHook = lens _wasrCampaignHook (\s a -> s {_wasrCampaignHook = a})

-- | Specifies whether to enable application-related alarms in Amazon CloudWatch.
wasrCloudWatchMetricsEnabled :: Lens' WriteApplicationSettingsRequest (Maybe Bool)
wasrCloudWatchMetricsEnabled = lens _wasrCloudWatchMetricsEnabled (\s a -> s {_wasrCloudWatchMetricsEnabled = a})

-- | Undocumented member.
wasrEventTaggingEnabled :: Lens' WriteApplicationSettingsRequest (Maybe Bool)
wasrEventTaggingEnabled = lens _wasrEventTaggingEnabled (\s a -> s {_wasrEventTaggingEnabled = a})

-- | The default quiet time for campaigns in the application. Quiet time is a specific time range when messages aren't sent to endpoints, if all the following conditions are met:     * The EndpointDemographic.Timezone property of the endpoint is set to a valid value.     * The current time in the endpoint's time zone is later than or equal to the time specified by the QuietTime.Start property for the application (or a campaign or journey that has custom quiet time settings).     * The current time in the endpoint's time zone is earlier than or equal to the time specified by the QuietTime.End property for the application (or a campaign or journey that has custom quiet time settings). If any of the preceding conditions isn't met, the endpoint will receive messages from a campaign or journey, even if quiet time is enabled. To override the default quiet time settings for a specific campaign or journey, use the <link>Campaign resource or the <link>Journey resource to define a custom quiet time for the campaign or journey.
wasrQuietTime :: Lens' WriteApplicationSettingsRequest (Maybe QuietTime)
wasrQuietTime = lens _wasrQuietTime (\s a -> s {_wasrQuietTime = a})

-- | The default sending limits for campaigns in the application. To override these limits and define custom limits for a specific campaign or journey, use the <link>Campaign resource or the <link>Journey resource, respectively.
wasrLimits :: Lens' WriteApplicationSettingsRequest (Maybe CampaignLimits)
wasrLimits = lens _wasrLimits (\s a -> s {_wasrLimits = a})

instance Hashable WriteApplicationSettingsRequest

instance NFData WriteApplicationSettingsRequest

instance ToJSON WriteApplicationSettingsRequest where
  toJSON WriteApplicationSettingsRequest' {..} =
    object
      ( catMaybes
          [ ("CampaignHook" .=) <$> _wasrCampaignHook,
            ("CloudWatchMetricsEnabled" .=)
              <$> _wasrCloudWatchMetricsEnabled,
            ("EventTaggingEnabled" .=)
              <$> _wasrEventTaggingEnabled,
            ("QuietTime" .=) <$> _wasrQuietTime,
            ("Limits" .=) <$> _wasrLimits
          ]
      )
