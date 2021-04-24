{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.Beard
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.Beard where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Indicates whether or not the face has a beard, and the confidence level in the determination.
--
--
--
-- /See:/ 'beard' smart constructor.
data Beard = Beard'
  { _bConfidence :: !(Maybe Double),
    _bValue :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Beard' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bConfidence' - Level of confidence in the determination.
--
-- * 'bValue' - Boolean value that indicates whether the face has beard or not.
beard ::
  Beard
beard =
  Beard' {_bConfidence = Nothing, _bValue = Nothing}

-- | Level of confidence in the determination.
bConfidence :: Lens' Beard (Maybe Double)
bConfidence = lens _bConfidence (\s a -> s {_bConfidence = a})

-- | Boolean value that indicates whether the face has beard or not.
bValue :: Lens' Beard (Maybe Bool)
bValue = lens _bValue (\s a -> s {_bValue = a})

instance FromJSON Beard where
  parseJSON =
    withObject
      "Beard"
      ( \x ->
          Beard' <$> (x .:? "Confidence") <*> (x .:? "Value")
      )

instance Hashable Beard

instance NFData Beard
