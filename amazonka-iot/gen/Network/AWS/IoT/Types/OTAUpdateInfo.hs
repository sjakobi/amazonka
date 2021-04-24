{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.OTAUpdateInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.OTAUpdateInfo where

import Network.AWS.IoT.Types.AWSJobExecutionsRolloutConfig
import Network.AWS.IoT.Types.AWSJobPresignedURLConfig
import Network.AWS.IoT.Types.ErrorInfo
import Network.AWS.IoT.Types.OTAUpdateFile
import Network.AWS.IoT.Types.OTAUpdateStatus
import Network.AWS.IoT.Types.Protocol
import Network.AWS.IoT.Types.TargetSelection
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about an OTA update.
--
--
--
-- /See:/ 'oTAUpdateInfo' smart constructor.
data OTAUpdateInfo = OTAUpdateInfo'
  { _otauiOtaUpdateStatus ::
      !(Maybe OTAUpdateStatus),
    _otauiLastModifiedDate :: !(Maybe POSIX),
    _otauiTargetSelection ::
      !(Maybe TargetSelection),
    _otauiOtaUpdateARN :: !(Maybe Text),
    _otauiAwsIotJobId :: !(Maybe Text),
    _otauiCreationDate :: !(Maybe POSIX),
    _otauiAwsIotJobARN :: !(Maybe Text),
    _otauiProtocols ::
      !(Maybe (List1 Protocol)),
    _otauiTargets :: !(Maybe (List1 Text)),
    _otauiAwsJobPresignedURLConfig ::
      !(Maybe AWSJobPresignedURLConfig),
    _otauiErrorInfo :: !(Maybe ErrorInfo),
    _otauiDescription :: !(Maybe Text),
    _otauiOtaUpdateFiles ::
      !(Maybe (List1 OTAUpdateFile)),
    _otauiOtaUpdateId :: !(Maybe Text),
    _otauiAdditionalParameters ::
      !(Maybe (Map Text Text)),
    _otauiAwsJobExecutionsRolloutConfig ::
      !(Maybe AWSJobExecutionsRolloutConfig)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OTAUpdateInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'otauiOtaUpdateStatus' - The status of the OTA update.
--
-- * 'otauiLastModifiedDate' - The date when the OTA update was last updated.
--
-- * 'otauiTargetSelection' - Specifies whether the OTA update will continue to run (CONTINUOUS), or will be complete after all those things specified as targets have completed the OTA update (SNAPSHOT). If continuous, the OTA update may also be run on a thing when a change is detected in a target. For example, an OTA update will run on a thing when the thing is added to a target group, even after the OTA update was completed by all things originally in the group.
--
-- * 'otauiOtaUpdateARN' - The OTA update ARN.
--
-- * 'otauiAwsIotJobId' - The AWS IoT job ID associated with the OTA update.
--
-- * 'otauiCreationDate' - The date when the OTA update was created.
--
-- * 'otauiAwsIotJobARN' - The AWS IoT job ARN associated with the OTA update.
--
-- * 'otauiProtocols' - The protocol used to transfer the OTA update image. Valid values are [HTTP], [MQTT], [HTTP, MQTT]. When both HTTP and MQTT are specified, the target device can choose the protocol.
--
-- * 'otauiTargets' - The targets of the OTA update.
--
-- * 'otauiAwsJobPresignedURLConfig' - Configuration information for pre-signed URLs. Valid when @protocols@ contains HTTP.
--
-- * 'otauiErrorInfo' - Error information associated with the OTA update.
--
-- * 'otauiDescription' - A description of the OTA update.
--
-- * 'otauiOtaUpdateFiles' - A list of files associated with the OTA update.
--
-- * 'otauiOtaUpdateId' - The OTA update ID.
--
-- * 'otauiAdditionalParameters' - A collection of name/value pairs
--
-- * 'otauiAwsJobExecutionsRolloutConfig' - Configuration for the rollout of OTA updates.
oTAUpdateInfo ::
  OTAUpdateInfo
oTAUpdateInfo =
  OTAUpdateInfo'
    { _otauiOtaUpdateStatus = Nothing,
      _otauiLastModifiedDate = Nothing,
      _otauiTargetSelection = Nothing,
      _otauiOtaUpdateARN = Nothing,
      _otauiAwsIotJobId = Nothing,
      _otauiCreationDate = Nothing,
      _otauiAwsIotJobARN = Nothing,
      _otauiProtocols = Nothing,
      _otauiTargets = Nothing,
      _otauiAwsJobPresignedURLConfig = Nothing,
      _otauiErrorInfo = Nothing,
      _otauiDescription = Nothing,
      _otauiOtaUpdateFiles = Nothing,
      _otauiOtaUpdateId = Nothing,
      _otauiAdditionalParameters = Nothing,
      _otauiAwsJobExecutionsRolloutConfig = Nothing
    }

-- | The status of the OTA update.
otauiOtaUpdateStatus :: Lens' OTAUpdateInfo (Maybe OTAUpdateStatus)
otauiOtaUpdateStatus = lens _otauiOtaUpdateStatus (\s a -> s {_otauiOtaUpdateStatus = a})

-- | The date when the OTA update was last updated.
otauiLastModifiedDate :: Lens' OTAUpdateInfo (Maybe UTCTime)
otauiLastModifiedDate = lens _otauiLastModifiedDate (\s a -> s {_otauiLastModifiedDate = a}) . mapping _Time

-- | Specifies whether the OTA update will continue to run (CONTINUOUS), or will be complete after all those things specified as targets have completed the OTA update (SNAPSHOT). If continuous, the OTA update may also be run on a thing when a change is detected in a target. For example, an OTA update will run on a thing when the thing is added to a target group, even after the OTA update was completed by all things originally in the group.
otauiTargetSelection :: Lens' OTAUpdateInfo (Maybe TargetSelection)
otauiTargetSelection = lens _otauiTargetSelection (\s a -> s {_otauiTargetSelection = a})

-- | The OTA update ARN.
otauiOtaUpdateARN :: Lens' OTAUpdateInfo (Maybe Text)
otauiOtaUpdateARN = lens _otauiOtaUpdateARN (\s a -> s {_otauiOtaUpdateARN = a})

-- | The AWS IoT job ID associated with the OTA update.
otauiAwsIotJobId :: Lens' OTAUpdateInfo (Maybe Text)
otauiAwsIotJobId = lens _otauiAwsIotJobId (\s a -> s {_otauiAwsIotJobId = a})

-- | The date when the OTA update was created.
otauiCreationDate :: Lens' OTAUpdateInfo (Maybe UTCTime)
otauiCreationDate = lens _otauiCreationDate (\s a -> s {_otauiCreationDate = a}) . mapping _Time

-- | The AWS IoT job ARN associated with the OTA update.
otauiAwsIotJobARN :: Lens' OTAUpdateInfo (Maybe Text)
otauiAwsIotJobARN = lens _otauiAwsIotJobARN (\s a -> s {_otauiAwsIotJobARN = a})

-- | The protocol used to transfer the OTA update image. Valid values are [HTTP], [MQTT], [HTTP, MQTT]. When both HTTP and MQTT are specified, the target device can choose the protocol.
otauiProtocols :: Lens' OTAUpdateInfo (Maybe (NonEmpty Protocol))
otauiProtocols = lens _otauiProtocols (\s a -> s {_otauiProtocols = a}) . mapping _List1

-- | The targets of the OTA update.
otauiTargets :: Lens' OTAUpdateInfo (Maybe (NonEmpty Text))
otauiTargets = lens _otauiTargets (\s a -> s {_otauiTargets = a}) . mapping _List1

-- | Configuration information for pre-signed URLs. Valid when @protocols@ contains HTTP.
otauiAwsJobPresignedURLConfig :: Lens' OTAUpdateInfo (Maybe AWSJobPresignedURLConfig)
otauiAwsJobPresignedURLConfig = lens _otauiAwsJobPresignedURLConfig (\s a -> s {_otauiAwsJobPresignedURLConfig = a})

-- | Error information associated with the OTA update.
otauiErrorInfo :: Lens' OTAUpdateInfo (Maybe ErrorInfo)
otauiErrorInfo = lens _otauiErrorInfo (\s a -> s {_otauiErrorInfo = a})

-- | A description of the OTA update.
otauiDescription :: Lens' OTAUpdateInfo (Maybe Text)
otauiDescription = lens _otauiDescription (\s a -> s {_otauiDescription = a})

-- | A list of files associated with the OTA update.
otauiOtaUpdateFiles :: Lens' OTAUpdateInfo (Maybe (NonEmpty OTAUpdateFile))
otauiOtaUpdateFiles = lens _otauiOtaUpdateFiles (\s a -> s {_otauiOtaUpdateFiles = a}) . mapping _List1

-- | The OTA update ID.
otauiOtaUpdateId :: Lens' OTAUpdateInfo (Maybe Text)
otauiOtaUpdateId = lens _otauiOtaUpdateId (\s a -> s {_otauiOtaUpdateId = a})

-- | A collection of name/value pairs
otauiAdditionalParameters :: Lens' OTAUpdateInfo (HashMap Text Text)
otauiAdditionalParameters = lens _otauiAdditionalParameters (\s a -> s {_otauiAdditionalParameters = a}) . _Default . _Map

-- | Configuration for the rollout of OTA updates.
otauiAwsJobExecutionsRolloutConfig :: Lens' OTAUpdateInfo (Maybe AWSJobExecutionsRolloutConfig)
otauiAwsJobExecutionsRolloutConfig = lens _otauiAwsJobExecutionsRolloutConfig (\s a -> s {_otauiAwsJobExecutionsRolloutConfig = a})

instance FromJSON OTAUpdateInfo where
  parseJSON =
    withObject
      "OTAUpdateInfo"
      ( \x ->
          OTAUpdateInfo'
            <$> (x .:? "otaUpdateStatus")
            <*> (x .:? "lastModifiedDate")
            <*> (x .:? "targetSelection")
            <*> (x .:? "otaUpdateArn")
            <*> (x .:? "awsIotJobId")
            <*> (x .:? "creationDate")
            <*> (x .:? "awsIotJobArn")
            <*> (x .:? "protocols")
            <*> (x .:? "targets")
            <*> (x .:? "awsJobPresignedUrlConfig")
            <*> (x .:? "errorInfo")
            <*> (x .:? "description")
            <*> (x .:? "otaUpdateFiles")
            <*> (x .:? "otaUpdateId")
            <*> (x .:? "additionalParameters" .!= mempty)
            <*> (x .:? "awsJobExecutionsRolloutConfig")
      )

instance Hashable OTAUpdateInfo

instance NFData OTAUpdateInfo
