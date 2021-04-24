{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.ConfigStreamDeliveryInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ConfigStreamDeliveryInfo where

import Network.AWS.Config.Types.DeliveryStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A list that contains the status of the delivery of the configuration stream notification to the Amazon SNS topic.
--
--
--
-- /See:/ 'configStreamDeliveryInfo' smart constructor.
data ConfigStreamDeliveryInfo = ConfigStreamDeliveryInfo'
  { _csdiLastErrorMessage ::
      !(Maybe Text),
    _csdiLastErrorCode ::
      !(Maybe Text),
    _csdiLastStatus ::
      !( Maybe
           DeliveryStatus
       ),
    _csdiLastStatusChangeTime ::
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

-- | Creates a value of 'ConfigStreamDeliveryInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csdiLastErrorMessage' - The error message from the last attempted delivery.
--
-- * 'csdiLastErrorCode' - The error code from the last attempted delivery.
--
-- * 'csdiLastStatus' - Status of the last attempted delivery. __Note__ Providing an SNS topic on a <https://docs.aws.amazon.com/config/latest/APIReference/API_DeliveryChannel.html DeliveryChannel> for AWS Config is optional. If the SNS delivery is turned off, the last status will be __Not_Applicable__ .
--
-- * 'csdiLastStatusChangeTime' - The time from the last status change.
configStreamDeliveryInfo ::
  ConfigStreamDeliveryInfo
configStreamDeliveryInfo =
  ConfigStreamDeliveryInfo'
    { _csdiLastErrorMessage =
        Nothing,
      _csdiLastErrorCode = Nothing,
      _csdiLastStatus = Nothing,
      _csdiLastStatusChangeTime = Nothing
    }

-- | The error message from the last attempted delivery.
csdiLastErrorMessage :: Lens' ConfigStreamDeliveryInfo (Maybe Text)
csdiLastErrorMessage = lens _csdiLastErrorMessage (\s a -> s {_csdiLastErrorMessage = a})

-- | The error code from the last attempted delivery.
csdiLastErrorCode :: Lens' ConfigStreamDeliveryInfo (Maybe Text)
csdiLastErrorCode = lens _csdiLastErrorCode (\s a -> s {_csdiLastErrorCode = a})

-- | Status of the last attempted delivery. __Note__ Providing an SNS topic on a <https://docs.aws.amazon.com/config/latest/APIReference/API_DeliveryChannel.html DeliveryChannel> for AWS Config is optional. If the SNS delivery is turned off, the last status will be __Not_Applicable__ .
csdiLastStatus :: Lens' ConfigStreamDeliveryInfo (Maybe DeliveryStatus)
csdiLastStatus = lens _csdiLastStatus (\s a -> s {_csdiLastStatus = a})

-- | The time from the last status change.
csdiLastStatusChangeTime :: Lens' ConfigStreamDeliveryInfo (Maybe UTCTime)
csdiLastStatusChangeTime = lens _csdiLastStatusChangeTime (\s a -> s {_csdiLastStatusChangeTime = a}) . mapping _Time

instance FromJSON ConfigStreamDeliveryInfo where
  parseJSON =
    withObject
      "ConfigStreamDeliveryInfo"
      ( \x ->
          ConfigStreamDeliveryInfo'
            <$> (x .:? "lastErrorMessage")
            <*> (x .:? "lastErrorCode")
            <*> (x .:? "lastStatus")
            <*> (x .:? "lastStatusChangeTime")
      )

instance Hashable ConfigStreamDeliveryInfo

instance NFData ConfigStreamDeliveryInfo
