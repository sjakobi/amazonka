{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.CaptionDestinationSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CaptionDestinationSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.BurninDestinationSettings
import Network.AWS.MediaConvert.Types.CaptionDestinationType
import Network.AWS.MediaConvert.Types.DvbSubDestinationSettings
import Network.AWS.MediaConvert.Types.EmbeddedDestinationSettings
import Network.AWS.MediaConvert.Types.ImscDestinationSettings
import Network.AWS.MediaConvert.Types.SccDestinationSettings
import Network.AWS.MediaConvert.Types.TeletextDestinationSettings
import Network.AWS.MediaConvert.Types.TtmlDestinationSettings
import Network.AWS.Prelude

-- | Specific settings required by destination type. Note that burnin_destination_settings are not available if the source of the caption data is Embedded or Teletext.
--
-- /See:/ 'captionDestinationSettings' smart constructor.
data CaptionDestinationSettings = CaptionDestinationSettings'
  { _cdsEmbeddedDestinationSettings ::
      !( Maybe
           EmbeddedDestinationSettings
       ),
    _cdsDestinationType ::
      !( Maybe
           CaptionDestinationType
       ),
    _cdsDvbSubDestinationSettings ::
      !( Maybe
           DvbSubDestinationSettings
       ),
    _cdsTeletextDestinationSettings ::
      !( Maybe
           TeletextDestinationSettings
       ),
    _cdsTtmlDestinationSettings ::
      !( Maybe
           TtmlDestinationSettings
       ),
    _cdsBurninDestinationSettings ::
      !( Maybe
           BurninDestinationSettings
       ),
    _cdsImscDestinationSettings ::
      !( Maybe
           ImscDestinationSettings
       ),
    _cdsSccDestinationSettings ::
      !( Maybe
           SccDestinationSettings
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

-- | Creates a value of 'CaptionDestinationSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdsEmbeddedDestinationSettings' - Settings specific to embedded/ancillary caption outputs, including 608/708 Channel destination number.
--
-- * 'cdsDestinationType' - Specify the format for this set of captions on this output. The default format is embedded without SCTE-20. Other options are embedded with SCTE-20, burn-in, DVB-sub, IMSC, SCC, SRT, teletext, TTML, and web-VTT. If you are using SCTE-20, choose SCTE-20 plus embedded (SCTE20_PLUS_EMBEDDED) to create an output that complies with the SCTE-43 spec. To create a non-compliant output where the embedded captions come first, choose Embedded plus SCTE-20 (EMBEDDED_PLUS_SCTE20).
--
-- * 'cdsDvbSubDestinationSettings' - DVB-Sub Destination Settings
--
-- * 'cdsTeletextDestinationSettings' - Settings for Teletext caption output
--
-- * 'cdsTtmlDestinationSettings' - Settings specific to TTML caption outputs, including Pass style information (TtmlStylePassthrough).
--
-- * 'cdsBurninDestinationSettings' - Burn-In Destination Settings.
--
-- * 'cdsImscDestinationSettings' - Settings specific to IMSC caption outputs.
--
-- * 'cdsSccDestinationSettings' - Settings for SCC caption output.
captionDestinationSettings ::
  CaptionDestinationSettings
captionDestinationSettings =
  CaptionDestinationSettings'
    { _cdsEmbeddedDestinationSettings =
        Nothing,
      _cdsDestinationType = Nothing,
      _cdsDvbSubDestinationSettings = Nothing,
      _cdsTeletextDestinationSettings = Nothing,
      _cdsTtmlDestinationSettings = Nothing,
      _cdsBurninDestinationSettings = Nothing,
      _cdsImscDestinationSettings = Nothing,
      _cdsSccDestinationSettings = Nothing
    }

-- | Settings specific to embedded/ancillary caption outputs, including 608/708 Channel destination number.
cdsEmbeddedDestinationSettings :: Lens' CaptionDestinationSettings (Maybe EmbeddedDestinationSettings)
cdsEmbeddedDestinationSettings = lens _cdsEmbeddedDestinationSettings (\s a -> s {_cdsEmbeddedDestinationSettings = a})

-- | Specify the format for this set of captions on this output. The default format is embedded without SCTE-20. Other options are embedded with SCTE-20, burn-in, DVB-sub, IMSC, SCC, SRT, teletext, TTML, and web-VTT. If you are using SCTE-20, choose SCTE-20 plus embedded (SCTE20_PLUS_EMBEDDED) to create an output that complies with the SCTE-43 spec. To create a non-compliant output where the embedded captions come first, choose Embedded plus SCTE-20 (EMBEDDED_PLUS_SCTE20).
cdsDestinationType :: Lens' CaptionDestinationSettings (Maybe CaptionDestinationType)
cdsDestinationType = lens _cdsDestinationType (\s a -> s {_cdsDestinationType = a})

-- | DVB-Sub Destination Settings
cdsDvbSubDestinationSettings :: Lens' CaptionDestinationSettings (Maybe DvbSubDestinationSettings)
cdsDvbSubDestinationSettings = lens _cdsDvbSubDestinationSettings (\s a -> s {_cdsDvbSubDestinationSettings = a})

-- | Settings for Teletext caption output
cdsTeletextDestinationSettings :: Lens' CaptionDestinationSettings (Maybe TeletextDestinationSettings)
cdsTeletextDestinationSettings = lens _cdsTeletextDestinationSettings (\s a -> s {_cdsTeletextDestinationSettings = a})

-- | Settings specific to TTML caption outputs, including Pass style information (TtmlStylePassthrough).
cdsTtmlDestinationSettings :: Lens' CaptionDestinationSettings (Maybe TtmlDestinationSettings)
cdsTtmlDestinationSettings = lens _cdsTtmlDestinationSettings (\s a -> s {_cdsTtmlDestinationSettings = a})

-- | Burn-In Destination Settings.
cdsBurninDestinationSettings :: Lens' CaptionDestinationSettings (Maybe BurninDestinationSettings)
cdsBurninDestinationSettings = lens _cdsBurninDestinationSettings (\s a -> s {_cdsBurninDestinationSettings = a})

-- | Settings specific to IMSC caption outputs.
cdsImscDestinationSettings :: Lens' CaptionDestinationSettings (Maybe ImscDestinationSettings)
cdsImscDestinationSettings = lens _cdsImscDestinationSettings (\s a -> s {_cdsImscDestinationSettings = a})

-- | Settings for SCC caption output.
cdsSccDestinationSettings :: Lens' CaptionDestinationSettings (Maybe SccDestinationSettings)
cdsSccDestinationSettings = lens _cdsSccDestinationSettings (\s a -> s {_cdsSccDestinationSettings = a})

instance FromJSON CaptionDestinationSettings where
  parseJSON =
    withObject
      "CaptionDestinationSettings"
      ( \x ->
          CaptionDestinationSettings'
            <$> (x .:? "embeddedDestinationSettings")
            <*> (x .:? "destinationType")
            <*> (x .:? "dvbSubDestinationSettings")
            <*> (x .:? "teletextDestinationSettings")
            <*> (x .:? "ttmlDestinationSettings")
            <*> (x .:? "burninDestinationSettings")
            <*> (x .:? "imscDestinationSettings")
            <*> (x .:? "sccDestinationSettings")
      )

instance Hashable CaptionDestinationSettings

instance NFData CaptionDestinationSettings

instance ToJSON CaptionDestinationSettings where
  toJSON CaptionDestinationSettings' {..} =
    object
      ( catMaybes
          [ ("embeddedDestinationSettings" .=)
              <$> _cdsEmbeddedDestinationSettings,
            ("destinationType" .=) <$> _cdsDestinationType,
            ("dvbSubDestinationSettings" .=)
              <$> _cdsDvbSubDestinationSettings,
            ("teletextDestinationSettings" .=)
              <$> _cdsTeletextDestinationSettings,
            ("ttmlDestinationSettings" .=)
              <$> _cdsTtmlDestinationSettings,
            ("burninDestinationSettings" .=)
              <$> _cdsBurninDestinationSettings,
            ("imscDestinationSettings" .=)
              <$> _cdsImscDestinationSettings,
            ("sccDestinationSettings" .=)
              <$> _cdsSccDestinationSettings
          ]
      )
