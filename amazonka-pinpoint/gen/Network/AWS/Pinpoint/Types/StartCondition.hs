{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.StartCondition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.StartCondition where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.EventStartCondition
import Network.AWS.Pinpoint.Types.SegmentCondition
import Network.AWS.Prelude

-- | Specifies the conditions for the first activity in a journey. This activity and its conditions determine which users are participants in a journey.
--
--
--
-- /See:/ 'startCondition' smart constructor.
data StartCondition = StartCondition'
  { _scEventStartCondition ::
      !(Maybe EventStartCondition),
    _scDescription :: !(Maybe Text),
    _scSegmentStartCondition ::
      !(Maybe SegmentCondition)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartCondition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scEventStartCondition' - Undocumented member.
--
-- * 'scDescription' - The custom description of the condition.
--
-- * 'scSegmentStartCondition' - The segment that's associated with the first activity in the journey. This segment determines which users are participants in the journey.
startCondition ::
  StartCondition
startCondition =
  StartCondition'
    { _scEventStartCondition = Nothing,
      _scDescription = Nothing,
      _scSegmentStartCondition = Nothing
    }

-- | Undocumented member.
scEventStartCondition :: Lens' StartCondition (Maybe EventStartCondition)
scEventStartCondition = lens _scEventStartCondition (\s a -> s {_scEventStartCondition = a})

-- | The custom description of the condition.
scDescription :: Lens' StartCondition (Maybe Text)
scDescription = lens _scDescription (\s a -> s {_scDescription = a})

-- | The segment that's associated with the first activity in the journey. This segment determines which users are participants in the journey.
scSegmentStartCondition :: Lens' StartCondition (Maybe SegmentCondition)
scSegmentStartCondition = lens _scSegmentStartCondition (\s a -> s {_scSegmentStartCondition = a})

instance FromJSON StartCondition where
  parseJSON =
    withObject
      "StartCondition"
      ( \x ->
          StartCondition'
            <$> (x .:? "EventStartCondition")
            <*> (x .:? "Description")
            <*> (x .:? "SegmentStartCondition")
      )

instance Hashable StartCondition

instance NFData StartCondition

instance ToJSON StartCondition where
  toJSON StartCondition' {..} =
    object
      ( catMaybes
          [ ("EventStartCondition" .=)
              <$> _scEventStartCondition,
            ("Description" .=) <$> _scDescription,
            ("SegmentStartCondition" .=)
              <$> _scSegmentStartCondition
          ]
      )
