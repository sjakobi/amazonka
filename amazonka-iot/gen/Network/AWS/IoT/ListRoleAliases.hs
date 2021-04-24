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
-- Module      : Network.AWS.IoT.ListRoleAliases
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the role aliases registered in your account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListRoleAliases
  ( -- * Creating a Request
    listRoleAliases,
    ListRoleAliases,

    -- * Request Lenses
    lraPageSize,
    lraAscendingOrder,
    lraMarker,

    -- * Destructuring the Response
    listRoleAliasesResponse,
    ListRoleAliasesResponse,

    -- * Response Lenses
    lrarrsRoleAliases,
    lrarrsNextMarker,
    lrarrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listRoleAliases' smart constructor.
data ListRoleAliases = ListRoleAliases'
  { _lraPageSize ::
      !(Maybe Nat),
    _lraAscendingOrder :: !(Maybe Bool),
    _lraMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListRoleAliases' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lraPageSize' - The maximum number of results to return at one time.
--
-- * 'lraAscendingOrder' - Return the list of role aliases in ascending alphabetical order.
--
-- * 'lraMarker' - A marker used to get the next set of results.
listRoleAliases ::
  ListRoleAliases
listRoleAliases =
  ListRoleAliases'
    { _lraPageSize = Nothing,
      _lraAscendingOrder = Nothing,
      _lraMarker = Nothing
    }

-- | The maximum number of results to return at one time.
lraPageSize :: Lens' ListRoleAliases (Maybe Natural)
lraPageSize = lens _lraPageSize (\s a -> s {_lraPageSize = a}) . mapping _Nat

-- | Return the list of role aliases in ascending alphabetical order.
lraAscendingOrder :: Lens' ListRoleAliases (Maybe Bool)
lraAscendingOrder = lens _lraAscendingOrder (\s a -> s {_lraAscendingOrder = a})

-- | A marker used to get the next set of results.
lraMarker :: Lens' ListRoleAliases (Maybe Text)
lraMarker = lens _lraMarker (\s a -> s {_lraMarker = a})

instance AWSPager ListRoleAliases where
  page rq rs
    | stop (rs ^. lrarrsNextMarker) = Nothing
    | stop (rs ^. lrarrsRoleAliases) = Nothing
    | otherwise =
      Just $ rq & lraMarker .~ rs ^. lrarrsNextMarker

instance AWSRequest ListRoleAliases where
  type Rs ListRoleAliases = ListRoleAliasesResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListRoleAliasesResponse'
            <$> (x .?> "roleAliases" .!@ mempty)
            <*> (x .?> "nextMarker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListRoleAliases

instance NFData ListRoleAliases

instance ToHeaders ListRoleAliases where
  toHeaders = const mempty

instance ToPath ListRoleAliases where
  toPath = const "/role-aliases"

instance ToQuery ListRoleAliases where
  toQuery ListRoleAliases' {..} =
    mconcat
      [ "pageSize" =: _lraPageSize,
        "isAscendingOrder" =: _lraAscendingOrder,
        "marker" =: _lraMarker
      ]

-- | /See:/ 'listRoleAliasesResponse' smart constructor.
data ListRoleAliasesResponse = ListRoleAliasesResponse'
  { _lrarrsRoleAliases ::
      !(Maybe [Text]),
    _lrarrsNextMarker ::
      !(Maybe Text),
    _lrarrsResponseStatus ::
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

-- | Creates a value of 'ListRoleAliasesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrarrsRoleAliases' - The role aliases.
--
-- * 'lrarrsNextMarker' - A marker used to get the next set of results.
--
-- * 'lrarrsResponseStatus' - -- | The response status code.
listRoleAliasesResponse ::
  -- | 'lrarrsResponseStatus'
  Int ->
  ListRoleAliasesResponse
listRoleAliasesResponse pResponseStatus_ =
  ListRoleAliasesResponse'
    { _lrarrsRoleAliases =
        Nothing,
      _lrarrsNextMarker = Nothing,
      _lrarrsResponseStatus = pResponseStatus_
    }

-- | The role aliases.
lrarrsRoleAliases :: Lens' ListRoleAliasesResponse [Text]
lrarrsRoleAliases = lens _lrarrsRoleAliases (\s a -> s {_lrarrsRoleAliases = a}) . _Default . _Coerce

-- | A marker used to get the next set of results.
lrarrsNextMarker :: Lens' ListRoleAliasesResponse (Maybe Text)
lrarrsNextMarker = lens _lrarrsNextMarker (\s a -> s {_lrarrsNextMarker = a})

-- | -- | The response status code.
lrarrsResponseStatus :: Lens' ListRoleAliasesResponse Int
lrarrsResponseStatus = lens _lrarrsResponseStatus (\s a -> s {_lrarrsResponseStatus = a})

instance NFData ListRoleAliasesResponse
