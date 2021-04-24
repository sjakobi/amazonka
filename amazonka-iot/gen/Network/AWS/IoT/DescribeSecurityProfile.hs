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
-- Module      : Network.AWS.IoT.DescribeSecurityProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a Device Defender security profile.
module Network.AWS.IoT.DescribeSecurityProfile
  ( -- * Creating a Request
    describeSecurityProfile,
    DescribeSecurityProfile,

    -- * Request Lenses
    desSecurityProfileName,

    -- * Destructuring the Response
    describeSecurityProfileResponse,
    DescribeSecurityProfileResponse,

    -- * Response Lenses
    ddrsLastModifiedDate,
    ddrsAlertTargets,
    ddrsAdditionalMetricsToRetain,
    ddrsCreationDate,
    ddrsVersion,
    ddrsSecurityProfileName,
    ddrsBehaviors,
    ddrsAdditionalMetricsToRetainV2,
    ddrsSecurityProfileDescription,
    ddrsSecurityProfileARN,
    ddrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeSecurityProfile' smart constructor.
newtype DescribeSecurityProfile = DescribeSecurityProfile'
  { _desSecurityProfileName ::
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

-- | Creates a value of 'DescribeSecurityProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desSecurityProfileName' - The name of the security profile whose information you want to get.
describeSecurityProfile ::
  -- | 'desSecurityProfileName'
  Text ->
  DescribeSecurityProfile
describeSecurityProfile pSecurityProfileName_ =
  DescribeSecurityProfile'
    { _desSecurityProfileName =
        pSecurityProfileName_
    }

-- | The name of the security profile whose information you want to get.
desSecurityProfileName :: Lens' DescribeSecurityProfile Text
desSecurityProfileName = lens _desSecurityProfileName (\s a -> s {_desSecurityProfileName = a})

instance AWSRequest DescribeSecurityProfile where
  type
    Rs DescribeSecurityProfile =
      DescribeSecurityProfileResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeSecurityProfileResponse'
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

instance Hashable DescribeSecurityProfile

instance NFData DescribeSecurityProfile

instance ToHeaders DescribeSecurityProfile where
  toHeaders = const mempty

instance ToPath DescribeSecurityProfile where
  toPath DescribeSecurityProfile' {..} =
    mconcat
      ["/security-profiles/", toBS _desSecurityProfileName]

instance ToQuery DescribeSecurityProfile where
  toQuery = const mempty

-- | /See:/ 'describeSecurityProfileResponse' smart constructor.
data DescribeSecurityProfileResponse = DescribeSecurityProfileResponse'
  { _ddrsLastModifiedDate ::
      !( Maybe
           POSIX
       ),
    _ddrsAlertTargets ::
      !( Maybe
           ( Map
               AlertTargetType
               AlertTarget
           )
       ),
    _ddrsAdditionalMetricsToRetain ::
      !( Maybe
           [Text]
       ),
    _ddrsCreationDate ::
      !( Maybe
           POSIX
       ),
    _ddrsVersion ::
      !( Maybe
           Integer
       ),
    _ddrsSecurityProfileName ::
      !( Maybe
           Text
       ),
    _ddrsBehaviors ::
      !( Maybe
           [Behavior]
       ),
    _ddrsAdditionalMetricsToRetainV2 ::
      !( Maybe
           [MetricToRetain]
       ),
    _ddrsSecurityProfileDescription ::
      !( Maybe
           Text
       ),
    _ddrsSecurityProfileARN ::
      !( Maybe
           Text
       ),
    _ddrsResponseStatus ::
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

-- | Creates a value of 'DescribeSecurityProfileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddrsLastModifiedDate' - The time the security profile was last modified.
--
-- * 'ddrsAlertTargets' - Where the alerts are sent. (Alerts are always sent to the console.)
--
-- * 'ddrsAdditionalMetricsToRetain' - /Please use 'DescribeSecurityProfileResponse$additionalMetricsToRetainV2' instead./  A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's @behaviors@ , but it is also retained for any metric specified here.
--
-- * 'ddrsCreationDate' - The time the security profile was created.
--
-- * 'ddrsVersion' - The version of the security profile. A new version is generated whenever the security profile is updated.
--
-- * 'ddrsSecurityProfileName' - The name of the security profile.
--
-- * 'ddrsBehaviors' - Specifies the behaviors that, when violated by a device (thing), cause an alert.
--
-- * 'ddrsAdditionalMetricsToRetainV2' - A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's behaviors, but it is also retained for any metric specified here.
--
-- * 'ddrsSecurityProfileDescription' - A description of the security profile (associated with the security profile when it was created or updated).
--
-- * 'ddrsSecurityProfileARN' - The ARN of the security profile.
--
-- * 'ddrsResponseStatus' - -- | The response status code.
describeSecurityProfileResponse ::
  -- | 'ddrsResponseStatus'
  Int ->
  DescribeSecurityProfileResponse
describeSecurityProfileResponse pResponseStatus_ =
  DescribeSecurityProfileResponse'
    { _ddrsLastModifiedDate =
        Nothing,
      _ddrsAlertTargets = Nothing,
      _ddrsAdditionalMetricsToRetain = Nothing,
      _ddrsCreationDate = Nothing,
      _ddrsVersion = Nothing,
      _ddrsSecurityProfileName = Nothing,
      _ddrsBehaviors = Nothing,
      _ddrsAdditionalMetricsToRetainV2 = Nothing,
      _ddrsSecurityProfileDescription = Nothing,
      _ddrsSecurityProfileARN = Nothing,
      _ddrsResponseStatus = pResponseStatus_
    }

-- | The time the security profile was last modified.
ddrsLastModifiedDate :: Lens' DescribeSecurityProfileResponse (Maybe UTCTime)
ddrsLastModifiedDate = lens _ddrsLastModifiedDate (\s a -> s {_ddrsLastModifiedDate = a}) . mapping _Time

-- | Where the alerts are sent. (Alerts are always sent to the console.)
ddrsAlertTargets :: Lens' DescribeSecurityProfileResponse (HashMap AlertTargetType AlertTarget)
ddrsAlertTargets = lens _ddrsAlertTargets (\s a -> s {_ddrsAlertTargets = a}) . _Default . _Map

-- | /Please use 'DescribeSecurityProfileResponse$additionalMetricsToRetainV2' instead./  A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's @behaviors@ , but it is also retained for any metric specified here.
ddrsAdditionalMetricsToRetain :: Lens' DescribeSecurityProfileResponse [Text]
ddrsAdditionalMetricsToRetain = lens _ddrsAdditionalMetricsToRetain (\s a -> s {_ddrsAdditionalMetricsToRetain = a}) . _Default . _Coerce

-- | The time the security profile was created.
ddrsCreationDate :: Lens' DescribeSecurityProfileResponse (Maybe UTCTime)
ddrsCreationDate = lens _ddrsCreationDate (\s a -> s {_ddrsCreationDate = a}) . mapping _Time

-- | The version of the security profile. A new version is generated whenever the security profile is updated.
ddrsVersion :: Lens' DescribeSecurityProfileResponse (Maybe Integer)
ddrsVersion = lens _ddrsVersion (\s a -> s {_ddrsVersion = a})

-- | The name of the security profile.
ddrsSecurityProfileName :: Lens' DescribeSecurityProfileResponse (Maybe Text)
ddrsSecurityProfileName = lens _ddrsSecurityProfileName (\s a -> s {_ddrsSecurityProfileName = a})

-- | Specifies the behaviors that, when violated by a device (thing), cause an alert.
ddrsBehaviors :: Lens' DescribeSecurityProfileResponse [Behavior]
ddrsBehaviors = lens _ddrsBehaviors (\s a -> s {_ddrsBehaviors = a}) . _Default . _Coerce

-- | A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's behaviors, but it is also retained for any metric specified here.
ddrsAdditionalMetricsToRetainV2 :: Lens' DescribeSecurityProfileResponse [MetricToRetain]
ddrsAdditionalMetricsToRetainV2 = lens _ddrsAdditionalMetricsToRetainV2 (\s a -> s {_ddrsAdditionalMetricsToRetainV2 = a}) . _Default . _Coerce

-- | A description of the security profile (associated with the security profile when it was created or updated).
ddrsSecurityProfileDescription :: Lens' DescribeSecurityProfileResponse (Maybe Text)
ddrsSecurityProfileDescription = lens _ddrsSecurityProfileDescription (\s a -> s {_ddrsSecurityProfileDescription = a})

-- | The ARN of the security profile.
ddrsSecurityProfileARN :: Lens' DescribeSecurityProfileResponse (Maybe Text)
ddrsSecurityProfileARN = lens _ddrsSecurityProfileARN (\s a -> s {_ddrsSecurityProfileARN = a})

-- | -- | The response status code.
ddrsResponseStatus :: Lens' DescribeSecurityProfileResponse Int
ddrsResponseStatus = lens _ddrsResponseStatus (\s a -> s {_ddrsResponseStatus = a})

instance NFData DescribeSecurityProfileResponse
