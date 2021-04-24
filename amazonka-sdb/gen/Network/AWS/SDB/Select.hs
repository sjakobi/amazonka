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
-- Module      : Network.AWS.SDB.Select
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @Select@ operation returns a set of attributes for @ItemNames@ that match the select expression. @Select@ is similar to the standard SQL SELECT statement.
--
--
-- The total size of the response cannot exceed 1 MB in total size. Amazon SimpleDB automatically adjusts the number of items returned per page to enforce this limit. For example, if the client asks to retrieve 2500 items, but each individual item is 10 kB in size, the system returns 100 items and an appropriate @NextToken@ so the client can access the next page of results.
--
-- For information on how to construct select expressions, see Using Select to Create Amazon SimpleDB Queries in the Developer Guide.
--
--
-- This operation returns paginated results.
module Network.AWS.SDB.Select
  ( -- * Creating a Request
    select,
    Select,

    -- * Request Lenses
    sNextToken,
    sConsistentRead,
    sSelectExpression,

    -- * Destructuring the Response
    selectResponse,
    SelectResponse,

    -- * Response Lenses
    srrsNextToken,
    srrsItems,
    srrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SDB.Types

-- | /See:/ 'select' smart constructor.
data Select = Select'
  { _sNextToken :: !(Maybe Text),
    _sConsistentRead :: !(Maybe Bool),
    _sSelectExpression :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Select' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sNextToken' - @ItemNames@
--
-- * 'sConsistentRead' - @true@
--
-- * 'sSelectExpression' - The expression used to query the domain.
select ::
  -- | 'sSelectExpression'
  Text ->
  Select
select pSelectExpression_ =
  Select'
    { _sNextToken = Nothing,
      _sConsistentRead = Nothing,
      _sSelectExpression = pSelectExpression_
    }

-- | @ItemNames@
sNextToken :: Lens' Select (Maybe Text)
sNextToken = lens _sNextToken (\s a -> s {_sNextToken = a})

-- | @true@
sConsistentRead :: Lens' Select (Maybe Bool)
sConsistentRead = lens _sConsistentRead (\s a -> s {_sConsistentRead = a})

-- | The expression used to query the domain.
sSelectExpression :: Lens' Select Text
sSelectExpression = lens _sSelectExpression (\s a -> s {_sSelectExpression = a})

instance AWSPager Select where
  page rq rs
    | stop (rs ^. srrsNextToken) = Nothing
    | stop (rs ^. srrsItems) = Nothing
    | otherwise =
      Just $ rq & sNextToken .~ rs ^. srrsNextToken

instance AWSRequest Select where
  type Rs Select = SelectResponse
  request = postQuery sdb
  response =
    receiveXMLWrapper
      "SelectResult"
      ( \s h x ->
          SelectResponse'
            <$> (x .@? "NextToken")
            <*> (may (parseXMLList "Item") x)
            <*> (pure (fromEnum s))
      )

instance Hashable Select

instance NFData Select

instance ToHeaders Select where
  toHeaders = const mempty

instance ToPath Select where
  toPath = const "/"

instance ToQuery Select where
  toQuery Select' {..} =
    mconcat
      [ "Action" =: ("Select" :: ByteString),
        "Version" =: ("2009-04-15" :: ByteString),
        "NextToken" =: _sNextToken,
        "ConsistentRead" =: _sConsistentRead,
        "SelectExpression" =: _sSelectExpression
      ]

-- | /See:/ 'selectResponse' smart constructor.
data SelectResponse = SelectResponse'
  { _srrsNextToken ::
      !(Maybe Text),
    _srrsItems :: !(Maybe [Item]),
    _srrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SelectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srrsNextToken' - @MaxNumberOfItems@
--
-- * 'srrsItems' - A list of items that match the select expression.
--
-- * 'srrsResponseStatus' - -- | The response status code.
selectResponse ::
  -- | 'srrsResponseStatus'
  Int ->
  SelectResponse
selectResponse pResponseStatus_ =
  SelectResponse'
    { _srrsNextToken = Nothing,
      _srrsItems = Nothing,
      _srrsResponseStatus = pResponseStatus_
    }

-- | @MaxNumberOfItems@
srrsNextToken :: Lens' SelectResponse (Maybe Text)
srrsNextToken = lens _srrsNextToken (\s a -> s {_srrsNextToken = a})

-- | A list of items that match the select expression.
srrsItems :: Lens' SelectResponse [Item]
srrsItems = lens _srrsItems (\s a -> s {_srrsItems = a}) . _Default . _Coerce

-- | -- | The response status code.
srrsResponseStatus :: Lens' SelectResponse Int
srrsResponseStatus = lens _srrsResponseStatus (\s a -> s {_srrsResponseStatus = a})

instance NFData SelectResponse
