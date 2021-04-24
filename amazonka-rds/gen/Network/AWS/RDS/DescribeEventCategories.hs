{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.DescribeEventCategories
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Displays a list of categories for all event source types, or, if specified, for a specified source type. You can see a list of the event categories and source types in <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html Events> in the /Amazon RDS User Guide./
module Network.AWS.RDS.DescribeEventCategories
  ( -- * Creating a Request
    describeEventCategories,
    DescribeEventCategories,

    -- * Request Lenses
    decFilters,
    decSourceType,

    -- * Destructuring the Response
    describeEventCategoriesResponse,
    DescribeEventCategoriesResponse,

    -- * Response Lenses
    decrrsEventCategoriesMapList,
    decrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'describeEventCategories' smart constructor.
data DescribeEventCategories = DescribeEventCategories'
  { _decFilters ::
      !(Maybe [Filter]),
    _decSourceType ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeEventCategories' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'decFilters' - This parameter isn't currently supported.
--
-- * 'decSourceType' - The type of source that is generating the events. Valid values: @db-instance@ | @db-cluster@ | @db-parameter-group@ | @db-security-group@ | @db-snapshot@ | @db-cluster-snapshot@
describeEventCategories ::
  DescribeEventCategories
describeEventCategories =
  DescribeEventCategories'
    { _decFilters = Nothing,
      _decSourceType = Nothing
    }

-- | This parameter isn't currently supported.
decFilters :: Lens' DescribeEventCategories [Filter]
decFilters = lens _decFilters (\s a -> s {_decFilters = a}) . _Default . _Coerce

-- | The type of source that is generating the events. Valid values: @db-instance@ | @db-cluster@ | @db-parameter-group@ | @db-security-group@ | @db-snapshot@ | @db-cluster-snapshot@
decSourceType :: Lens' DescribeEventCategories (Maybe Text)
decSourceType = lens _decSourceType (\s a -> s {_decSourceType = a})

instance AWSRequest DescribeEventCategories where
  type
    Rs DescribeEventCategories =
      DescribeEventCategoriesResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeEventCategoriesResult"
      ( \s h x ->
          DescribeEventCategoriesResponse'
            <$> ( x .@? "EventCategoriesMapList" .!@ mempty
                    >>= may (parseXMLList "EventCategoriesMap")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeEventCategories

instance NFData DescribeEventCategories

instance ToHeaders DescribeEventCategories where
  toHeaders = const mempty

instance ToPath DescribeEventCategories where
  toPath = const "/"

instance ToQuery DescribeEventCategories where
  toQuery DescribeEventCategories' {..} =
    mconcat
      [ "Action"
          =: ("DescribeEventCategories" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _decFilters),
        "SourceType" =: _decSourceType
      ]

-- | Data returned from the @DescribeEventCategories@ operation.
--
--
--
-- /See:/ 'describeEventCategoriesResponse' smart constructor.
data DescribeEventCategoriesResponse = DescribeEventCategoriesResponse'
  { _decrrsEventCategoriesMapList ::
      !( Maybe
           [EventCategoriesMap]
       ),
    _decrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeEventCategoriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'decrrsEventCategoriesMapList' - A list of EventCategoriesMap data types.
--
-- * 'decrrsResponseStatus' - -- | The response status code.
describeEventCategoriesResponse ::
  -- | 'decrrsResponseStatus'
  Int ->
  DescribeEventCategoriesResponse
describeEventCategoriesResponse pResponseStatus_ =
  DescribeEventCategoriesResponse'
    { _decrrsEventCategoriesMapList =
        Nothing,
      _decrrsResponseStatus = pResponseStatus_
    }

-- | A list of EventCategoriesMap data types.
decrrsEventCategoriesMapList :: Lens' DescribeEventCategoriesResponse [EventCategoriesMap]
decrrsEventCategoriesMapList = lens _decrrsEventCategoriesMapList (\s a -> s {_decrrsEventCategoriesMapList = a}) . _Default . _Coerce

-- | -- | The response status code.
decrrsResponseStatus :: Lens' DescribeEventCategoriesResponse Int
decrrsResponseStatus = lens _decrrsResponseStatus (\s a -> s {_decrrsResponseStatus = a})

instance NFData DescribeEventCategoriesResponse
