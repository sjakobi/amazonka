{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.EventCategoriesMap
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.EventCategoriesMap where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Types.EventInfoMap

-- | Describes event categories.
--
--
--
-- /See:/ 'eventCategoriesMap' smart constructor.
data EventCategoriesMap = EventCategoriesMap'
  { _ecmEvents ::
      !(Maybe [EventInfoMap]),
    _ecmSourceType :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EventCategoriesMap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecmEvents' - The events in the event category.
--
-- * 'ecmSourceType' - The source type, such as cluster or cluster-snapshot, that the returned categories belong to.
eventCategoriesMap ::
  EventCategoriesMap
eventCategoriesMap =
  EventCategoriesMap'
    { _ecmEvents = Nothing,
      _ecmSourceType = Nothing
    }

-- | The events in the event category.
ecmEvents :: Lens' EventCategoriesMap [EventInfoMap]
ecmEvents = lens _ecmEvents (\s a -> s {_ecmEvents = a}) . _Default . _Coerce

-- | The source type, such as cluster or cluster-snapshot, that the returned categories belong to.
ecmSourceType :: Lens' EventCategoriesMap (Maybe Text)
ecmSourceType = lens _ecmSourceType (\s a -> s {_ecmSourceType = a})

instance FromXML EventCategoriesMap where
  parseXML x =
    EventCategoriesMap'
      <$> ( x .@? "Events" .!@ mempty
              >>= may (parseXMLList "EventInfoMap")
          )
      <*> (x .@? "SourceType")

instance Hashable EventCategoriesMap

instance NFData EventCategoriesMap
