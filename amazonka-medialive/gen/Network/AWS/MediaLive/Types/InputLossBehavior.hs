{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputLossBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputLossBehavior where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.InputLocation
import Network.AWS.MediaLive.Types.InputLossImageType
import Network.AWS.Prelude

-- | Input Loss Behavior
--
-- /See:/ 'inputLossBehavior' smart constructor.
data InputLossBehavior = InputLossBehavior'
  { _ilbBlackFrameMsec ::
      !(Maybe Nat),
    _ilbInputLossImageColor ::
      !(Maybe Text),
    _ilbInputLossImageSlate ::
      !(Maybe InputLocation),
    _ilbRepeatFrameMsec :: !(Maybe Nat),
    _ilbInputLossImageType ::
      !(Maybe InputLossImageType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InputLossBehavior' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilbBlackFrameMsec' - Documentation update needed
--
-- * 'ilbInputLossImageColor' - When input loss image type is "color" this field specifies the color to use. Value: 6 hex characters representing the values of RGB.
--
-- * 'ilbInputLossImageSlate' - When input loss image type is "slate" these fields specify the parameters for accessing the slate.
--
-- * 'ilbRepeatFrameMsec' - Documentation update needed
--
-- * 'ilbInputLossImageType' - Indicates whether to substitute a solid color or a slate into the output after input loss exceeds blackFrameMsec.
inputLossBehavior ::
  InputLossBehavior
inputLossBehavior =
  InputLossBehavior'
    { _ilbBlackFrameMsec = Nothing,
      _ilbInputLossImageColor = Nothing,
      _ilbInputLossImageSlate = Nothing,
      _ilbRepeatFrameMsec = Nothing,
      _ilbInputLossImageType = Nothing
    }

-- | Documentation update needed
ilbBlackFrameMsec :: Lens' InputLossBehavior (Maybe Natural)
ilbBlackFrameMsec = lens _ilbBlackFrameMsec (\s a -> s {_ilbBlackFrameMsec = a}) . mapping _Nat

-- | When input loss image type is "color" this field specifies the color to use. Value: 6 hex characters representing the values of RGB.
ilbInputLossImageColor :: Lens' InputLossBehavior (Maybe Text)
ilbInputLossImageColor = lens _ilbInputLossImageColor (\s a -> s {_ilbInputLossImageColor = a})

-- | When input loss image type is "slate" these fields specify the parameters for accessing the slate.
ilbInputLossImageSlate :: Lens' InputLossBehavior (Maybe InputLocation)
ilbInputLossImageSlate = lens _ilbInputLossImageSlate (\s a -> s {_ilbInputLossImageSlate = a})

-- | Documentation update needed
ilbRepeatFrameMsec :: Lens' InputLossBehavior (Maybe Natural)
ilbRepeatFrameMsec = lens _ilbRepeatFrameMsec (\s a -> s {_ilbRepeatFrameMsec = a}) . mapping _Nat

-- | Indicates whether to substitute a solid color or a slate into the output after input loss exceeds blackFrameMsec.
ilbInputLossImageType :: Lens' InputLossBehavior (Maybe InputLossImageType)
ilbInputLossImageType = lens _ilbInputLossImageType (\s a -> s {_ilbInputLossImageType = a})

instance FromJSON InputLossBehavior where
  parseJSON =
    withObject
      "InputLossBehavior"
      ( \x ->
          InputLossBehavior'
            <$> (x .:? "blackFrameMsec")
            <*> (x .:? "inputLossImageColor")
            <*> (x .:? "inputLossImageSlate")
            <*> (x .:? "repeatFrameMsec")
            <*> (x .:? "inputLossImageType")
      )

instance Hashable InputLossBehavior

instance NFData InputLossBehavior

instance ToJSON InputLossBehavior where
  toJSON InputLossBehavior' {..} =
    object
      ( catMaybes
          [ ("blackFrameMsec" .=) <$> _ilbBlackFrameMsec,
            ("inputLossImageColor" .=)
              <$> _ilbInputLossImageColor,
            ("inputLossImageSlate" .=)
              <$> _ilbInputLossImageSlate,
            ("repeatFrameMsec" .=) <$> _ilbRepeatFrameMsec,
            ("inputLossImageType" .=)
              <$> _ilbInputLossImageType
          ]
      )
