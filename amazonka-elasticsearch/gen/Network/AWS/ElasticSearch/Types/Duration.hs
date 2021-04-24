{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.Duration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.Duration where

import Network.AWS.ElasticSearch.Types.TimeUnit
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies maintenance schedule duration: duration value and duration unit. See the <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide> for more information.
--
--
--
-- /See:/ 'duration' smart constructor.
data Duration = Duration'
  { _dUnit ::
      !(Maybe TimeUnit),
    _dValue :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Duration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dUnit' - Specifies the unit of a maintenance schedule duration. Valid value is HOURS. See the <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide> for more information.
--
-- * 'dValue' - Integer to specify the value of a maintenance schedule duration. See the <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide> for more information.
duration ::
  Duration
duration =
  Duration' {_dUnit = Nothing, _dValue = Nothing}

-- | Specifies the unit of a maintenance schedule duration. Valid value is HOURS. See the <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide> for more information.
dUnit :: Lens' Duration (Maybe TimeUnit)
dUnit = lens _dUnit (\s a -> s {_dUnit = a})

-- | Integer to specify the value of a maintenance schedule duration. See the <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide> for more information.
dValue :: Lens' Duration (Maybe Natural)
dValue = lens _dValue (\s a -> s {_dValue = a}) . mapping _Nat

instance FromJSON Duration where
  parseJSON =
    withObject
      "Duration"
      ( \x ->
          Duration' <$> (x .:? "Unit") <*> (x .:? "Value")
      )

instance Hashable Duration

instance NFData Duration

instance ToJSON Duration where
  toJSON Duration' {..} =
    object
      ( catMaybes
          [("Unit" .=) <$> _dUnit, ("Value" .=) <$> _dValue]
      )
