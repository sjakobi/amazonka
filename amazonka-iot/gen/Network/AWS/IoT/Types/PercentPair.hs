{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.PercentPair
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.PercentPair where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the percentile and percentile value.
--
--
--
-- /See:/ 'percentPair' smart constructor.
data PercentPair = PercentPair'
  { _ppPercent ::
      !(Maybe Double),
    _ppValue :: !(Maybe Double)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PercentPair' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppPercent' - The percentile.
--
-- * 'ppValue' - The value of the percentile.
percentPair ::
  PercentPair
percentPair =
  PercentPair'
    { _ppPercent = Nothing,
      _ppValue = Nothing
    }

-- | The percentile.
ppPercent :: Lens' PercentPair (Maybe Double)
ppPercent = lens _ppPercent (\s a -> s {_ppPercent = a})

-- | The value of the percentile.
ppValue :: Lens' PercentPair (Maybe Double)
ppValue = lens _ppValue (\s a -> s {_ppValue = a})

instance FromJSON PercentPair where
  parseJSON =
    withObject
      "PercentPair"
      ( \x ->
          PercentPair'
            <$> (x .:? "percent") <*> (x .:? "value")
      )

instance Hashable PercentPair

instance NFData PercentPair
