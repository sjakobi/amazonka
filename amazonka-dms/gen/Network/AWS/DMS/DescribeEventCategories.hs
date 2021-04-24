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
-- Module      : Network.AWS.DMS.DescribeEventCategories
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists categories for all event source types, or, if specified, for a specified source type. You can see a list of the event categories and source types in <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html Working with Events and Notifications> in the /AWS Database Migration Service User Guide./
module Network.AWS.DMS.DescribeEventCategories
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
    decrrsEventCategoryGroupList,
    decrrsResponseStatus,
  )
where

import Network.AWS.DMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
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
-- * 'decFilters' - Filters applied to the event categories.
--
-- * 'decSourceType' - The type of AWS DMS resource that generates events.  Valid values: replication-instance | replication-task
describeEventCategories ::
  DescribeEventCategories
describeEventCategories =
  DescribeEventCategories'
    { _decFilters = Nothing,
      _decSourceType = Nothing
    }

-- | Filters applied to the event categories.
decFilters :: Lens' DescribeEventCategories [Filter]
decFilters = lens _decFilters (\s a -> s {_decFilters = a}) . _Default . _Coerce

-- | The type of AWS DMS resource that generates events.  Valid values: replication-instance | replication-task
decSourceType :: Lens' DescribeEventCategories (Maybe Text)
decSourceType = lens _decSourceType (\s a -> s {_decSourceType = a})

instance AWSRequest DescribeEventCategories where
  type
    Rs DescribeEventCategories =
      DescribeEventCategoriesResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          DescribeEventCategoriesResponse'
            <$> (x .?> "EventCategoryGroupList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeEventCategories

instance NFData DescribeEventCategories

instance ToHeaders DescribeEventCategories where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDMSv20160101.DescribeEventCategories" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeEventCategories where
  toJSON DescribeEventCategories' {..} =
    object
      ( catMaybes
          [ ("Filters" .=) <$> _decFilters,
            ("SourceType" .=) <$> _decSourceType
          ]
      )

instance ToPath DescribeEventCategories where
  toPath = const "/"

instance ToQuery DescribeEventCategories where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'describeEventCategoriesResponse' smart constructor.
data DescribeEventCategoriesResponse = DescribeEventCategoriesResponse'
  { _decrrsEventCategoryGroupList ::
      !( Maybe
           [EventCategoryGroup]
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
-- * 'decrrsEventCategoryGroupList' - A list of event categories.
--
-- * 'decrrsResponseStatus' - -- | The response status code.
describeEventCategoriesResponse ::
  -- | 'decrrsResponseStatus'
  Int ->
  DescribeEventCategoriesResponse
describeEventCategoriesResponse pResponseStatus_ =
  DescribeEventCategoriesResponse'
    { _decrrsEventCategoryGroupList =
        Nothing,
      _decrrsResponseStatus = pResponseStatus_
    }

-- | A list of event categories.
decrrsEventCategoryGroupList :: Lens' DescribeEventCategoriesResponse [EventCategoryGroup]
decrrsEventCategoryGroupList = lens _decrrsEventCategoryGroupList (\s a -> s {_decrrsEventCategoryGroupList = a}) . _Default . _Coerce

-- | -- | The response status code.
decrrsResponseStatus :: Lens' DescribeEventCategoriesResponse Int
decrrsResponseStatus = lens _decrrsResponseStatus (\s a -> s {_decrrsResponseStatus = a})

instance NFData DescribeEventCategoriesResponse
