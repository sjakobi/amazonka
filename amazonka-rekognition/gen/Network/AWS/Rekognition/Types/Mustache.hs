{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.Mustache
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.Mustache where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Indicates whether or not the face has a mustache, and the confidence level in the determination.
--
--
--
-- /See:/ 'mustache' smart constructor.
data Mustache = Mustache'
  { _mConfidence ::
      !(Maybe Double),
    _mValue :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Mustache' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mConfidence' - Level of confidence in the determination.
--
-- * 'mValue' - Boolean value that indicates whether the face has mustache or not.
mustache ::
  Mustache
mustache =
  Mustache'
    { _mConfidence = Nothing,
      _mValue = Nothing
    }

-- | Level of confidence in the determination.
mConfidence :: Lens' Mustache (Maybe Double)
mConfidence = lens _mConfidence (\s a -> s {_mConfidence = a})

-- | Boolean value that indicates whether the face has mustache or not.
mValue :: Lens' Mustache (Maybe Bool)
mValue = lens _mValue (\s a -> s {_mValue = a})

instance FromJSON Mustache where
  parseJSON =
    withObject
      "Mustache"
      ( \x ->
          Mustache'
            <$> (x .:? "Confidence") <*> (x .:? "Value")
      )

instance Hashable Mustache

instance NFData Mustache
