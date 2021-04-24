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
-- Module      : Network.AWS.IoT.UpdateSecurityProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a Device Defender security profile.
module Network.AWS.IoT.UpdateSecurityProfile
  ( -- * Creating a Request
    updateSecurityProfile,
    UpdateSecurityProfile,

    -- * Request Lenses
    uspExpectedVersion,
    uspAlertTargets,
    uspDeleteAdditionalMetricsToRetain,
    uspAdditionalMetricsToRetain,
    uspDeleteAlertTargets,
    uspBehaviors,
    uspAdditionalMetricsToRetainV2,
    uspDeleteBehaviors,
    uspSecurityProfileDescription,
    uspSecurityProfileName,

    -- * Destructuring the Response
    updateSecurityProfileResponse,
    UpdateSecurityProfileResponse,

    -- * Response Lenses
    usprrsLastModifiedDate,
    usprrsAlertTargets,
    usprrsAdditionalMetricsToRetain,
    usprrsCreationDate,
    usprrsVersion,
    usprrsSecurityProfileName,
    usprrsBehaviors,
    usprrsAdditionalMetricsToRetainV2,
    usprrsSecurityProfileDescription,
    usprrsSecurityProfileARN,
    usprrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateSecurityProfile' smart constructor.
data UpdateSecurityProfile = UpdateSecurityProfile'
  { _uspExpectedVersion ::
      !(Maybe Integer),
    _uspAlertTargets ::
      !( Maybe
           ( Map
               AlertTargetType
               AlertTarget
           )
       ),
    _uspDeleteAdditionalMetricsToRetain ::
      !(Maybe Bool),
    _uspAdditionalMetricsToRetain ::
      !(Maybe [Text]),
    _uspDeleteAlertTargets ::
      !(Maybe Bool),
    _uspBehaviors ::
      !(Maybe [Behavior]),
    _uspAdditionalMetricsToRetainV2 ::
      !(Maybe [MetricToRetain]),
    _uspDeleteBehaviors ::
      !(Maybe Bool),
    _uspSecurityProfileDescription ::
      !(Maybe Text),
    _uspSecurityProfileName ::
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

-- | Creates a value of 'UpdateSecurityProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uspExpectedVersion' - The expected version of the security profile. A new version is generated whenever the security profile is updated. If you specify a value that is different from the actual version, a @VersionConflictException@ is thrown.
--
-- * 'uspAlertTargets' - Where the alerts are sent. (Alerts are always sent to the console.)
--
-- * 'uspDeleteAdditionalMetricsToRetain' - If true, delete all @additionalMetricsToRetain@ defined for this security profile. If any @additionalMetricsToRetain@ are defined in the current invocation, an exception occurs.
--
-- * 'uspAdditionalMetricsToRetain' - /Please use 'UpdateSecurityProfileRequest$additionalMetricsToRetainV2' instead./  A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's @behaviors@ , but it is also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.
--
-- * 'uspDeleteAlertTargets' - If true, delete all @alertTargets@ defined for this security profile. If any @alertTargets@ are defined in the current invocation, an exception occurs.
--
-- * 'uspBehaviors' - Specifies the behaviors that, when violated by a device (thing), cause an alert.
--
-- * 'uspAdditionalMetricsToRetainV2' - A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's behaviors, but it is also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.
--
-- * 'uspDeleteBehaviors' - If true, delete all @behaviors@ defined for this security profile. If any @behaviors@ are defined in the current invocation, an exception occurs.
--
-- * 'uspSecurityProfileDescription' - A description of the security profile.
--
-- * 'uspSecurityProfileName' - The name of the security profile you want to update.
updateSecurityProfile ::
  -- | 'uspSecurityProfileName'
  Text ->
  UpdateSecurityProfile
updateSecurityProfile pSecurityProfileName_ =
  UpdateSecurityProfile'
    { _uspExpectedVersion =
        Nothing,
      _uspAlertTargets = Nothing,
      _uspDeleteAdditionalMetricsToRetain = Nothing,
      _uspAdditionalMetricsToRetain = Nothing,
      _uspDeleteAlertTargets = Nothing,
      _uspBehaviors = Nothing,
      _uspAdditionalMetricsToRetainV2 = Nothing,
      _uspDeleteBehaviors = Nothing,
      _uspSecurityProfileDescription = Nothing,
      _uspSecurityProfileName = pSecurityProfileName_
    }

-- | The expected version of the security profile. A new version is generated whenever the security profile is updated. If you specify a value that is different from the actual version, a @VersionConflictException@ is thrown.
uspExpectedVersion :: Lens' UpdateSecurityProfile (Maybe Integer)
uspExpectedVersion = lens _uspExpectedVersion (\s a -> s {_uspExpectedVersion = a})

-- | Where the alerts are sent. (Alerts are always sent to the console.)
uspAlertTargets :: Lens' UpdateSecurityProfile (HashMap AlertTargetType AlertTarget)
uspAlertTargets = lens _uspAlertTargets (\s a -> s {_uspAlertTargets = a}) . _Default . _Map

-- | If true, delete all @additionalMetricsToRetain@ defined for this security profile. If any @additionalMetricsToRetain@ are defined in the current invocation, an exception occurs.
uspDeleteAdditionalMetricsToRetain :: Lens' UpdateSecurityProfile (Maybe Bool)
uspDeleteAdditionalMetricsToRetain = lens _uspDeleteAdditionalMetricsToRetain (\s a -> s {_uspDeleteAdditionalMetricsToRetain = a})

-- | /Please use 'UpdateSecurityProfileRequest$additionalMetricsToRetainV2' instead./  A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's @behaviors@ , but it is also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.
uspAdditionalMetricsToRetain :: Lens' UpdateSecurityProfile [Text]
uspAdditionalMetricsToRetain = lens _uspAdditionalMetricsToRetain (\s a -> s {_uspAdditionalMetricsToRetain = a}) . _Default . _Coerce

-- | If true, delete all @alertTargets@ defined for this security profile. If any @alertTargets@ are defined in the current invocation, an exception occurs.
uspDeleteAlertTargets :: Lens' UpdateSecurityProfile (Maybe Bool)
uspDeleteAlertTargets = lens _uspDeleteAlertTargets (\s a -> s {_uspDeleteAlertTargets = a})

-- | Specifies the behaviors that, when violated by a device (thing), cause an alert.
uspBehaviors :: Lens' UpdateSecurityProfile [Behavior]
uspBehaviors = lens _uspBehaviors (\s a -> s {_uspBehaviors = a}) . _Default . _Coerce

-- | A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's behaviors, but it is also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.
uspAdditionalMetricsToRetainV2 :: Lens' UpdateSecurityProfile [MetricToRetain]
uspAdditionalMetricsToRetainV2 = lens _uspAdditionalMetricsToRetainV2 (\s a -> s {_uspAdditionalMetricsToRetainV2 = a}) . _Default . _Coerce

-- | If true, delete all @behaviors@ defined for this security profile. If any @behaviors@ are defined in the current invocation, an exception occurs.
uspDeleteBehaviors :: Lens' UpdateSecurityProfile (Maybe Bool)
uspDeleteBehaviors = lens _uspDeleteBehaviors (\s a -> s {_uspDeleteBehaviors = a})

-- | A description of the security profile.
uspSecurityProfileDescription :: Lens' UpdateSecurityProfile (Maybe Text)
uspSecurityProfileDescription = lens _uspSecurityProfileDescription (\s a -> s {_uspSecurityProfileDescription = a})

-- | The name of the security profile you want to update.
uspSecurityProfileName :: Lens' UpdateSecurityProfile Text
uspSecurityProfileName = lens _uspSecurityProfileName (\s a -> s {_uspSecurityProfileName = a})

instance AWSRequest UpdateSecurityProfile where
  type
    Rs UpdateSecurityProfile =
      UpdateSecurityProfileResponse
  request = patchJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          UpdateSecurityProfileResponse'
            <$> (x .?> "lastModifiedDate")
            <*> (x .?> "alertTargets" .!@ mempty)
            <*> (x .?> "additionalMetricsToRetain" .!@ mempty)
            <*> (x .?> "creationDate")
            <*> (x .?> "version")
            <*> (x .?> "securityProfileName")
            <*> (x .?> "behaviors" .!@ mempty)
            <*> (x .?> "additionalMetricsToRetainV2" .!@ mempty)
            <*> (x .?> "securityProfileDescription")
            <*> (x .?> "securityProfileArn")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateSecurityProfile

instance NFData UpdateSecurityProfile

instance ToHeaders UpdateSecurityProfile where
  toHeaders = const mempty

instance ToJSON UpdateSecurityProfile where
  toJSON UpdateSecurityProfile' {..} =
    object
      ( catMaybes
          [ ("alertTargets" .=) <$> _uspAlertTargets,
            ("deleteAdditionalMetricsToRetain" .=)
              <$> _uspDeleteAdditionalMetricsToRetain,
            ("additionalMetricsToRetain" .=)
              <$> _uspAdditionalMetricsToRetain,
            ("deleteAlertTargets" .=) <$> _uspDeleteAlertTargets,
            ("behaviors" .=) <$> _uspBehaviors,
            ("additionalMetricsToRetainV2" .=)
              <$> _uspAdditionalMetricsToRetainV2,
            ("deleteBehaviors" .=) <$> _uspDeleteBehaviors,
            ("securityProfileDescription" .=)
              <$> _uspSecurityProfileDescription
          ]
      )

instance ToPath UpdateSecurityProfile where
  toPath UpdateSecurityProfile' {..} =
    mconcat
      ["/security-profiles/", toBS _uspSecurityProfileName]

instance ToQuery UpdateSecurityProfile where
  toQuery UpdateSecurityProfile' {..} =
    mconcat ["expectedVersion" =: _uspExpectedVersion]

-- | /See:/ 'updateSecurityProfileResponse' smart constructor.
data UpdateSecurityProfileResponse = UpdateSecurityProfileResponse'
  { _usprrsLastModifiedDate ::
      !( Maybe
           POSIX
       ),
    _usprrsAlertTargets ::
      !( Maybe
           ( Map
               AlertTargetType
               AlertTarget
           )
       ),
    _usprrsAdditionalMetricsToRetain ::
      !( Maybe
           [Text]
       ),
    _usprrsCreationDate ::
      !( Maybe
           POSIX
       ),
    _usprrsVersion ::
      !( Maybe
           Integer
       ),
    _usprrsSecurityProfileName ::
      !( Maybe
           Text
       ),
    _usprrsBehaviors ::
      !( Maybe
           [Behavior]
       ),
    _usprrsAdditionalMetricsToRetainV2 ::
      !( Maybe
           [MetricToRetain]
       ),
    _usprrsSecurityProfileDescription ::
      !( Maybe
           Text
       ),
    _usprrsSecurityProfileARN ::
      !( Maybe
           Text
       ),
    _usprrsResponseStatus ::
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

-- | Creates a value of 'UpdateSecurityProfileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usprrsLastModifiedDate' - The time the security profile was last modified.
--
-- * 'usprrsAlertTargets' - Where the alerts are sent. (Alerts are always sent to the console.)
--
-- * 'usprrsAdditionalMetricsToRetain' - /Please use 'UpdateSecurityProfileResponse$additionalMetricsToRetainV2' instead./  A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the security profile's @behaviors@ , but it is also retained for any metric specified here.
--
-- * 'usprrsCreationDate' - The time the security profile was created.
--
-- * 'usprrsVersion' - The updated version of the security profile.
--
-- * 'usprrsSecurityProfileName' - The name of the security profile that was updated.
--
-- * 'usprrsBehaviors' - Specifies the behaviors that, when violated by a device (thing), cause an alert.
--
-- * 'usprrsAdditionalMetricsToRetainV2' - A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's behaviors, but it is also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.
--
-- * 'usprrsSecurityProfileDescription' - The description of the security profile.
--
-- * 'usprrsSecurityProfileARN' - The ARN of the security profile that was updated.
--
-- * 'usprrsResponseStatus' - -- | The response status code.
updateSecurityProfileResponse ::
  -- | 'usprrsResponseStatus'
  Int ->
  UpdateSecurityProfileResponse
updateSecurityProfileResponse pResponseStatus_ =
  UpdateSecurityProfileResponse'
    { _usprrsLastModifiedDate =
        Nothing,
      _usprrsAlertTargets = Nothing,
      _usprrsAdditionalMetricsToRetain = Nothing,
      _usprrsCreationDate = Nothing,
      _usprrsVersion = Nothing,
      _usprrsSecurityProfileName = Nothing,
      _usprrsBehaviors = Nothing,
      _usprrsAdditionalMetricsToRetainV2 = Nothing,
      _usprrsSecurityProfileDescription = Nothing,
      _usprrsSecurityProfileARN = Nothing,
      _usprrsResponseStatus = pResponseStatus_
    }

-- | The time the security profile was last modified.
usprrsLastModifiedDate :: Lens' UpdateSecurityProfileResponse (Maybe UTCTime)
usprrsLastModifiedDate = lens _usprrsLastModifiedDate (\s a -> s {_usprrsLastModifiedDate = a}) . mapping _Time

-- | Where the alerts are sent. (Alerts are always sent to the console.)
usprrsAlertTargets :: Lens' UpdateSecurityProfileResponse (HashMap AlertTargetType AlertTarget)
usprrsAlertTargets = lens _usprrsAlertTargets (\s a -> s {_usprrsAlertTargets = a}) . _Default . _Map

-- | /Please use 'UpdateSecurityProfileResponse$additionalMetricsToRetainV2' instead./  A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the security profile's @behaviors@ , but it is also retained for any metric specified here.
usprrsAdditionalMetricsToRetain :: Lens' UpdateSecurityProfileResponse [Text]
usprrsAdditionalMetricsToRetain = lens _usprrsAdditionalMetricsToRetain (\s a -> s {_usprrsAdditionalMetricsToRetain = a}) . _Default . _Coerce

-- | The time the security profile was created.
usprrsCreationDate :: Lens' UpdateSecurityProfileResponse (Maybe UTCTime)
usprrsCreationDate = lens _usprrsCreationDate (\s a -> s {_usprrsCreationDate = a}) . mapping _Time

-- | The updated version of the security profile.
usprrsVersion :: Lens' UpdateSecurityProfileResponse (Maybe Integer)
usprrsVersion = lens _usprrsVersion (\s a -> s {_usprrsVersion = a})

-- | The name of the security profile that was updated.
usprrsSecurityProfileName :: Lens' UpdateSecurityProfileResponse (Maybe Text)
usprrsSecurityProfileName = lens _usprrsSecurityProfileName (\s a -> s {_usprrsSecurityProfileName = a})

-- | Specifies the behaviors that, when violated by a device (thing), cause an alert.
usprrsBehaviors :: Lens' UpdateSecurityProfileResponse [Behavior]
usprrsBehaviors = lens _usprrsBehaviors (\s a -> s {_usprrsBehaviors = a}) . _Default . _Coerce

-- | A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's behaviors, but it is also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.
usprrsAdditionalMetricsToRetainV2 :: Lens' UpdateSecurityProfileResponse [MetricToRetain]
usprrsAdditionalMetricsToRetainV2 = lens _usprrsAdditionalMetricsToRetainV2 (\s a -> s {_usprrsAdditionalMetricsToRetainV2 = a}) . _Default . _Coerce

-- | The description of the security profile.
usprrsSecurityProfileDescription :: Lens' UpdateSecurityProfileResponse (Maybe Text)
usprrsSecurityProfileDescription = lens _usprrsSecurityProfileDescription (\s a -> s {_usprrsSecurityProfileDescription = a})

-- | The ARN of the security profile that was updated.
usprrsSecurityProfileARN :: Lens' UpdateSecurityProfileResponse (Maybe Text)
usprrsSecurityProfileARN = lens _usprrsSecurityProfileARN (\s a -> s {_usprrsSecurityProfileARN = a})

-- | -- | The response status code.
usprrsResponseStatus :: Lens' UpdateSecurityProfileResponse Int
usprrsResponseStatus = lens _usprrsResponseStatus (\s a -> s {_usprrsResponseStatus = a})

instance NFData UpdateSecurityProfileResponse
