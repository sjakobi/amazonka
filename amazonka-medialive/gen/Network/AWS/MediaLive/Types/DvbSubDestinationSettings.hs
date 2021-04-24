{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.DvbSubDestinationSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.DvbSubDestinationSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.DvbSubDestinationAlignment
import Network.AWS.MediaLive.Types.DvbSubDestinationBackgroundColor
import Network.AWS.MediaLive.Types.DvbSubDestinationFontColor
import Network.AWS.MediaLive.Types.DvbSubDestinationOutlineColor
import Network.AWS.MediaLive.Types.DvbSubDestinationShadowColor
import Network.AWS.MediaLive.Types.DvbSubDestinationTeletextGridControl
import Network.AWS.MediaLive.Types.InputLocation
import Network.AWS.Prelude

-- | Dvb Sub Destination Settings
--
-- /See:/ 'dvbSubDestinationSettings' smart constructor.
data DvbSubDestinationSettings = DvbSubDestinationSettings'
  { _dsdsAlignment ::
      !( Maybe
           DvbSubDestinationAlignment
       ),
    _dsdsShadowOpacity ::
      !(Maybe Nat),
    _dsdsShadowColor ::
      !( Maybe
           DvbSubDestinationShadowColor
       ),
    _dsdsOutlineColor ::
      !( Maybe
           DvbSubDestinationOutlineColor
       ),
    _dsdsTeletextGridControl ::
      !( Maybe
           DvbSubDestinationTeletextGridControl
       ),
    _dsdsBackgroundOpacity ::
      !(Maybe Nat),
    _dsdsXPosition ::
      !(Maybe Nat),
    _dsdsFontColor ::
      !( Maybe
           DvbSubDestinationFontColor
       ),
    _dsdsFontSize ::
      !(Maybe Text),
    _dsdsBackgroundColor ::
      !( Maybe
           DvbSubDestinationBackgroundColor
       ),
    _dsdsShadowXOffset ::
      !(Maybe Int),
    _dsdsFont ::
      !( Maybe
           InputLocation
       ),
    _dsdsYPosition ::
      !(Maybe Nat),
    _dsdsFontResolution ::
      !(Maybe Nat),
    _dsdsOutlineSize ::
      !(Maybe Nat),
    _dsdsFontOpacity ::
      !(Maybe Nat),
    _dsdsShadowYOffset ::
      !(Maybe Int)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DvbSubDestinationSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsdsAlignment' - If no explicit xPosition or yPosition is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Selecting "smart" justification will left-justify live subtitles and center-justify pre-recorded subtitles.  This option is not valid for source captions that are STL or 608/embedded.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsShadowOpacity' - Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsShadowColor' - Specifies the color of the shadow cast by the captions.  All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsOutlineColor' - Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsTeletextGridControl' - Controls whether a fixed grid size will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
--
-- * 'dsdsBackgroundOpacity' - Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsXPosition' - Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit xPosition is provided, the horizontal caption position will be determined by the alignment parameter.  This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsFontColor' - Specifies the color of the burned-in captions.  This option is not valid for source captions that are STL, 608/embedded or teletext.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsFontSize' - When set to auto fontSize will scale depending on the size of the output.  Giving a positive integer will specify the exact font size in points.  All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsBackgroundColor' - Specifies the color of the rectangle behind the captions.  All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsShadowXOffset' - Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left.  All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsFont' - External font file used for caption burn-in. File extension must be 'ttf' or 'tte'.  Although the user can select output fonts for many different types of input captions, embedded, STL and teletext sources use a strict grid system. Using external fonts with these caption sources could cause unexpected display of proportional fonts.  All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsYPosition' - Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit yPosition is provided, the caption will be positioned towards the bottom of the output.  This option is not valid for source captions that are STL, 608/embedded or teletext.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsFontResolution' - Font resolution in DPI (dots per inch); default is 96 dpi.  All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsOutlineSize' - Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsFontOpacity' - Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent.  All burn-in and DVB-Sub font settings must match.
--
-- * 'dsdsShadowYOffset' - Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text.  All burn-in and DVB-Sub font settings must match.
dvbSubDestinationSettings ::
  DvbSubDestinationSettings
dvbSubDestinationSettings =
  DvbSubDestinationSettings'
    { _dsdsAlignment =
        Nothing,
      _dsdsShadowOpacity = Nothing,
      _dsdsShadowColor = Nothing,
      _dsdsOutlineColor = Nothing,
      _dsdsTeletextGridControl = Nothing,
      _dsdsBackgroundOpacity = Nothing,
      _dsdsXPosition = Nothing,
      _dsdsFontColor = Nothing,
      _dsdsFontSize = Nothing,
      _dsdsBackgroundColor = Nothing,
      _dsdsShadowXOffset = Nothing,
      _dsdsFont = Nothing,
      _dsdsYPosition = Nothing,
      _dsdsFontResolution = Nothing,
      _dsdsOutlineSize = Nothing,
      _dsdsFontOpacity = Nothing,
      _dsdsShadowYOffset = Nothing
    }

-- | If no explicit xPosition or yPosition is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Selecting "smart" justification will left-justify live subtitles and center-justify pre-recorded subtitles.  This option is not valid for source captions that are STL or 608/embedded.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
dsdsAlignment :: Lens' DvbSubDestinationSettings (Maybe DvbSubDestinationAlignment)
dsdsAlignment = lens _dsdsAlignment (\s a -> s {_dsdsAlignment = a})

-- | Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
dsdsShadowOpacity :: Lens' DvbSubDestinationSettings (Maybe Natural)
dsdsShadowOpacity = lens _dsdsShadowOpacity (\s a -> s {_dsdsShadowOpacity = a}) . mapping _Nat

-- | Specifies the color of the shadow cast by the captions.  All burn-in and DVB-Sub font settings must match.
dsdsShadowColor :: Lens' DvbSubDestinationSettings (Maybe DvbSubDestinationShadowColor)
dsdsShadowColor = lens _dsdsShadowColor (\s a -> s {_dsdsShadowColor = a})

-- | Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
dsdsOutlineColor :: Lens' DvbSubDestinationSettings (Maybe DvbSubDestinationOutlineColor)
dsdsOutlineColor = lens _dsdsOutlineColor (\s a -> s {_dsdsOutlineColor = a})

-- | Controls whether a fixed grid size will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
dsdsTeletextGridControl :: Lens' DvbSubDestinationSettings (Maybe DvbSubDestinationTeletextGridControl)
dsdsTeletextGridControl = lens _dsdsTeletextGridControl (\s a -> s {_dsdsTeletextGridControl = a})

-- | Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
dsdsBackgroundOpacity :: Lens' DvbSubDestinationSettings (Maybe Natural)
dsdsBackgroundOpacity = lens _dsdsBackgroundOpacity (\s a -> s {_dsdsBackgroundOpacity = a}) . mapping _Nat

-- | Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit xPosition is provided, the horizontal caption position will be determined by the alignment parameter.  This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
dsdsXPosition :: Lens' DvbSubDestinationSettings (Maybe Natural)
dsdsXPosition = lens _dsdsXPosition (\s a -> s {_dsdsXPosition = a}) . mapping _Nat

-- | Specifies the color of the burned-in captions.  This option is not valid for source captions that are STL, 608/embedded or teletext.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
dsdsFontColor :: Lens' DvbSubDestinationSettings (Maybe DvbSubDestinationFontColor)
dsdsFontColor = lens _dsdsFontColor (\s a -> s {_dsdsFontColor = a})

-- | When set to auto fontSize will scale depending on the size of the output.  Giving a positive integer will specify the exact font size in points.  All burn-in and DVB-Sub font settings must match.
dsdsFontSize :: Lens' DvbSubDestinationSettings (Maybe Text)
dsdsFontSize = lens _dsdsFontSize (\s a -> s {_dsdsFontSize = a})

-- | Specifies the color of the rectangle behind the captions.  All burn-in and DVB-Sub font settings must match.
dsdsBackgroundColor :: Lens' DvbSubDestinationSettings (Maybe DvbSubDestinationBackgroundColor)
dsdsBackgroundColor = lens _dsdsBackgroundColor (\s a -> s {_dsdsBackgroundColor = a})

-- | Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left.  All burn-in and DVB-Sub font settings must match.
dsdsShadowXOffset :: Lens' DvbSubDestinationSettings (Maybe Int)
dsdsShadowXOffset = lens _dsdsShadowXOffset (\s a -> s {_dsdsShadowXOffset = a})

-- | External font file used for caption burn-in. File extension must be 'ttf' or 'tte'.  Although the user can select output fonts for many different types of input captions, embedded, STL and teletext sources use a strict grid system. Using external fonts with these caption sources could cause unexpected display of proportional fonts.  All burn-in and DVB-Sub font settings must match.
dsdsFont :: Lens' DvbSubDestinationSettings (Maybe InputLocation)
dsdsFont = lens _dsdsFont (\s a -> s {_dsdsFont = a})

-- | Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit yPosition is provided, the caption will be positioned towards the bottom of the output.  This option is not valid for source captions that are STL, 608/embedded or teletext.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
dsdsYPosition :: Lens' DvbSubDestinationSettings (Maybe Natural)
dsdsYPosition = lens _dsdsYPosition (\s a -> s {_dsdsYPosition = a}) . mapping _Nat

-- | Font resolution in DPI (dots per inch); default is 96 dpi.  All burn-in and DVB-Sub font settings must match.
dsdsFontResolution :: Lens' DvbSubDestinationSettings (Maybe Natural)
dsdsFontResolution = lens _dsdsFontResolution (\s a -> s {_dsdsFontResolution = a}) . mapping _Nat

-- | Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
dsdsOutlineSize :: Lens' DvbSubDestinationSettings (Maybe Natural)
dsdsOutlineSize = lens _dsdsOutlineSize (\s a -> s {_dsdsOutlineSize = a}) . mapping _Nat

-- | Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent.  All burn-in and DVB-Sub font settings must match.
dsdsFontOpacity :: Lens' DvbSubDestinationSettings (Maybe Natural)
dsdsFontOpacity = lens _dsdsFontOpacity (\s a -> s {_dsdsFontOpacity = a}) . mapping _Nat

-- | Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text.  All burn-in and DVB-Sub font settings must match.
dsdsShadowYOffset :: Lens' DvbSubDestinationSettings (Maybe Int)
dsdsShadowYOffset = lens _dsdsShadowYOffset (\s a -> s {_dsdsShadowYOffset = a})

instance FromJSON DvbSubDestinationSettings where
  parseJSON =
    withObject
      "DvbSubDestinationSettings"
      ( \x ->
          DvbSubDestinationSettings'
            <$> (x .:? "alignment")
            <*> (x .:? "shadowOpacity")
            <*> (x .:? "shadowColor")
            <*> (x .:? "outlineColor")
            <*> (x .:? "teletextGridControl")
            <*> (x .:? "backgroundOpacity")
            <*> (x .:? "xPosition")
            <*> (x .:? "fontColor")
            <*> (x .:? "fontSize")
            <*> (x .:? "backgroundColor")
            <*> (x .:? "shadowXOffset")
            <*> (x .:? "font")
            <*> (x .:? "yPosition")
            <*> (x .:? "fontResolution")
            <*> (x .:? "outlineSize")
            <*> (x .:? "fontOpacity")
            <*> (x .:? "shadowYOffset")
      )

instance Hashable DvbSubDestinationSettings

instance NFData DvbSubDestinationSettings

instance ToJSON DvbSubDestinationSettings where
  toJSON DvbSubDestinationSettings' {..} =
    object
      ( catMaybes
          [ ("alignment" .=) <$> _dsdsAlignment,
            ("shadowOpacity" .=) <$> _dsdsShadowOpacity,
            ("shadowColor" .=) <$> _dsdsShadowColor,
            ("outlineColor" .=) <$> _dsdsOutlineColor,
            ("teletextGridControl" .=)
              <$> _dsdsTeletextGridControl,
            ("backgroundOpacity" .=) <$> _dsdsBackgroundOpacity,
            ("xPosition" .=) <$> _dsdsXPosition,
            ("fontColor" .=) <$> _dsdsFontColor,
            ("fontSize" .=) <$> _dsdsFontSize,
            ("backgroundColor" .=) <$> _dsdsBackgroundColor,
            ("shadowXOffset" .=) <$> _dsdsShadowXOffset,
            ("font" .=) <$> _dsdsFont,
            ("yPosition" .=) <$> _dsdsYPosition,
            ("fontResolution" .=) <$> _dsdsFontResolution,
            ("outlineSize" .=) <$> _dsdsOutlineSize,
            ("fontOpacity" .=) <$> _dsdsFontOpacity,
            ("shadowYOffset" .=) <$> _dsdsShadowYOffset
          ]
      )
