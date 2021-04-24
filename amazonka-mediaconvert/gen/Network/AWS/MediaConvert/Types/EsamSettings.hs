{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.EsamSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.EsamSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.EsamManifestConfirmConditionNotification
import Network.AWS.MediaConvert.Types.EsamSignalProcessingNotification
import Network.AWS.Prelude

-- | Settings for Event Signaling And Messaging (ESAM). If you don't do ad insertion, you can ignore these settings.
--
-- /See:/ 'esamSettings' smart constructor.
data EsamSettings = EsamSettings'
  { _esResponseSignalPreroll ::
      !(Maybe Nat),
    _esManifestConfirmConditionNotification ::
      !( Maybe
           EsamManifestConfirmConditionNotification
       ),
    _esSignalProcessingNotification ::
      !(Maybe EsamSignalProcessingNotification)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EsamSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esResponseSignalPreroll' - Specifies the stream distance, in milliseconds, between the SCTE 35 messages that the transcoder places and the splice points that they refer to. If the time between the start of the asset and the SCTE-35 message is less than this value, then the transcoder places the SCTE-35 marker at the beginning of the stream.
--
-- * 'esManifestConfirmConditionNotification' - Specifies an ESAM ManifestConfirmConditionNotification XML as per OC-SP-ESAM-API-I03-131025. The transcoder uses the manifest conditioning instructions that you provide in the setting MCC XML (mccXml).
--
-- * 'esSignalProcessingNotification' - Specifies an ESAM SignalProcessingNotification XML as per OC-SP-ESAM-API-I03-131025. The transcoder uses the signal processing instructions that you provide in the setting SCC XML (sccXml).
esamSettings ::
  EsamSettings
esamSettings =
  EsamSettings'
    { _esResponseSignalPreroll = Nothing,
      _esManifestConfirmConditionNotification = Nothing,
      _esSignalProcessingNotification = Nothing
    }

-- | Specifies the stream distance, in milliseconds, between the SCTE 35 messages that the transcoder places and the splice points that they refer to. If the time between the start of the asset and the SCTE-35 message is less than this value, then the transcoder places the SCTE-35 marker at the beginning of the stream.
esResponseSignalPreroll :: Lens' EsamSettings (Maybe Natural)
esResponseSignalPreroll = lens _esResponseSignalPreroll (\s a -> s {_esResponseSignalPreroll = a}) . mapping _Nat

-- | Specifies an ESAM ManifestConfirmConditionNotification XML as per OC-SP-ESAM-API-I03-131025. The transcoder uses the manifest conditioning instructions that you provide in the setting MCC XML (mccXml).
esManifestConfirmConditionNotification :: Lens' EsamSettings (Maybe EsamManifestConfirmConditionNotification)
esManifestConfirmConditionNotification = lens _esManifestConfirmConditionNotification (\s a -> s {_esManifestConfirmConditionNotification = a})

-- | Specifies an ESAM SignalProcessingNotification XML as per OC-SP-ESAM-API-I03-131025. The transcoder uses the signal processing instructions that you provide in the setting SCC XML (sccXml).
esSignalProcessingNotification :: Lens' EsamSettings (Maybe EsamSignalProcessingNotification)
esSignalProcessingNotification = lens _esSignalProcessingNotification (\s a -> s {_esSignalProcessingNotification = a})

instance FromJSON EsamSettings where
  parseJSON =
    withObject
      "EsamSettings"
      ( \x ->
          EsamSettings'
            <$> (x .:? "responseSignalPreroll")
            <*> (x .:? "manifestConfirmConditionNotification")
            <*> (x .:? "signalProcessingNotification")
      )

instance Hashable EsamSettings

instance NFData EsamSettings

instance ToJSON EsamSettings where
  toJSON EsamSettings' {..} =
    object
      ( catMaybes
          [ ("responseSignalPreroll" .=)
              <$> _esResponseSignalPreroll,
            ("manifestConfirmConditionNotification" .=)
              <$> _esManifestConfirmConditionNotification,
            ("signalProcessingNotification" .=)
              <$> _esSignalProcessingNotification
          ]
      )
