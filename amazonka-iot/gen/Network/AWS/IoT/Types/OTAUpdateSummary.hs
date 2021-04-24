{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.OTAUpdateSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.OTAUpdateSummary where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | An OTA update summary.
--
--
--
-- /See:/ 'oTAUpdateSummary' smart constructor.
data OTAUpdateSummary = OTAUpdateSummary'
  { _otausOtaUpdateARN ::
      !(Maybe Text),
    _otausCreationDate :: !(Maybe POSIX),
    _otausOtaUpdateId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OTAUpdateSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'otausOtaUpdateARN' - The OTA update ARN.
--
-- * 'otausCreationDate' - The date when the OTA update was created.
--
-- * 'otausOtaUpdateId' - The OTA update ID.
oTAUpdateSummary ::
  OTAUpdateSummary
oTAUpdateSummary =
  OTAUpdateSummary'
    { _otausOtaUpdateARN = Nothing,
      _otausCreationDate = Nothing,
      _otausOtaUpdateId = Nothing
    }

-- | The OTA update ARN.
otausOtaUpdateARN :: Lens' OTAUpdateSummary (Maybe Text)
otausOtaUpdateARN = lens _otausOtaUpdateARN (\s a -> s {_otausOtaUpdateARN = a})

-- | The date when the OTA update was created.
otausCreationDate :: Lens' OTAUpdateSummary (Maybe UTCTime)
otausCreationDate = lens _otausCreationDate (\s a -> s {_otausCreationDate = a}) . mapping _Time

-- | The OTA update ID.
otausOtaUpdateId :: Lens' OTAUpdateSummary (Maybe Text)
otausOtaUpdateId = lens _otausOtaUpdateId (\s a -> s {_otausOtaUpdateId = a})

instance FromJSON OTAUpdateSummary where
  parseJSON =
    withObject
      "OTAUpdateSummary"
      ( \x ->
          OTAUpdateSummary'
            <$> (x .:? "otaUpdateArn")
            <*> (x .:? "creationDate")
            <*> (x .:? "otaUpdateId")
      )

instance Hashable OTAUpdateSummary

instance NFData OTAUpdateSummary
