{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.EventCategoriesMap
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.EventCategoriesMap where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the results of a successful invocation of the @DescribeEventCategories@ operation.
--
--
--
-- /See:/ 'eventCategoriesMap' smart constructor.
data EventCategoriesMap = EventCategoriesMap'
  { _ecmEventCategories ::
      !(Maybe [Text]),
    _ecmSourceType :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EventCategoriesMap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecmEventCategories' - The event categories for the specified source type
--
-- * 'ecmSourceType' - The source type that the returned categories belong to
eventCategoriesMap ::
  EventCategoriesMap
eventCategoriesMap =
  EventCategoriesMap'
    { _ecmEventCategories = Nothing,
      _ecmSourceType = Nothing
    }

-- | The event categories for the specified source type
ecmEventCategories :: Lens' EventCategoriesMap [Text]
ecmEventCategories = lens _ecmEventCategories (\s a -> s {_ecmEventCategories = a}) . _Default . _Coerce

-- | The source type that the returned categories belong to
ecmSourceType :: Lens' EventCategoriesMap (Maybe Text)
ecmSourceType = lens _ecmSourceType (\s a -> s {_ecmSourceType = a})

instance FromXML EventCategoriesMap where
  parseXML x =
    EventCategoriesMap'
      <$> ( x .@? "EventCategories" .!@ mempty
              >>= may (parseXMLList "EventCategory")
          )
      <*> (x .@? "SourceType")

instance Hashable EventCategoriesMap

instance NFData EventCategoriesMap
