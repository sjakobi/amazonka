{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.SkewedInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.SkewedInfo where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies skewed values in a table. Skewed values are those that occur with very high frequency.
--
--
--
-- /See:/ 'skewedInfo' smart constructor.
data SkewedInfo = SkewedInfo'
  { _siSkewedColumnNames ::
      !(Maybe [Text]),
    _siSkewedColumnValues :: !(Maybe [Text]),
    _siSkewedColumnValueLocationMaps ::
      !(Maybe (Map Text Text))
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SkewedInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siSkewedColumnNames' - A list of names of columns that contain skewed values.
--
-- * 'siSkewedColumnValues' - A list of values that appear so frequently as to be considered skewed.
--
-- * 'siSkewedColumnValueLocationMaps' - A mapping of skewed values to the columns that contain them.
skewedInfo ::
  SkewedInfo
skewedInfo =
  SkewedInfo'
    { _siSkewedColumnNames = Nothing,
      _siSkewedColumnValues = Nothing,
      _siSkewedColumnValueLocationMaps = Nothing
    }

-- | A list of names of columns that contain skewed values.
siSkewedColumnNames :: Lens' SkewedInfo [Text]
siSkewedColumnNames = lens _siSkewedColumnNames (\s a -> s {_siSkewedColumnNames = a}) . _Default . _Coerce

-- | A list of values that appear so frequently as to be considered skewed.
siSkewedColumnValues :: Lens' SkewedInfo [Text]
siSkewedColumnValues = lens _siSkewedColumnValues (\s a -> s {_siSkewedColumnValues = a}) . _Default . _Coerce

-- | A mapping of skewed values to the columns that contain them.
siSkewedColumnValueLocationMaps :: Lens' SkewedInfo (HashMap Text Text)
siSkewedColumnValueLocationMaps = lens _siSkewedColumnValueLocationMaps (\s a -> s {_siSkewedColumnValueLocationMaps = a}) . _Default . _Map

instance FromJSON SkewedInfo where
  parseJSON =
    withObject
      "SkewedInfo"
      ( \x ->
          SkewedInfo'
            <$> (x .:? "SkewedColumnNames" .!= mempty)
            <*> (x .:? "SkewedColumnValues" .!= mempty)
            <*> (x .:? "SkewedColumnValueLocationMaps" .!= mempty)
      )

instance Hashable SkewedInfo

instance NFData SkewedInfo

instance ToJSON SkewedInfo where
  toJSON SkewedInfo' {..} =
    object
      ( catMaybes
          [ ("SkewedColumnNames" .=) <$> _siSkewedColumnNames,
            ("SkewedColumnValues" .=) <$> _siSkewedColumnValues,
            ("SkewedColumnValueLocationMaps" .=)
              <$> _siSkewedColumnValueLocationMaps
          ]
      )
