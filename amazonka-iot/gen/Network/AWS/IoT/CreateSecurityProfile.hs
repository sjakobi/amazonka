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
-- Module      : Network.AWS.IoT.CreateSecurityProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Device Defender security profile.
module Network.AWS.IoT.CreateSecurityProfile
  ( -- * Creating a Request
    createSecurityProfile,
    CreateSecurityProfile,

    -- * Request Lenses
    cspAlertTargets,
    cspAdditionalMetricsToRetain,
    cspBehaviors,
    cspAdditionalMetricsToRetainV2,
    cspTags,
    cspSecurityProfileDescription,
    cspSecurityProfileName,

    -- * Destructuring the Response
    createSecurityProfileResponse,
    CreateSecurityProfileResponse,

    -- * Response Lenses
    csprrsSecurityProfileName,
    csprrsSecurityProfileARN,
    csprrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createSecurityProfile' smart constructor.
data CreateSecurityProfile = CreateSecurityProfile'
  { _cspAlertTargets ::
      !( Maybe
           ( Map
               AlertTargetType
               AlertTarget
           )
       ),
    _cspAdditionalMetricsToRetain ::
      !(Maybe [Text]),
    _cspBehaviors ::
      !(Maybe [Behavior]),
    _cspAdditionalMetricsToRetainV2 ::
      !(Maybe [MetricToRetain]),
    _cspTags :: !(Maybe [Tag]),
    _cspSecurityProfileDescription ::
      !(Maybe Text),
    _cspSecurityProfileName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateSecurityProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cspAlertTargets' - Specifies the destinations to which alerts are sent. (Alerts are always sent to the console.) Alerts are generated when a device (thing) violates a behavior.
--
-- * 'cspAdditionalMetricsToRetain' - /Please use 'CreateSecurityProfileRequest$additionalMetricsToRetainV2' instead./  A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's @behaviors@ , but it is also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.
--
-- * 'cspBehaviors' - Specifies the behaviors that, when violated by a device (thing), cause an alert.
--
-- * 'cspAdditionalMetricsToRetainV2' - A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's @behaviors@ , but it is also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.
--
-- * 'cspTags' - Metadata that can be used to manage the security profile.
--
-- * 'cspSecurityProfileDescription' - A description of the security profile.
--
-- * 'cspSecurityProfileName' - The name you are giving to the security profile.
createSecurityProfile ::
  -- | 'cspSecurityProfileName'
  Text ->
  CreateSecurityProfile
createSecurityProfile pSecurityProfileName_ =
  CreateSecurityProfile'
    { _cspAlertTargets = Nothing,
      _cspAdditionalMetricsToRetain = Nothing,
      _cspBehaviors = Nothing,
      _cspAdditionalMetricsToRetainV2 = Nothing,
      _cspTags = Nothing,
      _cspSecurityProfileDescription = Nothing,
      _cspSecurityProfileName = pSecurityProfileName_
    }

-- | Specifies the destinations to which alerts are sent. (Alerts are always sent to the console.) Alerts are generated when a device (thing) violates a behavior.
cspAlertTargets :: Lens' CreateSecurityProfile (HashMap AlertTargetType AlertTarget)
cspAlertTargets = lens _cspAlertTargets (\s a -> s {_cspAlertTargets = a}) . _Default . _Map

-- | /Please use 'CreateSecurityProfileRequest$additionalMetricsToRetainV2' instead./  A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's @behaviors@ , but it is also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.
cspAdditionalMetricsToRetain :: Lens' CreateSecurityProfile [Text]
cspAdditionalMetricsToRetain = lens _cspAdditionalMetricsToRetain (\s a -> s {_cspAdditionalMetricsToRetain = a}) . _Default . _Coerce

-- | Specifies the behaviors that, when violated by a device (thing), cause an alert.
cspBehaviors :: Lens' CreateSecurityProfile [Behavior]
cspBehaviors = lens _cspBehaviors (\s a -> s {_cspBehaviors = a}) . _Default . _Coerce

-- | A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's @behaviors@ , but it is also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.
cspAdditionalMetricsToRetainV2 :: Lens' CreateSecurityProfile [MetricToRetain]
cspAdditionalMetricsToRetainV2 = lens _cspAdditionalMetricsToRetainV2 (\s a -> s {_cspAdditionalMetricsToRetainV2 = a}) . _Default . _Coerce

-- | Metadata that can be used to manage the security profile.
cspTags :: Lens' CreateSecurityProfile [Tag]
cspTags = lens _cspTags (\s a -> s {_cspTags = a}) . _Default . _Coerce

-- | A description of the security profile.
cspSecurityProfileDescription :: Lens' CreateSecurityProfile (Maybe Text)
cspSecurityProfileDescription = lens _cspSecurityProfileDescription (\s a -> s {_cspSecurityProfileDescription = a})

-- | The name you are giving to the security profile.
cspSecurityProfileName :: Lens' CreateSecurityProfile Text
cspSecurityProfileName = lens _cspSecurityProfileName (\s a -> s {_cspSecurityProfileName = a})

instance AWSRequest CreateSecurityProfile where
  type
    Rs CreateSecurityProfile =
      CreateSecurityProfileResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          CreateSecurityProfileResponse'
            <$> (x .?> "securityProfileName")
            <*> (x .?> "securityProfileArn")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateSecurityProfile

instance NFData CreateSecurityProfile

instance ToHeaders CreateSecurityProfile where
  toHeaders = const mempty

instance ToJSON CreateSecurityProfile where
  toJSON CreateSecurityProfile' {..} =
    object
      ( catMaybes
          [ ("alertTargets" .=) <$> _cspAlertTargets,
            ("additionalMetricsToRetain" .=)
              <$> _cspAdditionalMetricsToRetain,
            ("behaviors" .=) <$> _cspBehaviors,
            ("additionalMetricsToRetainV2" .=)
              <$> _cspAdditionalMetricsToRetainV2,
            ("tags" .=) <$> _cspTags,
            ("securityProfileDescription" .=)
              <$> _cspSecurityProfileDescription
          ]
      )

instance ToPath CreateSecurityProfile where
  toPath CreateSecurityProfile' {..} =
    mconcat
      ["/security-profiles/", toBS _cspSecurityProfileName]

instance ToQuery CreateSecurityProfile where
  toQuery = const mempty

-- | /See:/ 'createSecurityProfileResponse' smart constructor.
data CreateSecurityProfileResponse = CreateSecurityProfileResponse'
  { _csprrsSecurityProfileName ::
      !( Maybe
           Text
       ),
    _csprrsSecurityProfileARN ::
      !( Maybe
           Text
       ),
    _csprrsResponseStatus ::
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

-- | Creates a value of 'CreateSecurityProfileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csprrsSecurityProfileName' - The name you gave to the security profile.
--
-- * 'csprrsSecurityProfileARN' - The ARN of the security profile.
--
-- * 'csprrsResponseStatus' - -- | The response status code.
createSecurityProfileResponse ::
  -- | 'csprrsResponseStatus'
  Int ->
  CreateSecurityProfileResponse
createSecurityProfileResponse pResponseStatus_ =
  CreateSecurityProfileResponse'
    { _csprrsSecurityProfileName =
        Nothing,
      _csprrsSecurityProfileARN = Nothing,
      _csprrsResponseStatus = pResponseStatus_
    }

-- | The name you gave to the security profile.
csprrsSecurityProfileName :: Lens' CreateSecurityProfileResponse (Maybe Text)
csprrsSecurityProfileName = lens _csprrsSecurityProfileName (\s a -> s {_csprrsSecurityProfileName = a})

-- | The ARN of the security profile.
csprrsSecurityProfileARN :: Lens' CreateSecurityProfileResponse (Maybe Text)
csprrsSecurityProfileARN = lens _csprrsSecurityProfileARN (\s a -> s {_csprrsSecurityProfileARN = a})

-- | -- | The response status code.
csprrsResponseStatus :: Lens' CreateSecurityProfileResponse Int
csprrsResponseStatus = lens _csprrsResponseStatus (\s a -> s {_csprrsResponseStatus = a})

instance NFData CreateSecurityProfileResponse
