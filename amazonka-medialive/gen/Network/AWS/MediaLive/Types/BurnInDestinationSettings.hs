{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.BurnInDestinationSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.BurnInDestinationSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.BurnInAlignment
import Network.AWS.MediaLive.Types.BurnInBackgroundColor
import Network.AWS.MediaLive.Types.BurnInFontColor
import Network.AWS.MediaLive.Types.BurnInOutlineColor
import Network.AWS.MediaLive.Types.BurnInShadowColor
import Network.AWS.MediaLive.Types.BurnInTeletextGridControl
import Network.AWS.MediaLive.Types.InputLocation
import Network.AWS.Prelude

-- | Burn In Destination Settings
--
-- /See:/ 'burnInDestinationSettings' smart constructor.
data BurnInDestinationSettings = BurnInDestinationSettings'
  { _bidsAlignment ::
      !( Maybe
           BurnInAlignment
       ),
    _bidsShadowOpacity ::
      !(Maybe Nat),
    _bidsShadowColor ::
      !( Maybe
           BurnInShadowColor
       ),
    _bidsOutlineColor ::
      !( Maybe
           BurnInOutlineColor
       ),
    _bidsTeletextGridControl ::
      !( Maybe
           BurnInTeletextGridControl
       ),
    _bidsBackgroundOpacity ::
      !(Maybe Nat),
    _bidsXPosition ::
      !(Maybe Nat),
    _bidsFontColor ::
      !( Maybe
           BurnInFontColor
       ),
    _bidsFontSize ::
      !(Maybe Text),
    _bidsBackgroundColor ::
      !( Maybe
           BurnInBackgroundColor
       ),
    _bidsShadowXOffset ::
      !(Maybe Int),
    _bidsFont ::
      !( Maybe
           InputLocation
       ),
    _bidsYPosition ::
      !(Maybe Nat),
    _bidsFontResolution ::
      !(Maybe Nat),
    _bidsOutlineSize ::
      !(Maybe Nat),
    _bidsFontOpacity ::
      !(Maybe Nat),
    _bidsShadowYOffset ::
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

-- | Creates a value of 'BurnInDestinationSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bidsAlignment' - If no explicit xPosition or yPosition is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Selecting "smart" justification will left-justify live subtitles and center-justify pre-recorded subtitles.  All burn-in and DVB-Sub font settings must match.
--
-- * 'bidsShadowOpacity' - Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter out is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
--
-- * 'bidsShadowColor' - Specifies the color of the shadow cast by the captions.  All burn-in and DVB-Sub font settings must match.
--
-- * 'bidsOutlineColor' - Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
--
-- * 'bidsTeletextGridControl' - Controls whether a fixed grid size will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
--
-- * 'bidsBackgroundOpacity' - Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter out is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
--
-- * 'bidsXPosition' - Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit xPosition is provided, the horizontal caption position will be determined by the alignment parameter.  All burn-in and DVB-Sub font settings must match.
--
-- * 'bidsFontColor' - Specifies the color of the burned-in captions.  This option is not valid for source captions that are STL, 608/embedded or teletext.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
--
-- * 'bidsFontSize' - When set to 'auto' fontSize will scale depending on the size of the output.  Giving a positive integer will specify the exact font size in points.  All burn-in and DVB-Sub font settings must match.
--
-- * 'bidsBackgroundColor' - Specifies the color of the rectangle behind the captions.  All burn-in and DVB-Sub font settings must match.
--
-- * 'bidsShadowXOffset' - Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left.  All burn-in and DVB-Sub font settings must match.
--
-- * 'bidsFont' - External font file used for caption burn-in. File extension must be 'ttf' or 'tte'.  Although the user can select output fonts for many different types of input captions,  embedded, STL and teletext sources use a strict grid system. Using external fonts with these caption sources could cause unexpected display of proportional fonts.  All burn-in and DVB-Sub font settings must match.
--
-- * 'bidsYPosition' - Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit yPosition is provided, the caption will be positioned towards the bottom of the output.  All burn-in and DVB-Sub font settings must match.
--
-- * 'bidsFontResolution' - Font resolution in DPI (dots per inch); default is 96 dpi.  All burn-in and DVB-Sub font settings must match.
--
-- * 'bidsOutlineSize' - Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
--
-- * 'bidsFontOpacity' - Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent.  All burn-in and DVB-Sub font settings must match.
--
-- * 'bidsShadowYOffset' - Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text.  All burn-in and DVB-Sub font settings must match.
burnInDestinationSettings ::
  BurnInDestinationSettings
burnInDestinationSettings =
  BurnInDestinationSettings'
    { _bidsAlignment =
        Nothing,
      _bidsShadowOpacity = Nothing,
      _bidsShadowColor = Nothing,
      _bidsOutlineColor = Nothing,
      _bidsTeletextGridControl = Nothing,
      _bidsBackgroundOpacity = Nothing,
      _bidsXPosition = Nothing,
      _bidsFontColor = Nothing,
      _bidsFontSize = Nothing,
      _bidsBackgroundColor = Nothing,
      _bidsShadowXOffset = Nothing,
      _bidsFont = Nothing,
      _bidsYPosition = Nothing,
      _bidsFontResolution = Nothing,
      _bidsOutlineSize = Nothing,
      _bidsFontOpacity = Nothing,
      _bidsShadowYOffset = Nothing
    }

-- | If no explicit xPosition or yPosition is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Selecting "smart" justification will left-justify live subtitles and center-justify pre-recorded subtitles.  All burn-in and DVB-Sub font settings must match.
bidsAlignment :: Lens' BurnInDestinationSettings (Maybe BurnInAlignment)
bidsAlignment = lens _bidsAlignment (\s a -> s {_bidsAlignment = a})

-- | Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter out is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
bidsShadowOpacity :: Lens' BurnInDestinationSettings (Maybe Natural)
bidsShadowOpacity = lens _bidsShadowOpacity (\s a -> s {_bidsShadowOpacity = a}) . mapping _Nat

-- | Specifies the color of the shadow cast by the captions.  All burn-in and DVB-Sub font settings must match.
bidsShadowColor :: Lens' BurnInDestinationSettings (Maybe BurnInShadowColor)
bidsShadowColor = lens _bidsShadowColor (\s a -> s {_bidsShadowColor = a})

-- | Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
bidsOutlineColor :: Lens' BurnInDestinationSettings (Maybe BurnInOutlineColor)
bidsOutlineColor = lens _bidsOutlineColor (\s a -> s {_bidsOutlineColor = a})

-- | Controls whether a fixed grid size will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
bidsTeletextGridControl :: Lens' BurnInDestinationSettings (Maybe BurnInTeletextGridControl)
bidsTeletextGridControl = lens _bidsTeletextGridControl (\s a -> s {_bidsTeletextGridControl = a})

-- | Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter out is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
bidsBackgroundOpacity :: Lens' BurnInDestinationSettings (Maybe Natural)
bidsBackgroundOpacity = lens _bidsBackgroundOpacity (\s a -> s {_bidsBackgroundOpacity = a}) . mapping _Nat

-- | Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit xPosition is provided, the horizontal caption position will be determined by the alignment parameter.  All burn-in and DVB-Sub font settings must match.
bidsXPosition :: Lens' BurnInDestinationSettings (Maybe Natural)
bidsXPosition = lens _bidsXPosition (\s a -> s {_bidsXPosition = a}) . mapping _Nat

-- | Specifies the color of the burned-in captions.  This option is not valid for source captions that are STL, 608/embedded or teletext.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
bidsFontColor :: Lens' BurnInDestinationSettings (Maybe BurnInFontColor)
bidsFontColor = lens _bidsFontColor (\s a -> s {_bidsFontColor = a})

-- | When set to 'auto' fontSize will scale depending on the size of the output.  Giving a positive integer will specify the exact font size in points.  All burn-in and DVB-Sub font settings must match.
bidsFontSize :: Lens' BurnInDestinationSettings (Maybe Text)
bidsFontSize = lens _bidsFontSize (\s a -> s {_bidsFontSize = a})

-- | Specifies the color of the rectangle behind the captions.  All burn-in and DVB-Sub font settings must match.
bidsBackgroundColor :: Lens' BurnInDestinationSettings (Maybe BurnInBackgroundColor)
bidsBackgroundColor = lens _bidsBackgroundColor (\s a -> s {_bidsBackgroundColor = a})

-- | Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left.  All burn-in and DVB-Sub font settings must match.
bidsShadowXOffset :: Lens' BurnInDestinationSettings (Maybe Int)
bidsShadowXOffset = lens _bidsShadowXOffset (\s a -> s {_bidsShadowXOffset = a})

-- | External font file used for caption burn-in. File extension must be 'ttf' or 'tte'.  Although the user can select output fonts for many different types of input captions,  embedded, STL and teletext sources use a strict grid system. Using external fonts with these caption sources could cause unexpected display of proportional fonts.  All burn-in and DVB-Sub font settings must match.
bidsFont :: Lens' BurnInDestinationSettings (Maybe InputLocation)
bidsFont = lens _bidsFont (\s a -> s {_bidsFont = a})

-- | Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit yPosition is provided, the caption will be positioned towards the bottom of the output.  All burn-in and DVB-Sub font settings must match.
bidsYPosition :: Lens' BurnInDestinationSettings (Maybe Natural)
bidsYPosition = lens _bidsYPosition (\s a -> s {_bidsYPosition = a}) . mapping _Nat

-- | Font resolution in DPI (dots per inch); default is 96 dpi.  All burn-in and DVB-Sub font settings must match.
bidsFontResolution :: Lens' BurnInDestinationSettings (Maybe Natural)
bidsFontResolution = lens _bidsFontResolution (\s a -> s {_bidsFontResolution = a}) . mapping _Nat

-- | Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
bidsOutlineSize :: Lens' BurnInDestinationSettings (Maybe Natural)
bidsOutlineSize = lens _bidsOutlineSize (\s a -> s {_bidsOutlineSize = a}) . mapping _Nat

-- | Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent.  All burn-in and DVB-Sub font settings must match.
bidsFontOpacity :: Lens' BurnInDestinationSettings (Maybe Natural)
bidsFontOpacity = lens _bidsFontOpacity (\s a -> s {_bidsFontOpacity = a}) . mapping _Nat

-- | Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text.  All burn-in and DVB-Sub font settings must match.
bidsShadowYOffset :: Lens' BurnInDestinationSettings (Maybe Int)
bidsShadowYOffset = lens _bidsShadowYOffset (\s a -> s {_bidsShadowYOffset = a})

instance FromJSON BurnInDestinationSettings where
  parseJSON =
    withObject
      "BurnInDestinationSettings"
      ( \x ->
          BurnInDestinationSettings'
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

instance Hashable BurnInDestinationSettings

instance NFData BurnInDestinationSettings

instance ToJSON BurnInDestinationSettings where
  toJSON BurnInDestinationSettings' {..} =
    object
      ( catMaybes
          [ ("alignment" .=) <$> _bidsAlignment,
            ("shadowOpacity" .=) <$> _bidsShadowOpacity,
            ("shadowColor" .=) <$> _bidsShadowColor,
            ("outlineColor" .=) <$> _bidsOutlineColor,
            ("teletextGridControl" .=)
              <$> _bidsTeletextGridControl,
            ("backgroundOpacity" .=) <$> _bidsBackgroundOpacity,
            ("xPosition" .=) <$> _bidsXPosition,
            ("fontColor" .=) <$> _bidsFontColor,
            ("fontSize" .=) <$> _bidsFontSize,
            ("backgroundColor" .=) <$> _bidsBackgroundColor,
            ("shadowXOffset" .=) <$> _bidsShadowXOffset,
            ("font" .=) <$> _bidsFont,
            ("yPosition" .=) <$> _bidsYPosition,
            ("fontResolution" .=) <$> _bidsFontResolution,
            ("outlineSize" .=) <$> _bidsOutlineSize,
            ("fontOpacity" .=) <$> _bidsFontOpacity,
            ("shadowYOffset" .=) <$> _bidsShadowYOffset
          ]
      )
