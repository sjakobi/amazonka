{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.AnalyticsConfigurationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.AnalyticsConfigurationType where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The Amazon Pinpoint analytics configuration for collecting metrics for a user pool.
--
--
--
-- /See:/ 'analyticsConfigurationType' smart constructor.
data AnalyticsConfigurationType = AnalyticsConfigurationType'
  { _actApplicationARN ::
      !(Maybe Text),
    _actApplicationId ::
      !(Maybe Text),
    _actRoleARN ::
      !(Maybe Text),
    _actUserDataShared ::
      !(Maybe Bool),
    _actExternalId ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AnalyticsConfigurationType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actApplicationARN' - The Amazon Resource Name (ARN) of an Amazon Pinpoint project. You can use the Amazon Pinpoint project for Pinpoint integration with the chosen User Pool Client. Amazon Cognito publishes events to the pinpoint project declared by the app ARN.
--
-- * 'actApplicationId' - The application ID for an Amazon Pinpoint application.
--
-- * 'actRoleARN' - The ARN of an IAM role that authorizes Amazon Cognito to publish events to Amazon Pinpoint analytics.
--
-- * 'actUserDataShared' - If @UserDataShared@ is @true@ , Amazon Cognito will include user data in the events it publishes to Amazon Pinpoint analytics.
--
-- * 'actExternalId' - The external ID.
analyticsConfigurationType ::
  AnalyticsConfigurationType
analyticsConfigurationType =
  AnalyticsConfigurationType'
    { _actApplicationARN =
        Nothing,
      _actApplicationId = Nothing,
      _actRoleARN = Nothing,
      _actUserDataShared = Nothing,
      _actExternalId = Nothing
    }

-- | The Amazon Resource Name (ARN) of an Amazon Pinpoint project. You can use the Amazon Pinpoint project for Pinpoint integration with the chosen User Pool Client. Amazon Cognito publishes events to the pinpoint project declared by the app ARN.
actApplicationARN :: Lens' AnalyticsConfigurationType (Maybe Text)
actApplicationARN = lens _actApplicationARN (\s a -> s {_actApplicationARN = a})

-- | The application ID for an Amazon Pinpoint application.
actApplicationId :: Lens' AnalyticsConfigurationType (Maybe Text)
actApplicationId = lens _actApplicationId (\s a -> s {_actApplicationId = a})

-- | The ARN of an IAM role that authorizes Amazon Cognito to publish events to Amazon Pinpoint analytics.
actRoleARN :: Lens' AnalyticsConfigurationType (Maybe Text)
actRoleARN = lens _actRoleARN (\s a -> s {_actRoleARN = a})

-- | If @UserDataShared@ is @true@ , Amazon Cognito will include user data in the events it publishes to Amazon Pinpoint analytics.
actUserDataShared :: Lens' AnalyticsConfigurationType (Maybe Bool)
actUserDataShared = lens _actUserDataShared (\s a -> s {_actUserDataShared = a})

-- | The external ID.
actExternalId :: Lens' AnalyticsConfigurationType (Maybe Text)
actExternalId = lens _actExternalId (\s a -> s {_actExternalId = a})

instance FromJSON AnalyticsConfigurationType where
  parseJSON =
    withObject
      "AnalyticsConfigurationType"
      ( \x ->
          AnalyticsConfigurationType'
            <$> (x .:? "ApplicationArn")
            <*> (x .:? "ApplicationId")
            <*> (x .:? "RoleArn")
            <*> (x .:? "UserDataShared")
            <*> (x .:? "ExternalId")
      )

instance Hashable AnalyticsConfigurationType

instance NFData AnalyticsConfigurationType

instance ToJSON AnalyticsConfigurationType where
  toJSON AnalyticsConfigurationType' {..} =
    object
      ( catMaybes
          [ ("ApplicationArn" .=) <$> _actApplicationARN,
            ("ApplicationId" .=) <$> _actApplicationId,
            ("RoleArn" .=) <$> _actRoleARN,
            ("UserDataShared" .=) <$> _actUserDataShared,
            ("ExternalId" .=) <$> _actExternalId
          ]
      )
