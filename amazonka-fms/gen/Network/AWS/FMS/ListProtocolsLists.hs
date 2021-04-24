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
-- Module      : Network.AWS.FMS.ListProtocolsLists
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of @ProtocolsListDataSummary@ objects.
module Network.AWS.FMS.ListProtocolsLists
  ( -- * Creating a Request
    listProtocolsLists,
    ListProtocolsLists,

    -- * Request Lenses
    lplNextToken,
    lplDefaultLists,
    lplMaxResults,

    -- * Destructuring the Response
    listProtocolsListsResponse,
    ListProtocolsListsResponse,

    -- * Response Lenses
    lplrrsNextToken,
    lplrrsProtocolsLists,
    lplrrsResponseStatus,
  )
where

import Network.AWS.FMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listProtocolsLists' smart constructor.
data ListProtocolsLists = ListProtocolsLists'
  { _lplNextToken ::
      !(Maybe Text),
    _lplDefaultLists :: !(Maybe Bool),
    _lplMaxResults :: !Nat
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListProtocolsLists' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lplNextToken' - If you specify a value for @MaxResults@ in your list request, and you have more objects than the maximum, AWS Firewall Manager returns this token in the response. For all but the first request, you provide the token returned by the prior request in the request parameters, to retrieve the next batch of objects.
--
-- * 'lplDefaultLists' - Specifies whether the lists to retrieve are default lists owned by AWS Firewall Manager.
--
-- * 'lplMaxResults' - The maximum number of objects that you want AWS Firewall Manager to return for this request. If more objects are available, in the response, AWS Firewall Manager provides a @NextToken@ value that you can use in a subsequent call to get the next batch of objects. If you don't specify this, AWS Firewall Manager returns all available objects.
listProtocolsLists ::
  -- | 'lplMaxResults'
  Natural ->
  ListProtocolsLists
listProtocolsLists pMaxResults_ =
  ListProtocolsLists'
    { _lplNextToken = Nothing,
      _lplDefaultLists = Nothing,
      _lplMaxResults = _Nat # pMaxResults_
    }

-- | If you specify a value for @MaxResults@ in your list request, and you have more objects than the maximum, AWS Firewall Manager returns this token in the response. For all but the first request, you provide the token returned by the prior request in the request parameters, to retrieve the next batch of objects.
lplNextToken :: Lens' ListProtocolsLists (Maybe Text)
lplNextToken = lens _lplNextToken (\s a -> s {_lplNextToken = a})

-- | Specifies whether the lists to retrieve are default lists owned by AWS Firewall Manager.
lplDefaultLists :: Lens' ListProtocolsLists (Maybe Bool)
lplDefaultLists = lens _lplDefaultLists (\s a -> s {_lplDefaultLists = a})

-- | The maximum number of objects that you want AWS Firewall Manager to return for this request. If more objects are available, in the response, AWS Firewall Manager provides a @NextToken@ value that you can use in a subsequent call to get the next batch of objects. If you don't specify this, AWS Firewall Manager returns all available objects.
lplMaxResults :: Lens' ListProtocolsLists Natural
lplMaxResults = lens _lplMaxResults (\s a -> s {_lplMaxResults = a}) . _Nat

instance AWSRequest ListProtocolsLists where
  type
    Rs ListProtocolsLists =
      ListProtocolsListsResponse
  request = postJSON fms
  response =
    receiveJSON
      ( \s h x ->
          ListProtocolsListsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ProtocolsLists" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListProtocolsLists

instance NFData ListProtocolsLists

instance ToHeaders ListProtocolsLists where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSFMS_20180101.ListProtocolsLists" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListProtocolsLists where
  toJSON ListProtocolsLists' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lplNextToken,
            ("DefaultLists" .=) <$> _lplDefaultLists,
            Just ("MaxResults" .= _lplMaxResults)
          ]
      )

instance ToPath ListProtocolsLists where
  toPath = const "/"

instance ToQuery ListProtocolsLists where
  toQuery = const mempty

-- | /See:/ 'listProtocolsListsResponse' smart constructor.
data ListProtocolsListsResponse = ListProtocolsListsResponse'
  { _lplrrsNextToken ::
      !(Maybe Text),
    _lplrrsProtocolsLists ::
      !( Maybe
           [ProtocolsListDataSummary]
       ),
    _lplrrsResponseStatus ::
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

-- | Creates a value of 'ListProtocolsListsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lplrrsNextToken' - If you specify a value for @MaxResults@ in your list request, and you have more objects than the maximum, AWS Firewall Manager returns this token in the response. You can use this token in subsequent requests to retrieve the next batch of objects.
--
-- * 'lplrrsProtocolsLists' - An array of @ProtocolsListDataSummary@ objects.
--
-- * 'lplrrsResponseStatus' - -- | The response status code.
listProtocolsListsResponse ::
  -- | 'lplrrsResponseStatus'
  Int ->
  ListProtocolsListsResponse
listProtocolsListsResponse pResponseStatus_ =
  ListProtocolsListsResponse'
    { _lplrrsNextToken =
        Nothing,
      _lplrrsProtocolsLists = Nothing,
      _lplrrsResponseStatus = pResponseStatus_
    }

-- | If you specify a value for @MaxResults@ in your list request, and you have more objects than the maximum, AWS Firewall Manager returns this token in the response. You can use this token in subsequent requests to retrieve the next batch of objects.
lplrrsNextToken :: Lens' ListProtocolsListsResponse (Maybe Text)
lplrrsNextToken = lens _lplrrsNextToken (\s a -> s {_lplrrsNextToken = a})

-- | An array of @ProtocolsListDataSummary@ objects.
lplrrsProtocolsLists :: Lens' ListProtocolsListsResponse [ProtocolsListDataSummary]
lplrrsProtocolsLists = lens _lplrrsProtocolsLists (\s a -> s {_lplrrsProtocolsLists = a}) . _Default . _Coerce

-- | -- | The response status code.
lplrrsResponseStatus :: Lens' ListProtocolsListsResponse Int
lplrrsResponseStatus = lens _lplrrsResponseStatus (\s a -> s {_lplrrsResponseStatus = a})

instance NFData ListProtocolsListsResponse
