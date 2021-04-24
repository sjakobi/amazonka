{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.Smile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.Smile where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Indicates whether or not the face is smiling, and the confidence level in the determination.
--
--
--
-- /See:/ 'smile' smart constructor.
data Smile = Smile'
  { _smiConfidence ::
      !(Maybe Double),
    _smiValue :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Smile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smiConfidence' - Level of confidence in the determination.
--
-- * 'smiValue' - Boolean value that indicates whether the face is smiling or not.
smile ::
  Smile
smile =
  Smile'
    { _smiConfidence = Nothing,
      _smiValue = Nothing
    }

-- | Level of confidence in the determination.
smiConfidence :: Lens' Smile (Maybe Double)
smiConfidence = lens _smiConfidence (\s a -> s {_smiConfidence = a})

-- | Boolean value that indicates whether the face is smiling or not.
smiValue :: Lens' Smile (Maybe Bool)
smiValue = lens _smiValue (\s a -> s {_smiValue = a})

instance FromJSON Smile where
  parseJSON =
    withObject
      "Smile"
      ( \x ->
          Smile' <$> (x .:? "Confidence") <*> (x .:? "Value")
      )

instance Hashable Smile

instance NFData Smile
