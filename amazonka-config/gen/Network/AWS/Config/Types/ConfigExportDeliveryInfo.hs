{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.ConfigExportDeliveryInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ConfigExportDeliveryInfo where

import Network.AWS.Config.Types.DeliveryStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides status of the delivery of the snapshot or the configuration history to the specified Amazon S3 bucket. Also provides the status of notifications about the Amazon S3 delivery to the specified Amazon SNS topic.
--
--
--
-- /See:/ 'configExportDeliveryInfo' smart constructor.
data ConfigExportDeliveryInfo = ConfigExportDeliveryInfo'
  { _cediLastErrorMessage ::
      !(Maybe Text),
    _cediNextDeliveryTime ::
      !(Maybe POSIX),
    _cediLastSuccessfulTime ::
      !(Maybe POSIX),
    _cediLastErrorCode ::
      !(Maybe Text),
    _cediLastStatus ::
      !( Maybe
           DeliveryStatus
       ),
    _cediLastAttemptTime ::
      !(Maybe POSIX)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ConfigExportDeliveryInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cediLastErrorMessage' - The error message from the last attempted delivery.
--
-- * 'cediNextDeliveryTime' - The time that the next delivery occurs.
--
-- * 'cediLastSuccessfulTime' - The time of the last successful delivery.
--
-- * 'cediLastErrorCode' - The error code from the last attempted delivery.
--
-- * 'cediLastStatus' - Status of the last attempted delivery.
--
-- * 'cediLastAttemptTime' - The time of the last attempted delivery.
configExportDeliveryInfo ::
  ConfigExportDeliveryInfo
configExportDeliveryInfo =
  ConfigExportDeliveryInfo'
    { _cediLastErrorMessage =
        Nothing,
      _cediNextDeliveryTime = Nothing,
      _cediLastSuccessfulTime = Nothing,
      _cediLastErrorCode = Nothing,
      _cediLastStatus = Nothing,
      _cediLastAttemptTime = Nothing
    }

-- | The error message from the last attempted delivery.
cediLastErrorMessage :: Lens' ConfigExportDeliveryInfo (Maybe Text)
cediLastErrorMessage = lens _cediLastErrorMessage (\s a -> s {_cediLastErrorMessage = a})

-- | The time that the next delivery occurs.
cediNextDeliveryTime :: Lens' ConfigExportDeliveryInfo (Maybe UTCTime)
cediNextDeliveryTime = lens _cediNextDeliveryTime (\s a -> s {_cediNextDeliveryTime = a}) . mapping _Time

-- | The time of the last successful delivery.
cediLastSuccessfulTime :: Lens' ConfigExportDeliveryInfo (Maybe UTCTime)
cediLastSuccessfulTime = lens _cediLastSuccessfulTime (\s a -> s {_cediLastSuccessfulTime = a}) . mapping _Time

-- | The error code from the last attempted delivery.
cediLastErrorCode :: Lens' ConfigExportDeliveryInfo (Maybe Text)
cediLastErrorCode = lens _cediLastErrorCode (\s a -> s {_cediLastErrorCode = a})

-- | Status of the last attempted delivery.
cediLastStatus :: Lens' ConfigExportDeliveryInfo (Maybe DeliveryStatus)
cediLastStatus = lens _cediLastStatus (\s a -> s {_cediLastStatus = a})

-- | The time of the last attempted delivery.
cediLastAttemptTime :: Lens' ConfigExportDeliveryInfo (Maybe UTCTime)
cediLastAttemptTime = lens _cediLastAttemptTime (\s a -> s {_cediLastAttemptTime = a}) . mapping _Time

instance FromJSON ConfigExportDeliveryInfo where
  parseJSON =
    withObject
      "ConfigExportDeliveryInfo"
      ( \x ->
          ConfigExportDeliveryInfo'
            <$> (x .:? "lastErrorMessage")
            <*> (x .:? "nextDeliveryTime")
            <*> (x .:? "lastSuccessfulTime")
            <*> (x .:? "lastErrorCode")
            <*> (x .:? "lastStatus")
            <*> (x .:? "lastAttemptTime")
      )

instance Hashable ConfigExportDeliveryInfo

instance NFData ConfigExportDeliveryInfo
